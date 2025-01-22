/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
import { TagCloudContextMenuConfig, ItemInfo } from './tagCloud.type';
import { type gestureTypes } from '../hooks/PRIVATE_useVisContextMenu';
type Props<D> = {
    focusedItemInfo: ItemInfo;
    items: D[];
    rootRef: Ref<HTMLDivElement>;
    contextMenuConfig?: TagCloudContextMenuConfig<D>;
    onContextMenuDismissed?: (gesture: gestureTypes) => void;
    getItemInfo: (element: HTMLElement) => {
        idx: number;
    } | undefined;
};
export declare const useTagCloudContextMenu: <D>({ getItemInfo, focusedItemInfo, rootRef, contextMenuConfig, items, onContextMenuDismissed }: Props<D>) => {
    contextMenuContent: import("preact").JSX.Element | undefined;
    contextMenuProps: Record<string, any>;
};
export {};
