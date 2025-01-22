/* @oracle/oraclejet-preact: undefined */
import { useCallback } from 'preact/hooks';
import { u as useDoubleTap } from './useDoubleTap-4e290707.js';
import { c as cancelEvent } from './eventsUtils-d544e874.js';
import './accUtils-dc32d20b.js';
import { a as isMobile } from './clientUtils-c580ab1f.js';
import { m as mergeProps } from './mergeProps-88ea8306.js';

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
    const onPointerUp = useCallback((event) => {
        if (selectionMode === 'none') {
            onDrill(event);
        }
    }, [selectionMode, onDrill]);
    const onDoubleTap = useCallback((event) => {
        if (selectionMode !== 'none') {
            onDrill(event);
        }
    }, [selectionMode, onDrill]);
    // The thresholds values are from Toolkit.
    // See DvtEventManager._onClick for double click detection timing,
    // and in DvtTouchManager, there's a comment above this._doubleTapTimer that says:
    // "We are using 600 ms because 300ms is too fast in VoiceOver mode to recognize the second tap."
    const doubleTapHandlers = useDoubleTap({ onDoubleTap, threshold: isMobile() ? 600 : 250 });
    const onKeyDown = useCallback((event) => {
        if (event.key === 'Enter') {
            onDrill(event);
            cancelEvent(event);
        }
    }, [onDrill]);
    return isDisabled ? {} : mergeProps(doubleTapHandlers, { onPointerUp, onKeyDown });
}

export { useVisDrill as u };
//# sourceMappingURL=useVisDrill-4a6dcb23.js.map
