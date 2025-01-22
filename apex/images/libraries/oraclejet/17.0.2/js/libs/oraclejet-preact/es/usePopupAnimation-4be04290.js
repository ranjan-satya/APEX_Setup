/* @oracle/oraclejet-preact: undefined */
import { u as useAnimationStatus } from './useAnimationStatus-9ef65f0c.js';
import { u as useUser } from './useUser-99920e02.js';
import { useState, useCallback, useEffect } from 'preact/hooks';
import { g as getTransformOrigin } from './popupAnimationUtils-d4c27cd1.js';

const animationStates = {
    opening: (node) => {
        return {
            //zoomIn
            from: {
                scaleX: 0,
                scaleY: 0,
                opacity: 0,
                transformOrigin: getTransformOrigin(node.placement, node.direction)
            },
            to: {
                scaleX: 1,
                scaleY: 1,
                opacity: 1,
                transformOrigin: getTransformOrigin(node.placement, node.direction)
            },
            options: {
                duration: 200
            }
        };
    },
    closing: (node) => {
        return {
            //zoomOut
            from: {
                scaleX: 1,
                scaleY: 1,
                opacity: 1,
                transformOrigin: getTransformOrigin(node.placement, node.direction)
            },
            to: {
                scaleX: 0,
                scaleY: 0,
                opacity: 0,
                transformOrigin: getTransformOrigin(node.placement, node.direction)
            },
            options: {
                duration: 200
            }
        };
    }
};
function usePopupAnimation(props) {
    const { isOpen, isAnimatedOnMount, onTransitionEnd, placement, animationStates: propsAnimationStates, onPosition } = props;
    //The animationPlacement is used for the case of flipping.
    const [animationPlacement, setAnimationPlacement] = useState(placement);
    const { direction } = useUser();
    const { setAnimationElementRef, animationElementRef, status } = useAnimationStatus({
        isOpen: isOpen,
        isAnimatedOnMount: isAnimatedOnMount,
        animationStates: propsAnimationStates ?? animationStates,
        onTransitionEnd
    });
    const popupElementRef = animationElementRef;
    const onPositionAnimated = useCallback((data) => {
        if (placement !== data.placement) {
            if (popupElementRef.current !== null) {
                // if flips happens we need to change the placement in the animations.
                // There are cases where animation is done before even running the useEffect below. Due to that we update current placement of the node here
                popupElementRef.current.placement = data.placement;
            }
            setAnimationPlacement(data.placement);
        }
        onPosition?.(data);
    }, [onPosition, placement, popupElementRef]);
    //This is needed for the case if popup flips and changes the placement.
    useEffect(() => {
        if (popupElementRef != null && popupElementRef.current != null && status != 'unmounted') {
            if (popupElementRef.current.placement !== animationPlacement) {
                popupElementRef.current.placement = animationPlacement;
            }
            popupElementRef.current.direction = direction;
        }
    }, [popupElementRef, animationPlacement, direction, status]);
    return { setAnimationElementRef, status, onPosition: onPositionAnimated };
}

export { usePopupAnimation as u };
//# sourceMappingURL=usePopupAnimation-4be04290.js.map
