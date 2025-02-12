/* @oracle/oraclejet-preact: undefined */
import { useState, useEffect } from 'preact/hooks';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * A custom hook that debounces a value and only returns the latest value
 * if there is no interaction for the specified delay
 *
 * @param value The value to be debounced
 * @param delay The delay for the debouncing
 */
function useDebounce(value, delay) {
    const [debouncedValue, setDebouncedValue] = useState(value);
    useEffect(() => {
        // update value after the specified delay
        const timeoutId = setTimeout(() => {
            setDebouncedValue(value);
        }, delay);
        // Cancel the timeout if the value or delay changes (also on unmount)
        // so that the debounced value will not be updated if the value is changed
        // within the delay period.
        return () => clearTimeout(timeoutId);
    }, [value, delay]);
    return debouncedValue;
}

export { useDebounce as u };
//# sourceMappingURL=useDebounce-fa5a80e9.js.map
