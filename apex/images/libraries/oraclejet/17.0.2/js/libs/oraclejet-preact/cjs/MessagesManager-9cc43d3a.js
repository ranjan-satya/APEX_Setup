/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var classNames = require('./classNames-c14c6ef3.js');
var SuccessS = require('./SuccessS-862e9e4b.js');
var ErrorS = require('./ErrorS-bfe081e3.js');
var InformationS = require('./InformationS-5bf32f4c.js');
var WarningS = require('./WarningS-d18b9e00.js');
var Flex = require('./Flex-fbba4ad6.js');
var PRIVATE_Message_themes_MessageStyles_css = require('./PRIVATE_Message/themes/MessageStyles.css.js');
var useTranslationBundle = require('./useTranslationBundle-9da032d6.js');
var useTestId = require('./useTestId-8234ec1e.js');
var logger = require('./logger-2b636482.js');
var soundUtils = require('./soundUtils-ff3c9c0d.js');
var MessageFormattingUtils = require('./MessageFormattingUtils-42d84399.js');
var preact = require('preact');
var hooks = require('preact/hooks');
var TransitionGroup = require('./TransitionGroup-b239d98f.js');
var useAnimation = require('./useAnimation-2f7dd313.js');
require('./MessagesContext-4e939750.js');
var useMessagesContext = require('./useMessagesContext-23d62331.js');
var Transition = require('./Transition-942950ed.js');

const severityIcons = {
    confirmation: SuccessS.SvgSuccessS,
    error: ErrorS.SvgErrorS,
    info: InformationS.SvgInformationS,
    warning: WarningS.SvgWarningS
};
/**
 * StartIcon Component for rendering the severity based icon in Message
 */
function MessageStartIcon({ severity, testId, variant = 'banner' }) {
    const IconComponent = severityIcons[severity];
    const translations = useTranslationBundle.useTranslationBundle('@oracle/oraclejet-preact');
    const labelMap = {
        confirmation: translations.message_confirmation(),
        error: translations.message_error(),
        info: translations.message_info(),
        warning: translations.message_warning()
    };
    const testIdProps = useTestId.useTestId(testId);
    // TODO: JET-50793
    const iconContent = variant !== 'inline' ? (jsxRuntime.jsx(Flex.Flex, { align: "center", height: "100%", children: jsxRuntime.jsx("span", { class: PRIVATE_Message_themes_MessageStyles_css.startIconContainerStyles[variant], role: "img", "aria-label": labelMap[severity], children: jsxRuntime.jsx(IconComponent, {}) }) })) : (jsxRuntime.jsx("span", { class: PRIVATE_Message_themes_MessageStyles_css.startIconContainerStyles.inline, role: "img", "aria-label": labelMap[severity], children: jsxRuntime.jsx(IconComponent, {}) }));
    // If detail content is rendered, then wrap it in a div with specified style classes
    return (jsxRuntime.jsx("div", { class: classNames.classNames([
            PRIVATE_Message_themes_MessageStyles_css.messageStartIconStyles.base,
            PRIVATE_Message_themes_MessageStyles_css.messageStartIconStyles[variant],
            PRIVATE_Message_themes_MessageStyles_css.severityIconStyles[variant]
        ]), role: "presentation", ...testIdProps, children: iconContent }));
}

/**
 * Summary Component for rendering the summary text of the Message
 */
function MessageSummary({ 'aria-level': ariaLevel, role, text, testId, variant = 'banner' }) {
    const testIdProps = useTestId.useTestId(testId);
    // If detail content is rendered, then wrap it in a div with specified style classes
    // TODO:  Refactor to utilize useComponentTheme and multiVariantStyles.
    const classes = classNames.classNames([PRIVATE_Message_themes_MessageStyles_css.messageSummaryStyles.base, PRIVATE_Message_themes_MessageStyles_css.messageSummaryStyles[variant]]);
    return (jsxRuntime.jsx("div", { "aria-level": ariaLevel, role: role, class: classes, ...testIdProps, children: text }));
}

/**
 * Logger that prepends the component name to the message
 */
