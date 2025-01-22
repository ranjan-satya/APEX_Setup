/* @oracle/oraclejet-preact: undefined */
import { jsx, Fragment } from 'preact/jsx-runtime';
import { useRef, useCallback, useEffect, useMemo } from 'preact/hooks';
import { M as Modal } from './Modal-6b11d8cb.js';
import { W as WindowOverlay } from './WindowOverlay-e14f8324.js';
import { f as focusWithin } from './tabbableUtils-dca964ca.js';
import { sheetMenuStyles } from './UNSAFE_Sheet/themes/SheetStyles.css.js';
import { m as mergeRefs } from './refUtils-b9d8d91a.js';
import { u as useAnimationStatus } from './useAnimationStatus-9ef65f0c.js';
import { S as SLIDE_UP_XLARGE, D as DURATION_LARGE, a as SLIDE_DOWN_XLARGE } from './animationUtils-5f409a6c.js';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/*This "private" hook will live until we end up stating a final decision on useSwipe hook.
For that hook to work, element that use it has to set touch-action:none;, since pointer events
are canceled once a touch action is going to be handled by the browser. This works for most
of the components that don't scroll. But if the component scroll, there is a need for the browser to
handle scroll which is imposible with a hook just using pointer events.

Update 11/6/23:
Nishad's team is going to confirm if other comps that will use useSwipe need mouse interactions. If they need it,
we can either have a flag to use pointer or touch events or two separated hooks. If they don't need mouse interactions,
we could start using useSwipe with touch events instead.
*/
function useSheetSwipe(onSwipe, { threshold = 10, maximumTime = 300, tolerance = 50, isDisabled = false } = {
    threshold: 10,
    maximumTime: 300,
    tolerance: 50,
    isDisabled: false
}) {
    const ref = useRef({
        pointerDownId: 0,
        startTime: null,
        prevpageX: 0,
        prevpageY: 0,
        elementScrollTop: 0
    });
    const clearSwipe = useCallback(() => {
        ref.current = {
            pointerDownId: null,
            startTime: 0,
            prevpageX: 0,
            prevpageY: 0,
            elementScrollTop: 0
        };
    }, []);
    const onTouchStart = useCallback((e) => {
        const touchobj = e.changedTouches[0];
        if (!ref.current.pointerDownId) {
            ref.current = {
                pointerDownId: touchobj.identifier,
                startTime: e.timeStamp,
                prevpageX: touchobj.pageX,
                prevpageY: touchobj.pageY,
                elementScrollTop: e.currentTarget.scrollTop
            };
        }
        else {
            clearSwipe();
        }
    }, [clearSwipe]);
    const onTouchEnd = useCallback((ev) => {
        const touchobj = ev.changedTouches[0];
        if (touchobj.identifier === ref.current.pointerDownId) {
            if (ref.current.startTime && ev.timeStamp - ref.current.startTime < maximumTime) {
                if (touchobj.pageY - ref.current.prevpageY > threshold &&
                    Math.abs(touchobj.pageX - ref.current.prevpageX) <= tolerance &&
                    ref.current.elementScrollTop === 0) {
                    onSwipe?.({ direction: 'down' });
                }
            }
        }
        // state would be reset to its original state whether swipe is completed or cancelled
        clearSwipe();
    }, [threshold, onSwipe, clearSwipe, maximumTime, tolerance]);
    const swipeProps = isDisabled
        ? {}
        : {
            /** event handlers to spread on the target element. */
            onTouchStart,
            onTouchEnd,
            ontouchcancel: clearSwipe
        };
    return {
        swipeProps
    };
}

const animationStates = {
    opening: {
        ...SLIDE_UP_XLARGE,
        options: {
            duration: DURATION_LARGE
        }
    },
    closing: {
        ...SLIDE_DOWN_XLARGE,
        options: {
            duration: DURATION_LARGE
        }
    }
};
const Sheet = ({ children, onClose, isOpen = false, initialFocus = 'none' }) => {
    const sheetRef = useRef(null);
    // Initial focus going to be set after animation once opening animation is added
    useEffect(() => {
        if (isOpen && initialFocus === 'firstFocusable') {
            const sheetElement = sheetRef.current;
            if (sheetElement) {
                focusWithin(sheetElement);
            }
        }
    }, [isOpen, initialFocus]);
    const handlePointerDismissed = useCallback(() => {
        onClose?.({ reason: 'pointerDismissed' });
    }, [onClose]);
    // TODO: Use useSwipe when it works on components that could scroll. Important to notice all components that have a
    // sheet will use this comp and this comp is going to use useSwipe. So comps that have their own impl (menu right now),
    // will stop having its own implementation
    const { swipeProps } = useSheetSwipe(handlePointerDismissed);
    const handleKeyDown = useCallback((event) => {
        if (event.defaultPrevented) {
            return;
        }
        switch (event.code) {
            case 'Tab':
            case 'Escape':
                onClose?.({ reason: 'keyboardDismissed' });
        }
    }, [onClose]);
    const { setAnimationElementRef, status } = useAnimationStatus({
        isOpen,
        isAnimatedOnMount: false,
        animationStates
    });
    useEffect(() => {
        if (status === 'opening') {
            if (initialFocus === 'firstFocusable') {
                const dropdownElement = sheetRef.current;
                if (dropdownElement) {
                    focusWithin(dropdownElement);
                }
            }
        }
    }, [status, initialFocus]);
    const stableRef = useMemo(() => mergeRefs(setAnimationElementRef, sheetRef), [setAnimationElementRef]);
    const isMounted = status !== 'unmounted';
    return (jsx(Fragment, { children: isMounted ? (jsx(Modal, { isOpen: isMounted, onBackdropClick: handlePointerDismissed, children: jsx(WindowOverlay, { placement: "bottom", children: jsx("div", { ...swipeProps, ref: stableRef, class: sheetMenuStyles.sheetMenuContainerWrapper, style: { maxHeight: `calc(100vh - ${TOP_OFFSET}px)` }, onKeyDown: handleKeyDown, children: children }) }) })) : null }));
};
const TOP_OFFSET = 96;

export { Sheet as S, useSheetSwipe as u };
//# sourceMappingURL=Sheet-e4121f4a.js.map
