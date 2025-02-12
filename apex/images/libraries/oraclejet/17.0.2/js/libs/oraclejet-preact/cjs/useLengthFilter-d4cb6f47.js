/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var lengthFilter = require('./lengthFilter-88f15099.js');

/**
 * A custom hook that applies the length filter to text field input
 * @param param0 The props for the useLengthFilter hook
 * @returns The filtered event handlers
 */
function useLengthFilter({ maxLength, maxLengthUnit, onCommit, onInput, value }) {
    const hasNoValue = value === undefined;
    const [isMaxLengthExceeded, setMaxLengthExceeded] = hooks.useState(false);
    const parse = hooks.useCallback((value) => lengthFilter.filter(value, maxLength, maxLengthUnit), [maxLength, maxLengthUnit]);
    // Reapply maxLength filter when the value is changed
    hooks.useEffect(() => {
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
    const onFilteredInput = hooks.useCallback((...args) => {
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
    const valueLength = hasNoValue ? undefined : lengthFilter.calcLength(value, maxLengthUnit);
    // this is set to true when the parsed value length is exactly the maxlength
    const isMaxLengthReached = hasNoValue ? undefined : maxLength === valueLength;
    return {
        valueLength,
        isMaxLengthReached,
        isMaxLengthExceeded,
        onFilteredInput
    };
}

exports.useLengthFilter = useLengthFilter;
//# sourceMappingURL=useLengthFilter-d4cb6f47.js.map