const MessageLogger = {
    error: (message, type = 'common') => logger.error(`JET Message(${type}): ${message}`),
    warn: (message, type = 'common') => logger.warn(`JET Message(${type}): ${message}`),
    info: (message, type = 'common') => logger.info(`JET Message(${type}): ${message}`),
    log: (message, type = 'common') => logger.log(`JET Message(${type}): ${message}`)
};
/**
 * Plays a sound based on the provided argument. Supported keywords:
 * 1. default - plays the default beep sound
 * 2. none - no sound will be played
 *
 * @param sound Supported keywords or URL to an audio file
 */
async function playSound(sound) {
    if (sound === 'none') {
        // no need to play any audio
        return;
    }
    // For default, we play a beep sound using WebAudio API
    if (sound === 'default') {
        try {
            soundUtils.playDefaultNotificationSound();
        }
        catch (error) {
            // Default sound is not played due to some error
            // Log a message and return doing nothing else
            MessageLogger.warn(`Failed to play the default sound. ${error}.`);
        }
        return;
    }
    // If it is not a key word, then it is an URL
    try {
        await soundUtils.playAudioFromURL(sound);
    }
    catch (error) {
        // Playing audio using the URL failed.
        MessageLogger.warn(`Failed to play the audio from the url ${sound}. ${error}.`);
    }
}
/**
 * A helper function that throws an error
 *
 * @param message The error message
 * @param type The type of the message that is throwing an error
 * @throws {Error}
 */
function throwError(message, type = 'common') {
    throw new Error(`JET Message(${type}) - ${message}`);
}
/**
 * Fetches a renderer for the current message if one is provided
 *
 * @param message The item context for the current message
 * @param rendererIdentifier Identifier of the current renderer
 * @param renderers All available renderers
 * @returns The renderer for rendering the custom content
 */
function getRenderer(message, rendererIdentifier, renderers, type) {
    // If either detailRenderer function or record of renderers are not available,
    // return null
    if (!rendererIdentifier || !renderers) {
        return undefined;
    }
    const rendererKey = typeof rendererIdentifier === 'function' ? rendererIdentifier(message) : rendererIdentifier;
    // If rendererKey is null or undefined, then we need to use default rendering
    // so return null
    if (rendererKey == null) {
        return undefined;
    }
    // If the returned render key is a string but does not exist in the provided
    // record of renderers, throw an error
    if (!(rendererKey in renderers)) {
        throwError(`${rendererKey} is not a valid template name for the message with key=${message.key}`, type);
    }
    // Else, fetch and return the renderer
    return renderers[rendererKey];
}
/**
 * Generates a root style class based on the severity. For invalid severity and severity=none
 * no specific style class exists.
 *
 * @param severity The message severity
 * @returns calculated style class based on the severity
 */
