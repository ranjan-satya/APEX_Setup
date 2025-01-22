/* @oracle/oraclejet-preact: undefined */
'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var stringUtils = require('../stringUtils-4e4a6b2b.js');

const is = (Ctor) => (val) => (val != null && val.constructor === Ctor) || val instanceof Ctor;
const isNumber = is(Number);
const isNumeral = (n) => !isNaN(parseFloat(n)) && !isNaN(n - 0);
const isZero = (n) => n === 0 || n === '0';
const units = ['px', '%', 'em', 'rem', 'vh', 'vw'];
const endsWithUnitRegExp = new RegExp(`(${units.join('|')})$`);
const hasUnit = (val) => stringUtils.isString(val) && endsWithUnitRegExp.test(val);
const toUnit = (unit) => (n) => isZero(n) || hasUnit(n) || !isNumeral(n) ? n : n + unit;
const px = toUnit('px');

exports.hasUnit = hasUnit;
exports.isNumber = isNumber;
exports.isZero = isZero;
exports.px = px;
//# sourceMappingURL=UNSAFE_units.js.map
