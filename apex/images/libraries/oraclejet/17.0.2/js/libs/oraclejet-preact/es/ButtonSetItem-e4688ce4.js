/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { B as ButtonSetButton } from './ButtonSetButton-a7716c28.js';
import { B as ButtonSetIconButton } from './ButtonSetIconButton-c5860cc1.js';
import { useCallback } from 'preact/hooks';
import { u as useButtonSetContext } from './useButtonSetContext-6a483d7f.js';
import './ButtonSetPositionContext-5730d367.js';
import { u as useButtonSetPositionContext } from './useButtonSetPositionContext-1dc5156a.js';
import { t as toggleButtonSetItem } from './toggleButtonUtils-039c4eae.js';

/**
 * A ButtonSetItem specifies buttons for a buttonset.
 */
const ButtonSetItem = ({ isDisabled: isPropsDisabled, ...props }) => {
    // The buttonSetItem context determines if a buttonset button or icon button rendered
    // The buttonset context control provides variant, size, isItemDisabled, inputType, inputName. value
    // The buttonset position control provides position, isSelected,
    const { display, inputType, isDisabled: isSetDisabled, buttonSetValue, onCommit, ...buttonsetProps } = useButtonSetContext();
    const positionProps = useButtonSetPositionContext();
    // The property isItemDisabled, if defined, overrides buttonSetItem settings.
    const isItemDisabled = isPropsDisabled ?? isSetDisabled;
    const iconProps = {
        tooltip: props.label,
        value: props.value
    };
    const isRadio = inputType === 'radio';
    const onToggleHandlerSingle = useCallback(() => {
        if (isRadio) {
            onCommit?.({
                previousValue: buttonSetValue,
                value: [props.value]
            });
        }
    }, [buttonSetValue, onCommit, isRadio, props.value]);
    const onToggleHandlerMultiple = useCallback(() => {
        if (!isRadio) {
            const newButtonSetValue = toggleButtonSetItem(props.value, buttonSetValue);
            onCommit?.({
                previousValue: buttonSetValue,
                value: newButtonSetValue
            });
        }
    }, [buttonSetValue, onCommit, isRadio, props.value]);
    // When toggled, the button invokes the buttonset commit, which can update the buttonset value, which then
    // updates the buttonset context buttonSetValue causing this buttonSetItem to render appropriately.
    return display === 'icons' ? (jsx(ButtonSetIconButton, { isSelected: isButtonSetItemSelected(props.value, buttonSetValue), onToggle: isRadio ? onToggleHandlerSingle : onToggleHandlerMultiple, isDisabled: isItemDisabled, ...iconProps, ...positionProps, ...buttonsetProps, children: props.startIcon })) : (jsx(ButtonSetButton, { isSelected: isButtonSetItemSelected(props.value, buttonSetValue), onToggle: isRadio ? onToggleHandlerSingle : onToggleHandlerMultiple, isDisabled: isItemDisabled, ...props, ...positionProps, ...buttonsetProps }));
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

export { ButtonSetItem as B };
//# sourceMappingURL=ButtonSetItem-e4688ce4.js.map
