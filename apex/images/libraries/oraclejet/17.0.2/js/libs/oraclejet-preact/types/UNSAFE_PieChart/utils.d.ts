/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { ItemInfo } from '../hooks/PRIVATE_usePieChartNav';
import type { PieChartItemData, PieSliceInfo } from './pieChart.types';
type Bounds = {
    x: number;
    y: number;
    width: number;
    height: number;
};
/**
 * Converts the angle from degrees to radians.
 * @param degree The angle in degrees
 * @returns
 */
export declare function degreesToRads(degree: number): number;
/**
 * Calculates the angle between two vectors.
 * @param vector1X The x component of first vector.
 * @param vector1Y The y component of first vector.
 * @param vector2X The x component of second vector.
 * @param vector2Y The y component of second vector.
 * @returns
 */
export declare function calculateAngleBetweenTwoVectors(vector1X: number, vector1Y: number, vector2X: number, vector2Y: number): number;
/**
 * Get the center coord of the pie chart.
 * @param availSpace The available space.
 * @returns
 */
export declare function getPieCenter(availSpace: Bounds): {
    cx: number;
    cy: number;
};
/**
 * Returns the radius of the pie chart.
 * @param availSpace The available space.
 * @param labelPosition The position of labels.
 * @returns
 */
export declare function getRadius(availSpace: Bounds, isLabelOutside: boolean): number;
/**
 * Returns the total value of the pie chart.
 * @param items
 */
export declare function getPieChartInfo(items: PieChartItemData[]): {
    totalValue: number;
    isLabelOutside: boolean;
};
/**
 * Returns the startAngle and angleOffset for the rendered items.
 * @param items
 * @param totalValue
 */
export declare function getSliceInfo(items: PieChartItemData[], totalValue: number): {
    value: number;
    color?: import("csstype").Property.Color | undefined;
    id: string | number;
    accessibleLabel?: string | undefined;
    index: number;
    startAngle: number;
    angleExtent: number;
}[];
/**
 * Returns the pie slice gaps.
 * @param  pieSliceGap The ratio of maximum supported pie slice gap.
 * @returns
 */
export declare function getPieSliceGap(pieSliceGap: number): number;
/**
 * Returns the array of layouts to render without skipping.
 * @param layouts
 * @param hasLargeItemCount
 * @param radius
 * @returns
 */
export declare function getRenderedSlices(itemInfo: PieSliceInfo[], hasLargeItemCount: boolean, radius: number): PieSliceInfo[];
/**
 * Returns the path of the pie slice wedge.
 * @param inset The inset.
 * @param cx The x coordinate of the center of the pie chart.
 * @param cy The y coordinate of the center of the pie chart.
 * @param radiusX The x radius of the slice.
 * @param radiusY The y radius of the slice.
 * @param innerRadius The inner radius.
 * @param angleExtent The angle extent.
 * @param wedgeGap The gap beteen the pie slices.
 * @param startAngle The start angle of the pie slice.
 * @returns
 */
export declare function makeWedgePath(inset: number, cx: number, cy: number, radiusX: number, radiusY: number, innerRadius: number, angleExtent: number, wedgeGap: number, startAngle: number): string;
/**
 * Returns the pie chart center context.
 * @param cx The x coordinate of the center of the pie chart.
 * @param cy The y coordinate of the center of the pie chart.
 * @param innerRadius The inner radius of the pie chart.
 * @returns
 */
export declare function getCenterContext(cx: number, cy: number, innerRadius: number): {
    innerBounds: {
        width: number;
        height: number;
        x: number;
        y: number;
    };
    outerBounds: {
        width: number;
        height: number;
        x: number;
        y: number;
    };
};
/**
 * Returns the position of the datatip for a given slice.
 * @param startAngle The start angle of the pie slice.
 * @param angleExtent The angle extent of the pie slice.
 * @param cx The x coordinate of the center of the pie slice.
 * @param cy The y coordinate of the center of the pie slice.
 * @param innerRadius The inner radius.
 * @param radius The radius of the pie slice.
 * @returns
 */
export declare function getPieItemCenterCoord(startAngle: number, angleExtent: number, cx: number, cy: number, innerRadius: number, radius: number): {
    x: number;
    y: number;
    width: number;
    height: number;
};
/**
 * Returns the element bound for active item.
 * @param renderedSlices The array of info for rendered slices.
 * @param cx The x coordinate of pie chart center.
 * @param cy The y coordinate of pie chart center.
 * @param ir The inner radius of the pie chart.
 * @param radius The radius of the pie chart.
 * @param activeItem The active item.
 * @returns
 */
export declare function getElementBounds(renderedSlices: PieSliceInfo[], cx: number, cy: number, ir: number, radius: number, activeItem?: ItemInfo): {
    x: number;
    y: number;
    width: number;
    height: number;
} | undefined;
/**
 * Returns default border color for datatip.
 * @param colors The color ramp.
 * @param activeItem The active item info.
 * @param activeData The active pie chart data item.
 * @returns
 */
export declare function getDefaultBorderColor(colors: string[], activeItem?: ItemInfo, activeData?: PieChartItemData): string | undefined;
export {};
