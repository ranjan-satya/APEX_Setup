/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { VisTextStyle } from "../utils/UNSAFE_visUtils";
import { ChartItemData, ChartCommonProps, ChartSeriesData, Group } from '../utils/UNSAFE_visTypes/chart';
export type BarItemData<K> = ChartItemData<K> & {
    labelPosition?: 'insideBarEdge' | 'outsideBarEdge' | 'center' | 'none';
};
export type BarSeriesData<K, D> = {
    /**
     * The bar items belonging to the series.
     */
    items: D[];
} & ChartSeriesData<K, D>;
export type BarChartProps<K, D extends BarItemData<K>> = ChartCommonProps<K, D> & {
    /**
     * An array of series for the chart.
     */
    series: BarSeriesData<K, D>[];
    /**
     * Specifies the presence and size of the gaps between data items (bars).
     * Valid values range from 0 to 1, where 1 produces the maximum supported gaps
     */
    dataItemGaps?: number;
    /**
     * A function that returns the item for each group and series.
     */
    getDataItem: (seriesIndex: number, groupIndex: number) => D | undefined;
    /**
     * The style of the stack label.
     */
    stackLabelStyle?: VisTextStyle;
    /**
     * The function called to get the stack label for the data item.
     */
    getStackLabel?: (context: StackLabelContext<D>) => string;
};
export type StackLabelContext<D> = {
    /**
     * The data items that are present in the group.
     */
    data: D[];
    /**
     * The group being stacked.
     */
    group: Group;
    /**
     * The total value of the stack.
     */
    value: number;
};
