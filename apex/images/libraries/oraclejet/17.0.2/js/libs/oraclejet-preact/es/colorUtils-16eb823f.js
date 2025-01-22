/* @oracle/oraclejet-preact: undefined */
import { a as _curry1 } from './_curry1-25297e59.js';

/**
 * Checks if the input value is `null` or `undefined`.
 *
 * @func
 * @memberOf R
 * @since v0.9.0
 * @category Type
 * @sig * -> Boolean
 * @param {*} x The value to test.
 * @return {Boolean} `true` if `x` is `undefined` or `null`, otherwise `false`.
 * @example
 *
 *      R.isNil(null); //=> true
 *      R.isNil(undefined); //=> true
 *      R.isNil(0); //=> false
 *      R.isNil([]); //=> false
 */

var isNil =
/*#__PURE__*/
_curry1(function isNil(x) {
  return x == null;
});

var isNil$1 = isNil;

/**
 * Takes in rgb components or CSS variable string of rgb components and returns an rgb string.
 */
const rgb = (components) => {
    const str = Array.isArray(components)
        ? components.join(',')
        : components.trim().replace(/\s/g, '');
    return str.startsWith('rgb(') ? str : `rgb(${str})`;
};
/**
 * Tests if a given RGB components array is valid.
 */
const isRGB = (rgb) => rgb.length === 3 && rgb.every((c) => !isNaN(c) && !isNil$1(c) && c >= 0 && c <= 255);
/**
 * Tests if a given RGBA components array is valid.
 */
const isRGBA = (rgba) => {
    const [r, g, b, a] = rgba;
    return isRGB([r, g, b]) && a >= 0 && a <= 1;
};
/**
 * Converts RGB or RGBA color string to color components. If an alpha component is not supplied,
 * an implied value of 1 is returned.
 */
