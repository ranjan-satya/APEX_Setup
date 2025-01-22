/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var useBreakpoints = require('./useBreakpoints-f5c06998.js');

/*
 * This custom hook returns the current breakpoints based on the width of a container, which is a DOM object.
 * The breakpoints are returned as a set of boolean values keyed to each breakpoint.
 *
 * TODO: Refactor to use a single ResizeObserver for better performance
 */
function useContainerBreakpoints(breakpoints = useBreakpoints.defaultBreakpoints) {
    const [width, setWidth] = hooks.useState(0);
    const observedNodeRef = hooks.useRef(null);
    const resizeObserver = hooks.useMemo(() => new ResizeObserver((entries) => {
        for (const entry of entries) {
            setWidth(entry.contentRect.width);
        }
    }), []);
    const ref = hooks.useCallback((node) => {
        const observedNode = observedNodeRef.current;
        if (node != observedNode) {
            if (observedNode) {
                resizeObserver.unobserve(observedNode);
            }
            if (node) {
                resizeObserver.observe(node);
            }
            observedNodeRef.current = node;
        }
    }, [resizeObserver]);
    const breakpointMatches = hooks.useMemo(() => {
        const matches = {};
        for (const k in breakpoints) {
            matches[k] = width >= parseInt(breakpoints[k]);
        }
        return matches;
    }, [width, breakpoints]);
    return { breakpointMatches, ref };
}

exports.useContainerBreakpoints = useContainerBreakpoints;
//# sourceMappingURL=useContainerBreakpoints-582c2489.js.map
