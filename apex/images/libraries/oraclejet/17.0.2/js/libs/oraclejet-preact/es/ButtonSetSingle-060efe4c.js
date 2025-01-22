/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { forwardRef } from 'preact/compat';
import { B as ButtonSetContext } from './useButtonSetContext-6a483d7f.js';
import 'preact/hooks';
import { B as ButtonSet } from './ButtonSet-fa7e8acd.js';
import { p as processGlobals } from './buttonUtils-6f35c4f4.js';
import { u as useId } from './useId-03dbfdf0.js';

/**
 * ButtonSet allow users to select the state of one or more related options.
 */
const ButtonSetSingle = forwardRef(({ children, value: buttonSetItemValue, onCommit, display = 'all', testId, size = 'md', isDisabled = false, variant = 'outlined', layoutWidth = 'auto', 'aria-label': accessibleLabel, 'aria-labelledby': ariaLabelledBy, 'aria-controls': ariaControls, 'aria-describedby': ariaDescribedBy, width, ...props }, ref) => {
    const { globalEventProps } = processGlobals(props);
    return (jsx(ButtonSetContext.Provider, { value: {
            variant: variant,
            size: size,
            isDisabled: isDisabled,
            layoutWidth: layoutWidth,
            inputType: 'radio',
            inputName: useId(),
            display: display,
            width: width,
            buttonSetValue: buttonSetItemValue ? [buttonSetItemValue] : [],
            onCommit: (detail) => {
                onCommit(convertDetail(detail));
            }
        }, children: jsx(ButtonSet, { ref: ref, width: width, testId: testId, "aria-label": accessibleLabel, "aria-labelledby": ariaLabelledBy, "aria-describedby": ariaDescribedBy, "aria-controls": ariaControls, ...globalEventProps, children: children }) }));
});
function convertDetail(detail) {
    return {
        value: detail.value ? detail.value[0] : undefined,
        previousValue: detail.previousValue ? detail.previousValue[0] : undefined
    };
}
ButtonSetSingle.displayName = 'ButtonSetSingle';

export { ButtonSetSingle as B };
//# sourceMappingURL=ButtonSetSingle-060efe4c.js.map
