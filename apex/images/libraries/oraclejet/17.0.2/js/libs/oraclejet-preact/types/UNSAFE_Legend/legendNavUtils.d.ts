/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ItemActionDetail, ItemFocusDetail, ItemHoverDetail, ItemInfo, LegendItemData } from '../utils/UNSAFE_visTypes/legend';
/**
 * Returns utils functions for navigation in simple legend.
 * @param items
 * @returns
 */
export declare function getLegendNavUtils<K extends string | number, D extends LegendItemData<K>>(items: D[]): {
    getItem: (itemInfo: ItemInfo) => D;
    getDetailFromInfo: (itemInfo?: ItemInfo) => ItemFocusDetail<K, D> | ItemHoverDetail<K, D> | ItemActionDetail<K, D>;
    getPrevItemInfo: (itemInfo: ItemInfo) => {
        sectionIdx: number;
        itemIdx: number;
    };
    getNextItemInfo: (itemInfo: ItemInfo) => {
        sectionIdx: number;
        itemIdx: number;
    };
};
