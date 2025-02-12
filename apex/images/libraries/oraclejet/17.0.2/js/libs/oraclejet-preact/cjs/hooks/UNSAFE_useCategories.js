/* @oracle/oraclejet-preact: undefined */
'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var hooks = require('preact/hooks');
var eventsUtils = require('../eventsUtils-8680c9d7.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Toggles the existing categories/id with updated categories/id.
 * @param original The set of original ids/categories
 * @param updated The set of updated ids/categories
 * @returns
 */
const toggle = (original, updated) => {
    const matches = new Set(original);
    updated.forEach((item) => {
        if (!original.has(item)) {
            matches.add(item);
        }
        else {
            matches.delete(item);
        }
    });
    return matches;
};
/**
 * Creates initial map of category and data items.
 * @param items Data item objects. If 'categories' field is not present, id will be assumed to be default category.
 */
function getCategoryMap(items, getCategory) {
    const categoryToItem = new Map();
    const itemToCategory = new Map();
    items.forEach((item) => {
        const id = item.id;
        const categories = getCategory(item);
        itemToCategory.set(id, new Set(categories));
        categories.forEach((category) => {
            if (categoryToItem.has(category)) {
                categoryToItem.get(category)?.add(id);
            }
            else {
                categoryToItem.set(category, new Set([id]));
            }
        });
    });
    return { categoryToItem, itemToCategory };
}
/**
 * Returns the items for a given categories.
 * @param categoryToItemMap Map of categories to Item.
 * @param matchCriteria Whether to match any or all categories.
 * @param categories categories
 * @returns
 */
function getItemsFromCategories(categoryToItemMap, matchCriteria = 'any', categories) {
    return [...categories].reduce((acc, cur, index) => {
        const curItems = categoryToItemMap.get(cur);
        if (matchCriteria === 'any') {
            return curItems ? new Set([...acc, ...curItems]) : acc;
        }
        if (!index)
            return curItems;
        return new Set([...acc].filter((item) => curItems.has(item)));
    }, new Set());
}
/**
 * A hook that helps to manage getting ids that match specific categories or criterias in a set of data. It also handles partial versus exact matching.
 *
 * @param items The array of items.
 * @param getCategoriesFromItem The function that returns the categories array for given item.
 * @param initialCategories The initial categories.
 * @param matchCriteria  The matching condition for the categories.
 * By default, matchCriteria is 'all' and only items whose categories match all of the values specified in the categories array will be matched.
 * If matchCriteria is 'any', then items that match at least one of the categories values will be matched.
 * @param replace Whether the new categories should completely replace the old categories (for highlighting) or just toggle previous categories (for hideAndShow)
 * @param onCategoriesChange The callback to invoke when categories change.
 * @returns
 */
const useCategories = (items, getCategoriesFromItem, initialCategories = [], matchCriteria = 'all', replace = true, onCategoriesChange) => {
    const categoryMap = hooks.useMemo(() => getCategoryMap(items, getCategoriesFromItem), [items, getCategoriesFromItem]);
    const initialCategoriesSet = new Set(initialCategories);
    const newIds = getItemsFromCategories(categoryMap.categoryToItem, matchCriteria, initialCategoriesSet);
    const categoriesRef = hooks.useRef(initialCategoriesSet);
    const idsRef = hooks.useRef(newIds);
    if (!eventsUtils.isEqual(newIds, idsRef.current)) {
        idsRef.current = newIds;
    }
    if (!eventsUtils.isEqual(categoriesRef.current, initialCategoriesSet)) {
        categoriesRef.current = initialCategoriesSet;
        onCategoriesChange?.([...initialCategoriesSet]);
    }
    const updateCategories = (id) => {
        let updatedCategories = id != null ? categoryMap.itemToCategory.get(id) : new Set([]);
        let updatedItems = getItemsFromCategories(categoryMap.categoryToItem, matchCriteria, updatedCategories);
        if (!replace) {
            updatedItems = toggle(idsRef.current, updatedItems);
            updatedCategories = toggle(categoriesRef.current, updatedCategories);
        }
        if (!eventsUtils.isEqual(updatedItems, idsRef.current)) {
            idsRef.current = updatedItems;
        }
        if (updatedCategories && !eventsUtils.isEqual(updatedCategories, categoriesRef.current)) {
            categoriesRef.current = updatedCategories;
            onCategoriesChange?.([...updatedCategories]);
        }
    };
    return {
        ids: [...idsRef.current],
        updateCategories
    };
};

exports.useCategories = useCategories;
//# sourceMappingURL=UNSAFE_useCategories.js.map
