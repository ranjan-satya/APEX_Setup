import { MarkerShapes } from '../utils/UNSAFE_visTypes/common';
import { HTMLAttributesSignalExcluded } from '../utils/UNSAFE_attributeUtils';
import { Size } from '../utils/UNSAFE_size';
import { ComponentChildren } from 'preact';
import type { TestIdProps } from '../hooks/UNSAFE_useTestId';
import { Property } from 'csstype';
import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
/**
 * Props for the Item events.
 */
export type ItemDrillDetail<K, D> = {
    id?: K;
    data?: D;
};
export type ItemHoverDetail<K, D> = {
    id?: K;
    data?: D;
};
export type ItemFocusDetail<K, D> = {
    id?: K;
    data?: D;
};
export type SelectionDetail<K, D> = {
    ids: K[];
    data: (D | undefined)[];
};
/**
 * Detail for the datatip function.
 */
export type DatatipContext<D> = {
    data: D;
};
/**
 * Props for the ItemInfo.
 */
export type ItemInfo = {
    /**
     * Defines the index of the item.
     */
    idx: number;
    /**
     * Defines whether the item is current.
     */
    isCurrent?: boolean;
    /**
     * Defines whether the item is focused.
     */
    isFocusVisible?: boolean;
};
/**
 * Props for the PictoChart.
 */
export type PictoChartProps<K, D> = TestIdProps & {
    /**
     * Defines the elements of the picto chart.
     */
    children: (context: MarkerRendererContext<D>) => ComponentChildren;
    /**
     * Defines the dataset of the picto chart.
     */
    items: D[];
    /**
     * Defines the height of the picto chart.
     */
    height?: Size;
    /**
     * Defines the width of the picto chart.
     */
    width?: Size;
    /**
     * Defines the row height of the picto chart.
     */
    rowHeight?: Size;
    /**
     * Defines the column width of the picto chart.
     */
    columnWidth?: Size;
    /**
     * Defines the number of rows of the picto chart.
     */
    rowCount?: number;
    /**
     * Defines the number of columns of the picto chart.
     */
    columnCount?: number;
    /**
     * Defines the layout of the picto chart.
     */
    layout?: 'horizontal' | 'vertical';
    /**
     * Defines the layout origin of the picto chart.
     */
    layoutOrigin?: 'topStart' | 'topEnd' | 'bottomStart' | 'bottomEnd';
    /**
     * Defines the ids of the highlighted items of the picto chart.
     */
    highlightedIds?: K[];
    /**
     * Defines the ids of the selected items of the picto chart.
     */
    selectedIds?: K[];
    /**
     * Defines the selection mode of the picto chart.
     */
    selectionMode?: 'none' | 'single' | 'multiple';
    /**
     * Whether drilling is enabled. Default value is 'off'.
     */
    drilling?: 'on' | 'off';
    /**
     * The callback function to handle when selection has changed. The function should update
     * the selectedIds prop with a new set of selected ids.
     */
    onSelectionChange?: (detail: SelectionDetail<K, D>) => void;
    /**
     * The callback function to handle when user performs a drilling gesture (e.g. click, or double click if selection is enabled)
     * on an item while PictoChart is in navigation mode.
     */
    onItemDrill?: (detail: ItemDrillDetail<K, D>) => void;
    /**
     * The callback invoked when a picto chart item is hovered or looses hover.
     * Clickable objects will show a pointer cursor on hover.
     */
    onItemHover?: (detail: ItemHoverDetail<K, D>) => void;
    /**
     * The callback invoked when a picto chart item is keyboard focused or looses focus or blurred.
     * Clickable objects will show a focus ring on keyboard focus.
     */
    onItemFocus?: (detail: ItemFocusDetail<K, D>) => void;
    /**
     * The description of the picto chart item for the datatip.
     * If undefined, the accessibleLabel for the picto chart item will be used.
     */
    datatip?: (context: DatatipContext<D>) => {
        content?: ComponentChildren;
        borderColor?: Property.BorderColor;
    };
    /**
     * One or more ids (separated by spaces) of elements that describe the picto chart.
     * This will be used for the aria-labelledby of the DOM element.
     */
    'aria-labelledby'?: HTMLAttributesSignalExcluded['aria-labelledby'];
    /**
     * One or more ids (separated by spaces) of elements that label the picto chart.
     * This will be used for the aria-describedby of the DOM element.
     */
    'aria-describedby'?: HTMLAttributesSignalExcluded['aria-describedby'];
    /**
     * The aria label for the component.
     */
    'aria-label'?: HTMLAttributesSignalExcluded['aria-label'];
};
/**
 * Props for the PictoChart item data.
 */
export type PictoChartItemData<K> = {
    /**
     * Defines the id of the item.
     */
    id: K;
    /**
     * Defines the label of the item.
     */
    label?: string;
    /**
     * Defines the count of the item.
     */
    count?: number;
    /**
     * Defines the row span of the item.
     */
    rowSpan?: number;
    /**
     * Defines the column span of the item.
     */
    columnSpan?: number;
    /**
     *The label to be used for accessibility purposes.
     */
    accessibleLabel?: string;
};
/**
 * Props for the marker.
 */
export type PictoRendererOptions = {
    /**
     * Defines the shape of the marker.
     */
    shape: MarkerShapes;
    /**
     * Defines the color of the marker.
     */
    color?: ColorProps['color'];
};
/**
 * Context for the marker renderer.
 */
export type MarkerRendererContext<D> = {
    /**
     * Picto Chart Item Data
     */
    data: D;
    /**
     * Current state of the picto chart item
     */
    state: State;
};
/**
 * The state of the picto chart item that is passed to the custom renderer
 */
export type State = {
    /**
     * if picto chart item is selected
     */
    selected?: boolean;
    /**
     * if picto chart item is focused
     */
    focused?: boolean;
    /**
     * if picto chart item is hovered
     */
    hovered?: boolean;
};
