/* @oracle/oraclejet-preact: undefined */
import { useRef, useCallback } from 'preact/hooks';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * A polyfill for react's experimental_useEffectEvent
 * See https://react.dev/reference/react/experimental_useEffectEvent
 *
 * @param callback The event function that needs to be wrapped
 * @returns A non-reactive function that always “sees” the latest values of your props and state.
 */
// eslint-disable-next-line @typescript-eslint/ban-types
function useEffectEvent(callback) {
    const fnRef = useRef(callback);
    fnRef.current = callback;
    return useCallback((...args) => {
        return fnRef.current.apply(null, args);
    }, []);
}

export { useEffectEvent as u };
//# sourceMappingURL=useEffectEvent-e320381e.js.map
