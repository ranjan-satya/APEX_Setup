/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Size } from '../utils/UNSAFE_size';
import { ComponentChildren } from 'preact';
type Props = {
    /**
     * The sectional legend component.
     * TODO: maybe include Legend as well if preact customers want it in future.
     */
    legend?: ComponentChildren;
    /**
     * The chart component.
     */
    chart: ComponentChildren;
    /**
     * The position of the legend around the chart.
     */
    position: 'start' | 'end' | 'top' | 'bottom';
    /**
     * The max size of the legend.
     */
    maxSize?: Size;
    /**
     * The size of the legend.
     */
    size?: Size;
};
/**
 * Component responsible for laying out the legend around a chart.
 */
export declare function ChartWithLegend({ chart, legend, position, maxSize, size }: Props): import("preact").JSX.Element;
export {};
