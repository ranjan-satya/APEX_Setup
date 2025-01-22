/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
/**
 * The props for pie slice.
 */
type PieSliceProps = {
    /**
     * The x coordinate of the center of the slice.
     */
    cx: number;
    /**
     * The y coordinate of the center of the slice.
     */
    cy: number;
    /**
     * The radius of the pie slice.
     */
    r: number;
    /**
     * The start angle of the pie slice.
     */
    startAngle: number;
    /**
     * The angle extent of the pie slice.
     */
    angleExtent: number;
    /**
     * The gaps to keep between the pie slice items.
     */
    gap: number;
    /**
     * The inner radius of the pie slice.
     */
    innerRadius: number;
    /**
     * The color of the pie slice.
     */
    color: ColorProps['color'];
    /**
     * Whether the slice is focused.
     */
    isFocused?: boolean;
    /**
     * Whether the slice is hovered.
     */
    isHovered?: boolean;
    /**
     * The id of the pie slice.
     */
    id?: string;
    /**
     * The index of the item among rendered series.
     */
    itemIndex: number;
    /**
     * The aria label of the pie slice.
     */
    accessibleLabel?: string;
};
/**
 * The Pie Slice component.
 */
export declare function PieSlice({ cx, cy, r, startAngle, angleExtent, gap, innerRadius, color, id, itemIndex, isFocused, isHovered, ...props }: PieSliceProps): import("preact").JSX.Element;
export {};
