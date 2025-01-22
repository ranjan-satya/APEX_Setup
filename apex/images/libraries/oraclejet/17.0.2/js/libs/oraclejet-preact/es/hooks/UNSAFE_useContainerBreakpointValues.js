/* @oracle/oraclejet-preact: undefined */
import { u as useContainerBreakpoints } from '../useContainerBreakpoints-3db52e52.js';
import { d as defaultBreakpoints } from '../useBreakpoints-13aa87e6.js';
import 'preact/hooks';

/*
 * Custom hook to allow the user to define custom values that are returned if a breakpoint is reached.
 * The Responsive object is a set of one or more key/value pairs, with each breakpoint as a key.
 */
function useContainerBreakpointValues(breakpointValues, breakpoints = defaultBreakpoints) {
    const { breakpointMatches, ref } = useContainerBreakpoints(breakpoints);
    const result = Object.entries(breakpointValues).reduce((p, c) => {
        const key = c[0]; // first entry in breakpoint values is the key
        return breakpointMatches[key] ? c : p; // if current breakpoint is true, return it, else stay with previous
    });
    const breakpoint = result[1]; // second entry in breakpoint values is the value
    return { breakpoint, ref };
}

export { useContainerBreakpointValues };
//# sourceMappingURL=UNSAFE_useContainerBreakpointValues.js.map
