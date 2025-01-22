/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var Marker = require('./Marker-8747d07b.js');
var classNames = require('./classNames-c14c6ef3.js');
var PRIVATE_SvgShapes_themes_SvgShapesStyles_css = require('./PRIVATE_SvgShapes/themes/SvgShapesStyles.css.js');

const Line = ({ lineWidth = 3, lineStyle = 'solid', color, lineLength }) => {
    const isNotSolid = lineStyle != 'solid';
    const lineExtension = lineLength != undefined ? lineLength : 0;
    const { lineBaseStyle, lineDottedStyle, lineDashedStyle } = PRIVATE_SvgShapes_themes_SvgShapesStyles_css.styles;
    return (jsxRuntime.jsx("line", { x1: 0 - lineExtension, y1: 50, x2: 100 + lineExtension, y2: 50, stroke: color, strokeWidth: lineWidth, class: classNames.classNames([
            lineBaseStyle,
            isNotSolid ? (lineStyle === 'dotted' ? lineDottedStyle : lineDashedStyle) : ''
        ]) }));
};

const MARKER_SHAPE_RATIO = 0.6;
const MAX_SCALE = 1;
const SvgSymbol = ({ markerShape, lineStyle = 'none', lineLength, lineWidth, lineColor, borderColor, markerColor, setAspectRatioNone, setAbsolutePos = false, outerBorderColor, markerScale, tx = 50, ty = 50 }) => {
    const scale = markerScale ?? (lineStyle != 'none' ? MARKER_SHAPE_RATIO : MAX_SCALE);
    return (jsxRuntime.jsxs("svg", { width: "100%", height: "100%", viewBox: "0 0 100 100", class: classNames.classNames([PRIVATE_SvgShapes_themes_SvgShapesStyles_css.styles.svgSymbolBase, setAbsolutePos ? PRIVATE_SvgShapes_themes_SvgShapesStyles_css.styles.svgAbsolutePos : '']), preserveAspectRatio: setAspectRatioNone ? 'none' : undefined, children: [lineStyle != 'none' && (jsxRuntime.jsx(Line, { lineStyle: lineStyle, lineWidth: lineWidth, color: lineColor, lineLength: lineLength })), markerShape != 'none' && (jsxRuntime.jsx(Marker.Marker, { type: markerShape, scale: scale, height: 100, width: 100, tx: tx, ty: ty, preserveRectAspectRatio: !setAspectRatioNone, fill: markerColor, stroke: borderColor, outerStroke: outerBorderColor, outerStrokeWidth: 4.5, innerStrokeWidth: 1.5 }))] }));
};

exports.SvgSymbol = SvgSymbol;
//# sourceMappingURL=SvgSymbol-cd5eab42.js.map
