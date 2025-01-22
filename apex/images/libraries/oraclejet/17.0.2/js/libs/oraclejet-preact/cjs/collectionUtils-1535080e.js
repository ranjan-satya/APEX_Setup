/* @oracle/oraclejet-preact: undefined */
'use strict';

var keys = require('./keys-a4b54295.js');
var clientHints = require('./clientHints-9e411b6e.js');

/**
 * Item selector for collection components
 */
const ITEM_SELECTOR = '[data-oj-key]';
/**
 * Returns the key from the item element
 */
const getKey = (item) => {
    return item.dataset['ojKeyType'] === 'number'
        ? Number(item.dataset['ojKey'])
        : item.dataset['ojKey'];
};
/**
 * A helper function that return the key of the first available item.
 */
const getFirstVisibleKey = (root, itemSelector) => {
    if (root) {
        const firstItem = root.querySelector(itemSelector);
        if (firstItem) {
            const key = getKey(firstItem);
            return key;
        }
    }
    return null;
};
/**
 * A helper function to find the element with the specified key.
 * Returns null if the element with key is not found.
 */
const findElementByKey = (root, key, itemSelector) => {
    if (root) {
        const items = root.querySelectorAll(itemSelector);
        for (let i = 0; i < items.length; i++) {
            const thisKey = getKey(items[i]);
            if (key == thisKey) {
                return items[i];
            }
        }
    }
    return null;
};
/**
 * A helper function that returns the key of the previous or the next item
 * given the specified current key by traversing indices instead of sibling elements.
 */
const getPrevNextKey = (root, currentKey, isPrev, itemSelector) => {
    return () => {
        let currItem, currIndex;
        if (keys.isKeyDefined(currentKey) && root) {
            const items = root.querySelectorAll(itemSelector);
            for (let i = 0; i < items.length; i++) {
                if (getKey(items[i]) === currentKey) {
                    currItem = items[i];
                    currIndex = i;
                    break;
                }
            }
            if (currItem) {
                currIndex = currIndex ? currIndex : 0;
                const nextItem = isPrev ? items[currIndex - 1] : items[currIndex + 1];
                if (nextItem) {
                    const key = getKey(nextItem);
                    if (key != null) {
                        return key;
                    }
                }
                // no next item or next item is not a valid item
                return null;
            }
            const firstItem = items[0];
            return getKey(firstItem);
        }
        return null;
    };
};
/**
 * A helper wrapper function so we use ref as root instead of a HTMLElement for prev/next currentKey behavior.
 * Used in comps that have a initialSelection due to this bug: JET-59240
 */
const getPrevNextKeyUsingRef = (root, currentKey, isPrev, itemSelector) => {
    return () => {
        return getPrevNextKey(root.current, currentKey, isPrev, itemSelector)();
    };
};
/**
 * A helper function that returns the key of the previous or the next item by count,
 * given the specified current key
 */
const getPrevNextKeyByCount = (data, getRowKey, currentKey, count = 0) => {
    if (data && currentKey != undefined) {
        const currIndex = data.findIndex((d) => {
            return getRowKey(d) === currentKey;
        });
        const nextIndex = currIndex + count;
        if (0 <= nextIndex && nextIndex < data.length) {
            return getRowKey(data[nextIndex]);
        }
        return null;
    }
    return null;
};
/**
 * A helper function to get the key from an element
 */
const keyExtractor = (element, itemSelector) => {
    const item = element.closest(itemSelector);
    if (item) {
        const key = getKey(item);
        return key === undefined ? null : key;
    }
    return null;
};
/**
 * If excludeSelf is true, returns a function that determines if a given element is a descendent
 * of the root element. Otherwise, returns a function that determines if a given element is the
 * root element or is a descendant of the root element.
 */
const getElementContainsFunc = (root, excludeSelf) => {
    return (elem) => {
        if (root != null) {
            return excludeSelf ? root !== elem && root.contains(elem) : root.contains(elem);
        }
        return false;
    };
};
/**
 * A helper function to that return viewPortConfig to collection components
 */
const getViewportConfig = (rootRef, config) => {
    return (config ?? {
        scroller: () => {
            return rootRef.current;
        }
    });
};
/**
 * A helper function to handle range selection
 */
