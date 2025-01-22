/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var hooks = require('preact/hooks');
var Flex = require('./Flex-fbba4ad6.js');
var UNSAFE_MessageBanner_themes_redwood_MessageBannerTheme = require('./UNSAFE_MessageBanner/themes/redwood/MessageBannerTheme.js');
var useComponentTheme = require('./useComponentTheme-082fc8e4.js');
var timer = require('./timer-c32f7725.js');
var classNames = require('./classNames-c14c6ef3.js');
var Close = require('./Close-2adc0f0f.js');
var IconButton = require('./IconButton-94f8ca5c.js');
var useTranslationBundle = require('./useTranslationBundle-9da032d6.js');
var PRIVATE_Message_themes_MessageStyles_css = require('./PRIVATE_Message/themes/MessageStyles.css.js');
var preact = require('preact');
var MessageFormattingUtils = require('./MessageFormattingUtils-42d84399.js');
var MessagesManager = require('./MessagesManager-9cc43d3a.js');
var utils = require('./utils-b7099be5.js');

/**
 * A Component for rendering the message close button
 */
function MessageCloseButton({ onAction, variant = 'banner' }) {
    const translations = useTranslationBundle.useTranslationBundle('@oracle/oraclejet-preact');
    const renderedButton = (jsxRuntime.jsx(IconButton.IconButton, { "aria-label": translations.message_close(), size: "sm", variant: "borderless", onAction: onAction, children: jsxRuntime.jsx(Close.SvgClose, {}) }));
    // TODO:  Refactor to utilize useComponentTheme and multiVariantStyles.
    const classes = classNames.classNames([PRIVATE_Message_themes_MessageStyles_css.messageCloseButtonStyles.base, PRIVATE_Message_themes_MessageStyles_css.messageCloseButtonStyles[variant]]);
    // Otherwise, render the close icon
    return (jsxRuntime.jsx("div", { class: classes, "data-oj-message-close-button": "", children: renderedButton }));
}

/**
 * Component for rendering custom icon/content for start icon in Message
 */
function MessageCustomStartIcon({ item, renderer }) {
    // TODO:  Refactor to utilize useComponentTheme and multiVariantStyles.
    const classes = classNames.classNames([
        PRIVATE_Message_themes_MessageStyles_css.messageStartIconStyles.base,
        // for now only toast has support for custom icon
        PRIVATE_Message_themes_MessageStyles_css.messageStartIconStyles.toast,
        PRIVATE_Message_themes_MessageStyles_css.messageStartIconStyles.customToast
    ]);
    return (jsxRuntime.jsx("div", { class: classes, role: "presentation", "data-oj-message-custom-icon": "", children: renderer(item) }));
}

/**
 * Default renderer for rendering the detail content.
 *
 * @param item The data item object
 * @returns Rendered detail content
 */
function defaultDetailRenderer(item) {
    const { detail } = item.data;
    // If the detail is null or an empty string, do not render the
    // content row
    if (!MessageFormattingUtils.isValidValueForProp(detail)) {
        return null;
    }
    return jsxRuntime.jsx(preact.Fragment, { children: detail });
}
/**
 * Detail Component for rendering the detail content of the Message
 */
function MessageDetail({ item, renderer, variant = 'banner' }) {
    const isCustomRendered = renderer != null;
    const renderedContent = (renderer ?? defaultDetailRenderer)(item);
    if (renderedContent == null)
        return null;
    // If detail content is rendered, then wrap it in a div with specified style classes
    const classes = classNames.classNames([PRIVATE_Message_themes_MessageStyles_css.messageDetailStyles.base, PRIVATE_Message_themes_MessageStyles_css.messageDetailStyles[variant]]);
    return (jsxRuntime.jsx("div", { class: classes, ...(isCustomRendered ? { 'data-oj-message-custom-detail': '' } : {}), children: renderedContent }));
}

/**
 * A component that styles the header for the message component
 * @param param0 Props
 * @returns MessageHeader component instance
 */
function MessageHeader({ children, variant = 'banner' }) {
    const rootClasses = classNames.classNames([PRIVATE_Message_themes_MessageStyles_css.messageHeaderStyles.base, PRIVATE_Message_themes_MessageStyles_css.messageHeaderStyles[variant]]);
    return (jsxRuntime.jsx("div", { role: "presentation", class: rootClasses, children: children }));
}

/**
 * Timestamp Component for rendering timestamp in Message
 */
function MessageTimestamp({ value, variant = 'banner' }) {
    // If detail content is rendered, then wrap it in a div with specified style classes
    // TODO:  Refactor to utilize useComponentTheme and multiVariantStyles.
    const classes = classNames.classNames([PRIVATE_Message_themes_MessageStyles_css.messageTimestampStyles[variant]]);
    // Otherwise, render the timestamp
    const formattedTimestamp = MessageFormattingUtils.formatTimestamp(value);
    return jsxRuntime.jsx("div", { class: classes, children: formattedTimestamp });
}

/**
 * Determines the base variant of the message - banner or toast
 *
 * @param variant The message variant
 * @returns The base variant
 */
function getBaseVariant(variant) {
    if (variant === 'pageBanner' || variant === 'sectionBanner') {
        return 'banner';
    }
    return 'toast';
}
/**
 * Determines if a severity icon is needed based on the component severity
 *
 * @param severity The component severity
 * @returns Whether or not to render the severity icon
 */
function isSeverityIconNeeded(severity) {
    const isValidSeverity = MessageFormattingUtils.isValidValueForProp(severity, 'severity');
    return isValidSeverity && severity !== 'none';
}
/**
 * Default timeout duration for autoTimeout in milliseconds
 */
