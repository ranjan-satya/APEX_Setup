/* @oracle/oraclejet-preact: undefined */
import { jsxs, jsx, Fragment } from 'preact/jsx-runtime';
import { L as LabelValueLayout } from './LabelValueLayout-23b74176.js';
import { u as useComponentTheme } from './useComponentTheme-d2f9e47f.js';
import './FormFieldContext-68eb5946.js';
import { u as useFormFieldContext } from './useFormFieldContext-626574fd.js';
import { F as Flex } from './Flex-24628925.js';
import { c as classNames } from './classNames-4e12b00d.js';
import './InputGroupContext-20bdbd6e.js';
import { u as useInputGroupContext } from './useInputGroupContext-1d19411e.js';
import { u as useUser } from './useUser-99920e02.js';
import { TextFieldRedwoodTheme } from './UNSAFE_TextField/themes/redwood/TextFieldTheme.js';
import { S as StyledTextField } from './StyledTextField-c79f5438.js';
import { u as useTestId } from './useTestId-adde554c.js';

// Renders the oj-text-field-container dom which includes the
// start, middle (where the inside label and inputElem goes),
// and end pieces of the form component.
// This does not include user assistance because that is rendered outside the
// oj-text-field-container; that is rendered in the TextField component.
const TextFieldContent = ({ contentVariant = 'input', insideLabel, mainContent, startContent, statusVariant = 'none', styleVariant = 'default', endContent, resize, rootRef, hasZeroStartMargin }) => {
    const { isDisabled, isFocused, isLoading } = useFormFieldContext();
    const { direction } = useUser();
    const isLtr = direction === 'ltr';
    const hasInsideLabel = insideLabel !== undefined;
    const inputGroupContext = useInputGroupContext();
    const hasGroupContext = inputGroupContext !== null;
    // depending on browser direction, apply the appropriate styling.
    // when 'rtl' the flex row direction is reversed.
    const inputGroupPosition = inputGroupContext
        ? inputGroupContext.last
            ? isLtr
                ? 'groupRight'
                : 'groupLeft'
            : inputGroupContext.index === 0
                ? isLtr
                    ? 'groupLeft'
                    : 'groupRight'
                : 'groupMiddle'
        : undefined;
    const { variantClasses, styles: { textFieldContainerBase } } = useComponentTheme(TextFieldRedwoodTheme, {
        statusVariant,
        styleVariant,
        contentVariant,
        insideLabel: hasInsideLabel ? 'hasInsideLabel' : 'noInsideLabel',
        focused: isFocused ? 'isFocused' : 'notFocused',
        disabled: isDisabled ? 'isDisabled' : 'notDisabled',
        loading: isLoading ? 'isLoading' : 'notLoading',
        resize: resize ?? 'none',
        withinGroup: hasGroupContext ? 'isWithinGroup' : undefined,
        inputGroupPosition
    });
    const { variantClasses: startContentStyles } = useComponentTheme(TextFieldRedwoodTheme, {
        startContent: hasInsideLabel ? 'hasInsideLabel' : 'noInsideLabel',
        startContentMargin: hasZeroStartMargin ? 'noStartMargin' : 'hasStartMargin',
        startContentDisabled: isDisabled ? 'isDisabled' : 'notDisabled'
    });
    const { variantClasses: middleStyles, styles: { textFieldEndContent } } = useComponentTheme(TextFieldRedwoodTheme, {
        middleContent: contentVariant,
        textAreaResizeDirection: resize && contentVariant === 'textarea' ? direction : undefined
    });
    return (jsxs("div", { role: "presentation", class: classNames([variantClasses, textFieldContainerBase]), ref: rootRef, children: [startContent && (jsx("span", { class: startContentStyles, children: jsx(Flex, { justify: "center", align: "center", hasZeroMargins: true, children: startContent }) })), jsxs("div", { class: middleStyles, children: [insideLabel, mainContent] }), endContent && (jsx("span", { class: textFieldEndContent, children: jsx(Flex, { justify: "center", align: "center", hasZeroMargins: true, children: endContent }) }))] }));
};

// TODO: Do we need named props for start/endContent, or could they just be children that get
// wrapped in a flex layout?  (from review on 3/8/22)
// TODO: Instead of passing the inputElem, label, and userAssistance as named props here, should we
// have a separate layout component that lays them out, which could just be passed as a child
// to the TextField?  (from review on 3/8/22)
const TextField = ({ contentVariant, id, endContent, mainContent, startContent, columnSpan, compactUserAssistance, inlineUserAssistance, label, labelEdge, labelStartWidth, mainFieldRef, resize, statusVariant, styleVariant, hasZeroStartMargin, rootRef, onFocus, onBlur, onKeyDown, onMouseDown, onMouseEnter, onMouseLeave, testId }) => {
    const testIdProps = useTestId(testId);
    // TODO: How should a parent form component render component-specific content within TextField,
    // for example an aria live region?  Instead of a children prop on TextField, could the parent
    // component pass comp-specific content through other props, like inputElem?   The parent could
    // have its own component that composes inputElem with additional DOM.  (from review on 3/8/22)
    const isStartTop = label !== undefined && (labelEdge === 'start' || labelEdge === 'top');
    const textFieldContent = (jsx(TextFieldContent, { contentVariant: contentVariant, endContent: endContent, mainContent: mainContent, resize: resize, rootRef: mainFieldRef, startContent: startContent, statusVariant: statusVariant, styleVariant: styleVariant, hasZeroStartMargin: hasZeroStartMargin, ...(!isStartTop ? { insideLabel: label } : {}) }));
    const innerContent = (jsxs(Fragment, { children: [compactUserAssistance, textFieldContent, inlineUserAssistance] }));
    const styledTextFieldChildren = isStartTop ? (jsx(LabelValueLayout, { label: label, labelEdge: labelEdge, labelStartWidth: labelStartWidth, children: innerContent })) : (innerContent);
    return (jsx(StyledTextField, { id: id, columnSpan: columnSpan, hasInsideLabel: label !== undefined && labelEdge === 'inside', onFocusIn: onFocus, onFocusOut: onBlur, onKeyDown: onKeyDown, onMouseDown: onMouseDown, onMouseEnter: onMouseEnter, onMouseLeave: onMouseLeave, ref: rootRef, variant: styleVariant, ...testIdProps, children: styledTextFieldChildren }));
};

export { TextField as T };
//# sourceMappingURL=TextField-323fe0e9.js.map
