/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { forwardRef } from 'preact/compat';
import { a as assignInlineVars } from './vanilla-extract-dynamic.esm-2955d60a.js';
import { b as borderInterpolations } from './borders-98a63040.js';
import { d as dimensionInterpolations } from './dimensions-5229d942.js';
import { f as flexitemInterpolations } from './flexitem-7b7f7920.js';
import { c as colorInterpolations } from './colors-aab9ed12.js';
import { p as paddingInterpolations } from './padding-01bef196.js';
import { a as ariaInterpolations } from './aria-efa0582c.js';
import { t as themeInterpolations } from './theme-63551f30.js';
import { m as mergeInterpolations } from './mergeInterpolations-e2db2a66.js';
import './LayerHost-45f545d7.js';
import { E as EnvironmentProvider } from './EnvironmentProvider-f543a463.js';
import { globalVars } from './Common/themes/themeContract.css.js';
import { u as useDensity } from './useDensity-60cfa748.js';
import { u as useTestId } from './useTestId-adde554c.js';
import { a as _curry1 } from './_curry1-25297e59.js';
import { _ as _isArguments, e as equals } from './equals-160da165.js';
import { _ as _isArray } from './_isArray-694cc52d.js';
import { a as _isObject } from './_isObject-1fab0f5b.js';
import { _ as _isString } from './_isString-675f1de9.js';

/**
 * Tests whether or not an object is a typed array.
 *
 * @private
 * @param {*} val The object to test.
 * @return {Boolean} `true` if `val` is a typed array, `false` otherwise.
 * @example
 *
 *      _isTypedArray(new Uint8Array([])); //=> true
 *      _isTypedArray(new Float32Array([])); //=> true
 *      _isTypedArray([]); //=> false
 *      _isTypedArray(null); //=> false
 *      _isTypedArray({}); //=> false
 */
function _isTypedArray(val) {
  var type = Object.prototype.toString.call(val);
  return type === '[object Uint8ClampedArray]' || type === '[object Int8Array]' || type === '[object Uint8Array]' || type === '[object Int16Array]' || type === '[object Uint16Array]' || type === '[object Int32Array]' || type === '[object Uint32Array]' || type === '[object Float32Array]' || type === '[object Float64Array]' || type === '[object BigInt64Array]' || type === '[object BigUint64Array]';
}

/**
 * Returns the empty value of its argument's type. Ramda defines the empty
 * value of Array (`[]`), Object (`{}`), String (`''`),
 * TypedArray (`Uint8Array []`, `Float32Array []`, etc), and Arguments. Other
 * types are supported if they define `<Type>.empty`,
 * `<Type>.prototype.empty` or implement the
 * [FantasyLand Monoid spec](https://github.com/fantasyland/fantasy-land#monoid).
 *
 * Dispatches to the `empty` method of the first argument, if present.
 *
 * @func
 * @memberOf R
 * @since v0.3.0
 * @category Function
 * @sig a -> a
 * @param {*} x
 * @return {*}
 * @example
 *
 *      R.empty(Just(42));               //=> Nothing()
 *      R.empty([1, 2, 3]);              //=> []
 *      R.empty('unicorns');             //=> ''
 *      R.empty({x: 1, y: 2});           //=> {}
 *      R.empty(Uint8Array.from('123')); //=> Uint8Array []
 */

var empty =
/*#__PURE__*/
_curry1(function empty(x) {
  return x != null && typeof x['fantasy-land/empty'] === 'function' ? x['fantasy-land/empty']() : x != null && x.constructor != null && typeof x.constructor['fantasy-land/empty'] === 'function' ? x.constructor['fantasy-land/empty']() : x != null && typeof x.empty === 'function' ? x.empty() : x != null && x.constructor != null && typeof x.constructor.empty === 'function' ? x.constructor.empty() : _isArray(x) ? [] : _isString(x) ? '' : _isObject(x) ? {} : _isArguments(x) ? function () {
    return arguments;
  }() : _isTypedArray(x) ? x.constructor.from('') : void 0 // else
  ;
});

/**
 * Returns `true` if the given value is its type's empty value; `false`
 * otherwise.
 *
 * @func
 * @memberOf R
 * @since v0.1.0
 * @category Logic
 * @sig a -> Boolean
 * @param {*} x
 * @return {Boolean}
 * @see R.empty
 * @example
 *
 *      R.isEmpty([1, 2, 3]);           //=> false
 *      R.isEmpty([]);                  //=> true
 *      R.isEmpty('');                  //=> true
 *      R.isEmpty(null);                //=> false
 *      R.isEmpty({});                  //=> true
 *      R.isEmpty({length: 0});         //=> false
 *      R.isEmpty(Uint8Array.from('')); //=> true
 */

var isEmpty =
/*#__PURE__*/
_curry1(function isEmpty(x) {
  return x != null && equals(x, empty(x));
});

var isEmpty$1 = isEmpty;

const elementTypes = ['div', 'main', 'article', 'section', 'aside'];
const interpolations = [
    ...Object.values(borderInterpolations),
    ...Object.values(dimensionInterpolations),
    ...Object.values(flexitemInterpolations),
    ...Object.values(colorInterpolations),
    ...Object.values(paddingInterpolations),
    ...Object.values(ariaInterpolations),
    ...Object.values(themeInterpolations)
];
const mergedInterpolations = mergeInterpolations(interpolations);
const View = forwardRef(({ as, children, colorScheme, color, backgroundColor, scale, density: propDensity, testId, ...rest }, ref) => {
    /**
     * JET-66845 Because density unit CSS vars need to be recalculated each time the scale changes, scale
     * classes can not be a child of density classes. However, we can have the scale and density classes as siblings.
     * If the scale prop is supplied, we'll set the density class as well. If density is not set in the props,
     * we will determine it via the Environment.
     */
    const themeDensity = useDensity();
    const density = propDensity ?? (scale ? themeDensity : undefined);
    const testIdProps = useTestId(testId);
    const { class: className, ariaLabelledBy, ariaLabel, ...styles } = mergedInterpolations({
        colorScheme,
        scale,
        density,
        backgroundColor,
        color,
        ...rest
    });
    // We need to update the environment with any theme related props specified
    const env = {
        ...(colorScheme && { colorScheme }),
        ...(scale && { scale }),
        ...(density && { density }),
        ...(backgroundColor && { currentBgColor: backgroundColor })
    };
    const props = {
        ...testIdProps,
        ['aria-label']: ariaLabel,
        ['aria-labelledby']: ariaLabelledBy,
        children,
        className,
        ref: ref,
        style: {
            ...styles,
            ...(backgroundColor &&
                assignInlineVars({
                    [globalVars.currentBackgroundColor]: styles['backgroundColor']
                })),
            // we hardcode box-sizing: border-box on all of our Preact components.
            boxSizing: 'border-box'
        }
    };
    const Component = as || 'div';
    return isEmpty$1(env) ? (jsx(Component, { ...props })) : (jsx(EnvironmentProvider, { environment: env, children: jsx(Component, { ...props }) }));
});

export { View as V, elementTypes as e };
//# sourceMappingURL=View-6013acac.js.map
