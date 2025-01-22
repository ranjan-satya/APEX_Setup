/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentProps } from 'preact';
import { ListItemContext } from "../UNSAFE_Collection";
import { Menu } from "../UNSAFE_Menu";
import { ListViewContextMenuConfig } from './List.types';
export type Props<K extends string | number, D> = Omit<ComponentProps<typeof Menu>, 'children'> & {
    contextMenuConfig: ListViewContextMenuConfig<K, D>;
} & {
    contextMenuContext: ListItemContext<K, D>;
};
/**
 * The internal component used to render a custom context menu
 */
export declare function ListViewContextMenu<K extends string | number, D>({ contextMenuConfig, contextMenuContext, ...menuProps }: Props<K, D>): import("preact").JSX.Element;
