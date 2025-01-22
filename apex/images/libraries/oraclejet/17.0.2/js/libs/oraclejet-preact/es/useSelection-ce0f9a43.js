/* @oracle/oraclejet-preact: undefined */
import { useRef, useCallback } from 'preact/hooks';
import { i as isKeyDefined, c as containsKey, a as addKey, r as removeKey } from './keys-df361af9.js';
import { u as useUser } from './useUser-99920e02.js';
import { g as getIsSelectionPending } from './textSelectionUtils-a6554a42.js';

const arrowKeys = new Set(['ArrowLeft', 'ArrowRight', 'ArrowUp', 'ArrowDown']);
/**
 * To get the event type during range selection which is triggered by either of the following gestures
 * shift+space, shift+click, and shift+arrowKeys
 * @param event
 */
const getEventType = (event) => {
    if (event.type === 'click') {
        return 'shiftClick';
    }
    else if (event.type === 'keyup' && event.key === ' ') {
        return 'shiftSpace';
    }
    else if (event.type === 'keydown' && arrowKeys.has(event.key)) {
        return 'shiftArrowKeys';
    }
    return undefined;
};
const isShiftModeSupported = (anchorKey, selectedKeys, selectionMode, isClickEvent) => {
    return selectionMode === 'multiple' && (isClickEvent || containsKey(selectedKeys, anchorKey));
};
const handleSelect = (event, keyExtractor, selectedKeys, selectionMode, selectionBehavior, isSelectionRequired, keyboardCursorRef, anchorKey, onChange, onRangeChange) => {
    const itemKey = keyExtractor(event.target);
    if (itemKey == null) {
        return;
    }
    // handle shift key selection
    if (event.shiftKey &&
        anchorKey !== undefined &&
        onRangeChange &&
        isShiftModeSupported(anchorKey, selectedKeys, selectionMode, event.type === 'click')) {
        const selected = containsKey(selectedKeys, itemKey);
        const eventType = getEventType(event);
        if (selected && eventType === 'shiftSpace') {
            // during shift+space, deselect the item if it's already selected
            const keySet = removeKey(selectedKeys, itemKey, isSelectionRequired);
            onChange?.({ value: keySet, target: event.target });
        }
        else {
            onRangeChange({ value: { start: anchorKey, end: itemKey }, eventType });
        }
        // set keyboard selection cursor in case user extends with SHIFT+ARROW
        if (keyboardCursorRef) {
            keyboardCursorRef.current = itemKey;
        }
        return;
    }
    const selected = containsKey(selectedKeys, itemKey);
    let keySet = selectedKeys;
    if (!selected) {
        if (selectionMode === 'single' ||
            event.key === 'Enter' ||
            (selectionBehavior === 'replace' && !(event.ctrlKey || event.metaKey))) {
            // should only contains this item key
            keySet = { all: false, keys: new Set([itemKey]) };
        }
        else {
            // add to existing selected keys
            keySet = addKey(selectedKeys, itemKey);
        }
    }
    else if (event.key !== 'Enter') {
        // no de-select for enter key
        if (selectionBehavior === 'toggle' ||
            event.ctrlKey ||
            event.metaKey ||
            event.key === ' ') {
            // de-select only when ctrl/meta key is pressed or selectionBehavior is
            // explicitly set to toggle
            keySet = removeKey(selectedKeys, itemKey, isSelectionRequired);
        }
        else if (selectionMode === 'multiple' && (selectedKeys.all || selectedKeys.keys.size > 1)) {
            // in this case everything should be de-selected except for this key
            keySet = { all: false, keys: new Set([itemKey]) };
        }
    }
    // only invoke callback if there is really a change
    // note onSelectionChange should never be null here
    if (selectedKeys != keySet && onChange) {
        onChange({ value: keySet, target: event.target });
        if (event.type === 'click') {
            event.stopPropagation();
        }
    }
};
/**
 * Hook for handling various selection mode.  This can be reuse by all Collection components.
 * @param keyExtractor function to extract the key based on provided element
 * @param selectedKeys the currently selected keys
 * @param selectionMode the selection mode
 * @param isSelectionRequired true if empty selected key is not allowed, false otherwise
 * @param selectionBehavior the selection behavior.  If the value is 'toggle', then the key is
 *                          added/removed from the current selected keys.  If the value is 'replace',
 *                          then the current selected keys are cleared first before the key is added
 *                          unless the ctrl/shift/meta key is pressed.
 * @param allowEnterKey whether enter key can be use to change selection.
 * @param onChange callback function that is invoked when selection has changed.
 * @param anchorKey the anchor key.  Usually this is the same as current key except when shift key is pressed.
 * @param currentKey the current key
 * @param getVerticalPrevNextKey function to get the previous/next key in the vertical direction based on the current key
 * @param getHorizontalPrevNextKey function to get the previous/next key in the horizontal direction based on the current key
 * @param scrollToKey function to scroll the item with the key to be visible
 * @param onRangeChange callback function that is invoked when the selection range has changed.
 * @returns an event map that the consumer can register as event listeners
 */
