/* @oracle/oraclejet-preact: undefined */
import { useState, useRef, useCallback } from 'preact/hooks';
import { g as getElementContainsFunc } from './collectionUtils-d72c7c40.js';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
//TODO: Clarify with UX the correct focus behavior when changing tabs.JET-61663
/**
 * Hook for handling focus ring management in Collection components.
 *
 * @param rootRef - a Ref to the root element of the consuming component
 * @param navigationKeys set of keys that are considered as navigation keys for Collection.
 * @param isVisibleFocusLostOnClick boolean or function that returns a boolean that states if focus is going to be visible after a click
 * @returns
 */
function useCollectionFocusRing(rootRef, navigationKeys, isVisibleFocusLostOnClick = true) {
    const [focusRingVisible, setFocusRingVisible] = useState(false);
    const recentPointerRef = useRef(false);
    const previousFocusRingVisibleBecauseDocLostFocus = useRef(null);
    // We need to clear this out when using touching devices
    // TODO: We need to confirm if this type is correct or has to be changed
    const pointerDownTimerRef = useRef();
    const onFocus = useCallback(() => {
        if (!focusRingVisible && !recentPointerRef.current) {
            if (previousFocusRingVisibleBecauseDocLostFocus.current !== null) {
                setFocusRingVisible(previousFocusRingVisibleBecauseDocLostFocus.current);
            }
            else {
                setFocusRingVisible(true);
            }
        }
        previousFocusRingVisibleBecauseDocLostFocus.current = null;
    }, [focusRingVisible]);
    const onBlur = useCallback((e) => {
        /* Between leaving the old element and entering the new element the active element
        is the document/body itself. This is not the case when blur is produced due to document losing focus.
        In this last case the document.active element is the same as the target of the blur method.*/
        if (e.target === document.activeElement) {
            //We save focus ring state so it's set once focus come back
            previousFocusRingVisibleBecauseDocLostFocus.current = focusRingVisible;
        }
        /*When changing tabs this event is called with a null related target. Imporant to verify we remove focus ring
          but not because tab was changed. This checking is added because of JET-62651 */
        if (!e.relatedTarget ||
            !getElementContainsFunc(rootRef.current)(e.relatedTarget)) {
            setFocusRingVisible(false);
        }
    }, [rootRef, focusRingVisible]);
    const onPointerDown = useCallback((e) => {
        const getIsVisibleFocusLostOnClick = typeof isVisibleFocusLostOnClick === 'function'
            ? isVisibleFocusLostOnClick(e.target)
            : isVisibleFocusLostOnClick;
        if (focusRingVisible && getIsVisibleFocusLostOnClick) {
            setFocusRingVisible(false);
        }
        recentPointerRef.current = true;
        pointerDownTimerRef.current = setTimeout(() => {
            recentPointerRef.current = false;
        }, FOCUS_SHIFT_TIMEOUT);
    }, [focusRingVisible, isVisibleFocusLostOnClick]);
    //onFocus is called after pointerDown on desktop devices, but for touch ones focus is triggered after touch end
    const onTouchEnd = useCallback(() => {
        clearTimeout(pointerDownTimerRef.current);
        recentPointerRef.current = true;
        setTimeout(() => {
            recentPointerRef.current = false;
        }, FOCUS_SHIFT_TIMEOUT);
    }, []);
    const onKeyUp = useCallback((e) => {
        //With this we remove an issue related to focus being outside the document and returning it back using tab
        if (!focusRingVisible && e.key === 'Tab') {
            setFocusRingVisible(true);
        }
    }, [focusRingVisible]);
    const onKeyDown = useCallback((event) => {
        if (navigationKeys.indexOf(event.key) > -1) {
            if (!focusRingVisible) {
                setFocusRingVisible(true);
            }
        }
    }, [focusRingVisible, navigationKeys]);
    const focusRingProps = { onFocus, onBlur, onPointerDown, onKeyDown, onTouchEnd, onKeyUp };
    return [focusRingVisible, focusRingProps];
}
const FOCUS_SHIFT_TIMEOUT = 200;

export { useCollectionFocusRing as u };
//# sourceMappingURL=useCollectionFocusRing-d0c80397.js.map
