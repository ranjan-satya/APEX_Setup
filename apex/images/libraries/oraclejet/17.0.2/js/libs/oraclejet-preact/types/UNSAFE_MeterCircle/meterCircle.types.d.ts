/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
import { MeterSize, ThresholdDisplay, Threshold, ReferenceLine, CommitDetail, InputDetail } from '../utils/UNSAFE_meterUtils';
import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
import type { TestIdProps } from '../hooks/UNSAFE_useTestId';
export type CircularRefLine = Omit<ReferenceLine, 'position'>;
export type CenterContext = {
    /**
     * Object containing (x, y, width, height) of the rectangle inscribed in the center area. The inner bounds are useful for inserting content that is guaranteed to fit within the center area. If the angleExtent isn't 360 then we will provide the clipped square.
     */
    innerBounds: Bounds;
    /**
     * Object containing (x, y, width, height) of the rectangle circumscribing the center area. The outer bounds are useful for creating background for the entire center area when used with a CSS border-radius. If the angleExtent isn't 360 then we will provide the clipped square.
     */
    outerBounds: Bounds;
};
/**
 * Props for Meter Circle.
 */
export type MeterProps = TestIdProps & {
    /**
     * The size of the meter circle. The default value of this property is theme driven.
     */
    size?: MeterSize;
    /**
     * The value of the meter circle.
     */
    value: number;
    /**
     * Integer value specifying the maximum value of the meter circle.
     */
    max?: number;
    /**
     * Integer value specifying the minimum value of the meter circle.
     */
    min?: number;
    /**
     * Specifies the increment by which values can be changed by the end user.
     */
    step?: number;
    /**
     * Specifies the start angle of the track relative to the positive x axis.
     */
    startAngle?: number;
    /**
     * Specifies the angle extent of the track relative to the positive x axis.
     *
     */
    angleExtent?: number;
    /**
     * The datatip shown for meter circle. If datatip is undefined, meter circle will use the default datatip. If datatip is null, no datatip is shown.
     */
    datatip?: string | null;
    /**
     * The callback called in response to focus or keyboard (up, down, left, right, home, and end) or mouse (dragging) interactions that change the value of the meter circle.
     */
    onInput?: (detail: InputDetail) => void;
    /**
     * The callback called when value of the meter circle is submitted on Enter, blur, click, or drag end.
     */
    onCommit?: (detail: CommitDetail) => void;
    /**
     * Defines the ratio of relative thickness of the indicator to the track. Only supports number between 0 and 1.
     */
    indicatorSize?: number;
    /**
     * Defines the distance between the center of the circle to the inner edge of the circular bar. Depends on the size of the meter circle and theme.
     */
    innerRadius?: number;
    /**
     * The color of the indicator of the bar.
     */
    indicatorColor?: ColorProps['color'];
    /**
     * Specifies if the track is rendered.
     */
    isTrackRendered?: boolean;
    /**
     * The color of the track.
     */
    trackColor?: ColorProps['color'];
    /**
     * Controls whether the current threshold is displayed on the indicator, in the track, or if all the thresholds are displayed in the track.
     */
    thresholdDisplay?: ThresholdDisplay;
    /**
     * An array of Threshold objects.
     * Applications are required to include information about thresholds for screen readers to make their component accessible by using aria-describedby, aria-labelledby or aria-label.
     */
    thresholds?: Threshold[];
    /**
     * Reference lines for the meter circle.
     * Applications are required to include information about reference lines for screen readers to make their component accessible by using aria-describedby, aria-labelledby or aria-label.
     */
    referenceLines?: CircularRefLine[];
    /**
     * A label to be used for accessibility purposes. Default label will be used if not provided. This will be used for the aria-label of the DOM element.
     */
    'aria-label'?: string;
    /**
     * One or more ids (separated by spaces) of elements that label the meter circle. This will be used for the aria-labelledby of the DOM element.
     */
    'aria-labelledby'?: string;
    /**
     *  One or more ids (separated by spaces) of elements that describe the meter circle. This will be used for the aria-describedby of the DOM element.
     */
    'aria-describedby'?: string;
    /**
     * The center content of the meter circle.
     * Applications are required to include information about visible text in their center content for screen readers to make their component accessible by using aria-describedby, aria-labelledby or aria-label.
     */
    children?: (context: CenterContext) => ComponentChildren;
};
export type Bounds = {
    /**
     * The width of the bounding rectangle.
     */
    width: number;
    /**
     * The height of the bounding rectangle.
     */
    height: number;
    /**
     * The x position of the bounding rectangle.
     */
    x: number;
    /**
     * The y position of the bounding rectangle.
     */
    y: number;
};
