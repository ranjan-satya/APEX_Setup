import { PictoChartProps, PictoChartItemData } from './pictoChart.type';
type PictoChartWithDimensionsProps<K, D> = Omit<PictoChartProps<K, D>, 'width' | 'height'> & {
    width: number;
    height: number;
    isFlowingWidth: boolean;
    isFlowingHeight: boolean;
};
export declare function PictoChartWithDimensions<K extends string | number, D extends PictoChartItemData<K> = PictoChartItemData<K>>({ width, height, columnWidth, rowHeight, items, columnCount, rowCount, layout, layoutOrigin, selectionMode, highlightedIds, selectedIds, drilling, onItemDrill, onItemHover, isFlowingWidth, isFlowingHeight, onItemFocus, ...props }: PictoChartWithDimensionsProps<K, D>): import("preact").JSX.Element | null;
export {};
