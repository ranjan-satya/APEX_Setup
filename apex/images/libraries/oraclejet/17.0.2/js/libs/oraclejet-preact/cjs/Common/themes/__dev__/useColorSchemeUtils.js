/* @oracle/oraclejet-preact: undefined */
'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var colorUtils = require('../../../colorUtils-fe6f2fbf.js');
var react = require('react');
var usePropertyValue = require('../../../usePropertyValue-64c38780.js');
var head = require('../../../head-68d0992f.js');
var curryN = require('../../../curryN-91f5779e.js');
var _curry1 = require('../../../_curry1-e8f0d7ea.js');
var _arity = require('../../../_arity-c228159c.js');
var _curry2 = require('../../../_curry2-c15d89cd.js');
var _arrayReduce = require('../../../_arrayReduce-406d020c.js');
require('preact/hooks');
require('../../../_curry3-18677bca.js');
require('../../../_isArray-73160ad5.js');
require('../../../_isString-f4443c9e.js');

function _iterableReduce(reducer, acc, iter) {
  var step = iter.next();

  while (!step.done) {
    acc = reducer(acc, step.value);
    step = iter.next();
  }

  return acc;
}

function _methodReduce(reducer, acc, obj, methodName) {
  return obj[methodName](reducer, acc);
}

var _reduce =
/*#__PURE__*/
head._createReduce(_arrayReduce._arrayReduce, _methodReduce, _iterableReduce);

function _identity(x) {
  return x;
}

/**
 * A function that does nothing but return the parameter supplied to it. Good
 * as a default or placeholder function.
 *
 * @func
 * @memberOf R
 * @since v0.1.0
 * @category Function
 * @sig a -> a
 * @param {*} x The value to return.
 * @return {*} The input value, `x`.
 * @example
 *
 *      R.identity(1); //=> 1
 *
 *      const obj = {};
 *      R.identity(obj) === obj; //=> true
 * @symb R.identity(a) = a
 */

var identity =
/*#__PURE__*/
_curry1._curry1(_identity);

/**
 * Performs left-to-right function composition using transforming function. The first function may have
 * any arity; the remaining functions must be unary.
 *
 * **Note:** The result of pipeWith is not automatically curried. Transforming function is not used on the
 * first argument.
 *
 * @func
 * @memberOf R
 * @since v0.26.0
 * @category Function
 * @sig ((* -> *), [((a, b, ..., n) -> o), (o -> p), ..., (x -> y), (y -> z)]) -> ((a, b, ..., n) -> z)
 * @param {Function} transformer The transforming function
 * @param {Array} functions The functions to pipe
 * @return {Function}
 * @see R.composeWith, R.pipe
 * @example
 *
 *      const pipeWhileNotNil = R.pipeWith((f, res) => R.isNil(res) ? res : f(res));
 *      const f = pipeWhileNotNil([Math.pow, R.negate, R.inc])
 *
 *      f(3, 4); // -(3^4) + 1
 * @symb R.pipeWith(f)([g, h, i])(...args) = f(i, f(h, g(...args)))
 */

var pipeWith =
/*#__PURE__*/
_curry2._curry2(function pipeWith(xf, list) {
  if (list.length <= 0) {
    return identity;
  }

  var headList = head.head(list);
  var tailList = head.tail(list);
  return _arity._arity(headList.length, function () {
    return _reduce(function (result, f) {
      return xf.call(this, f, result);
    }, headList.apply(this, arguments), tailList);
  });
});

var pipeWith$1 = pipeWith;

/**
 * Checks if the input value is not `null` and not `undefined`.
 *
 * @func
 * @memberOf R
 * @since v0.29.0
 * @category Type
 * @sig * -> Boolean
 * @param {*} x The value to test.
 * @return {Boolean} `true` if `x` is not `undefined` or not `null`, otherwise `false`.
 * @example
 *
 *      R.isNotNil(null); //=> false
 *      R.isNotNil(undefined); //=> false
 *      R.isNotNil(0); //=> true
 *      R.isNotNil([]); //=> true
 */

var isNotNil =
/*#__PURE__*/
_curry1._curry1(function isNotNil(x) {
  return !colorUtils.isNil(x);
});

var isNotNil$1 = isNotNil;

const colorEncodings = ['RGB', 'Hex'];
const useColorUtils = ({ backgroundColor, colorEncoding }) => {
    const [setRef, getPropertyValue] = usePropertyValue.usePropertyValue();
    const contrastRatio = react.useCallback((token) => getContrastRatio(tokenToLuminance(getPropertyValue, backgroundColor), tokenToLuminance(getPropertyValue, token)), [backgroundColor, getPropertyValue]);
    // eslint-disable-next-line react-hooks/exhaustive-deps
    const color = react.useCallback(head.pipe(tokenFromVar, getPropertyValue, colorEncoding === 'RGB' ? toRGBString : pipeWhileNotNil([colorUtils.parseToRGBA, colorUtils.rgbaToHex])), [colorEncoding, getPropertyValue]);
    return {
        setRef,
        getColor: color,
        getContrastRatio: contrastRatio
    };
};
// Removes CSS var function from color.
const tokenFromVar = (str) => str.replace(/var\(|\)/g, '');
// Adds rgb function to color.
const toRGBString = (str) => /rgb(a?)\(/.test(str) ? str : str.split(',').length === 4 ? `rgba(${str})` : `rgb(${str})`;
const tokenToLuminance = usePropertyValue.curry((propertyValue, colorString) => head.pipe(tokenFromVar, propertyValue, colorUtils.getLuminance)(colorString));
const getContrastRatio = curryN.curryN(2, (l1, l2) => isNotNil$1(l1) && isNotNil$1(l2) ? colorUtils.getContrast(l1, l2).toFixed(2) : 'NaN');
const pipeWhileNotNil = pipeWith$1((f, res) => (isNotNil$1(res) ? f(res) : res));

exports.colorEncodings = colorEncodings;
exports.tokenFromVar = tokenFromVar;
exports.useColorUtils = useColorUtils;
//# sourceMappingURL=useColorSchemeUtils.js.map
