/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { JSX } from 'preact';
import { ForwardedRef } from 'preact/compat';
import { ListProps, ListViewContextMenuConfig, ListViewHandle } from './List.types';
/**
 * Props specific to non-virtualized ListView
 */
type NonVirtualizedListProps<K, D> = {
    /**
     * The data that is used to render each item in ListView.  If the value is null, then ListView will show nothing
     * if hasMore is false, or loading indicator if hasMore is true.
     */
    data: D[] | null;
    /**
     * A callback function to extract the key which is used to identify the item.
     */
    getRowKey: (data: D) => K;
    /**
     * Whether there are more data available to load.  By default this returns false.
     */
    hasMore?: boolean;
    /**
     * An optional callback function which is invoked when user scrolls to the end of the list.
     */
    onLoadMore?: () => void;
    /**
     * Configuration used to specify a context menu.
     */
    contextMenuConfig?: ListViewContextMenuConfig<K, D>;
};
/**
 * Props for the ListView Component
 */
export type Props<K, D> = Pick<ListProps<K, D>, 'aria-label' | 'aria-labelledby' | 'children' | 'currentKey' | 'currentItemVariant' | 'gridlines' | 'onCurrentKeyChange' | 'onItemAction' | 'onSelectionChange' | 'promotedSection' | 'selectedKeys' | 'selectionMode' | 'viewportConfig' | 'testId' | 'scrollPositionOverride' | 'onReorder'> & NonVirtualizedListProps<K, D>;
/**
 * A list view displays data items as a list or a grid with highly interactive features.
 */
export declare const ListView: <K extends string | number, D>(props: Props<K, D> & {
    ref?: ForwardedRef<ListViewHandle<K>>;
}) => JSX.Element;
export {};
