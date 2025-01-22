/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');

var useTestId = require('./useTestId-8234ec1e.js');

var highlightStyles = 'HighlightTextStyles_highlightStyles__6s5c4p0';

const HIGHLIGHT_TOKEN = '__@@__';
const HIGHLIGHT_PATTERN = `${HIGHLIGHT_TOKEN}$&${HIGHLIGHT_TOKEN}`;
/**
 * Renders a text string with highlighting applied to the given text to match.
 */
function HighlightText({ children = '', matchText = '', testId }) {
    const testIdProps = useTestId.useTestId(testId);
    if (matchText.length > 0 && children.length > 0) {
        const escapedMatchText = escapeRegExp(matchText);
        const highlightedText = children.replace(new RegExp(escapedMatchText, 'gi'), HIGHLIGHT_PATTERN);
        const tokens = highlightedText.split(HIGHLIGHT_TOKEN);
        const nodes = tokens.map((current, index) => index % 2 == 0 ? current : jsxRuntime.jsx("span", { class: highlightStyles, children: current }));
        return jsxRuntime.jsx("span", { ...testIdProps, children: nodes });
    }
    return jsxRuntime.jsx("span", { ...testIdProps, children: children });
}
function escapeRegExp(str) {
    // copied from:
    // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions#Escaping
    return str.replace(/[.*+\-?^${}()|[\]\\]/g, '\\$&'); // $& means the whole matched string
}

exports.HighlightText = HighlightText;
//# sourceMappingURL=HighlightText-c76eb17a.js.map
