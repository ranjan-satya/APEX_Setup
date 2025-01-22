/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs } from 'preact/jsx-runtime';
import { useRef, useState, useCallback, useImperativeHandle, useEffect } from 'preact/hooks';
import { M as Message } from './Message-be36b84a.js';
import 'preact';
import './useTooltipControlled-2044f639.js';
import './IconStyle.styles.css';
import './IconButton-37310d21.js';
import { u as useTranslationBundle } from './useTranslationBundle-cd815e10.js';
import { c as classNames } from './classNames-4e12b00d.js';
import './MessageStyles.styles.css';
import './MessageFormattingUtils-34c9b1aa.js';
import { b as MessagesManager, g as getRenderer } from './MessagesManager-0d60fea1.js';
import { F as Flex } from './Flex-24628925.js';
import { u as useTestId } from './useTestId-adde554c.js';
import { L as LiveRegion } from './LiveRegion-81216fe6.js';
import { u as useMessageFocusManager } from './useMessagesFocusManager-da254907.js';
import { u as useComponentTheme } from './useComponentTheme-d2f9e47f.js';
import { MessageBannerRedwoodTheme } from './UNSAFE_MessageBanner/themes/redwood/MessageBannerTheme.js';
import './timer-f45a7e92.js';
import './Close-97d45aca.js';
import './Icon-90c3a630.js';
import './size-782ed57a.js';
import './utils-6eab3a64.js';
import './Common/themes/themeContract.css.js';
import './colorUtils-16eb823f.js';
import './_curry1-25297e59.js';
import './useTooltip-9dec25b3.js';
import './UNSAFE_Icon/themes/IconStyle.css.js';
import './PRIVATE_Message/themes/MessageStyles.css.js';
import './useId-03dbfdf0.js';
import './Floating-9703160e.js';
import 'preact/compat';
import './useFloating-c99976f8.js';
import './useUser-99920e02.js';
import './LayerHost-45f545d7.js';
import './Common/themes/redwood/theme.js';
import './positionUtils-1ec41fd0.js';
import './refUtils-b9d8d91a.js';
import './useOutsideClick-eb8324f6.js';
import './arrayUtils-35a58161.js';
import './Layer-9b06412e.js';
import './UNSAFE_Layer/themes/LayerStyles.css.js';
import './LayerStyles.styles.css';
import './useThemeInterpolations-9bddc683.js';
import './useColorScheme-e1b17324.js';
import './useScale-d64a1a28.js';
import './theme-63551f30.js';
import './Theme-e6dec6db.js';
import './mergeInterpolations-e2db2a66.js';
import './mergeDeepWithKey-08531060.js';
import './_curry3-0b4222d7.js';
import './_curry2-34316bcf.js';
import './_isObject-1fab0f5b.js';
import './UNSAFE_Floating/themes/redwood/FloatingTheme.js';
import './UNSAFE_Floating/themes/FloatingStyles.css.js';
import './FloatingStyles.styles.css';
import './UNSAFE_Floating/themes/redwood/FloatingBaseTheme.css.js';
import './UNSAFE_Floating/themes/redwood/FloatingBaseTheme.styles.css';
import './UNSAFE_Floating/themes/redwood/FloatingVariants.css.js';
import './vanilla-extract-recipes-createRuntimeFn.esm-2aaf8c98.js';
import './vanilla-extract-dynamic.esm-2955d60a.js';
import './UNSAFE_Floating/themes/FloatingContract.css.js';
import './useHover-d5088fcd.js';
import './useToggle-8b7fcefe.js';
import './useFocus-38c95977.js';
import './useTouch-4828df25.js';
import './mergeProps-88ea8306.js';
import './useAnimation-fe9990dc.js';
import './hooks/UNSAFE_useTooltip/themes/redwood/TooltipContentTheme.js';
import './hooks/UNSAFE_useTooltip/themes/TooltipContentStyles.css.js';
import './TooltipContentStyles.styles.css';
import './hooks/UNSAFE_useTooltip/themes/redwood/TooltipContentBaseTheme.css.js';
import './hooks/UNSAFE_useTooltip/themes/redwood/TooltipContentBaseTheme.styles.css';
import './hooks/UNSAFE_useTooltip/themes/redwood/TooltipContentVariants.css.js';
import './TooltipContentVariants.styles.css';
import './EnvironmentProvider-f543a463.js';
import './LayerManager-625d2503.js';
import './BaseButton-5b2791b1.js';
import './usePress-97fc1cf1.js';
import './useActive-7d9737a5.js';
import './TabbableModeContext-7d8ad946.js';
import './useTabbableMode-a3a351d0.js';
import './dimensions-5229d942.js';
import './clientHints-c76a913b.js';
import './UNSAFE_BaseButton/themes/redwood/BaseButtonTheme.js';
import './UNSAFE_BaseButton/themes/BaseButtonStyles.css.js';
import './BaseButtonStyles.styles.css';
import './UNSAFE_BaseButton/themes/redwood/BaseButtonVariants.css.js';
import './UNSAFE_BaseButton/themes/redwood/BaseButtonBaseTheme.styles.css';
import './ButtonLabelLayout-03cfed16.js';
import './Text-da8588ce.js';
import './UNSAFE_Text/themes/TextStyles.css.js';
import './TextStyles.styles.css';
import './UNSAFE_ButtonLabelLayout/themes/redwood/ButtonLabelLayoutTheme.js';
import './UNSAFE_ButtonLabelLayout/themes/ButtonLabelLayoutStyles.css.js';
import './ButtonLabelLayoutStyles.styles.css';
import './UNSAFE_ButtonLabelLayout/themes/redwood/ButtonLabelLayoutBaseTheme.css.js';
import './UNSAFE_ButtonLabelLayout/themes/redwood/ButtonLabelLayoutBaseTheme.styles.css';
import './UNSAFE_ButtonLabelLayout/themes/redwood/ButtonLabelLayoutVariants.css.js';
import './ButtonLabelLayoutVariants.styles.css';
import './buttonUtils-6f35c4f4.js';
import './id-83adac50.js';
import './getLocale-1c41e86a.js';
import './stringUtils-16f617bc.js';
import './SuccessS-b342103c.js';
import './ErrorS-e6e7e0e2.js';
import './InformationS-170eee52.js';
import './WarningS-67afbb93.js';
import './logger-c92f309c.js';
import './soundUtils-88264cb5.js';
import './TransitionGroup-5fd80dc9.js';
import './MessagesContext-76544845.js';
import './useMessagesContext-9e1dbe91.js';
import './Transition-f9501682.js';
import './boxalignment-486c5ac9.js';
import './boxalignment.styles.css';
import './vanilla-extract-sprinkles-createRuntimeSprinkles.esm-2d655d37.js';
import './flexbox-529f25da.js';
import './flexbox.styles.css';
import './flexitem-7b7f7920.js';
import './flexitem.styles.css';
import './FlexStyles.styles.css';
import './LiveRegionStyles.styles.css';
import './UNSAFE_MessageBanner/themes/MessageBannerStyles.css.js';
import './MessageBannerStyles.styles.css';
import './UNSAFE_MessageBanner/themes/redwood/MessageBannerBaseTheme.css.js';
import './UNSAFE_MessageBanner/themes/redwood/MessageBannerBaseTheme.styles.css';
import './UNSAFE_MessageBanner/themes/redwood/MessageBannerVariants.css.js';
import './MessageBannerVariants.styles.css';

