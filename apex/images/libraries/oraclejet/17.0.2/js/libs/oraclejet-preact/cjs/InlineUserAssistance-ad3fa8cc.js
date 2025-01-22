/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
require('./logger-2b636482.js');
require('preact/hooks');
require('./Flex-fbba4ad6.js');


require('./UNSAFE_MessageBanner/themes/redwood/MessageBannerVariants.css.js');
require('preact');
require('./useTooltipControlled-706a3651.js');

require('./IconButton-94f8ca5c.js');
require('./LayerHost-46e4d858.js');
require('preact/compat');

require('./MessageFormattingUtils-42d84399.js');
require('./TransitionGroup-b239d98f.js');
require('./MessagesContext-4e939750.js');



require('./UNSAFE_ComponentMessage/themes/redwood/ComponentMessageVariants.css.js');


require('./UNSAFE_UserAssistance/themes/redwood/UserAssistanceVariants.css.js');
var ComponentMessageContainer = require('./ComponentMessageContainer-a9195577.js');
require('./FormContext-9452bd30.js');
var useFormContext = require('./useFormContext-4c3091dc.js');
require('./FormFieldContext-8418dc68.js');
var useFormFieldContext = require('./useFormFieldContext-20f419ef.js');
var InlineHelp = require('./InlineHelp-020ee2df.js');
var useTranslationBundle = require('./useTranslationBundle-9da032d6.js');
var useComponentTheme = require('./useComponentTheme-082fc8e4.js');
var UNSAFE_UserAssistance_themes_redwood_UserAssistanceTheme = require('./UNSAFE_UserAssistance/themes/redwood/UserAssistanceTheme.js');
var classNames = require('./classNames-c14c6ef3.js');
require('./InputGroupContext-05f2a46f.js');
var useInputGroupContext = require('./useInputGroupContext-4c10bd57.js');
var useTestId = require('./useTestId-8234ec1e.js');

function InlineRequired({ align = 'end', hasHelp = false, hasMessages = false }) {
    const { classes } = useComponentTheme.useComponentTheme(UNSAFE_UserAssistance_themes_redwood_UserAssistanceTheme.UserAssistanceRedwoodTheme, {
        align,
        visible: hasHelp || hasMessages ? 'hide' : 'show' // TODO: fix typing so that options autocomplete
    });
    const translations = useTranslationBundle.useTranslationBundle('@oracle/oraclejet-preact');
    const requiredStr = translations.userAssistance_required();
    return jsxRuntime.jsx("div", { class: classes, children: requiredStr });
}

// defaults to type='reflow'. If this is within an oj-form-layout, the o-f-l
// will pass down its type which defaults to 'efficient' (TODO).
function InlineUserAssistanceContainer({ variant = 'reflow', children, id, testId }) {
    const { classes, styles: { inlineContainerBaseStyles } } = useComponentTheme.useComponentTheme(UNSAFE_UserAssistance_themes_redwood_UserAssistanceTheme.UserAssistanceRedwoodTheme, {
        container: variant
    });
    const testIdProps = useTestId.useTestId(testId);
    // we want to suppress the display of messages if it's in a group context
    const inputGroupContext = useInputGroupContext.useInputGroupContext();
    if (inputGroupContext !== null)
        return null;
    const content = (jsxRuntime.jsx("div", { class: classNames.classNames([classes, inlineContainerBaseStyles]), id: id, ...testIdProps, children: children }));
    return content;
}

// This has the precedence rules for the user assistance.
function InlineUserAssistance({ assistiveText, fieldLabel, helpSourceLink, helpSourceText, id, isRequiredShown, requiredAlignment, messages = [], userAssistanceDensity, testId }) {
    const { isReadonly: isFormReadonly } = useFormContext.useFormContext();
    const needsUserAssistanceIfNoContent = userAssistanceDensity === 'efficient' && isFormReadonly === false;
    const { isFocused } = useFormFieldContext.useFormFieldContext();
    const uaInlineContent = messages.length > 0 ? (jsxRuntime.jsx(ComponentMessageContainer.ComponentMessageContainer, { fieldLabel: fieldLabel, messages: messages })) : (assistiveText || helpSourceLink) && isFocused ? (jsxRuntime.jsx(InlineHelp.InlineHelp, { assistiveText: assistiveText, sourceLink: helpSourceLink, sourceText: helpSourceText })) : isRequiredShown ? (jsxRuntime.jsx(InlineRequired, { align: requiredAlignment })) : null;
    // when reflow we do not render unless it has content.
    // when efficient we render regardless of if it has content.
    // TODO: Get the userAssistanceDensity value from the FormContext
    return uaInlineContent || needsUserAssistanceIfNoContent ? (jsxRuntime.jsx(InlineUserAssistanceContainer, { id: id, variant: userAssistanceDensity, testId: testId, children: uaInlineContent })) : null;
}

exports.InlineRequired = InlineRequired;
exports.InlineUserAssistance = InlineUserAssistance;
exports.InlineUserAssistanceContainer = InlineUserAssistanceContainer;
//# sourceMappingURL=InlineUserAssistance-ad3fa8cc.js.map
