/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ColorProps } from '../../UNSAFE_interpolations/colors';
import { Property } from 'csstype';
import { MarkerShapes, LineStyle } from '../common';
import { HTMLAttributesSignalExcluded } from '../../UNSAFE_attributeUtils';
import { Ref } from 'preact/hooks';
import { ContextMenuConfig } from '../common';
import type { TestIdProps } from '../../../hooks/UNSAFE_useTestId';
import { LegendProps } from '../../../UNSAFE_Legend/legend.type';
export type ItemActionDetail<K, D> = {
    itemId: K;
    sectionId?: K;
    data: D;
};
export type ItemFocusDetail<K, D> = {
    itemId?: K;
    sectionId?: K;
    data?: D;
};
export type ItemHoverDetail<K, D> = {
    itemId?: K;
    sectionId?: K;
    data?: D;
};
export type ItemInfo = {
    itemIdx: number;
    sectionIdx: number;
    isCurrent?: boolean;
    isFocusVisible?: boolean;
};
export type LegendContextMenuConfig<D> = ContextMenuConfig<LegendContextMenuContext<D>>;
export type LegendContextMenuContext<D> = {
    type: 'item';
    data: D;
} | {
    type: 'background';
};
/**
 * Marker shapes supported by the legend.
 */
export type LegendMarkerShape = MarkerShapes;
export type SymbolProps = {
    /**
     * The color of the marker in legend symbol.
     */
    markerColor?: ColorProps['color'];
    /**
     * The border color of the legend symbol.
     */
    borderColor?: Property.BorderColor;
    /**
     * The shape of the marker.
     */
    markerShape?: LegendMarkerShape | 'none';
    /**
     * The color of the line in legend symbol.
     */
    lineColor?: ColorProps['color'];
    /**
     * The line style.
     */
    lineStyle?: LineStyle | 'none';
    /**
     * The width of the line in pixel.
     */
    lineWidth?: number;
    /**
     * The source url for the image.
     */
    source?: string;
};
/**
 * Props for the legend item.
 */
export type LegendItemData<K> = {
    /**
     * The text label of the data item. By default, this text will also be used as aria-label for the legend item
     * unless separate aria-label is specified through aria-label prop.
     */
    text: string;
    /**
     * The description of the legend item used for the datatip. If undefined, default datatip will be used.
     */
    datatip?: string;
    /**
     * The aria label of the legend item. Defaults to legend item text if not provided.
     */
    'aria-label'?: HTMLAttributesSignalExcluded['aria-label'];
    /**
     * The id of the legend item.
     */
    id: K;
    /**
     * Whether onItemAction is called from this item when the item is clicked or on Enter. Only applies when hideAndShowBehavior is 'off'. If hideAndShowBehavior is 'on', onItemAction is triggered from the item regardless of this actionable property.
     * If set to 'inherit', onItemAction will be called for this item if isReadOnly prop in Legend is false. See onItemAction in Legend for more details.
     * If set to 'off', onItemAction will never be called for this item.
     */
    actionable?: 'off' | 'inherit';
} & SymbolProps;
export type LegendSectionData<K, D> = {
    id: K;
    items: D[];
    title: string;
};
/**
 * Props for legend text styles. Remove this when theming is available.
 */
export type TextStylesProps = {
    /**
     * The font style of the legend text.
     */
    textFontStyle?: Property.FontStyle;
    /**
     * The font size of the legend text.
     */
    textFontSize?: Property.FontSize;
    /**
     * The color of the legend text.
     */
    textColor?: Property.Color;
    /**
     * The font weight of the legend text.
     */
    textFontWeight?: Property.FontWeight;
    /**
     * The text decoration of the legend text.
     */
    textTextDecoration?: Property.TextDecoration;
    /**
     * The font family of the legend text.
     */
    textFontFamily?: Property.FontFamily;
};
export type CommonProps<K, D> = {
    /**
     * The orientation of the legend.
     */
    orientation?: 'vertical' | 'horizontal';
    /**
     * The height of the legend symbol. If undefined, theme specific default height is used.
     */
    symbolHeight?: number;
    /**
     * The width of the legend symbol. If undefined, theme specific default width is used.
     */
    symbolWidth?: number;
    /**
     * An array of ids to be hidden. If defined, the legend items will act as checkboxes that can be toggled.
     * Application should update the hiddenIds with new hiddenIds in onItemAction callback.
     */
    hiddenIds?: Array<K>;
    /**
     * An array of ids to be highlighted. If defined, the items of the given ids will be highlighted and others will be
     * dimmed. By default, if the highlightedIds is empty, all items will be highlighted.
     * Application should update the highlightedIds with new highlightedIds in onInput callback.
     */
    highlightedIds?: Array<K>;
    /**
     * Defines whether the legend should be read only. User interaction is prevented if set to true.
     */
    isReadOnly?: boolean;
    /**
     * The callback invoked when a legend item is clicked or when Enter is pressed.
     */
    onItemAction?: (detail: ItemActionDetail<K, D>) => void;
    /**
     * The callback invoked when a legend item is hovered or looses hover.
     */
    onItemHover?: (detail: ItemHoverDetail<K, D>) => void;
    /**
     * The callback invoked when a legend item is keyboard focused or looses focus.
     */
    onItemFocus?: (detail: ItemFocusDetail<K, D>) => void;
    /**
     * The aria label for the legend.
     */
    'aria-label'?: HTMLAttributesSignalExcluded['aria-label'];
    /**
     * One or more ids (separated by spaces) of elements that label the legend. This will be used for the aria-labelledby of the DOM element.
     */
    'aria-labelledby'?: string;
    /**
     * One or more ids (separated by spaces) of elements that describe the legend. This will be used for the aria-describedby of the DOM element.
     */
    'aria-describedby'?: string;
    /**
     * Configuration used to specify a context menu. Context menu cannot be triggered if isReadonly is set to true.
     */
    contextMenuConfig?: LegendContextMenuConfig<D>;
    /**
     * Defines whether the legend can be used to initiate hide and show behavior on items.
     */
    hideAndShowBehavior?: 'on' | 'off';
    /**
     * Defines the behavior applied when hovering over a legend item.
     * When hover behavior is set to dim, it will dim all other legend item except the one being hovered.
     */
    hoverBehavior?: 'dim' | 'none';
} & TestIdProps & TextStylesProps;
/**
 * Props for Legend.
 */
export type BaseLegendProps<K, D extends LegendItemData<K>> = Omit<LegendProps<K, D>, 'onItemAction' | 'onItemHover' | 'onItemFocus' | 'aria-label'> & {
    /**
     * The info about currently keyboard focused item.
     */
    focusedItemInfo: ItemInfo;
    /**
     * The ref of the focused item.
     */
    focusedItemRef: Ref<HTMLDivElement>;
    /**
     * The info about the currently hovered item.
     */
    hoveredItemInfo?: ItemInfo;
    /**
     * The id for active item.
     */
    activeId?: string;
    /**
     * The id for the section
     */
    sectionIdx: number;
    /**
     * The labelled by id for each legend items provided for each section.
     */
    labelledBy?: string;
    /**
     * The num of legend items per row.
     */
    itemsPerRow?: number;
    /**
     * The num of legend items per col.
     */
    itemsPerCol?: number;
    /**
     * The item width of the legend item.
     */
    itemWidth?: number;
};
