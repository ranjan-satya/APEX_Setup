/* @oracle/oraclejet-preact: undefined */
'use strict';

var Common_themes_themeContract_css = require('./Common/themes/themeContract.css.js');
var colorUtils = require('./colorUtils-fe6f2fbf.js');

const rgb = (rgb) => colorUtils.rgb(rgb);
// TODO: create rgba function in PRIVATE_colorUtils
const rgba = (rgb, alpha) => `rgba(${rgb}, ${alpha})`;
// JET-59344 refactor of 'fallbackVar' from '@vanilla-extract/css'.
// directly importing the function was causing vanilla-extract to be bundled into
// the preact packages and causing issues with testing
const fallbackVar = (...values) => {
    const finalValue = values.reverse().reduce((acc, value) => {
        if (acc === '') {
            acc = String(value);
        }
        else {
            if (typeof value !== 'string' || !/^var\(--.*\)$/.test(value)) {
                throw new Error(`Invalid variable name: ${value}`);
            }
            acc = value.replace(/\)$/, `, ${acc})`);
        }
        return acc;
    }, '');
    return finalValue;
};
// For the default, where no scale var is specified, we use rem units, so that it will scale based on the root font-size.
const scaleFallback = () => fallbackVar(Common_themes_themeContract_css.scaleVars.size.units, '0.25rem');
const xUnits = (unit) => unit === 1 ? scaleFallback() : `calc(${unit} * ${scaleFallback()})`;
// For the default, where no density var is specified, we set it to 0px.
const densityFallback = () => fallbackVar(Common_themes_themeContract_css.densityVars.density.units, '0px');
const densityUnits = (unit) => unit === 1 ? densityFallback() : `calc(${unit} * ${densityFallback()})`;
const min = (val, minVal) => `min(${val},${minVal})`;
const max = (val, minVal) => `max(${val},${minVal})`;

exports.densityUnits = densityUnits;
exports.fallbackVar = fallbackVar;
exports.max = max;
exports.min = min;
exports.rgb = rgb;
exports.rgba = rgba;
exports.xUnits = xUnits;
//# sourceMappingURL=utils-b7099be5.js.map