const MIN_SECONDS = 5;
const DEFAULT_TIMEOUT = MIN_SECONDS * 1000;
/**
 * Component that renders an individual message
 */
function Message({ detailRenderer, iconRenderer, item, onClose, messageRef = () => { }, variant = 'pageBanner' }) {
    const { closeAffordance = 'on', severity = 'error', sound, summary, timestamp } = item.data;
    const { autoTimeout = 'off' } = item.data;
    const baseVariant = getBaseVariant(variant);
    /**
     * Handles clicking on the close icon of the message
     */
    const handleClose = hooks.useCallback(() => {
        onClose?.(item);
    }, [item, onClose]);
    /**
     * Handles closing the message on pressing Esc
     */
    const handleCloseOnEsc = hooks.useCallback((event) => {
        // Close the message only when closeAffordance is on
        if (event.key === 'Escape' && closeAffordance === 'on') {
            onClose?.(item);
        }
    }, [closeAffordance, item, onClose]);
    /**
     * Set auto timeout for toast messages
     */
    const shouldTimeout = baseVariant === 'toast' && autoTimeout !== 'off';
    const currentTimerRef = hooks.useRef();
    const timeout = typeof autoTimeout === 'number' ? autoTimeout : DEFAULT_TIMEOUT;
    const timeoutDuration = autoTimeout === 'on' ? DEFAULT_TIMEOUT : timeout;
    const startTimer = hooks.useCallback(() => {
        if (currentTimerRef.current)
            return;
        currentTimerRef.current = new timer.Timer(handleClose, timeoutDuration);
    }, [handleClose, timeoutDuration]);
    const clearTimer = hooks.useCallback(() => {
        if (!currentTimerRef.current)
            return;
        currentTimerRef.current.clear();
        currentTimerRef.current = undefined;
    }, []);
    const pauseTimer = hooks.useCallback(() => {
        currentTimerRef.current?.pause();
    }, []);
    const resumeTimer = hooks.useCallback(() => {
        currentTimerRef.current?.resume();
    }, []);
    hooks.useEffect(() => {
        if (MessageFormattingUtils.isValidValueForProp(sound)) {
            // It is sufficient to check for the value to be a
            // non-empty string. The playSound method takes care of the rest.
            MessagesManager.playSound(sound);
        }
        // on mount, start timer for toast messages if needed
        if (shouldTimeout) {
            startTimer();
        }
        return () => {
            // clear out any pending timer
            clearTimer();
        };
        // eslint-disable-next-line
    }, []); // No deps to run this only on mount
    const { variantClasses } = useComponentTheme.useComponentTheme(UNSAFE_MessageBanner_themes_redwood_MessageBannerTheme.MessageBannerRedwoodTheme, {
        severity
    });
    // TODO:  Refactor to utilize useComponentTheme and multiVariantStyles.
    const rootClasses = classNames.classNames([
        baseVariant === 'banner' && variantClasses,
        PRIVATE_Message_themes_MessageStyles_css.messageStyles.base[baseVariant],
        // for now, we do not have severity based styling on toast. So, we ignore this class for toasts
        variant !== 'toast' && MessagesManager.severityBasedStyleClass(severity, baseVariant),
        variant === 'sectionBanner' && PRIVATE_Message_themes_MessageStyles_css.messageStyles.section
    ]);
    const contentClasses = classNames.classNames([PRIVATE_Message_themes_MessageStyles_css.messageStyles.content.base, PRIVATE_Message_themes_MessageStyles_css.messageStyles.content[baseVariant]]);
    // We will be animating the root div, so add padding to an inner wrapper div so that
    // when animating height looks smooth. If padding were to be added to the root
    // div, the animation will not be smooth as height will never reach 0 due to the
    // padding.
    return (jsxRuntime.jsx("div", { ref: messageRef, class: rootClasses, role: "alert", "aria-atomic": "true", "data-oj-key": `${typeof item.key}-${item.key}`, tabIndex: 0, onKeyUp: handleCloseOnEsc, onFocusIn: pauseTimer, onFocusOut: resumeTimer, children: jsxRuntime.jsxs("div", { class: contentClasses, children: [iconRenderer ? (jsxRuntime.jsx(MessageCustomStartIcon, { item: item, renderer: iconRenderer })) : isSeverityIconNeeded(severity) ? (jsxRuntime.jsx(MessagesManager.MessageStartIcon, { severity: severity, variant: baseVariant })) : null, jsxRuntime.jsxs(Flex.Flex, { direction: "column", flex: "1", gap: utils.xUnits(2), children: [jsxRuntime.jsxs(MessageHeader, { variant: baseVariant, children: [jsxRuntime.jsx(MessagesManager.MessageSummary, { variant: baseVariant, text: summary, role: "heading", "aria-level": 2 }), MessageFormattingUtils.isValidValueForProp(timestamp, 'timestamp') && variant !== 'toast' && (jsxRuntime.jsx(MessageTimestamp, { variant: baseVariant, value: timestamp }))] }), jsxRuntime.jsx(MessageDetail, { variant: baseVariant, item: item, renderer: detailRenderer })] }), closeAffordance === 'on' && (jsxRuntime.jsx(MessageCloseButton, { variant: baseVariant, onAction: handleClose }))] }) }));
}

exports.Message = Message;
exports.MessageCloseButton = MessageCloseButton;
exports.MessageDetail = MessageDetail;
exports.MessageTimestamp = MessageTimestamp;
//# sourceMappingURL=Message-b703f9e4.js.map
