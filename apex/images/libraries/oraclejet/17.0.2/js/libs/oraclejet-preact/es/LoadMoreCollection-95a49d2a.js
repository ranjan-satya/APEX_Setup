/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs } from 'preact/jsx-runtime';
import { Fragment } from 'preact';
import { C as Collection } from './Collection-c4f2f3ea.js';
import { u as useViewportIntersect } from './useViewportIntersect-2a2be24b.js';

const LOADMORE_STYLE_CLASS = 'oj-collection-loadmore';
const DEFAULT_MARGIN = 1;
const LOAD_MORE_SELECTOR = `.${LOADMORE_STYLE_CLASS}`;
/**
 * Component that only render items in the specified viewport.
 * @param props
 */
function LoadMoreCollection({ data, children, viewportConfig, hasMore, onLoadMore, loadMoreIndicator, suggestions, loadMoreThreshold = DEFAULT_MARGIN }) {
    // detect if viewport has changed and it needs to re-render based on a new range
    useViewportIntersect(viewportConfig, Math.max(loadMoreThreshold, DEFAULT_MARGIN), 0, LOAD_MORE_SELECTOR, () => {
        if (data) {
            onLoadMore();
        }
    });
    // if DataState is invalid (including not specified), just render blank
    if (!data) {
        return jsx("div", {});
    }
    // might need to support elementType prop in the future to allow customization of what
    // type of element to render for the root
    return (jsxs(Fragment, { children: [suggestions, jsx(Collection, { items: data, children: children }), hasMore && loadMoreIndicator] }));
}

export { LOADMORE_STYLE_CLASS as L, LoadMoreCollection as a };
//# sourceMappingURL=LoadMoreCollection-95a49d2a.js.map
