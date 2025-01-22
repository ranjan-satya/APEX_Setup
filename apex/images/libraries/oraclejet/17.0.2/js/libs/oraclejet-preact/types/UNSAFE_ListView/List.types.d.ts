/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren, Ref } from 'preact';
import { CurrentKeyDetail, DataState, ListItemRendererContext, Range, SelectionDetail, SelectionMode, ItemActionDetail, CurrentItemVariant, ViewportInfo } from '../UNSAFE_Collection';
import { Keys } from '../utils/UNSAFE_keys';
import { ViewportConfig } from '../hooks/UNSAFE_useViewportIntersect';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
import { ReorderProps, ReorderDetail } from '../UNSAFE_Collection/Reorderable.types';
import { ListViewScrollPosition } from './ScrollPositionUtils';
import { ContextMenuConfig, ListItemContext } from '../UNSAFE_Collection/Collection.types';
/**
 * Types used by public and private list modules need to be exported publicly.
 */
/**
 * List supports a finite set of roles,
 */
export declare const roles: readonly ["grid", "listbox", "treegrid"];
export type Roles = (typeof roles)[number];
/**
 * Type for gridlines
 */
export declare const gridlinesValues: readonly ["visible", "hidden"];
export type Gridlines = {
    item?: (typeof gridlinesValues)[number];
    top?: (typeof gridlinesValues)[number];
    bottom?: (typeof gridlinesValues)[number];
};
export type CustomRendererContext<K, D> = {
    listItemContext: ListItemRendererContext<K, D>;
    isTabbable: boolean;
    isSelected: boolean;
    isFocused: boolean;
    isFocusRingVisible: boolean;
    isActive: boolean;
    defaultListItem: (context: ListItemRendererContext<K, D>, otherProps?: any) => ComponentChildren;
};
export type PromotedSection = {
    count: number;
};
export type ListViewHandle<K> = {
    getScrollPosition: () => ListViewScrollPosition<K>;
};
export type ListViewContextMenuConfig<K, D> = ContextMenuConfig<ListItemContext<K, D>>;
/**
 * Full set of props exposed in the Internal List Component
 *  This component is composed by ListViw, SelectMultiple and CardView components
 */
export type PublicListProps<K, D> = {
    /**
     * An aria-label which defines a string value that labels this ListView.
     * Either aria-label or aria-labelledby should be specified in order to make ListView accessible.
     */
    'aria-label'?: string;
    /**
     * An aria-labelledby which identifies the element(s) that labels this ListView.
     * Either aria-label or aria-labelledby should be specified in order to make ListView accessible.
     */
    'aria-labelledby'?: string;
    /**
     * Option to disable tabbable mode.  When set to false, pressing F2 key or clicking on
     * focusable element within an item will no longer make ListView enter tabbable mode.
     * @default: true
     */
    allowTabbableMode?: boolean;
    /**
     * A function to render each item
     */
    children: (context: ListItemRendererContext<K, D>) => ComponentChildren;
    /**
     * The key of the item that currently have keyboard focus. Ignored if the current item is not
     * currently in the viewport.
     */
    currentKey?: K;
    /**
     * A property that can specify highlight styles on current item.
     */
    currentItemVariant?: CurrentItemVariant;
    /**
     * A DataState object that provide information including data and metadata to this ListView.
     * If the value is null, then ListView will show loading indicator until a DataState is set.
     */
    data: DataState<K, D> | null;
    gridlines?: Gridlines;
    /**
     * Callback function to handle when current focused item has changed.  The function should
     * update the currentKey prop with a new current key.
     */
    onCurrentKeyChange?: (detail: CurrentKeyDetail<K>) => void;
    /**
     * Callback function to handle when viewport has changed, including the case
     * where user scrolls to the end of the component and there are more items to load.
     * The function should sets a new DataState on the component for the specified range.
     */
    onLoadRange: (range: Range) => void;
    /**
     * Callback function to handle when selection has changed.  The function should update
     * the selectedKeys prop with a new set of selected keys.
     */
    onSelectionChange?: (detail: SelectionDetail<K>) => void;
    /**
     * A function to handle when user performs an action gesture (e.g. click, press enter key, press spacebar)
     * on an item while ListView is in navigation mode
     */
    onItemAction?: (detail: ItemActionDetail<K, D>) => void;
    /**
     * The promoted section is a group of items that appears at the top of the list.  A visual indicator is
     * shown next to the group.  Smart suggestion items is one use case of the promoted section.
     */
    promotedSection?: PromotedSection;
    /**
     * The keys of the current selected items in the ListView.
     */
    selectedKeys?: Keys<K>;
    /**
     * The type of selection behavior that is enabled on the ListView. This property controls the number
     * of selections that can be made via selection gestures at any given time.
     */
    selectionMode?: SelectionMode;
    /**
     * The ViewportConfig currently contains only one property which allows application to specify what the scroller element should be.
     * If not specified, then the root element of ListView itself will be the scroller element.
     */
    viewportConfig?: ViewportConfig;
    /**
     * The scroll position to apply to the ListView. This will be applied each time its value instance changes.
     */
    scrollPositionOverride?: ListViewScrollPosition<K>;
} & ReorderProps<K> & TestIdProps;
export type ListViewReorderDetail<K> = ReorderDetail<K>;
/**
 * These are the PRIVATE props implemented by the core PRIVATE_List module which are used by wrapper components such as ListView and SelectMultiple
 */
type PrivateListProps<K, D> = {
    /**
     * Optional custom load more indicator
     */
    loadingIndicator?: ComponentChildren;
    /**
     * Optionally provide a custom callback to return the range to render based on viewport info
     */
    rangeExtractor?: (info: ViewportInfo) => Range;
    /**
     * Top-level aria role.
     * @default 'grid'
     */
    role?: Roles;
    /**
     * Whether virtualization should be used
     */
    isVirtualized?: boolean;
    /**
     * A custom item render prop to use instead of the children prop.  This is mainly used
     * by the ExpandableList and GroupedList that require additional information than
     * ListItemContext.
     */
    customItemRenderer?: (context: CustomRendererContext<K, D>) => ComponentChildren;
    /**
     * A optional callback to calculate any offset when scrolling an item to visible.
     */
    scrollToVisibleOffset?: (root: Element) => number;
    /**
     * A Ref to handel the Scroller in scroll position
     */
    scrollerRef?: Ref<HTMLDivElement | null>;
    /**
     * Optional props for keyboard reordering
     */
    reorderProps?: Record<string, any>;
    /**
     * Optional props for triggering context menu
     */
    contextMenuTriggerProps?: Record<string, any>;
};
export type ListProps<K, D> = PublicListProps<K, D> & PrivateListProps<K, D>;
export {};
