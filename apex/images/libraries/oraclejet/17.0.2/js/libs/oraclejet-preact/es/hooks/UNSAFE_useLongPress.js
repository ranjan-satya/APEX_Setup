/* @oracle/oraclejet-preact: undefined */
import { useRef, useCallback } from 'preact/hooks';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const InitialPressState = {
    pointerDownId: null,
    startTime: 0
};
const DefaultMinimumTime = 250;
function useLongPress(onLongPress, { isDisabled = false, minimumTime = DefaultMinimumTime } = {
    isDisabled: false,
    minimumTime: DefaultMinimumTime
}) {
    const ref = useRef(InitialPressState);
    const clearLongPress = useCallback(() => {
        ref.current = InitialPressState;
    }, []);
    const onPointerDown = useCallback((e) => {
        // return if it is not a left click
        if (e.pointerType == 'mouse' && e.button != 0) {
            return;
        }
        ref.current = ref.current.pointerDownId
            ? InitialPressState
            : { pointerDownId: e.pointerId, startTime: e.timeStamp };
    }, []);
    const onPointerUp = useCallback((e) => {
        if (e.pointerId === ref.current.pointerDownId) {
            const longPressTime = e.timeStamp - ref.current.startTime;
            // 250ms minimum longPress time based on numbers used in Hammer
            if (longPressTime > minimumTime) {
                onLongPress({ x: e.offsetX, y: e.offsetY });
            }
        }
        clearLongPress();
    }, [onLongPress, clearLongPress, minimumTime]);
    const longPressProps = isDisabled
        ? {}
        : {
            onPointerDown,
            onPointerUp,
            onPointerLeave: clearLongPress,
            onPointerCancel: clearLongPress
        };
    return {
        longPressProps
    };
}

export { useLongPress };
//# sourceMappingURL=UNSAFE_useLongPress.js.map
