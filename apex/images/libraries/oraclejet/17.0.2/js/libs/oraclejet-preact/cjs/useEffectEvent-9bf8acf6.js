/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');

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
    const fnRef = hooks.useRef(callback);
    fnRef.current = callback;
    return hooks.useCallback((...args) => {
        return fnRef.current.apply(null, args);
    }, []);
}

exports.useEffectEvent = useEffectEvent;
//# sourceMappingURL=useEffectEvent-9bf8acf6.js.map
