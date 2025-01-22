/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Bounds, PanState } from '../diagram.types';
export type PanBounds = {
    minX: number;
    minY: number;
    maxX: number;
    maxY: number;
};
/**
 * The pan values that describes where the diagram content
 * is panned
 */
export type Pan = {
    panX: number;
    panY: number;
};
export declare const pan: (previousPan: Pan, nextPan: Pan, panDirection: 'x' | 'y' | 'any', zoom: number, width: number, height: number, panBounds?: PanBounds, onPanChange?: (detail: PanState) => void) => {
    newPan: {
        panX: number;
        panY: number;
    };
};
export declare const getPanBounds: (width: number, height: number, elemBounds: Bounds, panType: string, zoom: number, minZoom: number, initPanZoomState: {
    zoom: number;
    centerX?: number;
    centerY?: number;
}) => PanBounds;
