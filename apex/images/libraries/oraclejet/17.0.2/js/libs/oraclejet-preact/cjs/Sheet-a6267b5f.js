/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var hooks = require('preact/hooks');
var Modal = require('./Modal-52fa4530.js');
var WindowOverlay = require('./WindowOverlay-d255542f.js');
var tabbableUtils = require('./tabbableUtils-b49673af.js');
var UNSAFE_Sheet_themes_SheetStyles_css = require('./UNSAFE_Sheet/themes/SheetStyles.css.js');
var refUtils = require('./refUtils-915b985d.js');
var useAnimationStatus = require('./useAnimationStatus-a3d51709.js');
var animationUtils = require('./animationUtils-54852d03.js');

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
    const ref = hooks.useRef({
        pointerDownId: 0,
        startTime: null,
        prevpageX: 0,
        prevpageY: 0,
        elementScrollTop: 0
    });
    const clearSwipe = hooks.useCallback(() => {
        ref.current = {
            pointerDownId: null,
            startTime: 0,
            prevpageX: 0,
            prevpageY: 0,
            elementScrollTop: 0
        };
    }, []);
    const onTouchStart = hooks.useCallback((e) => {
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
    const onTouchEnd = hooks.useCallback((ev) => {
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
        ...animationUtils.SLIDE_UP_XLARGE,
        options: {
            duration: animationUtils.DURATION_LARGE
        }
    },
    closing: {
        ...animationUtils.SLIDE_DOWN_XLARGE,
        options: {
            duration: animationUtils.DURATION_LARGE
        }
    }
};
const Sheet = ({ children, onClose, isOpen = false, initialFocus = 'none' }) => {
    const sheetRef = hooks.useRef(null);
    // Initial focus going to be set after animation once opening animation is added
    hooks.useEffect(() => {
        if (isOpen && initialFocus === 'firstFocusable') {
            const sheetElement = sheetRef.current;
            if (sheetElement) {
                tabbableUtils.focusWithin(sheetElement);
            }
        }
    }, [isOpen, initialFocus]);
    const handlePointerDismissed = hooks.useCallback(() => {
        onClose?.({ reason: 'pointerDismissed' });
    }, [onClose]);
    // TODO: Use useSwipe when it works on components that could scroll. Important to notice all components that have a
    // sheet will use this comp and this comp is going to use useSwipe. So comps that have their own impl (menu right now),
    // will stop having its own implementation
    const { swipeProps } = useSheetSwipe(handlePointerDismissed);
    const handleKeyDown = hooks.useCallback((event) => {
        if (event.defaultPrevented) {
            return;
        }
        switch (event.code) {
            case 'Tab':
            case 'Escape':
                onClose?.({ reason: 'keyboardDismissed' });
        }
    }, [onClose]);
    const { setAnimationElementRef, status } = useAnimationStatus.useAnimationStatus({
        isOpen,
        isAnimatedOnMount: false,
        animationStates
    });
    hooks.useEffect(() => {
        if (status === 'opening') {
            if (initialFocus === 'firstFocusable') {
                const dropdownElement = sheetRef.current;
                if (dropdownElement) {
                    tabbableUtils.focusWithin(dropdownElement);
                }
            }
        }
    }, [status, initialFocus]);
    const stableRef = hooks.useMemo(() => refUtils.mergeRefs(setAnimationElementRef, sheetRef), [setAnimationElementRef]);
    const isMounted = status !== 'unmounted';
    return (jsxRuntime.jsx(jsxRuntime.Fragment, { children: isMounted ? (jsxRuntime.jsx(Modal.Modal, { isOpen: isMounted, onBackdropClick: handlePointerDismissed, children: jsxRuntime.jsx(WindowOverlay.WindowOverlay, { placement: "bottom", children: jsxRuntime.jsx("div", { ...swipeProps, ref: stableRef, class: UNSAFE_Sheet_themes_SheetStyles_css.sheetMenuStyles.sheetMenuContainerWrapper, style: { maxHeight: `calc(100vh - ${TOP_OFFSET}px)` }, onKeyDown: handleKeyDown, children: children }) }) })) : null }));
};
const TOP_OFFSET = 96;

exports.Sheet = Sheet;
exports.useSheetSwipe = useSheetSwipe;
//# sourceMappingURL=Sheet-a6267b5f.js.map
