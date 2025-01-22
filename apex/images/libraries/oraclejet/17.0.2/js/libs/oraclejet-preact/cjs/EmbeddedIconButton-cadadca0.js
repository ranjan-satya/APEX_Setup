/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var BaseButton = require('./BaseButton-ff6f39f2.js');
var ButtonLabelLayout = require('./ButtonLabelLayout-3399b9e1.js');

const EmbeddedIconButton = ({ isDisabled = false, size = 'sm', onAction, 'aria-label': accessibleLabel, 'aria-describedby': ariaDescribedBy, 'aria-hidden': ariaHidden = false, ...props }) => {
    return (jsxRuntime.jsx(BaseButton.BaseButton, { elementDetails: { type: 'span', isFocusable: false }, isDisabled: isDisabled, size: size, variant: 'ghost', styling: ['min'], onAction: onAction, "aria-describedby": ariaDescribedBy, "aria-hidden": ariaHidden, "aria-label": accessibleLabel, children: jsxRuntime.jsx(ButtonLabelLayout.ButtonLabelLayout, { display: 'icons', startIcon: props.children, size: size }) }));
};

exports.EmbeddedIconButton = EmbeddedIconButton;
//# sourceMappingURL=EmbeddedIconButton-cadadca0.js.map