function useSelection(keyExtractor, selectedKeys, selectionMode, isSelectionRequired, selectionBehavior, allowEnterKey, onChange, anchorKey, currentKey, getVerticalPrevNextKey, getHorizontalPrevNextKey, scrollToKey, onRangeChange) {
    // ref to track the cursor for the SHIFT+ARROW keyboard selection separately than the anchor of the selection.
    const keyboardSelectionCursor = useRef();
    const isTouchPointerRef = useRef(false);
    const onPointerDown = useCallback((event) => {
        isTouchPointerRef.current = event.pointerType === 'touch';
        if (event.shiftKey && selectionMode === 'multiple') {
            //Avoid text selection on pointer down
            event.preventDefault();
        }
    }, [isTouchPointerRef]);
    const onClick = useCallback((event) => {
        if (!getIsSelectionPending()) {
            handleSelect(event, keyExtractor, selectedKeys, selectionMode, isTouchPointerRef.current ? 'toggle' : selectionBehavior, isSelectionRequired, keyboardSelectionCursor, currentKey, onChange, onRangeChange);
            if (!event.shiftKey) {
                // reset keyboard cursor when using mouse to select
                keyboardSelectionCursor.current = undefined;
            }
        }
    }, [
        keyExtractor,
        selectedKeys,
        selectionMode,
        selectionBehavior,
        isSelectionRequired,
        keyboardSelectionCursor,
        currentKey,
        onChange,
        onRangeChange
    ]);
    // general keyboard events listen to keyUp for a11y
    const onKeyUp = useCallback((event) => {
        // older browser that we don't support returns 'Spacebar' for space key
        if (event.key === ' ' || (event.key === 'Enter' && allowEnterKey)) {
            handleSelect(event, keyExtractor, selectedKeys, selectionMode, selectionBehavior, isSelectionRequired, keyboardSelectionCursor, anchorKey, onChange, event.shiftKey && event.key === ' ' ? onRangeChange : undefined);
        }
    }, [
        keyExtractor,
        selectedKeys,
        selectionMode,
        selectionBehavior,
        isSelectionRequired,
        anchorKey,
        onChange,
        onRangeChange,
        allowEnterKey
    ]);
    const { direction } = useUser();
    // arrowKey events listen to keyDown so they can support holding them down
    const onKeyDown = useCallback((event) => {
        // prevent default (propagation) for keyDown to space bar causing container to scroll
        if (event.key === ' ') {
            event.preventDefault();
            return;
        }
        const key = keyboardSelectionCursor.current || currentKey;
        const isRtl = direction === 'rtl';
        const keyHandlers = {
            ArrowUp: getVerticalPrevNextKey?.(key, true),
            ArrowDown: getVerticalPrevNextKey?.(key, false),
            ArrowLeft: getHorizontalPrevNextKey?.(key, !isRtl),
            ArrowRight: getHorizontalPrevNextKey?.(key, isRtl)
        };
        const isBothDirections = getVerticalPrevNextKey && getHorizontalPrevNextKey;
        if (Object.keys(keyHandlers).includes(event.key)) {
            if (event.shiftKey && scrollToKey && selectionMode === 'multiple') {
                //Avoid increasing range of selection text selection with arrow keys
                event.preventDefault();
                let keySet = selectedKeys;
                // on first selection event, set keyboard cursor to start at currentKey
                if (!keyboardSelectionCursor.current && isKeyDefined(currentKey)) {
                    keySet = { all: false, keys: new Set([currentKey]) };
                }
                const newAnchorKey = keyHandlers[event.key];
                const cursorKey = newAnchorKey?.();
                if (cursorKey != null) {
                    // keep visible
                    scrollToKey(cursorKey);
                    // if in 2D, use range selection to extend or subtract
                    if (isBothDirections) {
                        if (onRangeChange && currentKey != null) {
                            onRangeChange({
                                value: { start: currentKey, end: cursorKey },
                                eventType: getEventType(event)
                            });
                        }
                    }
                    else {
                        // extend selection
                        if (!containsKey(keySet, cursorKey)) {
                            keySet = addKey(keySet, cursorKey);
                            // subtract from selection
                        }
                        else if (keyboardSelectionCursor.current != null &&
                            keyboardSelectionCursor.current !== cursorKey) {
                            keySet = removeKey(keySet, keyboardSelectionCursor.current, isSelectionRequired);
                        }
                        if (selectedKeys != keySet && onChange) {
                            onChange({ value: keySet, target: event.target });
                        }
                    }
                    // update selection cursor
                    keyboardSelectionCursor.current = cursorKey;
                }
            }
            else {
                // reset keyBoard on non-shifted arrow use as this interrupts the extend mode (and would make for messy logic that doesn't align with current Jet behavior)
                keyboardSelectionCursor.current = undefined;
            }
        }
    }, [
        selectedKeys,
        isSelectionRequired,
        onChange,
        currentKey,
        getVerticalPrevNextKey,
        getHorizontalPrevNextKey,
        scrollToKey,
        direction,
        onRangeChange,
        selectionMode
    ]);
    const selectionProps = selectionMode === 'none' || onChange == null
        ? {}
        : { onPointerDown, onClick, onKeyDown, onKeyUp };
    return { selectionProps };
}

export { useSelection as u };
//# sourceMappingURL=useSelection-ce0f9a43.js.map
