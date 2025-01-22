/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs } from 'preact/jsx-runtime';
import { M as Marker } from './Marker-546af001.js';
import { c as classNames } from './classNames-4e12b00d.js';
import { styles } from './PRIVATE_SvgShapes/themes/SvgShapesStyles.css.js';

const Line = ({ lineWidth = 3, lineStyle = 'solid', color, lineLength }) => {
    const isNotSolid = lineStyle != 'solid';
    const lineExtension = lineLength != undefined ? lineLength : 0;
    const { lineBaseStyle, lineDottedStyle, lineDashedStyle } = styles;
    return (jsx("line", { x1: 0 - lineExtension, y1: 50, x2: 100 + lineExtension, y2: 50, stroke: color, strokeWidth: lineWidth, class: classNames([
            lineBaseStyle,
            isNotSolid ? (lineStyle === 'dotted' ? lineDottedStyle : lineDashedStyle) : ''
        ]) }));
};

const MARKER_SHAPE_RATIO = 0.6;
const MAX_SCALE = 1;
const SvgSymbol = ({ markerShape, lineStyle = 'none', lineLength, lineWidth, lineColor, borderColor, markerColor, setAspectRatioNone, setAbsolutePos = false, outerBorderColor, markerScale, tx = 50, ty = 50 }) => {
    const scale = markerScale ?? (lineStyle != 'none' ? MARKER_SHAPE_RATIO : MAX_SCALE);
    return (jsxs("svg", { width: "100%", height: "100%", viewBox: "0 0 100 100", class: classNames([styles.svgSymbolBase, setAbsolutePos ? styles.svgAbsolutePos : '']), preserveAspectRatio: setAspectRatioNone ? 'none' : undefined, children: [lineStyle != 'none' && (jsx(Line, { lineStyle: lineStyle, lineWidth: lineWidth, color: lineColor, lineLength: lineLength })), markerShape != 'none' && (jsx(Marker, { type: markerShape, scale: scale, height: 100, width: 100, tx: tx, ty: ty, preserveRectAspectRatio: !setAspectRatioNone, fill: markerColor, stroke: borderColor, outerStroke: outerBorderColor, outerStrokeWidth: 4.5, innerStrokeWidth: 1.5 }))] }));
};

export { SvgSymbol as S };
//# sourceMappingURL=SvgSymbol-bef4c0e7.js.map
