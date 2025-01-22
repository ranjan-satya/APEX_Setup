/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs, Fragment } from 'preact/jsx-runtime';
import { useState, useMemo, useCallback, useRef, useEffect } from 'preact/hooks';
import { u as useId } from './useId-03dbfdf0.js';
import { Fragment as Fragment$1 } from 'preact';
import { c as classNames } from './classNames-4e12b00d.js';
import { u as useComponentTheme } from './useComponentTheme-d2f9e47f.js';
import { F as Flex } from './Flex-24628925.js';
import { S as Separator } from './Separator-93c70737.js';
import { S as SvgChevronDown } from './ChevronDown-d9848cc4.js';
import { C as CollapseIcon } from './CollapseIcon-b6d7cfd6.js';
import { S as SvgChevronUp } from './ChevronUp-8e0ac42c.js';
import { CollapsibleRedwoodTheme } from './UNSAFE_Collapsible/themes/redwood/CollapsibleTheme.js';
import { u as useAnimation } from './useAnimation-fe9990dc.js';
import { u as useTestId } from './useTestId-adde554c.js';

/**
 * Header icon subcomponent
 */
const CollapsibleHeaderIcon = ({ isExpanded, isDisabled, iconPosition }) => {
    const color = isDisabled ? 'disabled' : 'primary';
    const startIcon = iconPosition === 'start' && isExpanded ? SvgChevronDown : CollapseIcon;
    const endIcon = iconPosition === 'end' && isExpanded ? SvgChevronUp : SvgChevronDown;
    const Icon = iconPosition === 'start' ? startIcon : endIcon;
    return jsx(Icon, { size: "6x", color: color });
};

const DefaultSettings = {
    isDisabled: false
};
/**
 * Returns a click handler that can make a target element either clickable or keyboard pressable.
 *
 * @param onPressHandler function
 * @param isDisabled boolean
 * @returns
 */
function useCollapsiblePress(onPressHandler, settings = DefaultSettings) {
    const [isPressed, setIsPressed] = useState(false);
    const mergedSettings = useMemo(() => {
        return { ...DefaultSettings, ...settings };
    }, [settings]);
    const onKeyDown = useCallback((event) => {
        if (event.code === 'Space' || event.code === 'Enter') {
            // event.preventDefault();
            setIsPressed(true);
        }
    }, [setIsPressed]);
    const onKeyUp = useCallback((event) => {
        if (event.code === 'Space' || event.code === 'Enter') {
            setIsPressed(false);
            event.preventDefault();
            onPressHandler(event);
        }
    }, [onPressHandler, setIsPressed]);
    const onBlur = useCallback(() => {
        setIsPressed(false);
    }, [setIsPressed]);
    const onClickSingle = useCallback((event) => {
        // See note above about why propagation is stopped: to prevent nested component bubbling clicks issue
        event.stopPropagation();
        if (!isPressed) {
            onPressHandler(event);
        }
    }, [onPressHandler, isPressed]);
    const pressProps = mergedSettings.isDisabled
        ? {}
        : {
            onKeyDown,
            onKeyUp,
            onBlur,
            onClick: onClickSingle
        };
    return {
        pressProps
    };
}

/**
 * Header subcomponent
 */
const CollapsibleHeader = ({ children, id, contentId, isDisabled, isExpanded, iconPosition, variant = 'basic', toggleHandler, accessibleLabel, accessibleLabelId }) => {
    const [hasFocus, setFocus] = useState(false);
    const isMouseDown = useRef(false);
    const { classes, styles } = useComponentTheme(CollapsibleRedwoodTheme, {
        disabled: isDisabled ? 'isDisabled' : 'notDisabled',
        divider: variant === 'horizontal-rule' ? 'hasDivider' : 'noDivider',
        focused: hasFocus ? 'isFocused' : 'notFocused'
    });
    const childrenClasses = classNames([
        styles.headerChildrenStyle,
        iconPosition === 'end' && styles.iconEndStyle,
        iconPosition === 'start' && styles.iconStartStyle
    ]);
    const pressHandler = useCallback((event) => {
        toggleHandler(event.target);
        // if the header has focus highlight and the toggle was caused by a pointer action,
        // remove focus highlight from the header div
        // the test environment may not support PointerEvent, make sure it is supported
        if (hasFocus) {
            const hasPointerEvent = window && 'PointerEvent' in window;
            if ((hasPointerEvent && event instanceof PointerEvent) || event instanceof MouseEvent) {
                setFocus(false);
            }
        }
    }, [toggleHandler, hasFocus]);
    const { pressProps } = useCollapsiblePress(pressHandler, {
        isDisabled
    });
    // if focused, we want to render the focus highlight on the collapsible header div
    const onFocus = useCallback((event) => {
        if (event.type === 'focusin' && !isMouseDown.current) {
            setFocus(true);
        }
        else {
            setFocus(false);
        }
    }, []);
    const mouseDownHandler = () => {
        isMouseDown.current = true;
    };
    const mouseUpHandler = () => {
        isMouseDown.current = false;
    };
    // Resolve accessible label. By default, the expand button is labelled by the header content.
    // If accessibleLabel or accessibleLabeleId is specified, they get used instead.
    const ariaLabelProp = accessibleLabel
        ? { 'aria-label': accessibleLabel }
        : accessibleLabelId
            ? { 'aria-labelledby': accessibleLabelId }
            : { 'aria-labelledby': id };
    const getHeader = () => (jsxs(Fragment$1, { children: [iconPosition === 'end' && jsx("div", { className: childrenClasses, children: children }), jsx("div", { tabIndex: 0, role: 'button', "aria-controls": contentId, "aria-expanded": isExpanded, onFocus: onFocus, onBlur: onFocus, onMouseDown: mouseDownHandler, onMouseUp: mouseUpHandler, className: styles.chevronStyle, ...ariaLabelProp, children: jsx(CollapsibleHeaderIcon, { iconPosition: iconPosition, isExpanded: isExpanded, isDisabled: isDisabled }) }), iconPosition === 'start' && jsx("div", { className: childrenClasses, children: children })] }));
    return (jsxs(Fragment, { children: [jsx("div", { id: id, className: classes, ...pressProps, children: jsx(Flex, { align: "center", justify: iconPosition === 'start' ? 'start' : 'between', children: getHeader() }) }), variant === 'horizontal-rule' && jsx(Separator, {})] }));
};

