/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
type Point = {
    x: number;
    y: number;
};
type PinchDetail = {
    origin: Point;
    delta: number;
};
type UsePinchOptions = {
    captureTargetRef: Ref<HTMLDivElement>;
    onPinchZoomStart?: (detail: PinchDetail) => void;
    onPinchZoomChange?: (detail: PinchDetail) => void;
    onPinchZoomEnd?: () => void;
    isDisabled?: boolean;
};
declare const usePinch: ({ captureTargetRef, onPinchZoomStart, onPinchZoomChange, onPinchZoomEnd, isDisabled }: UsePinchOptions) => {
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
export { usePinch };
