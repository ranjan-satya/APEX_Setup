/* @oracle/oraclejet-preact: undefined */
/**
 * Adds components before a specific VNode
 * @param src The src component
 * @param items The items to be added before the source
 * @returns An array of components after performing the operation
 */
function beforeVNode(src, ...items) {
    // filter out falsy values from the items as they will not be rendered
    const treatedItems = items.filter(Boolean);
    // Return the original src when there are no items to add before it
    if (!treatedItems.length) {
        return src;
    }
    // Return the items when there is no src VNode
    if (!src) {
        return treatedItems;
    }
    if (Array.isArray(src)) {
        return [...treatedItems, ...src];
    }
    return [...treatedItems, src];
}

export { beforeVNode as b };
//# sourceMappingURL=componentUtils-4681ea5c.js.map
