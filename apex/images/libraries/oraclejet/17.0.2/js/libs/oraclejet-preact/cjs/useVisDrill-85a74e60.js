/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var useDoubleTap = require('./useDoubleTap-d3937fb6.js');
var eventsUtils = require('./eventsUtils-8680c9d7.js');
require('./accUtils-50f26093.js');
var clientUtils = require('./clientUtils-a95299aa.js');
var mergeProps = require('./mergeProps-e3da7237.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Returns the event handlers for drill gestures.
 */
function useVisDrill(selectionMode, onDrill, isDisabled = false) {
    const onPointerUp = hooks.useCallback((event) => {
        if (selectionMode === 'none') {
            onDrill(event);
        }
    }, [selectionMode, onDrill]);
    const onDoubleTap = hooks.useCallback((event) => {
        if (selectionMode !== 'none') {
            onDrill(event);
        }
    }, [selectionMode, onDrill]);
    // The thresholds values are from Toolkit.
    // See DvtEventManager._onClick for double click detection timing,
    // and in DvtTouchManager, there's a comment above this._doubleTapTimer that says:
    // "We are using 600 ms because 300ms is too fast in VoiceOver mode to recognize the second tap."
    const doubleTapHandlers = useDoubleTap.useDoubleTap({ onDoubleTap, threshold: clientUtils.isMobile() ? 600 : 250 });
    const onKeyDown = hooks.useCallback((event) => {
        if (event.key === 'Enter') {
            onDrill(event);
            eventsUtils.cancelEvent(event);
        }
    }, [onDrill]);
    return isDisabled ? {} : mergeProps.mergeProps(doubleTapHandlers, { onPointerUp, onKeyDown });
}

exports.useVisDrill = useVisDrill;
//# sourceMappingURL=useVisDrill-85a74e60.js.map