const toRGBA = (colorString) => {
    const [r, g, b, a = 1] = colorString
        .replace(/\s|rgb\(|rgba\(|\)/g, '')
        .split(',')
        .map((c) => parseFloat(c));
    const clr = [r, g, b, a];
    return isRGBA(clr) ? clr : undefined;
};
/**
 * Converts shorthand hex notation to longform hex notation.
 */
const expandHexShorthand = ([m, r, g, b]) => m + r + r + g + g + b + b;
/**
 *  Converts hex color string to RGBA color components.
 *  @private
 *  @param {string} hex
 *  @returns The RGBA color components or undefined.
 */
const hexToRGBA = (hex) => {
    const longhandHex = hex.length === 4 ? expandHexShorthand(hex) : hex;
    const [c1, c2, c3, c4] = (longhandHex.slice(1).match(/.{1,2}/g) ?? [])?.map((c) => parseInt(c, 16));
    const rgba = c4 === undefined ? [c1, c2, c3, 1] : [c1, c2, c3, Math.round((c4 / 255) * 100) / 100];
    return isRGBA(rgba) ? rgba : undefined;
};
/**
 * Transforms rgb coponents to hex color.
 */
/**
 * Transforms rgb or rgba coponents to hex color with 6 or 8 digits.
 * For more information, see https://drafts.csswg.org/css-color/#hex-notation.
 * @param rgba
 * @returns Hex color string
 */
const rgbaToHex = (rgba) => {
    const hex = '#' +
        rgba
            .filter((c) => c !== undefined)
            .map((n, index) => (index < 3 ? n : Math.round(n * 255)).toString(16).padStart(2, '0'))
            .join('');
    return hex.length === 9 && hex.endsWith('ff') ? hex.substring(0, 7) : hex;
};
/**
 * Returns a specifed channel value from a css color specification (#, rgb(), rgba()).
 * If an alpha channel is requested and a # or rgb string is supplied,
 * an implied value of 1 is returned.
 * @private
 * @param {String} colorString  The color string.
 * @returns The channel value as a decimal number (between 0 and 255) or undefined.
 */
const parseToRGBA = (colorString) => {
    const clr = getNamedColor(colorString) ?? colorString;
    return clr.startsWith('#') ? hexToRGBA(clr) : toRGBA(clr);
};
/**
 * Returns the contrast ratio between two relative luminance values. The ratio can range from 1 to 21.
 * Follows the formula in www.w3.org/TR/WCAG20/#contrast-ratiodef
 * @param {number} luminance1
 * @param {number} luminance2
 * @returns {number} The contrast ratio.
 */
function getContrast(luminance1, luminance2) {
    const l1 = luminance1 + 0.05;
    const l2 = luminance2 + 0.05;
    return l1 > l2 ? l1 / l2 : l2 / l1;
}
/**
 * Returns the relative brightness of any point in a colorspace, normalized to 0 for darkest black and 1 for lightest white.
 * Follows the formula in www.w3.org/TR/WCAG20/#relativeluminancedef
 * @param {string} colorString
 * @returns The relative luminance of the provided color or undefined.
 */
const getLuminance = (colorString) => {
    const transform = (c) => {
        const cs = c / 255;
        return cs < 0.03928 ? cs / 12.92 : Math.pow((cs + 0.055) / 1.055, 2.4);
    };
    const rgb = parseToRGBA(colorString)?.slice(0, 3) ?? [];
    return isRGB(rgb)
        ? 0.2126 * transform(rgb[0]) + 0.7152 * transform(rgb[1]) + 0.0722 * transform(rgb[2])
        : undefined;
};
/**
 * Returns a contrasting text color for the specified background color.
 * @param {string} backgroundColor The background color.
 * @param {string} [lightTextColor = '#fff'] Light text color.
 * @param {string} [darkTextColor = '#000] Dark text color.
 * @returns A constrasting color for use on text.
 */
const getContrastingTextColor = (backgroundColor, lightTextColor = '#fff', darkTextColor = '#000') => {
    // TODO: Retrieve from cache if it has been computed before
    const luminance = getLuminance(backgroundColor) ?? 1;
    return getContrast(luminance, 1) > getContrast(luminance, 0) ? lightTextColor : darkTextColor;
};
/**
 * colormap const
 */
const colorMap = {
    aliceblue: '#f0f8ff',
    antiquewhite: '#faEbd7',
    aqua: '#00ffff',
    aquamarine: '#7fffd4',
    azure: '#f0ffff',
    beige: '#f5f5dc',
    bisque: '#ffE4c4',
    black: '#000000',
    blanchedalmond: '#ffEbcd',
    blue: '#0000ff',
    blueviolet: '#8a2bE2',
    brown: '#a52a2a',
    burlywood: '#dEb887',
    cadetblue: '#5f9Ea0',
    chartreuse: '#7fff00',
    chocolate: '#d2691E',
    coral: '#ff7f50',
    cornflowerblue: '#6495Ed',
    cornsilk: '#fff8dc',
    crimson: '#dc143c',
    cyan: '#00ffff',
    darkblue: '#00008b',
    darkcyan: '#008b8b',
    darkgoldenrod: '#b8860b',
    darkgray: '#a9a9a9',
    darkgreen: '#006400',
    darkkhaki: '#bdb76b',
    darkmagenta: '#8b008b',
    darkolivegreen: '#556b2f',
    darkorange: '#ff8c00',
    darkorchid: '#9932cc',
    darkred: '#8b0000',
    darksalmon: '#E9967a',
    darkseagreen: '#8fbc8f',
    darkslateblue: '#483d8b',
    darkslategray: '#2f4f4f',
    darkturquoise: '#00cEd1',
    darkviolet: '#9400d3',
    deeppink: '#ff1493',
    deepskyblue: '#00bfff',
    dimgray: '#696969',
    dodgerblue: '#1E90ff',
    firebrick: '#b22222',
    floralwhite: '#fffaf0',
    forestgreen: '#228b22',
    fuchsia: '#ff00ff',
    gainsboro: '#dcdcdc',
    ghostwhite: '#f8f8ff',
    gold: '#ffd700',
    goldenrod: '#daa520',
    gray: '#808080',
    green: '#008000',
    greenyellow: '#adff2f',
    honeydew: '#f0fff0',
    hotpink: '#ff69b4',
    indianred: '#cd5c5c',
    indigo: '#4b0082',
    ivory: '#fffff0',
    khaki: '#f0E68c',
    lavender: '#E6E6fa',
    lavenderblush: '#fff0f5',
    lawngreen: '#7cfc00',
    lemonchiffon: '#fffacd',
    lightblue: '#add8E6',
    lightcoral: '#f08080',
    lightcyan: '#E0ffff',
    lightgoldenrodyellow: '#fafad2',
    lightgray: '#d3d3d3',
    lightgreen: '#90EE90',
    lightpink: '#ffb6c1',
    lightsalmon: '#ffa07a',
    lightseagreen: '#20b2aa',
    lightskyblue: '#87cEfa',
    lightslategray: '#778899',
    lightsteelblue: '#b0c4dE',
    lightyellow: '#ffffE0',
    lime: '#00ff00',
    limegreen: '#32cd32',
    linen: '#faf0E6',
    magenta: '#ff00ff',
    maroon: '#800000',
    mediumaquamarine: '#66cdaa',
    mediumblue: '#0000cd',
    mediumorchid: '#ba55d3',
    mediumpurple: '#9370db',
    mediumseagreen: '#3cb371',
    mediumslateblue: '#7b68EE',
    mediumspringgreen: '#00fa9a',
    mediumturquoise: '#48d1cc',
    mediumvioletred: '#c71585',
    midnightblue: '#191970',
    mintcream: '#f5fffa',
    mistyrose: '#ffE4E1',
    moccasin: '#ffE4b5',
    navajowhite: '#ffdEad',
    navy: '#000080',
    oldlace: '#fdf5E6',
    olive: '#808000',
    olivedrab: '#6b8E23',
    orange: '#ffa500',
    orangered: '#ff4500',
    orchid: '#da70d6',
    palegoldenrod: '#EEE8aa',
    palegreen: '#98fb98',
    paleturquoise: '#afEEEE',
    palevioletred: '#db7093',
    papayawhip: '#ffEfd5',
    peachpuff: '#ffdab9',
    peru: '#cd853f',
    pink: '#ffc0cb',
    plum: '#dda0dd',
    powderblue: '#b0E0E6',
    purple: '#800080',
    rebeccapurple: '#663399',
    red: '#ff0000',
    rosybrown: '#bc8f8f',
    royalblue: '#4169E1',
    saddlebrown: '#8b4513',
    salmon: '#fa8072',
    sandybrown: '#f4a460',
    seagreen: '#2E8b57',
    seashell: '#fff5EE',
    sienna: '#a0522d',
    silver: '#c0c0c0',
    skyblue: '#87cEEb',
    slateblue: '#6a5acd',
    slategray: '#708090',
    snow: '#fffafa',
    springgreen: '#00ff7f',
    steelblue: '#4682b4',
    tan: '#d2b48c',
    teal: '#008080',
    thistle: '#d8bfd8',
    tomato: '#ff6347',
    turquoise: '#40E0d0',
    violet: '#EE82EE',
    wheat: '#f5dEb3',
    white: '#ffffff',
    whitesmoke: '#f5f5f5',
    yellow: '#ffff00',
    yellowgreen: '#9acd32',
    transparent: 'rgba(255,255,255,0)'
};
/**
 * Returns a color definition string from the named color.
 * @param {String} name  The color name.
 * @returns A hex or RGBA color string.
 */
const getNamedColor = (name) => colorMap[name.trim().toLowerCase()];

export { isRGB as a, isRGBA as b, rgbaToHex as c, getContrast as d, getLuminance as e, getNamedColor as f, getContrastingTextColor as g, hexToRGBA as h, isNil$1 as i, parseToRGBA as p, rgb as r, toRGBA as t };
//# sourceMappingURL=colorUtils-16eb823f.js.map
