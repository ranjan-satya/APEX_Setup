/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { BarSeriesData } from '../barChart.types';
import { ChartItemData, Scale, Group } from '../../utils/UNSAFE_visTypes/chart';
/**
 * Returns the base and end coordinate of the bar.
 * @param value The value of the bar item.
 * @param yScale The yscale.
 * @param isStacked Whether the bar chart is stacked or not.
 * @param isLog Whether the y axis is in log scale.
 * @param itemsGaps The gap between data item.
 * @param negCummulativeValue The negative cummulative value of the group.
 * @param posCummulativeValue The positive cummulative value of the group.
 * @returns
 */
export declare function getBaseAndEndCoord(value: number, yScale: Scale, isStacked: boolean, isLog: boolean, itemsGaps: number, negCummulativeValue: number, posCummulativeValue: number): {
    baselineCoord: number;
    endCoord: number;
};
export declare function getBarPosition<K extends string | number, D extends ChartItemData<K>>(series: BarSeriesData<K, D>[], groups: Group[], getDataItem: (seriesIndex: number, groupIndex: number) => D | undefined, xScale: Scale, yScale: Scale, hiddenIds: Set<number | string> | undefined, dataItemGaps: number, groupWidth: number, barGapRatio: number, isLog: boolean, isStacked: boolean, isRtl: boolean, isHoriz: boolean, timeAxisType?: 'mixedFrequency' | 'enabled' | 'skipGaps'): (seriesIndex: number, groupIndex: number) => {
    x: number;
    y: number;
    width: number;
    height: number;
} | undefined;
/**
 * Returns the center coordinate of the bar item.
 * @param value
 * @param yScale
 * @param isStacked
 * @param isLog
 * @param dataItemGaps
 * @param negCummValue
 * @param posCummValue
 * @returns
 */
export declare function getBarCenterCoordinate(value: number, yScale: Scale, isStacked: boolean, isLog: boolean, dataItemGaps: number, negCummValue: number, posCummValue: number): number;
export declare function getSeriesOffsetAndWidth(groupWidth: number, barGapRatio: number, numOfSeries: number, dataItemGaps: number, isStacked: boolean, isRtl: boolean): (seriesIndex: number) => {
    offset: number;
    dataWidth: number;
};
