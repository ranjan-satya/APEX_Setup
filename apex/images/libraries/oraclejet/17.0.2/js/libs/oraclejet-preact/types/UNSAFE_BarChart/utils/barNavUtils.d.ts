/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ChartItemData, Info, ItemInfo } from '../../utils/UNSAFE_visTypes/chart';
type isItemNavigableType = (seriesIndex: number, groupIndex: number) => boolean;
/**
 * Get next item in unstacked bar chart.
 * @param info
 * @param viewportEndIndex
 * @param numSeries
 * @param isNavigable
 * @returns
 */
export declare function getNextItem(info: ItemInfo, viewportEndIndex: number, numSeries: number, isNavigable: isItemNavigableType): ItemInfo;
/**
 * Get prev item in unstacked bar chart.
 * @param info
 * @param viewportStartIndex
 * @param numSeries
 * @param isNavigable
 * @returns
 */
export declare function getPreviousItem(info: ItemInfo, viewportStartIndex: number, numSeries: number, isNavigable: (seriesIndex: number, groupIndex: number) => boolean): Required<Pick<Info, "seriesIndex" | "groupIndex">>;
export declare function getBarChartNavUtil<K, D extends ChartItemData<K>>(getDataItem: (seriesIndex: number, groupIndex: number) => D | undefined, numSeries: number, viewportStartIndex: number, viewportEndIndex: number, isStacked: boolean, isRtl: boolean): (itemInfo: Info, arrow: 'ArrowLeft' | 'ArrowRight' | 'ArrowDown' | 'ArrowUp') => Info;
export {};
