/* @oracle/oraclejet-preact: undefined */
import { i as isNil, e as getLuminance, d as getContrast, p as parseToRGBA, c as rgbaToHex } from '../../../colorUtils-16eb823f.js';
import { useCallback } from 'react';
import { c as curry, u as usePropertyValue } from '../../../usePropertyValue-89fc5265.js';
import { _ as _createReduce, h as head, t as tail, p as pipe } from '../../../head-6f17c50c.js';
import { c as curryN } from '../../../curryN-5ceae55b.js';
import { a as _curry1 } from '../../../_curry1-25297e59.js';
import { _ as _arity } from '../../../_arity-be492b9e.js';
import { _ as _curry2 } from '../../../_curry2-34316bcf.js';
import { _ as _arrayReduce } from '../../../_arrayReduce-7d856ca7.js';
import 'preact/hooks';
import '../../../_curry3-0b4222d7.js';
import '../../../_isArray-694cc52d.js';
import '../../../_isString-675f1de9.js';

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
_createReduce(_arrayReduce, _methodReduce, _iterableReduce);

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
_curry1(_identity);

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
_curry2(function pipeWith(xf, list) {
  if (list.length <= 0) {
    return identity;
  }

  var headList = head(list);
  var tailList = tail(list);
  return _arity(headList.length, function () {
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
_curry1(function isNotNil(x) {
  return !isNil(x);
});

var isNotNil$1 = isNotNil;

const colorEncodings = ['RGB', 'Hex'];
const useColorUtils = ({ backgroundColor, colorEncoding }) => {
    const [setRef, getPropertyValue] = usePropertyValue();
    const contrastRatio = useCallback((token) => getContrastRatio(tokenToLuminance(getPropertyValue, backgroundColor), tokenToLuminance(getPropertyValue, token)), [backgroundColor, getPropertyValue]);
    // eslint-disable-next-line react-hooks/exhaustive-deps
    const color = useCallback(pipe(tokenFromVar, getPropertyValue, colorEncoding === 'RGB' ? toRGBString : pipeWhileNotNil([parseToRGBA, rgbaToHex])), [colorEncoding, getPropertyValue]);
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
const tokenToLuminance = curry((propertyValue, colorString) => pipe(tokenFromVar, propertyValue, getLuminance)(colorString));
const getContrastRatio = curryN(2, (l1, l2) => isNotNil$1(l1) && isNotNil$1(l2) ? getContrast(l1, l2).toFixed(2) : 'NaN');
const pipeWhileNotNil = pipeWith$1((f, res) => (isNotNil$1(res) ? f(res) : res));

export { colorEncodings, tokenFromVar, useColorUtils };
//# sourceMappingURL=useColorSchemeUtils.js.map
