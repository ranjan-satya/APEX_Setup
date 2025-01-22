/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { useState, useCallback, useEffect } from 'preact/hooks';
import './LiveRegionStyles.styles.css';
import { u as useTestId } from './useTestId-adde554c.js';

var offScreenStyle = 'LiveRegionStyles_offScreenStyle__1uvpdtw0';

/**
 * A helper component that renders an aria-live region
 *
 * TODO: Create a more centralized component that can handle aria-live region for
 * the whole application and use context api to communicate
 */
function LiveRegion({ testId, atomic = 'false', children = '', timeout = 100, type = 'polite' }) {
    const ariaLiveText = useLiveText(children, timeout);
    const testIdProps = useTestId(testId);
    return (jsx("span", { "aria-live": type, "aria-atomic": atomic, class: offScreenStyle, ...testIdProps, children: ariaLiveText }));
}
/**
 * A custom hook for handling the aria-live region
 *
 * @param text The aria-live text to use
 * @param timeout The timeout for setting the aria-live text async
 * @returns The aria-live text
 */
function useLiveText(text, timeout) {
    const [liveText, setLiveText] = useState('');
    const updateText = useCallback(() => setLiveText(text), [text]);
    const updateTextAsync = useCallback(() => setTimeout(updateText, timeout), [updateText, timeout]);
    useEffect(() => {
        const timeoutId = updateTextAsync();
        return () => clearTimeout(timeoutId);
    }, [updateTextAsync]);
    return liveText;
}

export { LiveRegion as L };
//# sourceMappingURL=LiveRegion-81216fe6.js.map
