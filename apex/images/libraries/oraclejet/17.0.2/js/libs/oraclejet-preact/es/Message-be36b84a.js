/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs } from 'preact/jsx-runtime';
import { useCallback, useRef, useEffect } from 'preact/hooks';
import { F as Flex } from './Flex-24628925.js';
import { MessageBannerRedwoodTheme } from './UNSAFE_MessageBanner/themes/redwood/MessageBannerTheme.js';
import { u as useComponentTheme } from './useComponentTheme-d2f9e47f.js';
import { T as Timer } from './timer-f45a7e92.js';
import { c as classNames } from './classNames-4e12b00d.js';
import { S as SvgClose } from './Close-97d45aca.js';
import { I as IconButton } from './IconButton-37310d21.js';
import { u as useTranslationBundle } from './useTranslationBundle-cd815e10.js';
import { messageCloseButtonStyles, messageStartIconStyles, messageDetailStyles, messageHeaderStyles, messageTimestampStyles, messageStyles } from './PRIVATE_Message/themes/MessageStyles.css.js';
import { Fragment } from 'preact';
import { i as isValidValueForProp, f as formatTimestamp } from './MessageFormattingUtils-34c9b1aa.js';
import { p as playSound, s as severityBasedStyleClass, M as MessageStartIcon, a as MessageSummary } from './MessagesManager-0d60fea1.js';
import { x as xUnits } from './utils-6eab3a64.js';

/**
 * A Component for rendering the message close button
 */
function MessageCloseButton({ onAction, variant = 'banner' }) {
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const renderedButton = (jsx(IconButton, { "aria-label": translations.message_close(), size: "sm", variant: "borderless", onAction: onAction, children: jsx(SvgClose, {}) }));
    // TODO:  Refactor to utilize useComponentTheme and multiVariantStyles.
    const classes = classNames([messageCloseButtonStyles.base, messageCloseButtonStyles[variant]]);
    // Otherwise, render the close icon
    return (jsx("div", { class: classes, "data-oj-message-close-button": "", children: renderedButton }));
}

/**
 * Component for rendering custom icon/content for start icon in Message
 */
function MessageCustomStartIcon({ item, renderer }) {
    // TODO:  Refactor to utilize useComponentTheme and multiVariantStyles.
    const classes = classNames([
        messageStartIconStyles.base,
        // for now only toast has support for custom icon
        messageStartIconStyles.toast,
        messageStartIconStyles.customToast
    ]);
    return (jsx("div", { class: classes, role: "presentation", "data-oj-message-custom-icon": "", children: renderer(item) }));
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
    if (!isValidValueForProp(detail)) {
        return null;
    }
    return jsx(Fragment, { children: detail });
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
    const classes = classNames([messageDetailStyles.base, messageDetailStyles[variant]]);
    return (jsx("div", { class: classes, ...(isCustomRendered ? { 'data-oj-message-custom-detail': '' } : {}), children: renderedContent }));
}

/**
 * A component that styles the header for the message component
 * @param param0 Props
 * @returns MessageHeader component instance
 */
function MessageHeader({ children, variant = 'banner' }) {
    const rootClasses = classNames([messageHeaderStyles.base, messageHeaderStyles[variant]]);
    return (jsx("div", { role: "presentation", class: rootClasses, children: children }));
}

/**
 * Timestamp Component for rendering timestamp in Message
 */
function MessageTimestamp({ value, variant = 'banner' }) {
    // If detail content is rendered, then wrap it in a div with specified style classes
    // TODO:  Refactor to utilize useComponentTheme and multiVariantStyles.
    const classes = classNames([messageTimestampStyles[variant]]);
    // Otherwise, render the timestamp
    const formattedTimestamp = formatTimestamp(value);
    return jsx("div", { class: classes, children: formattedTimestamp });
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
    const isValidSeverity = isValidValueForProp(severity, 'severity');
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
    const handleClose = useCallback(() => {
        onClose?.(item);
    }, [item, onClose]);
    /**
     * Handles closing the message on pressing Esc
     */
    const handleCloseOnEsc = useCallback((event) => {
        // Close the message only when closeAffordance is on
        if (event.key === 'Escape' && closeAffordance === 'on') {
            onClose?.(item);
        }
    }, [closeAffordance, item, onClose]);
    /**
     * Set auto timeout for toast messages
     */
    const shouldTimeout = baseVariant === 'toast' && autoTimeout !== 'off';
    const currentTimerRef = useRef();
    const timeout = typeof autoTimeout === 'number' ? autoTimeout : DEFAULT_TIMEOUT;
    const timeoutDuration = autoTimeout === 'on' ? DEFAULT_TIMEOUT : timeout;
    const startTimer = useCallback(() => {
        if (currentTimerRef.current)
            return;
        currentTimerRef.current = new Timer(handleClose, timeoutDuration);
    }, [handleClose, timeoutDuration]);
    const clearTimer = useCallback(() => {
        if (!currentTimerRef.current)
            return;
        currentTimerRef.current.clear();
        currentTimerRef.current = undefined;
    }, []);
    const pauseTimer = useCallback(() => {
        currentTimerRef.current?.pause();
    }, []);
    const resumeTimer = useCallback(() => {
        currentTimerRef.current?.resume();
    }, []);
    useEffect(() => {
        if (isValidValueForProp(sound)) {
            // It is sufficient to check for the value to be a
            // non-empty string. The playSound method takes care of the rest.
            playSound(sound);
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
    const { variantClasses } = useComponentTheme(MessageBannerRedwoodTheme, {
        severity
    });
    // TODO:  Refactor to utilize useComponentTheme and multiVariantStyles.
    const rootClasses = classNames([
        baseVariant === 'banner' && variantClasses,
        messageStyles.base[baseVariant],
        // for now, we do not have severity based styling on toast. So, we ignore this class for toasts
        variant !== 'toast' && severityBasedStyleClass(severity, baseVariant),
        variant === 'sectionBanner' && messageStyles.section
    ]);
    const contentClasses = classNames([messageStyles.content.base, messageStyles.content[baseVariant]]);
    // We will be animating the root div, so add padding to an inner wrapper div so that
    // when animating height looks smooth. If padding were to be added to the root
    // div, the animation will not be smooth as height will never reach 0 due to the
    // padding.
    return (jsx("div", { ref: messageRef, class: rootClasses, role: "alert", "aria-atomic": "true", "data-oj-key": `${typeof item.key}-${item.key}`, tabIndex: 0, onKeyUp: handleCloseOnEsc, onFocusIn: pauseTimer, onFocusOut: resumeTimer, children: jsxs("div", { class: contentClasses, children: [iconRenderer ? (jsx(MessageCustomStartIcon, { item: item, renderer: iconRenderer })) : isSeverityIconNeeded(severity) ? (jsx(MessageStartIcon, { severity: severity, variant: baseVariant })) : null, jsxs(Flex, { direction: "column", flex: "1", gap: xUnits(2), children: [jsxs(MessageHeader, { variant: baseVariant, children: [jsx(MessageSummary, { variant: baseVariant, text: summary, role: "heading", "aria-level": 2 }), isValidValueForProp(timestamp, 'timestamp') && variant !== 'toast' && (jsx(MessageTimestamp, { variant: baseVariant, value: timestamp }))] }), jsx(MessageDetail, { variant: baseVariant, item: item, renderer: detailRenderer })] }), closeAffordance === 'on' && (jsx(MessageCloseButton, { variant: baseVariant, onAction: handleClose }))] }) }));
}

export { Message as M, MessageCloseButton as a, MessageDetail as b, MessageTimestamp as c };
//# sourceMappingURL=Message-be36b84a.js.map
