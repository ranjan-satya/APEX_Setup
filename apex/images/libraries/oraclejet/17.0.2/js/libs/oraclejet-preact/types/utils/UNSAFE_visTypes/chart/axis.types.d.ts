/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { VisTextStyle } from '../common';
export type AxisPosition = 'left' | 'right' | 'top' | 'bottom';
export type Group = {
    /**
     * Whether drilling is enabled in the group label.
     */
    drilling?: 'on' | 'off' | 'inherit';
    /**
     * The id of the group.
     */
    id: string;
    /**
     * The name of the group.
     */
    name?: string;
    /**
     * The description of the group. This is used for the customizing the tooltip text and only applies to a categorical axis.
     */
    accessibleLabel?: string;
};
export type FormatFunction = (value: number) => string;
export type TickLabel = {
    /**
     * The function called to get the formatted value of the label.
     */
    format?: FormatFunction;
    /**
     * Whether the ticklabels are rendered or not.
     */
    isRendered?: boolean;
    /**
     * The style for the tick labels.
     */
    style?: VisTextStyle;
    /**
     * Defines whether the chart will automatically rotate the labels by 90 degrees in order to fit more labels on the axis.
     * The rotation will only be applied to categorical labels for a horizontal axis.
     */
    autoRotate?: boolean;
};
export type DataAxisInfoProps = {
    /**
     * The maximum data value corresponding to an axis. If specified, the automatic axis extent calculation will use this value.
     */
    dataMax?: number;
    /**
     * The maximum data value corresponding to an axis. If specified, the automatic axis extent calculation will use this value.
     */
    dataMin?: number;
    /**
     * The minimum increment between major tick marks. This is typically used to prevent fractional axis values for discrete measures. Only applies to numerical axes.
     */
    minStep?: number;
    /**
     * The increment between minor tick marks. Defaults to null for automatic calculation based on the data.
     * For log axis, the step is a multiplier, so for example, if the minorStep is 2, the minor tick marks will be rendered at 1, 2, 4, 8, and so on.
     */
    minorStep?: number;
    /**
     * The minimum value of the axis.
     */
    min?: number;
    /**
     * The maximum value of the axis.
     */
    max?: number;
    /**
     * The step between each tick labels.
     */
    step?: number;
    /**
     * Defines the axis scale.
     */
    scale?: 'log' | 'linear';
    /**
     * The minimum value of the current axis viewport.
     */
    viewportMin?: number;
    /**
     * The maximum value of the current axis viewport.
     */
    viewportMax?: number;
    /**
     * Defines whether the axis baseline starts at the minimum value of the data or at zero.
     */
    baselineScaling?: 'zero' | 'min';
};
export type DataAxisProps = DataAxisInfoProps & {
    /**
     * The axis title.
     */
    title?: string;
    /**
     * The axis title style.
     */
    titleStyle?: VisTextStyle;
    /**
     * The ticklabel options for the axis.
     */
    tickLabel?: TickLabel;
    /**
     * The position of the data axis. Horizontal chart supports top and bottom
     * while vertical chart only support start and end data axis position.
     */
    position?: 'start' | 'end' | 'top' | 'bottom';
    /**
     * Defines the size of the axis as ratio of width or height.
     */
    size?: number;
};
export type XAxisInfoProps = {
    /**
     * The axis title.
     */
    title?: string;
    /**
     * The axis title style.
     */
    titleStyle?: VisTextStyle;
    /**
     * The options to specify, format and style the x axis labels.
     */
    tickLabel?: Omit<TickLabel, 'format'>;
    /**
     * The axis groups.
     */
    groups: Group[];
    /**
     * The viewportStartGroup.
     */
    viewportStartGroup?: string;
    /**
     * The viewport end group.
     */
    viewportEndGroup?: string;
    /**
     * The step of the time axis.
     */
    step?: number;
    /**
     * The start and end offset of the axis.
     */
    offset: number;
    /**
     * Defines the size of the axis as ratio of width or height.
     */
    size?: number;
};
export type GroupAxisProps = Omit<XAxisInfoProps, 'groups' | 'offset'> & {
    /**
     * The viewport min. The group index will be treated as the axis coordinate.
     */
    viewportMin?: number;
    /**
     * The viewport min. The group index will be treated as the axis coordinate.
     */
    viewportMax?: number;
};
export type TimeAxisProps = Omit<XAxisInfoProps, 'groups' | 'offset'> & {
    /**
     * The viewport min. The string should be in ISO time string format.
     */
    viewportMin?: string;
    /**
     * The viewport min. The string should be in ISO time string format.
     */
    viewportMax?: string;
    /**
     * The time axis type.
     */
    timeAxisType?: 'enabled' | 'mixedFrequency' | 'skipGaps';
    /**
     * The options to specify, format and style the x axis time labels.
     */
    tickLabel?: TimeAxisTickLabel;
};
type TimeAxisTickLabel = {
    /**
     * A function or an array of two format functions used to format the time axis label.
     * If an array of two format functions is provided, the functions are applied respectively to the first and second level labels of time axis.
     */
    format?: FormatFunction | [FormatFunction, FormatFunction];
    /**
     * Whether the ticklabels are rendered or not.
     */
    isRendered?: boolean;
    /**
     * The style for the tick labels.
     */
    style?: VisTextStyle;
};
export {};
