/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var classNames = require('./classNames-c14c6ef3.js');
var UNSAFE_Inset_themes_InsetStyles_css = require('./UNSAFE_Inset/themes/InsetStyles.css.js');

function Inset({ children, variant }) {
    const variantClasses = UNSAFE_Inset_themes_InsetStyles_css.multiVariantStyles({
        variantGroup: variant
    });
    const classes = classNames.classNames([variantClasses, UNSAFE_Inset_themes_InsetStyles_css.styles.insetBase]);
    return jsxRuntime.jsx("div", { class: classes, children: children });
}

exports.Inset = Inset;
//# sourceMappingURL=Inset-a076f9ab.js.map
