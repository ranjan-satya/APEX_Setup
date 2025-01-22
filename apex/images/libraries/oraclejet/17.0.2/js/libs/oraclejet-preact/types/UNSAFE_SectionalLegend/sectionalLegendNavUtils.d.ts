/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ItemFocusDetail, ItemHoverDetail, ItemInfo, LegendItemData, LegendSectionData } from '../utils/UNSAFE_visTypes/legend';
/**
 * Returns utils functions for navigation in simple sectional legend.
 * @param items
 * @returns
 */
export declare function getSectionalNavUtils<K extends string | number, D extends LegendItemData<K>, S extends LegendSectionData<K, D>>(sections: S[]): {
    getItem: (itemInfo: ItemInfo) => D;
    getDetailFromInfo: (itemInfo?: ItemInfo) => ItemFocusDetail<K, D> | ItemHoverDetail<K, D>;
    getPrevItemInfo: (itemInfo: ItemInfo) => {
        itemIdx: number;
        sectionIdx: number;
    };
    getNextItemInfo: (itemInfo: ItemInfo) => {
        itemIdx: number;
        sectionIdx: number;
    };
};
