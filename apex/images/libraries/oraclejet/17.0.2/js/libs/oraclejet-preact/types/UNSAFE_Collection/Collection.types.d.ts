/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
import { Keys } from '../utils/UNSAFE_keys';
/**
 * Type of the context object passed to the item renderer function for
 * the base Collection
 */
export type ItemContext<D> = {
    /**
     * index of the item
     */
    index: number;
    /**
     * data for the item
     */
    data: D;
};
/**
 * Type for the metadata of an item.
 */
export type Metadata<K> = {
    /**
     * The key of the item.
     */
    key: K;
    /**
     * An optional suggestion metadata object that allows implementations
     * to provide information related to suggestions.
     */
    suggestion?: Record<string, any>;
    /**
     * A zero-based depth of the item.
     */
    treeDepth?: number;
    /**
     * Whether or not the item is a leaf node.
     */
    isLeaf?: boolean;
    /**
     * The key of the parent for the item.
     */
    parentKey?: K;
};
/**
 * Type of the context object passed to the item renderer function for
 * Collection that deals with flat data
 */
export type ListItemRendererContext<K, D> = {
    /**
     * zero based index of the item
     */
    index: number;
    /**
     * data for the item
     */
    data: D;
    /**
     * metadata for the item
     */
    metadata: Metadata<K>;
    /**
     * provides default rendering of selection checkbox.  Only available if selection mode is 'multiple'
     */
    selector?: () => ComponentChildren;
    /**
     * Indicates whether the item is selected
     */
    isSelected?: boolean;
};
/**
 * Type of the context object passed pass to ItemAction payload
 */
export type ListItemContext<K, D> = {
    /**
     * zero based index of the item
     */
    index: number;
    /**
     * data for the item
     */
    data: D;
    /**
     * metadata for the item
     */
    metadata: Metadata<K>;
};
/**
 * Type of the context object passed to the item renderer function for
 * Collection that deals with hierarchical data
 */
export type HierarchicalItemRendererContext<K, D> = ListItemRendererContext<K, D> & {
    /**
     * key of the parent
     */
    parentKey?: K;
    /**
     * zero based depth of the item
     */
    depth: number;
    /**
     * whether or not this is a leaf item
     */
    leaf: boolean;
    /**
     * provides default rendering of expand/collapse affordance.  Only available if onToggle callback is provided.
     */
    expander?: () => ComponentChildren;
};
/**
 * Type for selection mode
 */
export declare const modes: readonly ["single", "multiple", "none"];
export type SelectionMode = (typeof modes)[number];
/**
 * BEGIN: Public types from private hooks
 */
/**
 * useSelection type for payload of selection change event handler
 */
export type SelectionDetail<K> = {
    value: Keys<K>;
    target: EventTarget | null;
};
/**
 * useSingleSelection type for payload of selection change event handler
 */
export type SingleSelectionDetail<K> = {
    value: K;
};
/**
 * useCurrentKey type for payload of current key change event handler
 */
export type CurrentKeyDetail<K> = {
    value: K;
};
export type ItemActionDetail<K, D> = {
    context: ListItemContext<K, D>;
    target: EventTarget | null;
};
/**
 * Type for payload of toggle change event handler for ExpandableList and TreeView
 */
export type ToggleDetail<K> = {
    value: K;
};
export type ContextMenuConfig<C> = {
    itemsRenderer: (context: C) => ComponentChildren;
    accessibleLabel?: string;
};
/**
 * Type for current item highlight mode
 */
export declare const variants: readonly ["highlight", "none"];
export type CurrentItemVariant = (typeof variants)[number];
/**
 * Virtualization Types
 **/
/**
 * This information is pass to the rangeExtractor callback to help
 * determine what the rendered range should be.  We can add more information
 * as needed in the future.
 */
export type ViewportInfo = {
    scrollOffset?: number;
    itemSize?: number;
    viewportHeight?: number;
    overscan?: number;
};
