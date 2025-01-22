/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var UNSAFE_PrefixSuffix_themes_PrefixSuffixStyles_css = require('./UNSAFE_PrefixSuffix/themes/PrefixSuffixStyles.css.js');

function PrefixSuffix({ hasEndContent, hasInsideLabel, hasStartContent, id, isDisabled, isFocused, text, variant }) {
    const variantClasses = UNSAFE_PrefixSuffix_themes_PrefixSuffixStyles_css.multiVariantStyles({
        variant,
        isFocused: isFocused ? 'yes' : 'no',
        isDisabled: isDisabled ? 'yes' : 'no',
        hasInsideLabel: hasInsideLabel ? 'yes' : 'no',
        hasStartContent: hasStartContent ? 'yes' : 'no',
        hasEndContent: hasEndContent ? 'yes' : 'no'
    });
    return (jsxRuntime.jsx("div", { class: variantClasses, id: id, children: jsxRuntime.jsx("span", { children: text }) }));
}

exports.PrefixSuffix = PrefixSuffix;
//# sourceMappingURL=PrefixSuffix-dd79bd7c.js.map
