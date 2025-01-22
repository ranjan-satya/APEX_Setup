/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { c as classNames } from './classNames-4e12b00d.js';
import { S as SvgSuccessS } from './SuccessS-b342103c.js';
import { S as SvgErrorS } from './ErrorS-e6e7e0e2.js';
import { S as SvgInformationS } from './InformationS-170eee52.js';
import { S as SvgWarningS } from './WarningS-67afbb93.js';
import { F as Flex } from './Flex-24628925.js';
import { startIconContainerStyles, messageStartIconStyles, severityIconStyles, messageSummaryStyles } from './PRIVATE_Message/themes/MessageStyles.css.js';
import { u as useTranslationBundle } from './useTranslationBundle-cd815e10.js';
import { u as useTestId } from './useTestId-adde554c.js';
import { w as warn, e as error, i as info, l as log } from './logger-c92f309c.js';
import { p as playDefaultNotificationSound, a as playAudioFromURL } from './soundUtils-88264cb5.js';
import { i as isValidValueForProp } from './MessageFormattingUtils-34c9b1aa.js';
import { Fragment } from 'preact';
import { useState, useRef, useCallback, useLayoutEffect } from 'preact/hooks';
import { T as TransitionGroup } from './TransitionGroup-5fd80dc9.js';
import { u as useAnimation } from './useAnimation-fe9990dc.js';
import './MessagesContext-76544845.js';
import { u as useMessagesContext } from './useMessagesContext-9e1dbe91.js';
import { T as Transition } from './Transition-f9501682.js';

const severityIcons = {
    confirmation: SvgSuccessS,
    error: SvgErrorS,
    info: SvgInformationS,
    warning: SvgWarningS
};
/**
 * StartIcon Component for rendering the severity based icon in Message
 */
function MessageStartIcon({ severity, testId, variant = 'banner' }) {
    const IconComponent = severityIcons[severity];
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const labelMap = {
        confirmation: translations.message_confirmation(),
        error: translations.message_error(),
        info: translations.message_info(),
        warning: translations.message_warning()
    };
    const testIdProps = useTestId(testId);
    // TODO: JET-50793
    const iconContent = variant !== 'inline' ? (jsx(Flex, { align: "center", height: "100%", children: jsx("span", { class: startIconContainerStyles[variant], role: "img", "aria-label": labelMap[severity], children: jsx(IconComponent, {}) }) })) : (jsx("span", { class: startIconContainerStyles.inline, role: "img", "aria-label": labelMap[severity], children: jsx(IconComponent, {}) }));
    // If detail content is rendered, then wrap it in a div with specified style classes
    return (jsx("div", { class: classNames([
            messageStartIconStyles.base,
            messageStartIconStyles[variant],
            severityIconStyles[variant]
        ]), role: "presentation", ...testIdProps, children: iconContent }));
}

/**
 * Summary Component for rendering the summary text of the Message
 */
function MessageSummary({ 'aria-level': ariaLevel, role, text, testId, variant = 'banner' }) {
    const testIdProps = useTestId(testId);
    // If detail content is rendered, then wrap it in a div with specified style classes
    // TODO:  Refactor to utilize useComponentTheme and multiVariantStyles.
    const classes = classNames([messageSummaryStyles.base, messageSummaryStyles[variant]]);
    return (jsx("div", { "aria-level": ariaLevel, role: role, class: classes, ...testIdProps, children: text }));
}

/**
 * Logger that prepends the component name to the message
 */
const MessageLogger = {
    error: (message, type = 'common') => error(`JET Message(${type}): ${message}`),
    warn: (message, type = 'common') => warn(`JET Message(${type}): ${message}`),
    info: (message, type = 'common') => info(`JET Message(${type}): ${message}`),
    log: (message, type = 'common') => log(`JET Message(${type}): ${message}`)
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
            playDefaultNotificationSound();
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
        await playAudioFromURL(sound);
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
    const isValidSeverity = isValidValueForProp(severity, 'severity');
    return isValidSeverity && severity !== 'none' ? `oj-c-message${variant}-${severity}` : '';
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
    const [state, setState] = useState('entering');
    const animationCallbackRef = useRef();
    const busyStateResolveRef = useRef();
    const { controller, nodeRef } = useAnimation(state, {
        animationStates,
        isAnimatedOnMount: true,
        onAnimationEnd: useCallback(() => {
            // resolve animation callbacks & busyStates
            animationCallbackRef.current?.();
            animationCallbackRef.current = undefined;
            busyStateResolveRef.current?.();
            busyStateResolveRef.current = undefined;
        }, [])
    });
    const { addBusyState } = useMessagesContext();
    const onEnteringCallback = useCallback((node, callback, metadata) => {
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
    const onExitingCallback = useCallback((node, callback, metadata) => {
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
    useLayoutEffect(() => () => busyStateResolveRef.current?.(), []);
    return (jsx("div", { ref: nodeRef, style: initialAnimationStyles, children: jsx(Transition, { ...transitionProps, onEntering: onEnteringCallback, onExiting: onExitingCallback }) }));
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
    const handleExited = useCallback(async (node, metadata) => {
        metadata && onMessageWillRemove?.(metadata.key, metadata.index, node);
    }, [onMessageWillRemove]);
    return (jsx(TransitionGroup, { elementType: Fragment, children: data.map((item, index) => (jsx(MessageTransition, { animationStates: animationStates, initialAnimationStyles: initialAnimationStyles, metadata: { index, key: item.key }, onExited: handleExited, children: children?.({ index, item }) }, item.key))) }));
}

export { MessageStartIcon as M, MessageSummary as a, MessagesManager as b, getRenderer as g, isSeverityIconNeeded as i, playSound as p, severityBasedStyleClass as s, throwError as t };
//# sourceMappingURL=MessagesManager-0d60fea1.js.map
