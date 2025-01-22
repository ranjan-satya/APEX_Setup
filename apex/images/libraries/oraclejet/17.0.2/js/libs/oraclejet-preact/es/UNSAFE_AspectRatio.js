/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { d as dimensionInterpolations } from './dimensions-5229d942.js';
import { m as mergeInterpolations } from './mergeInterpolations-e2db2a66.js';
import { c as classNames } from './classNames-4e12b00d.js';
import './AspectRatioStyles.styles.css';
import './size-782ed57a.js';
import './utils-6eab3a64.js';
import './Common/themes/themeContract.css.js';
import './colorUtils-16eb823f.js';
import './_curry1-25297e59.js';
import './mergeDeepWithKey-08531060.js';
import './_curry3-0b4222d7.js';
import './_curry2-34316bcf.js';
import './_isObject-1fab0f5b.js';

var ratios = ['9/16','1/1','6/5','5/4','4/3','11/8','1.43/1','3/2','14/9','16/10','1.6180/1','5/3','16/9','1.85/1','1.9/1','2/1','2.2/1','64/21','2.4/1','2.414/1','2.76/1','32/9','18/5','4/1'];
var variant = {'9/16':'AspectRatioStyles_variant_9/16__zzf8051 AspectRatioStyles_base__zzf8050','1/1':'AspectRatioStyles_variant_1/1__zzf8052 AspectRatioStyles_base__zzf8050','6/5':'AspectRatioStyles_variant_6/5__zzf8053 AspectRatioStyles_base__zzf8050','5/4':'AspectRatioStyles_variant_5/4__zzf8054 AspectRatioStyles_base__zzf8050','4/3':'AspectRatioStyles_variant_4/3__zzf8055 AspectRatioStyles_base__zzf8050','11/8':'AspectRatioStyles_variant_11/8__zzf8056 AspectRatioStyles_base__zzf8050','1.43/1':'AspectRatioStyles_variant_1.43/1__zzf8057 AspectRatioStyles_base__zzf8050','3/2':'AspectRatioStyles_variant_3/2__zzf8058 AspectRatioStyles_base__zzf8050','14/9':'AspectRatioStyles_variant_14/9__zzf8059 AspectRatioStyles_base__zzf8050','16/10':'AspectRatioStyles_variant_16/10__zzf805a AspectRatioStyles_base__zzf8050','1.6180/1':'AspectRatioStyles_variant_1.6180/1__zzf805b AspectRatioStyles_base__zzf8050','5/3':'AspectRatioStyles_variant_5/3__zzf805c AspectRatioStyles_base__zzf8050','16/9':'AspectRatioStyles_variant_16/9__zzf805d AspectRatioStyles_base__zzf8050','1.85/1':'AspectRatioStyles_variant_1.85/1__zzf805e AspectRatioStyles_base__zzf8050','1.9/1':'AspectRatioStyles_variant_1.9/1__zzf805f AspectRatioStyles_base__zzf8050','2/1':'AspectRatioStyles_variant_2/1__zzf805g AspectRatioStyles_base__zzf8050','2.2/1':'AspectRatioStyles_variant_2.2/1__zzf805h AspectRatioStyles_base__zzf8050','64/21':'AspectRatioStyles_variant_64/21__zzf805i AspectRatioStyles_base__zzf8050','2.4/1':'AspectRatioStyles_variant_2.4/1__zzf805j AspectRatioStyles_base__zzf8050','2.414/1':'AspectRatioStyles_variant_2.414/1__zzf805k AspectRatioStyles_base__zzf8050','2.76/1':'AspectRatioStyles_variant_2.76/1__zzf805l AspectRatioStyles_base__zzf8050','32/9':'AspectRatioStyles_variant_32/9__zzf805m AspectRatioStyles_base__zzf8050','18/5':'AspectRatioStyles_variant_18/5__zzf805n AspectRatioStyles_base__zzf8050','4/1':'AspectRatioStyles_variant_4/1__zzf805o AspectRatioStyles_base__zzf8050'};

const dimensions = ['maxWidth', 'minWidth', 'width'];
// Create an array [dimensionInterpolations['maxWidth'], dimensionInterpolations['width'], dimensionInterpolations['minWidth']]
const widthDimensionInterpolation = Array.from(dimensions, (x) => dimensionInterpolations[x]);
const interpolations = mergeInterpolations(widthDimensionInterpolation);
/**
 * The AspectRatio component displays its content with a certain ratio based on the dimension
 * properties. Overflow content is hidden.
 *
 * It uses a common padding-bottom hack to do this. In future versions it will
 * be implemented using the CSS's aspect-ratio property when the browsers we need to support
 * all have it. For example, Safari 15 has it, but we won't drop Safari 14 until jet 14.
 *
 */
function AspectRatio({ children, ratio = '1/1', ...props }) {
    const { class: cls, ...styles } = interpolations(props);
    return (jsx("div", { class: classNames([variant[ratio], cls]), style: styles, children: children }));
}

export { AspectRatio, ratios };
//# sourceMappingURL=UNSAFE_AspectRatio.js.map
