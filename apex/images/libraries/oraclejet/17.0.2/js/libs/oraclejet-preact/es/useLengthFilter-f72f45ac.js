/* @oracle/oraclejet-preact: undefined */
import { useState, useCallback, useEffect } from 'preact/hooks';
import { f as filter, c as calcLength } from './lengthFilter-d249a7ab.js';

/**
 * A custom hook that applies the length filter to text field input
 * @param param0 The props for the useLengthFilter hook
 * @returns The filtered event handlers
 */
function useLengthFilter({ maxLength, maxLengthUnit, onCommit, onInput, value }) {
    const hasNoValue = value === undefined;
    const [isMaxLengthExceeded, setMaxLengthExceeded] = useState(false);
    const parse = useCallback((value) => filter(value, maxLength, maxLengthUnit), [maxLength, maxLengthUnit]);
    // Reapply maxLength filter when the value is changed
    useEffect(() => {
        if (hasNoValue) {
            return;
        }
        const filteredValue = parse(value);
        if (filteredValue !== value) {
            onInput?.({ previousValue: value, value: filteredValue });
            onCommit?.({ previousValue: value, value: filteredValue });
            // Value is filtered, means that the max length is exceeded
            setMaxLengthExceeded(true);
        }
        else {
            // Value is not filtered, means that the max length is not exceeded
            setMaxLengthExceeded(false);
        }
    }, [value, onCommit, onInput, parse, hasNoValue]);
    const onFilteredInput = useCallback((...args) => {
        const { previousValue, value } = args[0];
        const filteredValue = parse(value ?? '');
        // Call the onInput event only when the value is changed
        if (previousValue !== filteredValue) {
            onInput?.({ ...args[0], value: filteredValue });
            // value is not filtered, so the max length is not exceeded
            setMaxLengthExceeded(false);
        }
        else {
            // value is changed but then filtered to previous value
            // meaning that the max length was exceeded
            setMaxLengthExceeded(true);
        }
    }, [onInput, parse]);
    const valueLength = hasNoValue ? undefined : calcLength(value, maxLengthUnit);
    // this is set to true when the parsed value length is exactly the maxlength
    const isMaxLengthReached = hasNoValue ? undefined : maxLength === valueLength;
    return {
        valueLength,
        isMaxLengthReached,
        isMaxLengthExceeded,
        onFilteredInput
    };
}

export { useLengthFilter as u };
//# sourceMappingURL=useLengthFilter-f72f45ac.js.map
