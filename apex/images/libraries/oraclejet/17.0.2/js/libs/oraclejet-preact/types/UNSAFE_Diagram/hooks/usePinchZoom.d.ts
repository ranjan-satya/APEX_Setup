/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
type UsePinchZoomOptions = {
    captureTargetRef: Ref<HTMLDivElement>;
    zooming: 'on' | 'off';
    minZoom: number;
    maxZoom: number;
    zoomValue: number;
    onZoom?: (detail: {
        zoomValue: number;
    }) => void;
};
declare const usePinchZoom: ({ captureTargetRef, zooming, minZoom, maxZoom, zoomValue, onZoom }: UsePinchZoomOptions) => {
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
export { usePinchZoom };
