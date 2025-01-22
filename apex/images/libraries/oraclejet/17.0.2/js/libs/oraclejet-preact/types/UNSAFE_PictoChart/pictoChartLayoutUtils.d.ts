import type { PictoChartItemData } from './pictoChart.type';
export declare function getFlowingInfo<K, D extends PictoChartItemData<K>>(items: D[], isVert: boolean, width: number, height: number, isFlowingWidth: boolean, isFlowingHeight: boolean, colCount?: number, rowCount?: number, colWidth?: number, rowHeight?: number): {
    calcColCount?: undefined;
    calcRowCount?: undefined;
    calcColWidth?: undefined;
    calcRowHeight?: undefined;
    gridGap?: undefined;
} | {
    calcColCount: number;
    calcRowCount: number;
    calcColWidth: number;
    calcRowHeight: number;
    gridGap: number;
};
/**
 * Returns the picto items with row and col of the pictochart.
 */
export declare function generateElementCoords<K, D extends PictoChartItemData<K>>(items: D[], row: number, column: number, layoutOrigin: 'topStart' | 'topEnd' | 'bottomStart' | 'bottomEnd', isVert: boolean): {
    row: number;
    col: number;
    countIdx: number;
    itemIdx: number;
    item: D;
}[];
