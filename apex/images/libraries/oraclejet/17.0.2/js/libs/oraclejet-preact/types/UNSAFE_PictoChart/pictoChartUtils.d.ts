import { ComponentChildren } from 'preact';
import type { ItemInfo, PictoChartItemData, MarkerRendererContext, PictoRendererOptions, DatatipContext } from './pictoChart.type';
import { HTMLAttributesSignalExcluded } from '../utils/UNSAFE_attributeUtils';
import { BundleType } from '../resources/nls/bundle';
import { MarkerShapes } from '../utils/UNSAFE_visTypes/common';
import { Property } from 'csstype';
import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
/**
 * Checks if the item is highlighted.
 * @param id Id of the item
 * @param highlighted The set of highlighted item
 */
export declare function isItemHighlighted<K>(id: K, highlightedIds?: K[]): boolean;
/**
 * Checks if the item is highlighted.
 * @param id Id of the item
 * @param selectedIds The set of highlighted item
 */
export declare function isItemSelected<K>(id: K, selectedIds?: K[]): boolean;
/**
 * Returns the value of the data-oj-item-index attribute for a given element.
 * @param element The HTML element.
 */
export declare function getItemInfo(element: HTMLElement): {
    idx: number;
} | undefined;
/**
 * Returns the item props for PictoChart.
 * @param item The picto chart item.
 * @param itemIdx The item index of the item.
 * @param countIdx The item count of the item.
 * @param isReadOnly Whether the picto chart is readonly.
 * @param hoveredItem The info of the currently hovered item.
 * @param selectedIds The selected Ids
 * @param focusedItem The info of currently focused item.
 * @param highlightedIds The highlighted ids.
 * @param activeId The active Id
 */
export declare function getItemProps<K, D extends PictoChartItemData<K>>(item: D, itemIdx: number, countIdx: number, isReadOnly: boolean, hoveredItem?: ItemInfo, selectedIds?: Array<K>, focusedItem?: ItemInfo, highlightedIds?: Array<K>, activeId?: string): {
    isCurrent: boolean;
    isHighlighted: boolean;
    isSelected: boolean;
    hasSelection: boolean | undefined;
    isFocused: boolean;
    key: K;
    itemIdx: number;
    countIdx: number;
    activeId: string | undefined;
    isReadOnly: boolean;
    item: D;
};
/**
 * Compares if two ItemInfo are equal
 * @param item1
 * @param item2
 * @returns
 */
export declare function isEqualItem(item1?: ItemInfo, item2?: ItemInfo): boolean;
/**
 * Checks if the item is the currentItem and if the focus ring
 * is visible.
 * @param itemInfo ItemInfo
 * @param itemIdx Item index
 */
export declare function hasFocusRing(itemInfo: ItemInfo, itemIdx: number): boolean;
/**
 *
 */
export declare function getCountWithTotal(itemCount: number, totalCount: number, translations: BundleType): string;
/**
 * Returns the aria properties for the picto chart.
 * @param isReadOnly { boolean } If the picto chart is readonly.
 * @param accessibleLabel { string } The aria-label set by the app.
 * @returns The aria props.
 */
export declare function getItemAriaProps(itemCount: number, totalCount: number, supportsSelection: boolean, label?: string, translations?: BundleType, isSelected?: boolean, hasSelection?: boolean, accessibleLabel?: string, activeId?: string): {
    'aria-label'?: HTMLAttributesSignalExcluded['aria-label'];
    role: HTMLAttributesSignalExcluded['role'];
    id?: string;
};
/**
 * Returns the marker props for SVGSymbol
 */
export declare function getMarkerProps(shape: MarkerShapes, color?: ColorProps['color'], isFocused?: boolean, isSelected?: boolean, isCurrent?: boolean, supportsSelection?: boolean): {
    markerShape: MarkerShapes;
    tx: number | undefined;
    ty: number | undefined;
    markerColor: Property.Color | undefined;
    borderColor: Property.Color | undefined;
    outerBorderColor: string | (string & {}) | undefined;
    markerScale: number;
    setAspectRatioNone: boolean;
};
/**
 * Returns the marker renderer for SVGSymbol
 */
export declare function getPictoDefaultRenderers<K, D extends PictoChartItemData<K> = PictoChartItemData<K>>(rendererOptions: (data: D) => PictoRendererOptions): {
    markerRenderer: (context: MarkerRendererContext<D>) => import("preact").JSX.Element;
    datatipRenderer: (context: DatatipContext<D>) => {
        borderColor: Property.Color | undefined;
    };
};
export declare function getTotalCount<K>(items: PictoChartItemData<K>[]): number;
/**
 * Returns the text for the picto chart datatip.
 * @param items The picto chart items data.
 * @param focusedItem The item currently keyboard focused.
 * @param hoveredItem The item that is currently hovered.
 * @param datatip The datatip.
 */
export declare function getDatatipContent<K, D extends PictoChartItemData<K>>(items: D[], getItem: (itemInfo: ItemInfo, items: D[]) => D | undefined, totalCount: number, focusedItem: ItemInfo, hoveredItem?: ItemInfo, datatip?: (context: DatatipContext<D>) => {
    content?: ComponentChildren;
    borderColor?: Property.BorderColor;
}, translations?: BundleType): {
    borderColor: string;
    content: string | number | bigint | true | object | undefined;
};
