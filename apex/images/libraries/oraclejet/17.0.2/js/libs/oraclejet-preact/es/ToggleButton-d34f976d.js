/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { forwardRef } from 'preact/compat';
import { B as BaseButton } from './BaseButton-5b2791b1.js';
import { u as useToggleAction } from './useToggleAction-fc0f5399.js';
import { m as mergeProps } from './mergeProps-88ea8306.js';
import { a as toggleStyling } from './toggleButtonUtils-039c4eae.js';
import { p as processGlobals } from './buttonUtils-6f35c4f4.js';
import { T as ToggleButtonLabel } from './ToggleButtonLabel-8c23fab3.js';

/**
 * ToggleButtons direct users to toggle a state with a single tap, click, or keystroke.
 */
const ToggleButton = forwardRef(({ startIcon, endIcon, variant = 'outlined', size = 'md', isDisabled = false, isSelected = false, onToggle, display = 'all', autofocus, testId, label, 'aria-label': accessibleLabel, 'aria-describedby': ariaDescribedBy, width, ...props }, ref) => {
    const { globalEventProps } = processGlobals(props);
    const labelOnly = (!startIcon && !endIcon) || display === 'label';
    const { triggerProps } = useToggleAction({
        isDisabled: isDisabled,
        onToggle: onToggle
    });
    const styling = toggleStyling('auto', isSelected, false, false, variant === 'outlined', undefined, labelOnly);
    const ariaProps = { 'aria-describedby': ariaDescribedBy };
    return (jsx(BaseButton, { ...mergeProps(triggerProps, globalEventProps, ariaProps), ref: ref, variant: variant, isDisabled: isDisabled, size: size, width: width, "aria-pressed": isSelected, autofocus: autofocus, styling: styling, "aria-label": accessibleLabel ?? label, testId: testId, ...globalEventProps, children: jsx(ToggleButtonLabel, { onAction: () => onToggle?.({ value: isSelected }), label: label, isDisabled: isDisabled, display: display, startIcon: startIcon, endIcon: endIcon }) }));
});
ToggleButton.displayName = 'ToggleButton';

export { ToggleButton as T };
//# sourceMappingURL=ToggleButton-d34f976d.js.map
