/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs } from 'preact/jsx-runtime';
import { useRef, useEffect } from 'preact/hooks';
import { C as Collection } from './Collection-c4f2f3ea.js';
import { u as useViewportIntersect } from './useViewportIntersect-2a2be24b.js';

const PLACEHOLDER_STYLE_CLASS = 'oj-collection-placeholder';
const DEFAULT_PLACEHOLDER_SIZE = 48; // min-height defined in Redwood spec for item
const TOP_PLACEHOLDER_KEY = '_topPlaceholder';
const BOTTOM_PLACEHOLDER_KEY = '_bottomPlaceholder';
/**
 * A component that renders placeholder which is used internally by VirtualizeViewportCollection
 */
const Placeholder = ({ context, placeholderHeight }) => {
    const { fromIndex, toIndex, which, estimateItemSize } = context;
    let totalHeight = 0;
    if (placeholderHeight) {
        totalHeight = placeholderHeight(context);
    }
    else {
        const placeholderUnitHeight = estimateItemSize === 0 ? DEFAULT_PLACEHOLDER_SIZE : estimateItemSize;
        totalHeight = Math.max(0, toIndex - fromIndex) * placeholderUnitHeight;
    }
    const key = which === 'topPlaceholder' ? TOP_PLACEHOLDER_KEY : BOTTOM_PLACEHOLDER_KEY;
    const style = { height: totalHeight + 'px' };
    if (totalHeight === 0) {
        style.display = 'none';
    }
    return jsx("div", { className: PLACEHOLDER_STYLE_CLASS, style: style }, key);
};

/**
 * A function that returns the default range extractor
 * @param fetchSize
 */
function getVirtualizedRangeExtractor(fetchSize) {
    return function ({ itemSize, viewportHeight, scrollOffset, overscan = 0 }) {
        // if any of these is missing then return default initial range
        if (itemSize === undefined ||
            itemSize === 0 ||
            viewportHeight === undefined ||
            scrollOffset === undefined) {
            return { offset: 0, count: fetchSize };
        }
        const offset = Math.ceil(scrollOffset / itemSize);
        const count = Math.ceil(viewportHeight / itemSize);
        return {
            offset: Math.max(0, offset - overscan),
            count: count + overscan * (offset > 0 ? 2 : 1)
        };
    };
}
/**
 * Helper function to find the top and bottom of an element relative to the viewport
 * @param elem
 */
const getElementTopBottom = (elem) => {
    let top;
    let bottom;
    if (elem === document.documentElement) {
        top = 0;
        bottom = document.documentElement.clientHeight;
    }
    else {
        const scrollerBounds = elem.getBoundingClientRect();
        top = scrollerBounds.top;
        bottom = scrollerBounds.bottom;
    }
    return { top, bottom };
};
const isDataStateValid = (dataState) => {
    return dataState && dataState.data && dataState.offset >= 0 && dataState.totalSize >= 0;
};
const DEFAULT_MARGIN = 1;
/**
 * Returns the range for the current viewport
 */
const getViewportRange = (scroller, root, overscan, rangeExtractor, estimateItemSize) => {
    let scrollOffset;
    let viewportHeight;
    if (scroller && root) {
        const rootRect = root.getBoundingClientRect();
        const viewportRect = getElementTopBottom(scroller);
        if (rootRect && viewportRect) {
            scrollOffset = viewportRect.top - rootRect.top - DEFAULT_MARGIN;
            viewportHeight = viewportRect.bottom - viewportRect.top + DEFAULT_MARGIN;
        }
    }
    if (scrollOffset !== undefined && viewportHeight !== undefined) {
        // figure out what the new range should be
        const range = rangeExtractor({
            scrollOffset,
            viewportHeight,
            overscan: overscan,
            itemSize: estimateItemSize
        });
        return range;
    }
    return null;
};
const DEFAULT_OVERSCAN = 1;
const DEFAULT_END_INDEX = 25; // match default fetch size
const LOADMORE_STYLE_CLASS = 'oj-collection-loadmore';
const LOAD_MORE_AND_PLACEHOLDER_SELECTOR = `.${LOADMORE_STYLE_CLASS}, .${PLACEHOLDER_STYLE_CLASS}`;
const DEFAULT_RANGE_EXTRACTOR = getVirtualizedRangeExtractor(DEFAULT_END_INDEX);
/**
 * Component that only render items in the specified viewport.
 * @param props
 */
function VirtualizedCollection({ data, children, viewportConfig, itemSelector, placeholderHeight, rangeExtractor = DEFAULT_RANGE_EXTRACTOR, overscan = DEFAULT_OVERSCAN, onLoadRange, loadMoreIndicator, suggestions }) {
    const rootRef = useRef(null);
    const estimateItemSizeRef = useRef(0);
    // detect if viewport has changed and it needs to re-render based on a new range
    useViewportIntersect(viewportConfig, DEFAULT_MARGIN, 0, LOAD_MORE_AND_PLACEHOLDER_SELECTOR, () => {
        const range = getViewportRange(viewportConfig.scroller(), rootRef.current, overscan, rangeExtractor, estimateItemSizeRef.current ?? 0);
        if (range) {
            onLoadRange(range);
        }
    });
    // calculate average item height.  For now, we'll just do this once, but we can
    // do a rolling average where we'll adjust on every render.
    useEffect(() => {
        if (estimateItemSizeRef.current === 0) {
            let totalHeight = 0;
            const nodes = rootRef.current.querySelectorAll(itemSelector);
            if (nodes.length > 0) {
                nodes.forEach((item) => {
                    totalHeight += item.offsetHeight;
                });
                estimateItemSizeRef.current = totalHeight / nodes.length;
            }
        }
    });
    // override itemRenderer to adjust the index
    const _getItemRenderer = (startIndex) => {
        // returns a new render function
        return (context) => {
            const itemContext = {
                index: startIndex + context.index,
                data: context.data
            };
            return children(itemContext);
        };
    };
    // if DataState is invalid (including not specified), just render blank
    if (!data || !isDataStateValid(data)) {
        return jsx("div", { ref: rootRef });
    }
    const rangeData = data.data;
    const offset = data.offset;
    const endIndex = offset + rangeData.length;
    const itemCount = data.totalSize;
    const topPlaceholderContext = offset >= 0
        ? {
            fromIndex: 0,
            toIndex: offset,
            which: 'topPlaceholder',
            estimateItemSize: estimateItemSizeRef.current ?? 0
        }
        : undefined;
    const bottomPlaceholderContext = endIndex && endIndex <= itemCount
        ? {
            fromIndex: endIndex,
            toIndex: itemCount,
            which: 'bottomPlaceholder',
            estimateItemSize: estimateItemSizeRef.current ?? 0
        }
        : undefined;
    const renderLoadMore = loadMoreIndicator && data.sizePrecision === 'atLeast' && endIndex <= itemCount;
    // might need to support elementType prop in the future to allow customization of what
    // type of element to render for the root
    return (jsxs("div", { ref: rootRef, style: "will-change: contents", children: [suggestions, topPlaceholderContext && (jsx(Placeholder, { context: topPlaceholderContext, placeholderHeight: placeholderHeight })), jsx(Collection, { items: rangeData, children: _getItemRenderer(offset) }), bottomPlaceholderContext && (jsx(Placeholder, { context: bottomPlaceholderContext, placeholderHeight: placeholderHeight })), renderLoadMore && loadMoreIndicator] }));
}

export { PLACEHOLDER_STYLE_CLASS as P, VirtualizedCollection as V, getVirtualizedRangeExtractor as g };
//# sourceMappingURL=VirtualizedCollection-e73890a1.js.map
