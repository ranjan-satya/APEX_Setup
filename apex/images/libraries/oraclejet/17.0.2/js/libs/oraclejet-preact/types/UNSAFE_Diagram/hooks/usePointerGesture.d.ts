/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
type PointerGesture = {
    pointers: PointerEvent[];
};
type UsePointerGestureOptions = {
    captureTargetRef: Ref<HTMLDivElement>;
    numPointers: number;
    onPointerGestureDown?: (detail: PointerGesture) => void;
    onPointerGestureMove?: (detail: PointerGesture) => void;
    onPointerGestureEnd?: (detail: PointerGesture) => void;
    onExtraneousPointerDown?: (detail: PointerGesture) => void;
    isDisabled?: boolean;
};
declare const usePointerGesture: ({ captureTargetRef, numPointers, onPointerGestureDown, onPointerGestureMove, onPointerGestureEnd, onExtraneousPointerDown, isDisabled }: UsePointerGestureOptions) => {
    onPointerDown?: undefined;
    onPointerMove?: undefined;
    onPointerUp?: undefined;
    onPointerCancel?: undefined;
    onPointerLeave?: undefined;
} | {
    onPointerDown: (e: PointerEvent) => void;
    onPointerMove: (e: PointerEvent) => void;
    onPointerUp: (e: PointerEvent) => void;
    onPointerCancel: (e: PointerEvent) => void;
    onPointerLeave: (e: PointerEvent) => void;
};
export { usePointerGesture };
