/* @oracle/oraclejet-preact: undefined */
import { useState, useRef, useCallback } from 'preact/hooks';
import { i as isEqual } from './eventsUtils-d544e874.js';
import { jsx } from 'preact/jsx-runtime';
import { B as BaseButton } from './BaseButton-5b2791b1.js';
import { T as Text } from './Text-da8588ce.js';
import { u as useTranslationBundle } from './useTranslationBundle-cd815e10.js';
import { clearButtonStyles } from './hooks/PRIVATE_useVisSelection/themes/ClearSelection.css.js';
import { L as Layer } from './Layer-9b06412e.js';
import 'preact/compat';
import './LayerHost-45f545d7.js';
import { F as Floating } from './Floating-9703160e.js';

/**
 * Clear selection button component
 */
const ClearSelectionButton = ({ onAction }) => {
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const clearSelectionLabel = `${translations.vis_clearSelection()}`;
    return (jsx("div", { class: clearButtonStyles.base, children: jsx(BaseButton, { styling: ['default'], elementDetails: { type: 'span', isFocusable: false, isLabel: true }, variant: "outlined", onAction: onAction, children: jsx(Text, { truncation: 'ellipsis', weight: 'inherit', children: clearSelectionLabel }) }) }));
};

/**
 * The default offset for clear selection mainAxis.
 */
const DEFAULT_OFFSET = 18;
function useClearSelection({ clearSelection }) {
    const [isVisible, setIsVisible] = useState(false);
    const coordinates = useRef({ x: 0, y: 0 });
    const tryToggleClearButton = (event, key, selectionMode, selectedIds) => {
        if (event.pointerType === 'touch' &&
            key === undefined &&
            selectionMode === 'multiple' &&
            selectedIds.size > 1) {
            setIsVisible(!isVisible);
            coordinates.current = { x: event.clientX, y: event.clientY };
            return true;
        }
        return false;
    };
    const offsetValue = { mainAxis: 2 * DEFAULT_OFFSET };
    const anchorRef = { current: coordinates.current };
    const clearSelectionContent = isVisible ? (jsx(Layer, { children: jsx(Floating, { anchorRef: anchorRef, offsetValue: offsetValue, placement: "top", flipOptions: { crossAxis: false, mainAxis: false }, shiftOptions: { crossAxis: true, mainAxis: true }, children: jsx(ClearSelectionButton, { onAction: () => {
                    setIsVisible(false);
                    clearSelection();
                } }) }) })) : null;
    return {
        clearSelectionContent,
        tryToggleClearButton
    };
}

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const NAVKEYS = ['ArrowUp', 'ArrowDown', 'ArrowLeft', 'ArrowRight'];
/**
 * The constant that defines time to wait to change selection after pointer up is fired.
 * If double click didn't happen
 */
const DBLCLICK_THRESHOLD = 250;
/**
 * Handles the selection.
 * @param itemId The id of the item.
 * @param selectedIds The set of selected item ids.
 * @param selectionMode The selection mode.
 * @param selectionBehavior The selection behavior. If 'toggle', unselected item will be selected and
 * vice versa. If 'replace', the item will replace the previous selection.
 * @param getDataById The callback to get item data from idDataMap.
 * @param onChange The callback to trigger when selection changes.
 */
const handleSelect = (itemId, selectedIds, selectionMode, selectionBehavior, getDataById, onChange) => {
    let ids = new Set([]);
    if (itemId != null) {
        ids = new Set(selectedIds);
        const isSelected = selectedIds.has(itemId);
        if (selectionBehavior === 'toggle') {
            if (isSelected) {
                ids.delete(itemId);
            }
            else if (selectionMode === 'single') {
                ids = new Set([itemId]); // only selection
            }
            else {
                ids.add(itemId); // add to selection in "multiple" selectionMode
            }
        }
        else if (!isSelected) {
            // In "multiple" selection mode, only replace selection if unselected item is selected.
            // In "single" selection mode, only need to replace if unselected item is selected.
            ids = new Set([itemId]);
        }
    }
    if (!isEqual(ids, selectedIds)) {
        onChange?.({ ids: [...ids], data: [...ids].map(getDataById) });
    }
};
/**
 * The hook to handle the selection behavior in vizualization components.
 */
