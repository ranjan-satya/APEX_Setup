/* @oracle/oraclejet-preact: undefined */
import { useRef, useState } from 'preact/hooks';
import { u as useUser } from './useUser-99920e02.js';
import { g as getClientHints } from './clientHints-c76a913b.js';

/**
 * Utility hook for setting up roving tab indexes on children of the consuming parent container
 * For more details: https://www.w3.org/WAI/ARIA/apg/practices/keyboard-interface/#kbd_roving_tabindex
 * @param isDisabled boolean flag to communicate disabled state of consumer
 * @returns id of currently focused element, and props to be spread onto the consuming element
 */
const useRovingTabIndexContainer = (isDisabled) => {
    const rootRef = useRef(null);
    const { direction } = useUser();
    const isRtl = direction === 'rtl';
    const [focusedId, setFocusedId] = useState(undefined);
    const [isShiftTabbing, setIsShiftTabbing] = useState(false); // shift tabbing is tracked in order to toggle wrapper out of the tab order
    const clientHints = getClientHints();
    const getRovingItems = () => {
        return rootRef.current
            ? Array.from(rootRef.current.querySelectorAll('[data-oj-roving-tabindex-item]'))
            : [];
    };
    const handleKeyDown = (e) => {
        if (e.code === 'ArrowRight' || e.code === 'ArrowLeft') {
            const items = getRovingItems();
            if (items.length === 0)
                return;
            const nextItem = getNextItem(items, e.code, focusedId, isRtl);
            nextItem.focus();
        }
        else if (e.shiftKey && e.code === 'Tab') {
            setIsShiftTabbing(true);
        }
    };
    // In Safari 16 and earlier, clicking on an HTML button element does not trigger a focus(in) event,
    // and as such our handleFocus logic does not kick in and our focusedId state is never updated.
    // To work around this, we manually update the focusedId in response to mouse downs. This has been fixed in Safari 17.
    // This fix can be removed once Safari 18 is released.
    const handleMouseDown = (e) => {
        const rovingItemId = getRovingItemId(e.target, true);
        if (rovingItemId) {
            setFocusedId(rovingItemId);
        }
    };
    const handleFocus = (e) => {
        if (e.target !== e.currentTarget) {
            //focus has moved to one of the roving items
            if (e.target) {
                setFocusedId(getRovingItemId(e.target));
            }
        }
        else {
            //focus has moved to the container, and has to be passed onto the eligble item to receive focus
            const items = getRovingItems();
            if (items.length === 0)
                return;
            const currentIndex = getCurrentRovingIndex(items, focusedId);
            items[currentIndex].focus();
        }
    };
    const rovingTabIndexContainerProps = {
        ref: rootRef,
        onBlur: () => setIsShiftTabbing(false),
        onFocus: handleFocus,
        onKeyDown: handleKeyDown,
        ...(clientHints.browser === 'safari' && { onMouseDown: handleMouseDown }), // mouseDown handler needed for Safari 16
        tabIndex: isShiftTabbing || isDisabled ? -1 : 0 // tab index is needed on the container in order to pass focus to the first child
    };
    return { focusedId, rovingTabIndexContainerProps };
};
const getRovingItemId = (item, useClosest = false) => {
    if (useClosest) {
        const ancestor = item.closest('data-oj-roving-tabindex-item');
        if (ancestor) {
            item = ancestor;
        }
    }
    return item.getAttribute('data-oj-roving-tabindex-item') || undefined;
};
const getCurrentRovingIndex = (items, focusedId) => {
    const currentIndex = items.findIndex((item) => getRovingItemId(item) === focusedId);
    return currentIndex === -1 ? 0 : currentIndex;
};
const getNextItem = (items, eventCode, focusedId, isRtl) => {
    const currentIndex = getCurrentRovingIndex(items, focusedId);
    let nextIndex = -1;
    if ((!isRtl && eventCode === 'ArrowRight') || (isRtl && eventCode === 'ArrowLeft')) {
        nextIndex = currentIndex === items.length - 1 ? 0 : currentIndex + 1;
    }
    if ((!isRtl && eventCode === 'ArrowLeft') || (isRtl && eventCode === 'ArrowRight')) {
        nextIndex = currentIndex === 0 ? items.length - 1 : currentIndex - 1;
    }
    return items[nextIndex];
};

export { useRovingTabIndexContainer as u };
//# sourceMappingURL=useRovingTabIndexContainer-e7926bd6.js.map
