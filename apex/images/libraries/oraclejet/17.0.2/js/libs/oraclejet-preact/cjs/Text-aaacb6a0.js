/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var classNames = require('./classNames-c14c6ef3.js');
var mergeInterpolations = require('./mergeInterpolations-6727b536.js');
var UNSAFE_Text_themes_TextStyles_css = require('./UNSAFE_Text/themes/TextStyles.css.js');

const interpolations = [
    ({ lineClamp }) => !lineClamp ? {} : { class: UNSAFE_Text_themes_TextStyles_css.styles.lineClamp, webkitLineClamp: lineClamp }
];
const styleInterpolations = mergeInterpolations.mergeInterpolations(interpolations);
/**
 * Text shows written or printed work.
 */
function Text({ children, hyphens, size, truncation, variant = 'inherit', weight, overflowWrap = 'anywhere', ...props }) {
    const variantClasses = UNSAFE_Text_themes_TextStyles_css.multiVariantStyles({
        hyphens,
        size,
        truncation,
        variant,
        weight,
        overflowWrap
    });
    const { class: interpolatedClasses, ...styles } = styleInterpolations(props);
    const classes = classNames.classNames([variantClasses, interpolatedClasses]);
    return (jsxRuntime.jsx("span", { class: classes, style: styles, id: props.id, children: children }));
}

exports.Text = Text;
//# sourceMappingURL=Text-aaacb6a0.js.map
