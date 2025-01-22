/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var compat = require('preact/compat');
var vanillaExtractDynamic_esm = require('./vanilla-extract-dynamic.esm-d5dffce7.js');
var borders = require('./borders-4b8488cb.js');
var dimensions = require('./dimensions-b48bf1ab.js');
var flexitem = require('./flexitem-fee13e26.js');
var colors = require('./colors-ac3041c6.js');
var padding = require('./padding-b9ee87ac.js');
var aria = require('./aria-889aedd0.js');
var theme = require('./theme-dfd6a9fe.js');
var mergeInterpolations = require('./mergeInterpolations-6727b536.js');
require('./LayerHost-46e4d858.js');
var EnvironmentProvider = require('./EnvironmentProvider-42b2b998.js');
var Common_themes_themeContract_css = require('./Common/themes/themeContract.css.js');
var useDensity = require('./useDensity-6e80ddff.js');
var useTestId = require('./useTestId-8234ec1e.js');
var _curry1 = require('./_curry1-e8f0d7ea.js');
var equals = require('./equals-098f7781.js');
var _isArray = require('./_isArray-73160ad5.js');
var _isObject = require('./_isObject-28636267.js');
var _isString = require('./_isString-f4443c9e.js');

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
_curry1._curry1(function empty(x) {
  return x != null && typeof x['fantasy-land/empty'] === 'function' ? x['fantasy-land/empty']() : x != null && x.constructor != null && typeof x.constructor['fantasy-land/empty'] === 'function' ? x.constructor['fantasy-land/empty']() : x != null && typeof x.empty === 'function' ? x.empty() : x != null && x.constructor != null && typeof x.constructor.empty === 'function' ? x.constructor.empty() : _isArray._isArray(x) ? [] : _isString._isString(x) ? '' : _isObject._isObject(x) ? {} : equals._isArguments(x) ? function () {
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
_curry1._curry1(function isEmpty(x) {
  return x != null && equals.equals(x, empty(x));
});

var isEmpty$1 = isEmpty;

const elementTypes = ['div', 'main', 'article', 'section', 'aside'];
const interpolations = [
    ...Object.values(borders.borderInterpolations),
    ...Object.values(dimensions.dimensionInterpolations),
    ...Object.values(flexitem.flexitemInterpolations),
    ...Object.values(colors.colorInterpolations),
    ...Object.values(padding.paddingInterpolations),
    ...Object.values(aria.ariaInterpolations),
    ...Object.values(theme.themeInterpolations)
];
const mergedInterpolations = mergeInterpolations.mergeInterpolations(interpolations);
const View = compat.forwardRef(({ as, children, colorScheme, color, backgroundColor, scale, density: propDensity, testId, ...rest }, ref) => {
    /**
     * JET-66845 Because density unit CSS vars need to be recalculated each time the scale changes, scale
     * classes can not be a child of density classes. However, we can have the scale and density classes as siblings.
     * If the scale prop is supplied, we'll set the density class as well. If density is not set in the props,
     * we will determine it via the Environment.
     */
    const themeDensity = useDensity.useDensity();
    const density = propDensity ?? (scale ? themeDensity : undefined);
    const testIdProps = useTestId.useTestId(testId);
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
                vanillaExtractDynamic_esm.assignInlineVars({
                    [Common_themes_themeContract_css.globalVars.currentBackgroundColor]: styles['backgroundColor']
                })),
            // we hardcode box-sizing: border-box on all of our Preact components.
            boxSizing: 'border-box'
        }
    };
    const Component = as || 'div';
    return isEmpty$1(env) ? (jsxRuntime.jsx(Component, { ...props })) : (jsxRuntime.jsx(EnvironmentProvider.EnvironmentProvider, { environment: env, children: jsxRuntime.jsx(Component, { ...props }) }));
});

exports.View = View;
exports.elementTypes = elementTypes;
//# sourceMappingURL=View-011404a7.js.map
