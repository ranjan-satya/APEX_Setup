/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
/**
 * Draggable region
 */
type DraggableRegion = {
    xMin: number;
    xMax: number;
    yMin: number;
    yMax: number;
};
type DragDetail = {
    x: number;
    y: number;
    dx: number;
    dy: number;
    regionOffsetX: number;
    regionOffsetY: number;
    originalEvent: PointerEvent;
};
type UseDragOptions = {
    captureTargetRef: Ref<HTMLDivElement>;
    draggableRegion?: DraggableRegion;
    onDragStart?: (detail: Omit<DragDetail, 'dx' | 'dy'>) => void;
    onDragMove?: (detail: DragDetail) => void;
    onDragEnd?: (detail: DragDetail) => void;
    isDisabled?: boolean;
};
declare const useDrag: ({ captureTargetRef, draggableRegion, onDragStart, onDragMove, onDragEnd, isDisabled }: UseDragOptions) => {
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
export { useDrag };
