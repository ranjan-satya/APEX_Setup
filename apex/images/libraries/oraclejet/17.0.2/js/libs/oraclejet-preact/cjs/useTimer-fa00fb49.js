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
 * Hook for a timer.
 * @param isStarted Specifies whether the timer should be started: true to start it, false to stop
 * it.
 * @param delay Specifies the delay after which the timer should expire.
 * @returns True if the timer expires, false if it was stopped before that.
 *
 */
function useTimer({ isStarted, delay = 0 }) {
    const timeoutId = hooks.useRef(null);
    const [isExpired, setExpired] = hooks.useState(false);
    hooks.useEffect(() => {
        if (!isStarted) {
            // if not started, clear the current timeout
            if (timeoutId.current) {
                clearTimeout(timeoutId.current);
                timeoutId.current = null;
            }
            setExpired(false);
        }
        else {
            // if started, only create a new timeout if we don't already have one
            if (!timeoutId.current) {
                timeoutId.current = setTimeout(() => {
                    setExpired(true);
                }, delay);
            }
        }
        return () => {
            if (timeoutId.current) {
                clearTimeout(timeoutId.current);
                timeoutId.current = null;
            }
        };
    }, [isStarted, delay]);
    return isExpired;
}

exports.useTimer = useTimer;
//# sourceMappingURL=useTimer-fa00fb49.js.map
