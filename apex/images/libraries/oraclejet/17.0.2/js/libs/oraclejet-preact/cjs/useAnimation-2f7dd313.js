/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');

/**
 * Converts shorthand translate props into transform string representation.
 *
 * @param translateX
 * @param translateY
 * @param translateZ
 * @returns Longhand transform string representation.
 */
function convertTranslateShortcuts(translateX, translateY, translateZ) {
    return `${translateX ? ` translateX(${translateX})` : ''}${translateY ? ` translateY(${translateY})` : ''}${translateZ ? ` translateZ(${translateZ})` : ''}`;
}
/**
 * Converts shorthand rotate props into transform string representation.
 *
 * @param rotateX
 * @param rotateY
 * @param rotateZ
 * @returns Longhand transform string representation.
 */
function convertRotateShortcuts(rotateX, rotateY, rotateZ) {
    return `${rotateX ? ` rotateX(${rotateX})` : ''}${rotateY ? ` rotateY(${rotateY})` : ''}${rotateZ ? ` rotateZ(${rotateZ})` : ''}`;
}
/**
 * Converts shorthand scale props into transform string representation.
 *
 * @param scaleX
 * @param scaleY
 * @param scaleZ
 * @returns Longhand transform string representation.
 */
function convertScaleShortcuts(scaleX, scaleY, scaleZ) {
    return `${scaleX || scaleX === 0 ? ` scaleX(${scaleX})` : ''}${scaleY || scaleY === 0 ? ` scaleY(${scaleY})` : ''}${scaleZ || scaleZ === 0 ? ` scaleZ(${scaleZ})` : ''}`;
}
/**
 * Converts shorthand skew props into transform string representation.
 *
 * @param skewX
 * @param skewY
 * @returns Longhand transform string representation.
 */
function convertSkewShortcuts(skewX, skewY) {
    return `${skewX ? ` skewX(${skewX})` : ''}${skewY ? ` skewY(${skewY})` : ''}`;
}
/**
 * Converts animation CSS properties into Regular camel cased CSS properties.
 *
 * @param useAnimationCssProperties This include transform shorthand props.
 * @returns Regular camel cased CSS properties.
 */
function convertUseAnimationCssPropertiesToRegularCSS(useAnimationCssProperties) {
    if (!useAnimationCssProperties) {
        return {};
    }
    const { translateX, translateY, translateZ, rotateX, rotateY, rotateZ, scaleX, scaleY, scaleZ, skewX, skewY, ...otherCssProperties } = useAnimationCssProperties;
    const initialTransformValue = useAnimationCssProperties['transform'] || '';
    // Now we just add values pased in shortcuts to transform property, do we want to replace it instead?
    const finalTransformValue = `${initialTransformValue}${convertTranslateShortcuts(translateX, translateY, translateZ)}${convertRotateShortcuts(rotateX, rotateY, rotateZ)}${convertScaleShortcuts(scaleX, scaleY, scaleZ)}${convertSkewShortcuts(skewX, skewY)}`;
    return {
        ...otherCssProperties,
        ...(finalTransformValue && { transform: finalTransformValue })
    };
}
/**
 * Converts animation CSS properties into WAAPI keyframe properties.
 * Since keyframes have a difference between offset and cssOffset this collision is avoided here.
 *
 * @param useAnimationCssProperties This include transform shorthand props.
 * @returns WAAPI keyframe
 */
function convertUseAnimationCssPropertiesToWAAPIKeyframe(useAnimationCssProperties) {
    if (!useAnimationCssProperties) {
        return {};
    }
    const { offset, ...otherCssProperties } = convertUseAnimationCssPropertiesToRegularCSS(useAnimationCssProperties);
    return {
        ...otherCssProperties,
        ...(offset && { cssOffset: offset })
    };
}
/**
 * Stops an animation.
 *
 * @param animation Animation that is going to be stopped.
 * @returns
 */
function stopAnimation(animation, node) {
    // TO DO: rollup-plugin-typescript seems to have an outdated Animation typing. That produces warnings while bulding.
    // Update picked type to get rid of this casting.
    // We have to check if the element is visible to commit styles
    isVisible(node) && animation.commitStyles();
    animation.cancel();
}
/**
 * Check if an element is visible. Similar to jQuery :visible selector.
 *
 * @param element HTML element that is going to be checked for its visibility.
 * @returns
 */
function isVisible(element) {
    return !!(element?.offsetWidth || element?.offsetHeight || element?.getClientRects().length);
}

/**
 * Hook to animate single components.
 * It allows n number of animation states.
 * @param animationState
 * @param animationConfig
 * @returns
 */