const CollapsibleContent = ({ children, id, isExpanded, onTransitionEnd }) => {
    const [state, setState] = useState(isExpanded ? 'expanding' : 'unmounted');
    const { styles } = useComponentTheme(CollapsibleRedwoodTheme);
    const classes = classNames([
        styles.contentChildrenStyle,
        state === 'unmounted' && styles.contentHiddenStyle
    ]);
    /**
     * 1. On initial render, Preact sets style.maxHeight field to 0 or 'none'.
     * 2. During expanding animation, useAnimation hook uses WAAPI to animate the maxHeight out
     *    to the expanded value.
     * 3. On subsequent re-renders, Preact does never updates the style.maxHeight value
     *    because even though we are telling Preact that maxHeight should be 0 or 'none', Preact
     *    considers the maxHeight value is 0 or 'none' as it is not aware that we changed this value
     *    in step 2. So from Preact's perspective there is no difference.
     */
    const contentInitialStyle = useRef({
        overflowY: 'hidden',
        maxHeight: isExpanded ? 'none' : '0'
    });
    useEffect(() => {
        // Ignore state update on initial render
        if (state === 'unmounted' && !isExpanded) {
            return;
        }
        setState(isExpanded ? 'expanding' : 'collapsing');
    }, [isExpanded, state]);
    const { nodeRef } = useAnimation(state, {
        animationStates,
        onAnimationEnd: ({ animationState }) => {
            if (animationState === 'collapsing') {
                setState('unmounted');
            }
            onTransitionEnd?.();
        }
    });
    return (jsx("div", { className: classes, ref: nodeRef, id: id, tabIndex: -1, style: contentInitialStyle.current, "aria-hidden": !isExpanded || undefined, children: children }));
};
/**
 * The transition from collapsed to expanded works as follows:
 * 1. When the component is initially rendered in the collapsed state, we
 *    explicitly set maxHeight and overflowY from "to" configuration.
 * 2. When the expanded prop changes from false to true, we first mount the content children.
 * 3. Once this is mounted we trigger an animation updating animationState value of useAnimationHook.
 * 4. Configuration is represented inside hook. Passed config depends if previous animation was completed or not.
 *    We could check that based on node.style.maxHeight.
 *
 * The transition from expanded to collapsed is similar:
 * 1. We trigger an animation updating animationState value of useAnimationHook.
 * 2. Once animation is completed, with the help of end config,we set max-Height as 'none'.
 *    This will allow us to keep adding content.
 * 3. Once this is done, onAnimationEnd is called(as 'from collapsed to expanded"). Here, content children are unmouunted.
 */
const animationStates = {
    expanding: (node) => ({
        to: {
            maxHeight: `${node.scrollHeight}px`
        },
        options: {
            duration: 400
        },
        end: {
            maxHeight: 'none'
        }
    }),
    collapsing: (node) => ({
        ...(node.style.maxHeight === 'none' && {
            from: {
                maxHeight: `${node.scrollHeight}px`
            }
        }),
        to: {
            maxHeight: '0'
        },
        options: {
            duration: 400
        }
    })
};

/**
 * A collapsible displays a header that can be expanded to show its content.
 */
const Collapsible = ({ header, children, isDisabled = false, isExpanded = false, iconPosition = 'start', variant = 'basic', onToggle, onTransitionEnd, 'aria-label': accessibleLabel, 'aria-labelledby': accessibleLabelId, testId }) => {
    const uniqueID = useId();
    const headerId = `oj-collapsible-header-${uniqueID}`;
    const contentId = `oj-collapsible-content-${uniqueID}`;
    const testIdProps = useTestId(testId);
    /**
     * Function handling toggle and invoking callback for collapsing/expanding
     */
    const toggleHandler = useCallback((target) => {
        if (isDisabled) {
            return;
        }
        onToggle?.({
            value: !isExpanded,
            target
        });
    }, [isDisabled, onToggle, isExpanded]);
    /**
     * Function that is triggerd when animation ends
     */
    const transitionEndHandler = useCallback(() => {
        onTransitionEnd?.({
            value: isExpanded
        });
    }, [onTransitionEnd, isExpanded]);
    return (jsxs("div", { ...testIdProps, children: [jsx(CollapsibleHeader, { id: headerId, contentId: contentId, toggleHandler: toggleHandler, isDisabled: isDisabled, isExpanded: isExpanded, iconPosition: iconPosition, variant: variant, accessibleLabel: accessibleLabel, accessibleLabelId: accessibleLabelId, children: header }), jsx(CollapsibleContent, { id: contentId, isExpanded: isExpanded, onTransitionEnd: transitionEndHandler, children: children })] }));
};

export { Collapsible as C };
//# sourceMappingURL=Collapsible-4cdc17e3.js.map
