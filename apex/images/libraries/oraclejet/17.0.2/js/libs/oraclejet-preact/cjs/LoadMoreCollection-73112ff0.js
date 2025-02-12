/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var preact = require('preact');
var Collection = require('./Collection-9880039f.js');
var useViewportIntersect = require('./useViewportIntersect-ca1f958b.js');

const LOADMORE_STYLE_CLASS = 'oj-collection-loadmore';
const DEFAULT_MARGIN = 1;
const LOAD_MORE_SELECTOR = `.${LOADMORE_STYLE_CLASS}`;
/**
 * Component that only render items in the specified viewport.
 * @param props
 */
function LoadMoreCollection({ data, children, viewportConfig, hasMore, onLoadMore, loadMoreIndicator, suggestions, loadMoreThreshold = DEFAULT_MARGIN }) {
    // detect if viewport has changed and it needs to re-render based on a new range
    useViewportIntersect.useViewportIntersect(viewportConfig, Math.max(loadMoreThreshold, DEFAULT_MARGIN), 0, LOAD_MORE_SELECTOR, () => {
        if (data) {
            onLoadMore();
        }
    });
    // if DataState is invalid (including not specified), just render blank
    if (!data) {
        return jsxRuntime.jsx("div", {});
    }
    // might need to support elementType prop in the future to allow customization of what
    // type of element to render for the root
    return (jsxRuntime.jsxs(preact.Fragment, { children: [suggestions, jsxRuntime.jsx(Collection.Collection, { items: data, children: children }), hasMore && loadMoreIndicator] }));
}

exports.LOADMORE_STYLE_CLASS = LOADMORE_STYLE_CLASS;
exports.LoadMoreCollection = LoadMoreCollection;
//# sourceMappingURL=LoadMoreCollection-73112ff0.js.map