function useAnimation(animationState, { animationStates, isAnimatedOnMount = false, onAnimationEnd = () => { } }) {
    const didMountRef = hooks.useRef(false);
    const nodeRef = hooks.useRef(null);
    const currentAnimationState = hooks.useRef();
    const currentAnimation = hooks.useRef();
    // We don't allow changing animationStates. Ref to keep "first run" animation states.
    const animationStatesRef = hooks.useRef(animationStates);
    hooks.useEffect(() => {
        // UseEffect just have to be ran when there is a change on animationState
        if (currentAnimationState.current === animationState)
            return;
        // It makes sense to keep track of animation states even if there's no animated element to animate.
        const previousAnimationState = currentAnimationState.current;
        currentAnimationState.current = animationState;
        //Stop an animation here only makes sense if the previous one is running
        if (currentAnimation.current?.playState === 'running') {
            stopAnimation(currentAnimation.current, nodeRef.current);
        }
        const animatedElement = nodeRef.current;
        if (!animatedElement) {
            return;
        }
        if (!didMountRef.current) {
            didMountRef.current = true;
            if (!isAnimatedOnMount) {
                return;
            }
        }
        const animationConfig = getConfig(animationStatesRef.current, animatedElement, animationState, previousAnimationState);
        if (!animationConfig) {
            return;
        }
        currentAnimation.current = startAnimation(animationConfig, animatedElement, animationState, onAnimationEnd);
    }, [animationState, isAnimatedOnMount, onAnimationEnd]);
    /**
     * Used to cancel current animation. When animation is canceled node style goes back to beginning style of canceled animation.
     * @returns
     */
    const cancelCurrentAnimation = hooks.useCallback(() => {
        const animation = currentAnimation.current;
        if (animation?.playState === 'running') {
            animation.cancel();
        }
    }, []);
    /**
     * Callback ref use to set nodeRef.
     *
     * @param node Actual element user set.
     * @returns
     */
    const callbackRef = hooks.useCallback((node) => {
        if (node != nodeRef.current) {
            //If for any reason element is unmounted we have to cancel animation(if there is one) and
            //set currentAnimation as undefined so we don't keep running this animation
            if (nodeRef.current) {
                currentAnimation.current?.cancel();
                currentAnimation.current = undefined;
            }
            nodeRef.current = node;
        }
    }, []);
    return { nodeRef: callbackRef, controller: { cancel: cancelCurrentAnimation } };
}
/**
 * Gets animation configuration.
 *
 * @param animationStates Set of animation configurations provided by the user.
 * @param animatedElement Element that is going to be styled.
 * @param animationState Current animation state.
 * @param previousAnimationState Previous animation state.
 * @returns AnimationConfig.
 */
function getConfig(animationStates, animatedElement, animationState, previousAnimationState) {
    const currentAnimationStateConfig = animationStates[`${previousAnimationState} => ${animationState}`] ||
        animationStates[animationState];
    const animationConfig = typeof currentAnimationStateConfig === 'function'
        ? currentAnimationStateConfig(animatedElement)
        : currentAnimationStateConfig;
    return animationConfig && Object.keys(animationConfig).length > 0 ? animationConfig : null;
}
/**
 * Starts an animation.
 *
 * @param animationConfig Animation configuration used by the animation.
 * @param animatedElement Element that is going to be styled.
 * @param animationState Current animation state.
 * @param onAnimationEnd Callback called once the animation is completed.
 * @returns Animation.
 */
function startAnimation(animationConfig, animatedElement, animationState, onAnimationEnd) {
    const { delay, duration, easing } = animationConfig.options || {};
    //Now, if user does not pass a value we override it by hand. We will use theming tools in future.
    const animationOptions = {
        delay: delay || 0,
        duration: duration || 400,
        easing: easing
            ? typeof easing === 'string'
                ? easing
                : `cubic-bezier(${easing[0]}, ${easing[1]}, ${easing[2]}, ${easing[3]})`
            : 'ease'
    };
    // WAAPI animation method. https://developer.mozilla.org/en-US/docs/Web/API/Element/animate
    // TO DO: Check for required browser compatibility in case we need pollyfill.
    // https://github.com/web-animations/web-animations-js/blob/dev/docs/support.md#browser-support
    const startedAnimation = animatedElement.animate([
        convertUseAnimationCssPropertiesToWAAPIKeyframe(animationConfig.from),
        convertUseAnimationCssPropertiesToWAAPIKeyframe(animationConfig.to)
    ], { ...animationOptions });
    startedAnimation.onfinish = () => {
        //We commit styles to have an only source of truth.
        setEndStyle(animatedElement, true, animationConfig);
        // On animationEnd is only called when animation actually finished. If an animation is interruped by other one
        // or animated element is not longer rendered onAnimationEnd will not be called. Do we want to have a callback for those cases?
        onAnimationEnd?.({ animationState });
    };
    return startedAnimation;
}
/**
 * Sets element style.
 *
 * @param animatedElement Element that is going to be styled.
 * @param toAndEndStyle Represents which data will be used to set style. If set to true it uses "to" and "endStyle".
 * If set to false it uses just "endStyle".
 * @param animationConfig Style that is going to be set.
 */
function setEndStyle(animatedElement, toAndEndStyle, animationConfig) {
    const endStyle = toAndEndStyle
        ? {
            ...convertUseAnimationCssPropertiesToRegularCSS(animationConfig.to),
            ...convertUseAnimationCssPropertiesToRegularCSS(animationConfig.end)
        }
        : convertUseAnimationCssPropertiesToRegularCSS(animationConfig.end);
    for (const key in endStyle) {
        //TO DO: Look for a better way to handle types.
        animatedElement.style[key] = endStyle[key];
    }
}

exports.useAnimation = useAnimation;
//# sourceMappingURL=useAnimation-2f7dd313.js.map
