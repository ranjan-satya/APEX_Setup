/* @oracle/oraclejet-preact: undefined */
import { useRef, useCallback } from 'preact/hooks';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
function usePan(onPan, { threshold = 50, minimumTime = 500, isDisabled = false } = {
    threshold: 50,
    minimumTime: 500,
    isDisabled: false
}) {
    const ref = useRef({
        pointerDownId: 0,
        startTime: 0,
        prevOffsetX: 0,
        prevOffsetY: 0
    });
    const clearPan = useCallback(() => {
        ref.current = {
            pointerDownId: null,
            startTime: null,
            prevOffsetX: 0,
            prevOffsetY: 0
        };
    }, []);
    const onPointerDown = useCallback((e) => {
        if (!ref.current.pointerDownId) {
            ref.current = {
                pointerDownId: e.pointerId,
                startTime: e.timeStamp,
                prevOffsetX: e.offsetX,
                prevOffsetY: e.offsetY
            };
            onPan?.({ x: e.clientX, y: e.clientY, status: 'start' });
        }
        else {
            clearPan();
        }
    }, [clearPan, onPan]);
    const onPointerMove = (e) => {
        if (ref.current.pointerDownId === e.pointerId) {
            onPan?.({ x: e.clientX, y: e.clientY, status: 'move' });
        }
    };
    const onPointerUp = useCallback((ev) => {
        if (ev.pointerId === ref.current.pointerDownId) {
            if (ref.current.startTime && ev.timeStamp - ref.current.startTime >= minimumTime) {
                const horizontalThreshold = ev.offsetX - ref.current.prevOffsetX;
                const verticalThreshold = ev.offsetY - ref.current.prevOffsetY;
                if (Math.abs(horizontalThreshold) > Math.abs(verticalThreshold)) {
                    // pan-left or pan-right
                    if (ref.current.prevOffsetX - ev.offsetX > threshold) {
                        onPan?.({ x: ev.clientX, y: ev.clientY, status: 'end' });
                    }
                    else if (ev.offsetX - ref.current.prevOffsetX > threshold) {
                        onPan?.({ x: ev.clientX, y: ev.clientY, status: 'end' });
                    }
                }
                else {
                    // pan-up or pan-down
                    if (ref.current.prevOffsetY - ev.offsetY > threshold) {
                        onPan?.({ x: ev.clientX, y: ev.clientY, status: 'end' });
                    }
                    else if (ev.offsetY - ref.current.prevOffsetY > threshold) {
                        onPan?.({ x: ev.clientX, y: ev.clientY, status: 'end' });
                    }
                }
            }
        }
        // state would be reset to its original state whether pan is completed or cancelled
        clearPan();
    }, [threshold, onPan, clearPan, minimumTime]);
    const panProps = isDisabled
        ? {}
        : {
            /** event handlers to spread on the target element. */
            onPointerDown,
            onPointerUp,
            onPointerMove,
            onPointerCancel: clearPan
        };
    return {
        panProps
    };
}

export { usePan };
//# sourceMappingURL=UNSAFE_usePan.js.map
