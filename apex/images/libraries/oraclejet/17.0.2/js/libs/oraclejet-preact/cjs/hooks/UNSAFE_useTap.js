/* @oracle/oraclejet-preact: undefined */
'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var hooks = require('preact/hooks');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Returns event handlers that can make a target element tapable.
 * useTap is used for non-keyboard elements.
 *
 * @param onTap function
 * @param settings object
 * @returns
 */
function useTap(onTap, { isDisabled } = { isDisabled: false }) {
    const ref = hooks.useRef({
        pointerDownId: null,
        startTime: 0
    });
    const clearTap = hooks.useCallback(() => {
        ref.current = { pointerDownId: null, startTime: 0 };
    }, []);
    const onPointerDown = hooks.useCallback((e) => {
        // return if it is not a left click
        if (e.pointerType === 'mouse' && e.button !== 0) {
            return;
        }
        if (!ref.current.pointerDownId) {
            ref.current = { pointerDownId: e.pointerId, startTime: e.timeStamp };
        }
        else {
            clearTap();
        }
    }, [clearTap]);
    const onPointerUp = hooks.useCallback((e) => {
        if (e.pointerId === ref.current.pointerDownId) {
            const tapTime = e.timeStamp - ref.current.startTime;
            // 250ms maximum tap time based on numbers used in Hammer
            if (tapTime <= 250) {
                onTap({ x: e.offsetX, y: e.offsetY });
            }
        }
        clearTap();
    }, [onTap, clearTap]);
    const tapProps = isDisabled
        ? {}
        : {
            onPointerDown,
            onPointerUp,
            onPointerLeave: clearTap,
            onPointerCancel: clearTap
        };
    return {
        tapProps
    };
}

exports.useTap = useTap;
//# sourceMappingURL=UNSAFE_useTap.js.map
