/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { useRef, useCallback } from 'preact/hooks';
import { c as containsKey, r as removeKey, a as addKey } from './keys-df361af9.js';
import { styles } from './UNSAFE_Selector/themes/SelectorStyles.css.js';
import { S as StyledCheckbox } from './StyledCheckbox-7dc33a92.js';
import { u as useActive } from './useActive-7d9737a5.js';
import { u as useFocus } from './useFocus-38c95977.js';
import { u as useTestId } from './useTestId-adde554c.js';
import { u as useHover } from './useHover-d5088fcd.js';

/**
 * The Selector component renders checkboxes in collections to support selection.
 */
function Selector({ 'aria-label': ariaLabel, 'aria-labelledby': ariaLabelledby, rowKey, selectedKeys, isPartial, selectionMode = 'multiple', onChange, testId }) {
    const inputRef = useRef(null);
    const { isActive, activeProps } = useActive();
    const { isFocus, focusProps } = useFocus();
    const { onKeyUp: onActiveKeyUp, ...activeRest } = activeProps;
    const { isHover, hoverProps } = useHover();
    const onSelectionHandler = useCallback((event) => {
        const { key } = event;
        if (key !== undefined && key !== ' ') {
            return;
        }
        handleSelect(event, rowKey, selectedKeys, selectionMode, onChange);
    }, [rowKey, selectedKeys, selectionMode, onChange]);
    // because we stop event propagation on selection, we must ensure
    // that the event gets passed to useActive's onKeyUp handler first
    // so that it doesn't get stuck in "active" mode
    const onKeyUpHandler = useCallback((e) => {
        onActiveKeyUp(e);
        onSelectionHandler(e);
    }, [onActiveKeyUp, onSelectionHandler]);
    const onClick = useCallback((e) => {
        inputRef.current?.focus();
        onSelectionHandler(e);
    }, [onSelectionHandler]);
    const isChecked = isPartial
        ? 'partial'
        : containsKey(selectedKeys, rowKey)
            ? 'checked'
            : 'unchecked';
    const testIdProps = useTestId(testId);
    return (jsx("div", { class: styles.base, onClick: onClick, onKeyUp: onKeyUpHandler, ...activeRest, ...testIdProps, ...hoverProps, children: jsx(StyledCheckbox, { ref: inputRef, isHover: isHover, isActive: isActive, isChecked: isChecked, isFocusRingShown: isFocus, "aria-label": ariaLabel, "aria-labelledby": ariaLabelledby, onKeyDown: onKeyDown, ...focusProps }) }));
}
const handleSelect = (event, rowKey, selectedKeys, selectionMode, onChange) => {
    if (onChange) {
        const newKeys = getNewKeys(rowKey, selectedKeys, selectionMode);
        onChange({ value: newKeys, target: event.target });
        // we don't want container component like ListView to process the click event,
        // and we also stop the event propagation in keyup due to issue in JET-60156
        event.stopPropagation();
    }
};
const getNewKeys = (rowKey, selectedKeys, selectionMode) => {
    let newKeys;
    const checked = containsKey(selectedKeys, rowKey);
    if (checked) {
        newKeys = removeKey(selectedKeys, rowKey, false);
    }
    else {
        if (selectionMode === 'single') {
            newKeys = { all: false, keys: new Set([rowKey]) };
        }
        else {
            newKeys = addKey(selectedKeys, rowKey);
        }
    }
    return newKeys;
};
const onKeyDown = (event) => {
    if (event.key == ' ') {
        // prevent auto scrolling
        event.preventDefault();
    }
    else if (event.key == 'Enter') {
        // prevent active styles applied to checkbox
        event.stopPropagation();
    }
};

export { Selector as S };
//# sourceMappingURL=Selector-e56a73a8.js.map
