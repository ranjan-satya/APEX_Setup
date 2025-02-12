/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { Ref } from 'preact/hooks';
import { Sector } from '../utils/PRIVATE_meterUtils';
import { CenterContext } from './meterCircle.types';
type Dimensions = {
    width: number;
    height: number;
    innerRadius: number;
    outerRadius: number;
};
/**
 * Returns the true dimensions of the meter circle after initial render. All dimensions are 0 for initial render.
 * @param element The HTML element that wraps the track and indicator div.
 * @param section The section in which the meter circle lies.
 * @returns The dimensions of the meter circle.
 */
export declare function getDimensions(element: HTMLElement | null, section: Sector): Dimensions;
/**
 * Returns the value corresponding to clicked point in the meter circle. Returns undefined if the clicked point is
 * outside the track of the meter circle.
 * @param pageX The pageX of the click event
 * @param pageY The pageY of the click event
 * @param max The max value of the meter circle.
 * @param min The min value of the meter circle.
 * @param step The step of the metercircle.
 * @param dimensionsRef The ref that stores dimensions reference of meter circle.
 * @param startAngle The startAngle of the meter circle.
 * @param angleExtent The angleExtent of the meter circle
 * @returns {number} The value corresponding to clicked point in the meter circle.
 */
export declare function getValue(event: PointerEvent, min: number, max: number, step: number, dimensionsRef: Ref<Dimensions>, startAngle: number, angleExtent: number, section: Sector, isRtl: boolean): number | undefined;
/**
 * Returns the fraction of angle extent for given delta.
 * @param delta The delta of metric values.
 * @param min The minimum value of the meter circle.
 * @param max The maximum value of the meter circle.
 * @param angleExtent The angle extent of the meter circle.
 * @returns The angle extent corresponding to delta in metric value.
 */
export declare function getAngleExtentFromDelta(delta: number, min: number, max: number, angleExtent: number): number;
/**
 * Returns the start angle for given metric value.
 * @param value The metric value
 * @param min The minimum value of the meter circle.
 * @param max The maximum value of the meter circle.
 * @param startAngle The startAngle of the meter circle.
 * @param angleExtent The angleExtent of the meter circle.
 * @param isRtl Whether the reading mode is 'rtl'
 * @returns The startAngle for the metric value.
 */
export declare function getStartAngleForValue(value: number, min: number, max: number, startAngle: number, angleExtent: number, isRtl: boolean): number;
/**
 * Returns the center context of for the meter circle.
 */
export declare function getCenterContext(dimensionsRef: Ref<Dimensions>, section: 'top' | 'bottom' | 'left' | 'right' | 'full'): CenterContext | undefined;
export {};