/**
 * Animation states for banner messages
 * TODO: Get this from theme context provider
 */
const animationStates = {
    entering: (node) => ({
        to: {
            maxHeight: `${node.scrollHeight}px`,
            overflow: 'hidden'
        },
        options: {
            duration: 250
        },
        end: {
            maxHeight: 'none',
            overflow: 'initial'
        }
    }),
    exiting: (node) => ({
        ...(node.style.maxHeight === 'none' && {
            from: {
                maxHeight: `${node.scrollHeight}px`,
                overflow: 'hidden'
            }
        }),
        to: {
            maxHeight: 0,
            overflow: 'hidden'
        },
        end: {
            maxHeight: 0,
            overflow: 'hidden'
        },
        options: {
            duration: 250
        }
    })
};
const initialAnimationStyles = {
    maxHeight: 0,
    overflow: 'hidden'
};
/**
 * Renders individual messages based on the provided data
 */
function MessageBanner({ detailRendererKey, data, onClose, renderers, testId, variant = 'section' }) {
    const testIdProps = useTestId(testId);
    // Keyboard Navigation and Focus Management
    const messagesRef = useRef(new Map());
    const containerDivRef = useRef(null);
    const focusHandleRef = useRef(null);
    const [liveRegionText, setLiveRegionText] = useState();
    const [shouldRender, setShouldRender] = useState(data.length > 0);
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    // We need a ref that holds the current & previous data length, as the exiting
    // node will always call handleNextFocus with previous data.
    // As in TransitionGroup, when an item is removed from the data, a new vnode
    // will not be created instead previous vnode will be used. So, the new handleNextFocus
    // will not be called when the old vnode exits. Thus, we will be using a ref
    // to always get the correct current data length.
    const dataLengthRef = useRef(data.length);
    const prevDataLengthRef = useRef(0);
    // Update the data length ref
    dataLengthRef.current = data.length;
    // We will be using a function based ref to store the refs in the Map
    const setMessageRef = useCallback(
    // TODO: use ramda.curry here (currently it is throwing ts error when used with generics)
    (key) => {
        return (ref) => messagesRef.current.set(key, ref);
    }, []);
    // Update the focusHandleRef
    useImperativeHandle(focusHandleRef, () => ({
        focus: () => {
            // Only trigger focus if the component is rendering messages
            if (data.length) {
                const firstItemKey = data[0].key;
                messagesRef.current.get(firstItemKey)?.focus();
                return true;
            }
            return false;
        },
        contains: (element) => {
            // Only invoke method if the component is rendering messages
            if (data.length && element) {
                return containerDivRef.current?.contains(element) ?? false;
            }
            return false;
        }
    }), [data]);
    // Register handlers for focus management
    const { controller, handlers } = useMessageFocusManager(focusHandleRef, {
        onFocus: useCallback(() => {
            setLiveRegionText(translations.message_navigationFromMessagesRegion());
        }, [setLiveRegionText, translations])
    });
    /**
     * Emits onClose event for the provided message.
     * @param item The message which the user tried to close
     */
    const handleClose = useCallback((item) => {
        onClose?.(item);
    }, [onClose]);
    /**
     * Handles focus when a message is closed and animated away from the DOM
     * @param key The key of the message
     * @param index The index of the message
     */
    const handleNextFocus = useCallback((_key, index, closedMessageNode) => {
        const isClosedMessageFocused = closedMessageNode?.contains(document.activeElement);
        // If there are no messages, do not render anything. As the old messages
        // are still in the DOM, use the data count to determine what to do next as it
        // represents the next state.
        if (dataLengthRef.current === 0) {
            setShouldRender(false);
            // If the current message holds focus, then restore previous focus
            if (isClosedMessageFocused) {
                controller.restorePriorFocus();
            }
            return;
        }
        // In TransitionGroup, when an item is removed from the data, a new vnode
        // will not be created instead previous vnode will be used. So, the new handleNextFocus
        // will not be called when the old vnode exits. Thus, all the deps will not be pointing to
        // the current references, rather they will be pointing to the ones where this vnode
        // last existed in the data.
        // This means, the data will contain the closing message as well. But, all the ref objects
        // still point to the most up-to-date values. With that in mind, we will be evaluating the
        // following values.
        const renderedMessagesCount = data.length;
        // Now that this message is closed, focus the next message that will take this index. If no
        // message will take this message's index, then it means that this is the last message. If
        // that is the case, focus the message at the previous index.
        // Use the count of the messages that are currently shown in the UI (current state including
        // the message that will be removed). This way we can get the correct item from the data
        // as it will contain the closing message as well.
        const nextMessageIndexToFocus = index + 1 < renderedMessagesCount ? index + 1 : index - 1;
        // if next message is available then transfer the focus to the next element
        if (nextMessageIndexToFocus > -1 && isClosedMessageFocused) {
            const nextMessageKey = data[nextMessageIndexToFocus].key;
            messagesRef.current.get(nextMessageKey)?.focus();
        }
    }, [controller, data]);
    // Prioritize this component whenever the data changes and
    // the new data has at least one message
    useEffect(() => {
        if (data.length) {
            // set state to render content whenever the data is not empty
            setShouldRender(true);
            if (data.length > prevDataLengthRef.current) {
                // Only when having a new message, update the aria-live area with the
                // text to indicate how to get the focus to the new message.
                setLiveRegionText(translations.message_navigationToMessagesRegion());
            }
            controller.prioritize();
        }
        else {
            // When there are no messages, clear the live region so that
            // the navigation text will be read when a new message appear
            setLiveRegionText('');
        }
        prevDataLengthRef.current = data.length;
    }, [controller, data, translations]);
    const { classes } = useComponentTheme(MessageBannerRedwoodTheme);
    // When both shouldRender flag is false and no data to render, do not render
    // anything
    if (!shouldRender && data.length === 0) {
        return null;
    }
    return (jsx("div", { ref: containerDivRef, class: classNames(['oj-c-messagebanner', classes]), tabIndex: -1, ...handlers, ...testIdProps, children: jsxs(Flex, { direction: "column", gap: variant === 'section' ? '1x' : undefined, children: [jsx(MessagesManager, { animationStates: animationStates, initialAnimationStyles: initialAnimationStyles, data: data, onMessageWillRemove: handleNextFocus, children: ({ item }) => (jsx(Message, { messageRef: setMessageRef(item.key), item: item, detailRenderer: getRenderer(item, detailRendererKey, renderers), variant: variant === 'page' ? 'pageBanner' : 'sectionBanner', onClose: handleClose }, item.key)) }), jsx(LiveRegion, { children: liveRegionText })] }) }));
}

export { MessageBanner };
//# sourceMappingURL=UNSAFE_MessageBanner.js.map
