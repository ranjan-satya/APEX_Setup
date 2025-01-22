/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ForwardedRef } from 'preact/compat';
import { JSXInternal } from 'preact/src/jsx';
import { TableProps, TableViewHandle } from './Table.types';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
import { DimensionProps } from '../utils/UNSAFE_interpolations/dimensions';
/**
 * Props specific to non-virtualized TableView
 */
type NonVirtualizedTableProps<K, D> = {
    /**
     * The data that is used to render each item in TableView.  If the value is null, then TableView will show nothing
     * if hasMore is false, or loading indicator if hasMore is true.
     */
    data: D[] | null;
    /**
     * A callback function to extract the key which is used to identify the item.
     */
    getRowKey: (data: D) => K;
    /**
     * Whether there is more data available to load.  By default this returns false.
     */
    hasMore?: boolean;
    /**
     * An optional callback function which is invoked when the user scrolls to the end of the table.
     */
    onLoadMore?: () => void;
};
/**
 * Props for the TableView Component
 */
export type Props<K, D, C extends string> = TableProps<K, D, C> & NonVirtualizedTableProps<K, D> & DimensionProps & TestIdProps;
/**
 * Component that renders data in rows of columns.
 * This component is non-virtualized and renders all rows provided in the data prop.
 */
export declare const TableView: <K extends string | number, D, C extends string>(p: Props<K, D, C> & {
    ref?: ForwardedRef<TableViewHandle<K, C>>;
}) => JSXInternal.Element;
export {};
