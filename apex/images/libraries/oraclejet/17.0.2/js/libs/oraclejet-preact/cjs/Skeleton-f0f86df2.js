/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var classNames = require('./classNames-c14c6ef3.js');
var dimensions$1 = require('./dimensions-b48bf1ab.js');
var mergeInterpolations = require('./mergeInterpolations-6727b536.js');
var borders = require('./borders-4b8488cb.js');
var useComponentTheme = require('./useComponentTheme-082fc8e4.js');
var UNSAFE_Skeleton_themes_redwood_SkeletonTheme = require('./UNSAFE_Skeleton/themes/redwood/SkeletonTheme.js');

const dimensions = ['height', 'width'];
const border = ['borderRadius'];
// Create an array [dimensionInterpolations['height'], dimensionInterpolations['width']]
const skeletonDimensionInterpolation = Array.from(dimensions, (x) => dimensions$1.dimensionInterpolations[x]);
const borderRadiusInterpolation = Array.from(border, (x) => borders.borderInterpolations[x]);
const interpolations = [
    ...Object.values(borderRadiusInterpolation),
    ...Object.values(skeletonDimensionInterpolation)
];
const SkeletonInterpolations = mergeInterpolations.mergeInterpolations(interpolations);
/**
 * Skeleton component allows the appropriate skeleton to be rendered based on the
 * property values
 **/
function Skeleton({ ...props }) {
    const { classes: skeletonBase } = useComponentTheme.useComponentTheme(UNSAFE_Skeleton_themes_redwood_SkeletonTheme.SkeletonRedwoodTheme);
    const classes = classNames.classNames([skeletonBase]);
    const skeletonDimensions = SkeletonInterpolations({ width: '100%', borderRadius: 0, ...props });
    return jsxRuntime.jsx("div", { style: skeletonDimensions, class: classes });
}

exports.Skeleton = Skeleton;
//# sourceMappingURL=Skeleton-f0f86df2.js.map