function severityBasedStyleClass(severity, variant) {
    const isValidSeverity = MessageFormattingUtils.isValidValueForProp(severity, 'severity');
    return isValidSeverity && severity !== 'none' ? `oj-c-message${variant}-${severity}` : '';
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

const DEFAULT_ANIMATION_STATES = {};
/**
 * A intermediary component that handles animation for the messages component.
 *
 * The expected flow is as follows:
 * 1. message removed from the data
 * 2. onExiting called and a callback is passed which needs to be called to complete the transition
 * 3. state set to "exiting" in this component
 * 4. triggers useAnimation to perform the exit animation
 * 5. onAnimationEnd is called after the animation, which invokes the callback provided earlier
 * 6. onExited is called (done when the callback mentioned above is called)
 * 7. message is removed from the UI
 *
 * @param param0 Props of the message component
 */
function MessageTransition({ animationStates = DEFAULT_ANIMATION_STATES, initialAnimationStyles, onEntering, onExiting, ...transitionProps }) {
    const [state, setState] = hooks.useState('entering');
    const animationCallbackRef = hooks.useRef();
    const busyStateResolveRef = hooks.useRef();
    const { controller, nodeRef } = useAnimation.useAnimation(state, {
        animationStates,
        isAnimatedOnMount: true,
        onAnimationEnd: hooks.useCallback(() => {
            // resolve animation callbacks & busyStates
            animationCallbackRef.current?.();
            animationCallbackRef.current = undefined;
            busyStateResolveRef.current?.();
            busyStateResolveRef.current = undefined;
        }, [])
    });
    const { addBusyState } = useMessagesContext.useMessagesContext();
    const onEnteringCallback = hooks.useCallback((node, callback, metadata) => {
        // cancel any existing animation
        if (animationCallbackRef.current) {
            animationCallbackRef.current = undefined;
            controller.cancel();
        }
        // resolve any existing busyState
        busyStateResolveRef.current?.();
        busyStateResolveRef.current = undefined;
        onEntering?.(node, undefined, metadata);
        // start the animation and set the callback & busyState
        setState('entering');
        // if there is no animation configured, resolve immediately
        if (animationStates['entering'] === undefined &&
            animationStates['exiting => entering'] === undefined) {
            callback?.();
            return;
        }
        animationCallbackRef.current = callback;
        busyStateResolveRef.current = addBusyState?.('messages animating');
    }, [animationStates, controller, addBusyState, onEntering]);
    const onExitingCallback = hooks.useCallback((node, callback, metadata) => {
        // cancel any existing animation
        if (animationCallbackRef.current) {
            animationCallbackRef.current = undefined;
            controller.cancel();
        }
        // resolve any existing busyState
        busyStateResolveRef.current?.();
        busyStateResolveRef.current = undefined;
        onExiting?.(node, undefined, metadata);
        // start the animation and set the callback & busyState
        setState('exiting');
        // if there is no animation configured, resolve immediately
        if (animationStates['exiting'] === undefined &&
            animationStates['entering => exiting'] === undefined) {
            callback?.();
            return;
        }
        animationCallbackRef.current = callback;
        busyStateResolveRef.current = addBusyState?.('messages animating');
    }, [animationStates, controller, addBusyState, onExiting]);
    // if animation is interrupted, the busyState may be left hanging. So clear that on unmount
    // Note: When using a class-based component inside a functional component, the timings of
    // componentDidMount and useEffect might differ. So, in order to guarantee the registration
    // of the cleanup function, use useLayoutEffect instead of useEffect. This way we can make sure
    // the cleanup registers at all times.
    hooks.useLayoutEffect(() => () => busyStateResolveRef.current?.(), []);
    return (jsxRuntime.jsx("div", { ref: nodeRef, style: initialAnimationStyles, children: jsxRuntime.jsx(Transition.Transition, { ...transitionProps, onEntering: onEnteringCallback, onExiting: onExitingCallback }) }));
}

/**
 * The component that renders individual messages for the provided data.
 */
function MessagesManager({ data, animationStates, children, initialAnimationStyles, onMessageWillRemove }) {
    /**
     * Handles when a message has finished to exit.
     *
     * @param node The corresponding message element
     * @param callback A callback function to be called after the animation is complete
     */
    const handleExited = hooks.useCallback(async (node, metadata) => {
        metadata && onMessageWillRemove?.(metadata.key, metadata.index, node);
    }, [onMessageWillRemove]);
    return (jsxRuntime.jsx(TransitionGroup.TransitionGroup, { elementType: preact.Fragment, children: data.map((item, index) => (jsxRuntime.jsx(MessageTransition, { animationStates: animationStates, initialAnimationStyles: initialAnimationStyles, metadata: { index, key: item.key }, onExited: handleExited, children: children?.({ index, item }) }, item.key))) }));
}

exports.MessageStartIcon = MessageStartIcon;
exports.MessageSummary = MessageSummary;
exports.MessagesManager = MessagesManager;
exports.getRenderer = getRenderer;
exports.isSeverityIconNeeded = isSeverityIconNeeded;
exports.playSound = playSound;
exports.severityBasedStyleClass = severityBasedStyleClass;
exports.throwError = throwError;
//# sourceMappingURL=MessagesManager-9cc43d3a.js.map
