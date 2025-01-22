/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var compat = require('preact/compat');
var useButtonSetContext = require('./useButtonSetContext-a2f31c8e.js');
require('preact/hooks');
var ButtonSet = require('./ButtonSet-dc50f9d4.js');
var buttonUtils = require('./buttonUtils-252661e7.js');
var useId = require('./useId-6c0eeb27.js');

/**
 * ButtonSet allow users to select the state of one or more related options.
 */
const ButtonSetSingle = compat.forwardRef(({ children, value: buttonSetItemValue, onCommit, display = 'all', testId, size = 'md', isDisabled = false, variant = 'outlined', layoutWidth = 'auto', 'aria-label': accessibleLabel, 'aria-labelledby': ariaLabelledBy, 'aria-controls': ariaControls, 'aria-describedby': ariaDescribedBy, width, ...props }, ref) => {
    const { globalEventProps } = buttonUtils.processGlobals(props);
    return (jsxRuntime.jsx(useButtonSetContext.ButtonSetContext.Provider, { value: {
            variant: variant,
            size: size,
            isDisabled: isDisabled,
            layoutWidth: layoutWidth,
            inputType: 'radio',
            inputName: useId.useId(),
            display: display,
            width: width,
            buttonSetValue: buttonSetItemValue ? [buttonSetItemValue] : [],
            onCommit: (detail) => {
                onCommit(convertDetail(detail));
            }
        }, children: jsxRuntime.jsx(ButtonSet.ButtonSet, { ref: ref, width: width, testId: testId, "aria-label": accessibleLabel, "aria-labelledby": ariaLabelledBy, "aria-describedby": ariaDescribedBy, "aria-controls": ariaControls, ...globalEventProps, children: children }) }));
});
function convertDetail(detail) {
    return {
        value: detail.value ? detail.value[0] : undefined,
        previousValue: detail.previousValue ? detail.previousValue[0] : undefined
    };
}
ButtonSetSingle.displayName = 'ButtonSetSingle';

exports.ButtonSetSingle = ButtonSetSingle;
//# sourceMappingURL=ButtonSetSingle-e855d60d.js.map