function useSelection({ selection = [], selectionMode = 'none', idExtracter, onChange, isDrillEnabled, isKeyboardSelection, getDataById }) {
    const setTimeOutRef = useRef();
    const clearSelection = () => {
        handleSelect(undefined, new Set(selection), selectionMode, 'replace', getDataById, onChange);
    };
    const { clearSelectionContent, tryToggleClearButton } = useClearSelection({ clearSelection });
    const onPointerUp = useCallback((event) => {
        const selectedIds = new Set(selection);
        if (setTimeOutRef.current && isDrillEnabled) {
            clearTimeout(setTimeOutRef.current);
            setTimeOutRef.current = undefined;
            // doubleClick happened
            return;
        }
        const key = idExtracter(event);
        if (tryToggleClearButton(event, key, selectionMode, selectedIds)) {
            return;
        }
        const isMeta = event.metaKey;
        const isCtrl = event.ctrlKey;
        // If there was a previous pointerUp event that occurred that should prevent selection,
        // event.preventDefault was called
        if (event.defaultPrevented || (key == null && (isMeta || isCtrl))) {
            return;
        }
        // TODO: Encorporate more logic of dvt.EventManager.prototype._onClick
        // this is a simple version of EventManager.prototype._onClick. Currently we are not checking
        // for event.pageX, event.pageY to determine if they are exactly clicked on the same point.
        // for now, the assumption is that if the pointerups are within 250ms, they are for a same double click.
        if (isDrillEnabled) {
            setTimeOutRef.current = setTimeout(() => {
                // double pointer up didn't happen
                handleSelect(key, selectedIds, selectionMode, isMeta || isCtrl || event.pointerType === 'touch' ? 'toggle' : 'replace', getDataById, onChange);
                setTimeOutRef.current = undefined;
            }, DBLCLICK_THRESHOLD);
        }
        else {
            handleSelect(key, selectedIds, selectionMode, isMeta || isCtrl || event.pointerType === 'touch' ? 'toggle' : 'replace', getDataById, onChange);
        }
    }, [
        selection,
        selectionMode,
        onChange,
        idExtracter,
        isDrillEnabled,
        getDataById,
        tryToggleClearButton
    ]);
    const onContextMenu = useCallback((event) => {
        const key = idExtracter(event);
        const isCtrl = event.ctrlKey;
        handleSelect(key, new Set(selection), selectionMode, isCtrl ? 'toggle' : 'replace', getDataById, onChange);
    }, [selection, selectionMode, onChange, idExtracter, getDataById]);
    const onKeyUp = useCallback((event) => {
        const isShift = event.shiftKey;
        const isSpaceCtrl = event.ctrlKey && event.key === ' ';
        const isArrowKey = NAVKEYS.indexOf(event.key) !== -1;
        const itemKey = idExtracter(event);
        if (isArrowKey || isSpaceCtrl || (isKeyboardSelection && isKeyboardSelection(event))) {
            const behavior = isShift || isSpaceCtrl ? 'toggle' : 'replace';
            handleSelect(itemKey, new Set(selection), selectionMode, behavior, getDataById, onChange);
        }
    }, [selection, selectionMode, onChange, idExtracter, isKeyboardSelection, getDataById]);
    return {
        selectionContent: clearSelectionContent,
        selectionProps: selectionMode === 'none' || onChange == null
            ? {}
            : {
                onKeyUp,
                onContextMenu,
                onPointerUp
            }
    };
}

export { useSelection as u };
//# sourceMappingURL=useSelection-c12f7802.js.map
