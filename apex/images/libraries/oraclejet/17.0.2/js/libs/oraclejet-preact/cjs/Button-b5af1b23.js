/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var BaseButton = require('./BaseButton-ff6f39f2.js');
var ButtonLabelLayout = require('./ButtonLabelLayout-3399b9e1.js');
var compat = require('preact/compat');

/**
 * A button is a pressable element that invokes an action.
 */
const Button = compat.forwardRef(({ variant = 'outlined', isDisabled = false, isRepeat = false, size = 'md', display = 'all', type: buttonType = 'button', endIcon, startIcon, autofocus, edge, testId, onAction, label = '', 'aria-label': accessibleLabel, 'aria-describedby': ariaDescribedBy, width, onBlur, onFocus, onMouseEnter, onMouseLeave, onTouchEnd, onTouchStart }, ref) => {
    const labelOnly = (!startIcon && !endIcon) || display === 'label';
    const elementDetails = {
        type: 'button',
        buttonType: buttonType
    };
    const content = labelOnly ? (label) : (jsxRuntime.jsx(ButtonLabelLayout.ButtonLabelLayout, { display: display, startIcon: startIcon, endIcon: endIcon, size: size, children: label }));
    return (jsxRuntime.jsx(BaseButton.BaseButton, { ref: ref, elementDetails: elementDetails, isDisabled: isDisabled, isRepeat: isRepeat, size: size, width: width, autofocus: autofocus, edge: edge, variant: variant, styling: [labelOnly ? 'default' : 'min'], onAction: onAction, "aria-label": accessibleLabel ?? label, "aria-describedby": ariaDescribedBy, onBlur: onBlur, onFocus: onFocus, onMouseEnter: onMouseEnter, onMouseLeave: onMouseLeave, onTouchEnd: onTouchEnd, onTouchStart: onTouchStart, testId: testId, children: content }));
});
Button.displayName = 'Button';

exports.Button = Button;
//# sourceMappingURL=Button-b5af1b23.js.map
