/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var ButtonSetButton = require('./ButtonSetButton-b4c4501f.js');
var ButtonSetIconButton = require('./ButtonSetIconButton-50543cd6.js');
var hooks = require('preact/hooks');
var useButtonSetContext = require('./useButtonSetContext-a2f31c8e.js');
require('./ButtonSetPositionContext-6a358667.js');
var useButtonSetPositionContext = require('./useButtonSetPositionContext-409e4cd6.js');
var toggleButtonUtils = require('./toggleButtonUtils-0da9d88d.js');

/**
 * A ButtonSetItem specifies buttons for a buttonset.
 */
const ButtonSetItem = ({ isDisabled: isPropsDisabled, ...props }) => {
    // The buttonSetItem context determines if a buttonset button or icon button rendered
    // The buttonset context control provides variant, size, isItemDisabled, inputType, inputName. value
    // The buttonset position control provides position, isSelected,
    const { display, inputType, isDisabled: isSetDisabled, buttonSetValue, onCommit, ...buttonsetProps } = useButtonSetContext.useButtonSetContext();
    const positionProps = useButtonSetPositionContext.useButtonSetPositionContext();
    // The property isItemDisabled, if defined, overrides buttonSetItem settings.
    const isItemDisabled = isPropsDisabled ?? isSetDisabled;
    const iconProps = {
        tooltip: props.label,
        value: props.value
    };
    const isRadio = inputType === 'radio';
    const onToggleHandlerSingle = hooks.useCallback(() => {
        if (isRadio) {
            onCommit?.({
                previousValue: buttonSetValue,
                value: [props.value]
            });
        }
    }, [buttonSetValue, onCommit, isRadio, props.value]);
    const onToggleHandlerMultiple = hooks.useCallback(() => {
        if (!isRadio) {
            const newButtonSetValue = toggleButtonUtils.toggleButtonSetItem(props.value, buttonSetValue);
            onCommit?.({
                previousValue: buttonSetValue,
                value: newButtonSetValue
            });
        }
    }, [buttonSetValue, onCommit, isRadio, props.value]);
    // When toggled, the button invokes the buttonset commit, which can update the buttonset value, which then
    // updates the buttonset context buttonSetValue causing this buttonSetItem to render appropriately.
    return display === 'icons' ? (jsxRuntime.jsx(ButtonSetIconButton.ButtonSetIconButton, { isSelected: isButtonSetItemSelected(props.value, buttonSetValue), onToggle: isRadio ? onToggleHandlerSingle : onToggleHandlerMultiple, isDisabled: isItemDisabled, ...iconProps, ...positionProps, ...buttonsetProps, children: props.startIcon })) : (jsxRuntime.jsx(ButtonSetButton.ButtonSetButton, { isSelected: isButtonSetItemSelected(props.value, buttonSetValue), onToggle: isRadio ? onToggleHandlerSingle : onToggleHandlerMultiple, isDisabled: isItemDisabled, ...props, ...positionProps, ...buttonsetProps }));
};
/**
 * Check if buttonSetValue contains the buttonSetItem.
 * Note the buttonSetValue can be a set of strings or a string, depending on whether a checkbox or
 * radio type is used.
 * @param buttonSetItemValue
 * @param buttonSetValue
 * @returns
 */
function isButtonSetItemSelected(buttonSetItemValue, buttonSetValue) {
    if (!buttonSetValue) {
        return false;
    }
    return buttonSetValue?.indexOf(buttonSetItemValue) > -1;
}
ButtonSetItem.displayName = 'ButtonSetItem';

exports.ButtonSetItem = ButtonSetItem;
//# sourceMappingURL=ButtonSetItem-d92ddb10.js.map
