import { Size } from '../utils/UNSAFE_size';
import { HTMLAttributesSignalExcluded } from '../utils/UNSAFE_attributeUtils';
import type { TestIdProps } from '../hooks/UNSAFE_useTestId';
import { ComponentChildren } from 'preact';
import { Property } from 'csstype';
import { ContextMenuConfig } from '../utils/UNSAFE_visTypes/common';
import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
/**
 * Props for the ItemActionDetail.
 */
export type ItemActionDetail<K, D> = {
    id?: K;
    data: D;
};
/**
 * Props for the ItemFocusDetail.
 */
export type ItemFocusDetail<K, D> = {
    id?: K;
    data?: D;
};
/**
 * Props for the ItemHoverDetail.
 */
export type ItemHoverDetail<K, D> = {
    id?: K;
    data?: D;
};
export type TagCloudContextMenuConfig<D> = ContextMenuConfig<TagCloudContextMenuContext<D>>;
export type TagCloudContextMenuContext<D> = {
    type: 'item';
    data: D;
} | {
    type: 'background';
};
/**
 * Props for the SelectionDetail.
 */
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
export type DatatipType<D> = (context: DatatipContext<D>) => {
    content?: ComponentChildren;
    borderColor?: Property.BorderColor;
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
 * Props for the TagCloud item data.
 */
export type TagCloudItemData<K> = {
    /**
     * Defines the id of the item.
     */
    id: K;
    /**
     * Defines the label of the item.
     */
    label: string;
    /**
     *The label to be used for accessibility purposes.
     */
    accessibleLabel?: string;
    /**
     * Defines the value of the item.
     */
    value: number;
    /**
     * Defines the color of the item.
     */
    color?: ColorProps['color'];
    /**
     * Defines the accessibility role of the item. Default value for role is img.
     */
    role?: HTMLAttributesSignalExcluded['role'];
};
/**
 * Props for the TagCloud
 */
export type TagCloudProps<K, D> = TestIdProps & {
    /**
     * Defines the width of the tag cloud. Supports CSS lengths. The default value for this is theme driven.
     */
    width?: Size;
    /**
     * Defines the height of the tag cloud. Supports CSS lengths. The default value for this is theme driven.
     */
    height?: Size;
    /**
     * Defines the layout shape of the tag cloud. If undefined, default layout shape cloud will be used.
     */
    layout?: 'cloud' | 'rectangular';
    /**
     * An array of ids to be highlighted.
     */
    highlightedIds?: Array<K>;
    /**
     * An array of ids to be selected.
     */
    selectedIds?: Array<K>;
    /**
     * The selection mode.
     */
    selectionMode?: 'none' | 'single' | 'multiple';
    /**
     * The callback to be triggered when the selection changes. This function should
     * update the selectedIds prop.
     */
    onSelectionChange?: (detail: SelectionDetail<K, D>) => void;
    /**
     * Defines the data of the tag cloud.
     */
    items: D[];
    /**
     * The callback invoked on click (whether or not it is an item) or when an Enter is pressed.
     */
    onItemAction?: (detail: ItemActionDetail<K, D>) => void;
    /**
     * The callback invoked when a tag cloud item is hovered or looses hover.
     */
    onItemHover?: (detail: ItemHoverDetail<K, D>) => void;
    /**
     * The callback invoked when a tag cloud item is keyboard focused or looses focus.
     */
    onItemFocus?: (detail: ItemFocusDetail<K, D>) => void;
    /**
     * The description of the tag cloud item used for the datatip. If undefined, default datatip will be used.
     */
    datatip?: DatatipType<D>;
    /**
     * Configuration used to specity a context menu.
     */
    contextMenuConfig?: TagCloudContextMenuConfig<D>;
    /**
     *The label to be used for accessibility purposes.
     */
    accessibleLabel?: string;
    /**
     * One or more ids (separated by spaces) of elements that label the tag cloud. This will be used for the aria-labelledby of the DOM element.
     */
    'aria-labelledby'?: string;
    /**
     * One or more ids (separated by spaces) of elements that describe the tag cloud. This will be used for the aria-describedby of the DOM element.
     */
    'aria-describedby'?: string;
};
