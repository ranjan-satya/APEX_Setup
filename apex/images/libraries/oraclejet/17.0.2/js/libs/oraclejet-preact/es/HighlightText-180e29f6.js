/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import './HighlightTextStyles.styles.css';
import { u as useTestId } from './useTestId-adde554c.js';

var highlightStyles = 'HighlightTextStyles_highlightStyles__6s5c4p0';

const HIGHLIGHT_TOKEN = '__@@__';
const HIGHLIGHT_PATTERN = `${HIGHLIGHT_TOKEN}$&${HIGHLIGHT_TOKEN}`;
/**
 * Renders a text string with highlighting applied to the given text to match.
 */
function HighlightText({ children = '', matchText = '', testId }) {
    const testIdProps = useTestId(testId);
    if (matchText.length > 0 && children.length > 0) {
        const escapedMatchText = escapeRegExp(matchText);
        const highlightedText = children.replace(new RegExp(escapedMatchText, 'gi'), HIGHLIGHT_PATTERN);
        const tokens = highlightedText.split(HIGHLIGHT_TOKEN);
        const nodes = tokens.map((current, index) => index % 2 == 0 ? current : jsx("span", { class: highlightStyles, children: current }));
        return jsx("span", { ...testIdProps, children: nodes });
    }
    return jsx("span", { ...testIdProps, children: children });
}
function escapeRegExp(str) {
    // copied from:
    // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions#Escaping
    return str.replace(/[.*+\-?^${}()|[\]\\]/g, '\\$&'); // $& means the whole matched string
}

export { HighlightText as H };
//# sourceMappingURL=HighlightText-180e29f6.js.map
