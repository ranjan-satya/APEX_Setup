/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ColorProps } from '../../UNSAFE_interpolations/colors';
export type Paths = 'human';
export type Polygons = 'star' | 'triangleUp' | 'triangleDown' | 'diamond' | 'plus';
export type MarkerShapes = Paths | Polygons | 'rectangle' | 'circle' | 'square' | 'ellipse';
export type LineStyle = 'solid' | 'dashed' | 'dotted';
export type MarkerProps = {
    scaleX: number;
    scaleY: number;
    tx: number;
    ty: number;
    height: number;
    width: number;
    fill: ColorProps['color'];
    stroke: ColorProps['color'];
    strokeWidth?: number;
    dataInfo?: Record<string, string>;
    isSelected?: boolean;
    isHovered?: boolean;
    isInteractive?: boolean;
};
export type PolygonProps = {
    type: Polygons;
} & MarkerProps;
export type PathProps = {
    type: Paths;
} & MarkerProps;
export type RectProps = {
    x: number;
    y: number;
} & MarkerProps;
export type EllipseProps = {
    cx: number;
    cy: number;
    rx: number;
    ry: number;
} & Omit<MarkerProps, 'width' | 'height'>;
export type LineProps = {
    lineWidth?: number;
    lineStyle?: LineStyle;
    color?: ColorProps['color'];
    lineLength?: number;
};