const handleSelectionRange = (detail, data, getRowKey) => {
    const keys = data.map((value) => {
        return getRowKey(value);
    });
    const startIndex = keys.indexOf(detail.value.start);
    const endIndex = keys.indexOf(detail.value.end);
    const minIndex = Math.min(startIndex, endIndex);
    const maxIndex = Math.max(startIndex, endIndex);
    if (minIndex === -1) {
        // return a range to fetch so we can find all the keys, maxIndex should not be -1
        return { offset: 0, count: -1 };
    }
    else {
        // range of keys are in the current viewport, return them
        return keys.slice(minIndex, maxIndex + 1);
    }
};
/**
 * Helper function to determine whether the current device is a mobile device
 * @returns true if running on a mobile device, false otherwise
 */
function isMobile() {
    const deviceType = clientHints.getClientHints().deviceType;
    return deviceType === 'phone' || deviceType === 'tablet';
}
/**
 * Handle setting focus where required when entering actionable mode, or exiting actionable mode if
 * no tabbable children are found.
 */
function handleEnterActionableMode(hasFocusWithin, tabbableElements, setCurrentTabbableKey) {
    if (!hasFocusWithin) {
        const tabbableCount = tabbableElements.length;
        if (tabbableCount > 0) {
            tabbableElements[0].focus();
        }
        else {
            // exit actionable mode as there are no tabbable children
            setCurrentTabbableKey(undefined);
        }
    }
}
/**
 * Handle wrapping focus to the correct tabbable child when either trap edge is focused. Will also
 * exit actionable mode if no tabbable children are found, though that should not happen in practice.
 */
function handleWrapActionableFocus(isStart, tabbableElements, setCurrentTabbableKey) {
    const tabbableCount = tabbableElements.length;
    if (tabbableCount > 0) {
        if (isStart) {
            tabbableElements[tabbableCount - 1].focus();
        }
        else {
            tabbableElements[0].focus();
        }
    }
    else {
        // exit actionable mode as there are no tabbable children
        setCurrentTabbableKey(undefined);
    }
}
/**
 * Compare the equality between two ListItemRendererContexts, especially useful for memoized items
 */
const compareListItemContext = (ctx1, ctx2) => {
    return (ctx1.data === ctx2.data &&
        ctx1.index === ctx2.index &&
        ctx1.isSelected === ctx2.isSelected &&
        ctx1.metadata.key === ctx2.metadata.key);
};
/**
 * A helper function that returns an array of keys for the items.
 */
const getItemKeysArray = (root, itemSelector) => {
    return Array.from(root.querySelectorAll(itemSelector)).map((elem) => getKey(elem));
};
/**
 * A helper function that is used in reorder feature to allow auto scrolling during dragging an item
 */
const dragToScroll = (event, isDragging, rootElement) => {
    const speed = 10;
    const threshold = 50;
    if (rootElement != null && isDragging) {
        const rootElementTop = rootElement.getBoundingClientRect().top;
        if (event.clientY < rootElementTop + threshold) {
            rootElement.scrollBy(0, -speed);
        }
        else if (event.clientY > rootElementTop + rootElement.clientHeight - threshold) {
            rootElement.scrollBy(0, speed);
        }
    }
};

exports.ITEM_SELECTOR = ITEM_SELECTOR;
exports.compareListItemContext = compareListItemContext;
exports.dragToScroll = dragToScroll;
exports.findElementByKey = findElementByKey;
exports.getElementContainsFunc = getElementContainsFunc;
exports.getFirstVisibleKey = getFirstVisibleKey;
exports.getItemKeysArray = getItemKeysArray;
exports.getKey = getKey;
exports.getPrevNextKey = getPrevNextKey;
exports.getPrevNextKeyByCount = getPrevNextKeyByCount;
exports.getPrevNextKeyUsingRef = getPrevNextKeyUsingRef;
exports.getViewportConfig = getViewportConfig;
exports.handleEnterActionableMode = handleEnterActionableMode;
exports.handleSelectionRange = handleSelectionRange;
exports.handleWrapActionableFocus = handleWrapActionableFocus;
exports.isMobile = isMobile;
exports.keyExtractor = keyExtractor;
//# sourceMappingURL=collectionUtils-1535080e.js.map
