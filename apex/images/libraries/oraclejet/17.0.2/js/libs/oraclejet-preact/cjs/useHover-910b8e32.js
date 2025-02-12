/* @oracle/oraclejet-preact: undefined */
'use strict';

var useToggle = require('./useToggle-3ebba7d8.js');

/**
 * Returns listeners and status for hover
 * If only visual changes are required, :hover is faster.
 *
 * @returns
 */
function useHover(settings = { isDisabled: false }) {
    // :hover is faster than event handlers, but doesn't work for all platforms.
    // For touch-first devices, the media query for hover is enough.
    // Hybrid devices support hover upon pointer usage, but tapping would toggle hover state
    // so disable :hover and use event handlers for such devices.
    // Use getClientHints to check if hybrid
    // const isHybrid = getClientHints().hoverSupport === 'events';
    // Classes can be done via :
    //     !isHybrid && compStyles.pseudohover,
    //      isHybrid && isHover && compStyles.hover
    // and the props can be done via:
    //     const { hoverProps, isHover } = useHover( {isDisabled: !isHybrid});
    //
    // For the algorithm below, There are 2 possible sequences:
    // 1. A pointer (mouse, trackpad) would generate a mouseEnter event that would initiate hover.
    // 2. A touch generates a touchstart/touchend/mouseEnter event sequence.
    // Hover has no meaning in a touch context, so the isHover state should be avoided.
    // To avoid, we set an ignore flag when a touchend is encountered.
    // Each time mouseEnter is encountered, the flag is checked.
    // If ignore, we know that it is a touch device, so don't set hover state.
    // In all cases, reset the flag for the next sequence.
    //
    const { bool, setTrue, setFalse } = useToggle.useToggle(false);
    const { bool: ignore, setTrue: setIgnoreTrue, setFalse: setIgnoreFalse } = useToggle.useToggle(false);
    const startHover = () => {
        if (ignore) {
            setIgnoreFalse();
        }
        else {
            setTrue();
        }
    };
    const hoverProps = settings.isDisabled
        ? {}
        : { ontouchend: setIgnoreTrue, onMouseEnter: startHover, onMouseLeave: setFalse };
    return {
        isHover: settings.isDisabled ? false : bool,
        hoverProps: hoverProps
    };
}

exports.useHover = useHover;
//# sourceMappingURL=useHover-910b8e32.js.map
