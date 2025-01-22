/* @oracle/oraclejet-preact: undefined */
'use strict';

var useAnimationStatus = require('./useAnimationStatus-a3d51709.js');
var useUser = require('./useUser-a6d15333.js');
var hooks = require('preact/hooks');
var popupAnimationUtils = require('./popupAnimationUtils-a3dfbdfd.js');

const animationStates = {
    opening: (node) => {
        return {
            //zoomIn
            from: {
                scaleX: 0,
                scaleY: 0,
                opacity: 0,
                transformOrigin: popupAnimationUtils.getTransformOrigin(node.placement, node.direction)
            },
            to: {
                scaleX: 1,
                scaleY: 1,
                opacity: 1,
                transformOrigin: popupAnimationUtils.getTransformOrigin(node.placement, node.direction)
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
                transformOrigin: popupAnimationUtils.getTransformOrigin(node.placement, node.direction)
            },
            to: {
                scaleX: 0,
                scaleY: 0,
                opacity: 0,
                transformOrigin: popupAnimationUtils.getTransformOrigin(node.placement, node.direction)
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
    const [animationPlacement, setAnimationPlacement] = hooks.useState(placement);
    const { direction } = useUser.useUser();
    const { setAnimationElementRef, animationElementRef, status } = useAnimationStatus.useAnimationStatus({
        isOpen: isOpen,
        isAnimatedOnMount: isAnimatedOnMount,
        animationStates: propsAnimationStates ?? animationStates,
        onTransitionEnd
    });
    const popupElementRef = animationElementRef;
    const onPositionAnimated = hooks.useCallback((data) => {
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
    hooks.useEffect(() => {
        if (popupElementRef != null && popupElementRef.current != null && status != 'unmounted') {
            if (popupElementRef.current.placement !== animationPlacement) {
                popupElementRef.current.placement = animationPlacement;
            }
            popupElementRef.current.direction = direction;
        }
    }, [popupElementRef, animationPlacement, direction, status]);
    return { setAnimationElementRef, status, onPosition: onPositionAnimated };
}

exports.usePopupAnimation = usePopupAnimation;
//# sourceMappingURL=usePopupAnimation-78a173e8.js.map
