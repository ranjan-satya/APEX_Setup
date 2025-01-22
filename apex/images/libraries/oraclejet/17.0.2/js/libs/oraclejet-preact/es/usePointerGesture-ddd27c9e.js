/* @oracle/oraclejet-preact: undefined */
import { useRef } from 'preact/hooks';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook that enables and handles (multi) pointer gestures.
 */
const usePointerGesture = ({ captureTargetRef, numPointers = 1, onPointerGestureDown, onPointerGestureMove, onPointerGestureEnd, onExtraneousPointerDown, isDisabled = false }) => {
    const activePointers = useRef([]);
    if (isDisabled) {
        activePointers.current = [];
    }
    const onPointerDown = (e) => {
        activePointers.current.push(e);
        if (activePointers.current.length === numPointers) {
            activePointers.current.forEach((e) => captureTargetRef.current.setPointerCapture(e.pointerId));
            onPointerGestureDown && onPointerGestureDown({ pointers: activePointers.current });
        }
        else if (activePointers.current.length > numPointers) {
            onExtraneousPointerDown && onExtraneousPointerDown({ pointers: activePointers.current });
        }
    };
    const onPointerMove = (e) => {
        if (activePointers.current.length === 0)
            return;
        const index = activePointers.current.findIndex((pointerEvent) => pointerEvent.pointerId === e.pointerId);
        if (index === -1)
            return;
        activePointers.current[index] = e;
        if (activePointers.current.length === numPointers) {
            onPointerGestureMove && onPointerGestureMove({ pointers: activePointers.current });
        }
    };
    const onPointerUp = (e) => {
        const index = activePointers.current.findIndex((pointerEvent) => pointerEvent.pointerId === e.pointerId);
        if (index === -1)
            return;
        activePointers.current[index] = e;
        if (activePointers.current.length === numPointers) {
            onPointerGestureEnd && onPointerGestureEnd({ pointers: activePointers.current });
        }
        activePointers.current.splice(index, 1);
    };
    const onPointerCancel = onPointerUp;
    const onPointerOut = onPointerUp;
    const onPointerLeave = onPointerUp;
    return isDisabled
        ? {}
        : {
            onPointerDown,
            onPointerMove,
            onPointerUp,
            onPointerCancel,
            onPointerOut,
            onPointerLeave
        };
};

export { usePointerGesture as u };
//# sourceMappingURL=usePointerGesture-ddd27c9e.js.map
