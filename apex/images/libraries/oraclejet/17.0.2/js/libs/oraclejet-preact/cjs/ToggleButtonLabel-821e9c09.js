/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var preact = require('preact');
var ButtonLabelLayout = require('./ButtonLabelLayout-3399b9e1.js');
var useId = require('./useId-6c0eeb27.js');
var HiddenAccessible = require('./HiddenAccessible-087eb49a.js');
var usePress = require('./usePress-00deca01.js');
var UNSAFE_BaseButton_themes_BaseButtonStyles_css = require('./UNSAFE_BaseButton/themes/BaseButtonStyles.css.js');
var classNames = require('./classNames-c14c6ef3.js');
var mergeProps = require('./mergeProps-e3da7237.js');
require('./TabbableModeContext-e99d527e.js');
var useTabbableMode = require('./useTabbableMode-5c8fd9e5.js');

const ToggleButtonInput = ({ isDisabled, isChecked, isSwitch, inputName, inputType, value, inputId, startIcon, endIcon, display, onAction, size, label, onBlur, onFocus, onMouseEnter, onMouseLeave, onTouchEnd, onTouchStart }) => {
    const { pressProps } = usePress.usePress((e) => onAction?.(e));
    const { tabbableModeProps } = useTabbableMode.useTabbableMode(isDisabled);
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
    const mergedProps = mergeProps.mergeProps(pressProps, tabbableModeProps, keyProps);
    const inputElement = (jsxRuntime.jsx(HiddenAccessible.HiddenAccessible, { children: jsxRuntime.jsx("input", { ...(isSwitch ? { role: 'switch' } : {}), type: inputType, checked: isChecked, name: inputName, value: value, disabled: isDisabled, ...mergedProps, id: inputId }) }));
    const isLabel = (!startIcon && !endIcon) || display === 'label';
    const isIcon = display === 'icons';
    const wrapperClasses = classNames.classNames([
        UNSAFE_BaseButton_themes_BaseButtonStyles_css.styles.inputLabel,
        !isIcon ? UNSAFE_BaseButton_themes_BaseButtonStyles_css.styles.labelSizes[size ?? 'md'] : undefined,
        !isLabel && UNSAFE_BaseButton_themes_BaseButtonStyles_css.styles.min
    ]);
    // For input types, must use labels and modify approach for button
    return isLabel ? (jsxRuntime.jsxs("label", { for: inputId, class: wrapperClasses, onBlur: onBlur, onFocus: onFocus, onMouseEnter: onMouseEnter, onMouseLeave: onMouseLeave, onTouchEnd: onTouchEnd, onTouchStart: onTouchStart, children: [label, inputElement] })) : (jsxRuntime.jsxs("label", { for: inputId, class: wrapperClasses, onBlur: onBlur, onFocus: onFocus, onMouseEnter: onMouseEnter, onMouseLeave: onMouseLeave, onTouchEnd: onTouchEnd, onTouchStart: onTouchStart, children: [jsxRuntime.jsx(ButtonLabelLayout.ButtonLabelLayout, { display: display, startIcon: startIcon, endIcon: endIcon, size: size, children: label }), inputElement, display === 'icons' ? jsxRuntime.jsx(HiddenAccessible.HiddenAccessible, { children: label }) : undefined] }));
};
ToggleButtonInput.displayName = 'ToggleButtonInput';

const ToggleButtonLabel = ({ isDisabled, isSelected, isToggle = true, inputName, inputType, value, startIcon, endIcon, display, onAction, size, label, onBlur, onFocus, onMouseEnter, onMouseLeave, onTouchEnd, onTouchStart }) => {
    const isInput = inputType === 'radio' || inputType === 'checkbox';
    const labelOnly = (!startIcon && !endIcon) || display === 'label';
    // preact useId fails to be unique on storybook pages, each canvas starts from scratch
    //const childId = useId() + '-' + (isInput ? inputName : '');
    const childId = useId.useId();
    const inputElement = isInput ? (jsxRuntime.jsx(ToggleButtonInput, { isSwitch: !isToggle, onAction: onAction, isChecked: isSelected, inputType: inputType, inputName: inputName, value: value, inputId: childId, isDisabled: isDisabled, label: label, display: display, startIcon: startIcon, endIcon: endIcon, size: size, onBlur: onBlur, onFocus: onFocus, onMouseEnter: onMouseEnter, onMouseLeave: onMouseLeave, onTouchEnd: onTouchEnd, onTouchStart: onTouchStart })) : undefined;
    if (!isInput) {
        // For standalone toggles, no need for labels
        return labelOnly ? (jsxRuntime.jsx(preact.Fragment, { children: label })) : (jsxRuntime.jsx(ButtonLabelLayout.ButtonLabelLayout, { display: display, startIcon: startIcon, endIcon: endIcon, size: size, children: label }));
    }
    else {
        // For input types, must use labels and modify approach for button
        return jsxRuntime.jsx(preact.Fragment, { children: inputElement });
    }
};
ToggleButtonLabel.displayName = 'ToggleButtonLabel';

exports.ToggleButtonLabel = ToggleButtonLabel;
//# sourceMappingURL=ToggleButtonLabel-821e9c09.js.map
