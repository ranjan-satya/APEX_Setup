/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var hooks = require('preact/hooks');
var keys = require('./keys-a4b54295.js');
var UNSAFE_Selector_themes_SelectorStyles_css = require('./UNSAFE_Selector/themes/SelectorStyles.css.js');
var StyledCheckbox = require('./StyledCheckbox-7576d44a.js');
var useActive = require('./useActive-b15c9e7e.js');
var useFocus = require('./useFocus-1b288fb9.js');
var useTestId = require('./useTestId-8234ec1e.js');
var useHover = require('./useHover-910b8e32.js');

/**
 * The Selector component renders checkboxes in collections to support selection.
 */
function Selector({ 'aria-label': ariaLabel, 'aria-labelledby': ariaLabelledby, rowKey, selectedKeys, isPartial, selectionMode = 'multiple', onChange, testId }) {
    const inputRef = hooks.useRef(null);
    const { isActive, activeProps } = useActive.useActive();
    const { isFocus, focusProps } = useFocus.useFocus();
    const { onKeyUp: onActiveKeyUp, ...activeRest } = activeProps;
    const { isHover, hoverProps } = useHover.useHover();
    const onSelectionHandler = hooks.useCallback((event) => {
        const { key } = event;
        if (key !== undefined && key !== ' ') {
            return;
        }
        handleSelect(event, rowKey, selectedKeys, selectionMode, onChange);
    }, [rowKey, selectedKeys, selectionMode, onChange]);
    // because we stop event propagation on selection, we must ensure
    // that the event gets passed to useActive's onKeyUp handler first
    // so that it doesn't get stuck in "active" mode
    const onKeyUpHandler = hooks.useCallback((e) => {
        onActiveKeyUp(e);
        onSelectionHandler(e);
    }, [onActiveKeyUp, onSelectionHandler]);
    const onClick = hooks.useCallback((e) => {
        inputRef.current?.focus();
        onSelectionHandler(e);
    }, [onSelectionHandler]);
    const isChecked = isPartial
        ? 'partial'
        : keys.containsKey(selectedKeys, rowKey)
            ? 'checked'
            : 'unchecked';
    const testIdProps = useTestId.useTestId(testId);
    return (jsxRuntime.jsx("div", { class: UNSAFE_Selector_themes_SelectorStyles_css.styles.base, onClick: onClick, onKeyUp: onKeyUpHandler, ...activeRest, ...testIdProps, ...hoverProps, children: jsxRuntime.jsx(StyledCheckbox.StyledCheckbox, { ref: inputRef, isHover: isHover, isActive: isActive, isChecked: isChecked, isFocusRingShown: isFocus, "aria-label": ariaLabel, "aria-labelledby": ariaLabelledby, onKeyDown: onKeyDown, ...focusProps }) }));
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
    const checked = keys.containsKey(selectedKeys, rowKey);
    if (checked) {
        newKeys = keys.removeKey(selectedKeys, rowKey, false);
    }
    else {
        if (selectionMode === 'single') {
            newKeys = { all: false, keys: new Set([rowKey]) };
        }
        else {
            newKeys = keys.addKey(selectedKeys, rowKey);
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

exports.Selector = Selector;
//# sourceMappingURL=Selector-cc35dbb1.js.map
