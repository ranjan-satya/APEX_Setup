/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var hooks = require('preact/hooks');

var useTestId = require('./useTestId-8234ec1e.js');

var offScreenStyle = 'LiveRegionStyles_offScreenStyle__1uvpdtw0';

/**
 * A helper component that renders an aria-live region
 *
 * TODO: Create a more centralized component that can handle aria-live region for
 * the whole application and use context api to communicate
 */
function LiveRegion({ testId, atomic = 'false', children = '', timeout = 100, type = 'polite' }) {
    const ariaLiveText = useLiveText(children, timeout);
    const testIdProps = useTestId.useTestId(testId);
    return (jsxRuntime.jsx("span", { "aria-live": type, "aria-atomic": atomic, class: offScreenStyle, ...testIdProps, children: ariaLiveText }));
}
/**
 * A custom hook for handling the aria-live region
 *
 * @param text The aria-live text to use
 * @param timeout The timeout for setting the aria-live text async
 * @returns The aria-live text
 */
function useLiveText(text, timeout) {
    const [liveText, setLiveText] = hooks.useState('');
    const updateText = hooks.useCallback(() => setLiveText(text), [text]);
    const updateTextAsync = hooks.useCallback(() => setTimeout(updateText, timeout), [updateText, timeout]);
    hooks.useEffect(() => {
        const timeoutId = updateTextAsync();
        return () => clearTimeout(timeoutId);
    }, [updateTextAsync]);
    return liveText;
}

exports.LiveRegion = LiveRegion;
//# sourceMappingURL=LiveRegion-1315adeb.js.map
