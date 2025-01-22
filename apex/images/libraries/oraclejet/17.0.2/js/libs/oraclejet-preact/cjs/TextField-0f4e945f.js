/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var LabelValueLayout = require('./LabelValueLayout-24937fa5.js');
var useComponentTheme = require('./useComponentTheme-082fc8e4.js');
require('./FormFieldContext-8418dc68.js');
var useFormFieldContext = require('./useFormFieldContext-20f419ef.js');
var Flex = require('./Flex-fbba4ad6.js');
var classNames = require('./classNames-c14c6ef3.js');
require('./InputGroupContext-05f2a46f.js');
var useInputGroupContext = require('./useInputGroupContext-4c10bd57.js');
var useUser = require('./useUser-a6d15333.js');
var UNSAFE_TextField_themes_redwood_TextFieldTheme = require('./UNSAFE_TextField/themes/redwood/TextFieldTheme.js');
var StyledTextField = require('./StyledTextField-351ea57e.js');
var useTestId = require('./useTestId-8234ec1e.js');

// Renders the oj-text-field-container dom which includes the
// start, middle (where the inside label and inputElem goes),
// and end pieces of the form component.
// This does not include user assistance because that is rendered outside the
// oj-text-field-container; that is rendered in the TextField component.
const TextFieldContent = ({ contentVariant = 'input', insideLabel, mainContent, startContent, statusVariant = 'none', styleVariant = 'default', endContent, resize, rootRef, hasZeroStartMargin }) => {
    const { isDisabled, isFocused, isLoading } = useFormFieldContext.useFormFieldContext();
    const { direction } = useUser.useUser();
    const isLtr = direction === 'ltr';
    const hasInsideLabel = insideLabel !== undefined;
    const inputGroupContext = useInputGroupContext.useInputGroupContext();
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
    const { variantClasses, styles: { textFieldContainerBase } } = useComponentTheme.useComponentTheme(UNSAFE_TextField_themes_redwood_TextFieldTheme.TextFieldRedwoodTheme, {
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
    const { variantClasses: startContentStyles } = useComponentTheme.useComponentTheme(UNSAFE_TextField_themes_redwood_TextFieldTheme.TextFieldRedwoodTheme, {
        startContent: hasInsideLabel ? 'hasInsideLabel' : 'noInsideLabel',
        startContentMargin: hasZeroStartMargin ? 'noStartMargin' : 'hasStartMargin',
        startContentDisabled: isDisabled ? 'isDisabled' : 'notDisabled'
    });
    const { variantClasses: middleStyles, styles: { textFieldEndContent } } = useComponentTheme.useComponentTheme(UNSAFE_TextField_themes_redwood_TextFieldTheme.TextFieldRedwoodTheme, {
        middleContent: contentVariant,
        textAreaResizeDirection: resize && contentVariant === 'textarea' ? direction : undefined
    });
    return (jsxRuntime.jsxs("div", { role: "presentation", class: classNames.classNames([variantClasses, textFieldContainerBase]), ref: rootRef, children: [startContent && (jsxRuntime.jsx("span", { class: startContentStyles, children: jsxRuntime.jsx(Flex.Flex, { justify: "center", align: "center", hasZeroMargins: true, children: startContent }) })), jsxRuntime.jsxs("div", { class: middleStyles, children: [insideLabel, mainContent] }), endContent && (jsxRuntime.jsx("span", { class: textFieldEndContent, children: jsxRuntime.jsx(Flex.Flex, { justify: "center", align: "center", hasZeroMargins: true, children: endContent }) }))] }));
};

// TODO: Do we need named props for start/endContent, or could they just be children that get
// wrapped in a flex layout?  (from review on 3/8/22)
// TODO: Instead of passing the inputElem, label, and userAssistance as named props here, should we
// have a separate layout component that lays them out, which could just be passed as a child
// to the TextField?  (from review on 3/8/22)
const TextField = ({ contentVariant, id, endContent, mainContent, startContent, columnSpan, compactUserAssistance, inlineUserAssistance, label, labelEdge, labelStartWidth, mainFieldRef, resize, statusVariant, styleVariant, hasZeroStartMargin, rootRef, onFocus, onBlur, onKeyDown, onMouseDown, onMouseEnter, onMouseLeave, testId }) => {
    const testIdProps = useTestId.useTestId(testId);
    // TODO: How should a parent form component render component-specific content within TextField,
    // for example an aria live region?  Instead of a children prop on TextField, could the parent
    // component pass comp-specific content through other props, like inputElem?   The parent could
    // have its own component that composes inputElem with additional DOM.  (from review on 3/8/22)
    const isStartTop = label !== undefined && (labelEdge === 'start' || labelEdge === 'top');
    const textFieldContent = (jsxRuntime.jsx(TextFieldContent, { contentVariant: contentVariant, endContent: endContent, mainContent: mainContent, resize: resize, rootRef: mainFieldRef, startContent: startContent, statusVariant: statusVariant, styleVariant: styleVariant, hasZeroStartMargin: hasZeroStartMargin, ...(!isStartTop ? { insideLabel: label } : {}) }));
    const innerContent = (jsxRuntime.jsxs(jsxRuntime.Fragment, { children: [compactUserAssistance, textFieldContent, inlineUserAssistance] }));
    const styledTextFieldChildren = isStartTop ? (jsxRuntime.jsx(LabelValueLayout.LabelValueLayout, { label: label, labelEdge: labelEdge, labelStartWidth: labelStartWidth, children: innerContent })) : (innerContent);
    return (jsxRuntime.jsx(StyledTextField.StyledTextField, { id: id, columnSpan: columnSpan, hasInsideLabel: label !== undefined && labelEdge === 'inside', onFocusIn: onFocus, onFocusOut: onBlur, onKeyDown: onKeyDown, onMouseDown: onMouseDown, onMouseEnter: onMouseEnter, onMouseLeave: onMouseLeave, ref: rootRef, variant: styleVariant, ...testIdProps, children: styledTextFieldChildren }));
};

exports.TextField = TextField;
//# sourceMappingURL=TextField-0f4e945f.js.map
