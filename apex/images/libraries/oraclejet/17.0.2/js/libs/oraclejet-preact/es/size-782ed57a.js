/* @oracle/oraclejet-preact: undefined */
import { x as xUnits } from './utils-6eab3a64.js';

// list of supported length units https://www.w3schools.com/cssref/css_units.php
const cssUnits = [
    'ch',
    'cm',
    'mm',
    'in',
    'pc',
    'pt',
    'px',
    'em',
    'ex',
    'rem',
    'vh',
    'vw',
    'vmin',
    'vmax'
];
const cssUnitRegex = new RegExp(`^-?\\d*\\.?\\d+(${cssUnits.join('|')})$`);
const xUnitRegex = new RegExp(`^-?\\d*\\.?\\d+x$`);
const isStringZero = (v) => parseFloat(v) === 0;
const isPercent = (v) => v.endsWith('%');
const isCalcExpression = (v) => v.startsWith('calc(') && v.endsWith(')');
const isVarFunction = (v) => v.startsWith('var(') && v.endsWith(')');
const isCssVar = (v) => v.startsWith('--');
const isCssUnit = (v) => cssUnitRegex.test(v);
const isXUnit = (v) => xUnitRegex.test(v);
/**
 * This transforms a number + 'x' to a css calc.
 * @param {string } v - a value to transform
 * @returns {string | 0}
 */
const xToCSS = (v) => {
    // parse out the 'x'
    const nStr = v.slice(0, v.length - 1);
    // nStr should now only contain characters that could be part of a floating number.
    // I don't want a string with random characters in it to be ignored as it would with
    // parseFloat, so I'm using Number here. parseFloat('1.2p') -> 1.2. whereas
    // Number('1.2p') returns NaN.
    const num = Number(nStr);
    if (isNaN(num))
        return 0;
    // Note: 1x is equal to about 4px
    return xUnits(num);
};
/**
 * Given a value that is of type Size, transform the value into
 * something that is usable in a css style property.
 * @param {string | 0 } v - a value to transform
 * @returns {string | 0}
 */
const sizeToCSS = (v) => {
    return v === 0 || isStringZero(v) // We want 0, '0%' and '0x' to return 0
        ? 0
        : isVarFunction(v) || isCalcExpression(v) || isPercent(v) || isCssUnit(v)
            ? v
            : isCssVar(v)
                ? `var(${v})`
                : isXUnit(v)
                    ? xToCSS(v)
                    : 0; // return 0 for any invalid v.
};

export { sizeToCSS as s };
//# sourceMappingURL=size-782ed57a.js.map
