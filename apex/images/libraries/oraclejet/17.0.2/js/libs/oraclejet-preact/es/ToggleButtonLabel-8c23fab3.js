/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs } from 'preact/jsx-runtime';
import { Fragment } from 'preact';
import { B as ButtonLabelLayout } from './ButtonLabelLayout-03cfed16.js';
import { u as useId } from './useId-03dbfdf0.js';
import { H as HiddenAccessible } from './HiddenAccessible-61197e7c.js';
import { u as usePress } from './usePress-97fc1cf1.js';
import { styles } from './UNSAFE_BaseButton/themes/BaseButtonStyles.css.js';
import { c as classNames } from './classNames-4e12b00d.js';
import { m as mergeProps } from './mergeProps-88ea8306.js';
import './TabbableModeContext-7d8ad946.js';
import { u as useTabbableMode } from './useTabbableMode-a3a351d0.js';

const ToggleButtonInput = ({ isDisabled, isChecked, isSwitch, inputName, inputType, value, inputId, startIcon, endIcon, display, onAction, size, label, onBlur, onFocus, onMouseEnter, onMouseLeave, onTouchEnd, onTouchStart }) => {
    const { pressProps } = usePress((e) => onAction?.(e));
    const { tabbableModeProps } = useTabbableMode(isDisabled);
    const onKeyDown = (event) => {
        const key = event.key;
        switch (key) {
            case 'ArrowLeft':
            case 'ArrowRight': {
                event.preventDefault();
                break;
            }
        }
    };
    const keyProps = { onKeyDown };
    const mergedProps = mergeProps(pressProps, tabbableModeProps, keyProps);
    const inputElement = (jsx(HiddenAccessible, { children: jsx("input", { ...(isSwitch ? { role: 'switch' } : {}), type: inputType, checked: isChecked, name: inputName, value: value, disabled: isDisabled, ...mergedProps, id: inputId }) }));
    const isLabel = (!startIcon && !endIcon) || display === 'label';
    const isIcon = display === 'icons';
    const wrapperClasses = classNames([
        styles.inputLabel,
        !isIcon ? styles.labelSizes[size ?? 'md'] : undefined,
        !isLabel && styles.min
    ]);
    // For input types, must use labels and modify approach for button
    return isLabel ? (jsxs("label", { for: inputId, class: wrapperClasses, onBlur: onBlur, onFocus: onFocus, onMouseEnter: onMouseEnter, onMouseLeave: onMouseLeave, onTouchEnd: onTouchEnd, onTouchStart: onTouchStart, children: [label, inputElement] })) : (jsxs("label", { for: inputId, class: wrapperClasses, onBlur: onBlur, onFocus: onFocus, onMouseEnter: onMouseEnter, onMouseLeave: onMouseLeave, onTouchEnd: onTouchEnd, onTouchStart: onTouchStart, children: [jsx(ButtonLabelLayout, { display: display, startIcon: startIcon, endIcon: endIcon, size: size, children: label }), inputElement, display === 'icons' ? jsx(HiddenAccessible, { children: label }) : undefined] }));
};
ToggleButtonInput.displayName = 'ToggleButtonInput';

const ToggleButtonLabel = ({ isDisabled, isSelected, isToggle = true, inputName, inputType, value, startIcon, endIcon, display, onAction, size, label, onBlur, onFocus, onMouseEnter, onMouseLeave, onTouchEnd, onTouchStart }) => {
    const isInput = inputType === 'radio' || inputType === 'checkbox';
    const labelOnly = (!startIcon && !endIcon) || display === 'label';
    // preact useId fails to be unique on storybook pages, each canvas starts from scratch
    //const childId = useId() + '-' + (isInput ? inputName : '');
    const childId = useId();
    const inputElement = isInput ? (jsx(ToggleButtonInput, { isSwitch: !isToggle, onAction: onAction, isChecked: isSelected, inputType: inputType, inputName: inputName, value: value, inputId: childId, isDisabled: isDisabled, label: label, display: display, startIcon: startIcon, endIcon: endIcon, size: size, onBlur: onBlur, onFocus: onFocus, onMouseEnter: onMouseEnter, onMouseLeave: onMouseLeave, onTouchEnd: onTouchEnd, onTouchStart: onTouchStart })) : undefined;
    if (!isInput) {
        // For standalone toggles, no need for labels
        return labelOnly ? (jsx(Fragment, { children: label })) : (jsx(ButtonLabelLayout, { display: display, startIcon: startIcon, endIcon: endIcon, size: size, children: label }));
    }
    else {
        // For input types, must use labels and modify approach for button
        return jsx(Fragment, { children: inputElement });
    }
};
ToggleButtonLabel.displayName = 'ToggleButtonLabel';

export { ToggleButtonLabel as T };
//# sourceMappingURL=ToggleButtonLabel-8c23fab3.js.map
