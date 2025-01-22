/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');

const Ellipse = ({ cx, cy, rx, ry, scaleX, scaleY, tx, ty, fill, stroke, strokeWidth = 1, dataInfo, isInteractive }) => {
    return (jsxRuntime.jsx("ellipse", { ...dataInfo, cx: cx + tx, cy: cy + ty, rx: rx * scaleX, ry: ry * scaleY, fill: fill, stroke: stroke, strokeWidth: strokeWidth, cursor: isInteractive ? 'pointer' : undefined, vectorEffect: "non-scaling-stroke" }));
};

const HUMAN_PATH_CMDS = 'M 49.973566845209916 0 C 35.487299168442284 0 23.71094058258365 12.495019801980108 23.71094058258365 27.90841584158416 C \
  23.71094058258365 43.32181188118821 35.487299168442284 55.81683168316832 49.973566845209916 55.81683168316832 C 64.4599001785434 \
  55.81683168316832 76.23619310783617 43.32181188118821 76.23619310783617 27.90841584158416 C 76.23619310783617 12.495019801980108 \
  64.4599001785434 0 49.973566845209916 0 z M 19.607405229048297 50.541460396039604 C 10.737203208846282 57.250371287128864 \
  -3.3723927507496847 73.51485148514851 0.7311426027856692 89.17079207920791 C 23.783162804806032 103.5633663366335 68.33114260278562 \
  105.4951732673267 100.03669815834124 88.31992574257426 C 101.26447593611908 71.04665841584145 91.18619310783609 58.7152227722771 \
  79.51902139066446 50.541460396039604 C 64.74629411793718 75.89591584158418 36.02154664318971 70.79344059405938 19.607405229048297 50.541460396039604 z';
// only human is supported for now.
const Path = ({ scaleX, scaleY, tx, ty, fill, stroke, strokeWidth = 1, width, height, isInteractive, dataInfo }) => {
    const sX = (scaleX * width) / 100;
    const sY = (scaleY * height) / 100;
    return (jsxRuntime.jsx("path", { ...dataInfo, fill: fill, stroke: stroke, strokeWidth: strokeWidth, vectorEffect: "non-scaling-stroke", cursor: isInteractive ? 'pointer' : undefined, transform: `translate(${tx - width / 2} ${ty - height / 2}) scale(${sX} ${sY})`, d: HUMAN_PATH_CMDS }));
};

const STAR_POLYGON_CMDS = [
    -50, -11.22, -16.69, -17.94, 0, -47.55, 16.69, -17.94, 50, -11.22, 26.69, 13.8, 30.9, 47.56, 0,
    33.42, -30.9, 47.56, -26.69, 13.8
];
const Polygon = ({ type, scaleX, scaleY, tx, ty, height, width, fill, stroke, strokeWidth = 1, dataInfo, isInteractive }) => {
    let cmds;
    const cx = 0;
    const cy = 0;
    const s = Math.min(width, height);
    let sX = scaleX;
    let sY = scaleY;
    const half = s / 2;
    const sixth = s / 6;
    switch (type) {
        case 'star': {
            sX = sX * (width / 100);
            sY = sY * (height / 100);
            cmds = STAR_POLYGON_CMDS;
            break;
        }
        case 'triangleUp': {
            cmds = [cx - half, cy + half, cx, cy - half, cx + half, cy + half];
            break;
        }
        case 'triangleDown': {
            cmds = [cx - half, cy - half, cx, cy + half, cx + half, cy - half];
            break;
        }
        case 'diamond': {
            cmds = [cx - half, cy, cx, cy - half, cx + half, cy, cx, cy + half];
            break;
        }
        case 'plus': {
            cmds = [
                cx - half,
                cy - sixth,
                cx - sixth,
                cy - sixth,
                cx - sixth,
                cy - half,
                cx + sixth,
                cy - half,
                cx + sixth,
                cy - sixth,
                cx + half,
                cy - sixth,
                cx + half,
                cy + sixth,
                cx + sixth,
                cy + sixth,
                cx + sixth,
                cy + half,
                cx - sixth,
                cy + half,
                cx - sixth,
                cy + sixth,
                cx - half,
                cy + sixth
            ];
            break;
        }
        default:
            cmds = [];
    }
    return (jsxRuntime.jsx("polygon", { ...dataInfo, fill: fill, stroke: stroke, strokeWidth: strokeWidth, cursor: isInteractive ? 'pointer' : undefined, vectorEffect: "non-scaling-stroke", transform: `translate(${tx} ${ty}) scale(${sX} ${sY})`, points: cmds.join(' ') }));
};

const Rect = ({ x, y, width, height, scaleX, scaleY, tx, ty, fill, stroke, strokeWidth = 1, dataInfo, isInteractive }) => {
    return (jsxRuntime.jsx("rect", { x: x + tx, y: y + ty, width: width * scaleX, height: height * scaleY, fill: fill, stroke: stroke, cursor: isInteractive ? 'pointer' : undefined, strokeWidth: strokeWidth, ...dataInfo, vectorEffect: "non-scaling-stroke" }));
};

const GOLDEN_RATIO = 1.62;
const HUMAN_SCALE_X = 0.8; // preserve legacy human marker scale w/h = 0.8
const SELECTED_HUMAN_SCALE = 0.9;
const MARKER_PADDING = 3;
const Marker = ({ scale, type, height = 100, width = 100, fill, stroke, outerStroke, tx, ty, preserveRectAspectRatio, isInteractive = false, dataInfo, outerStrokeWidth = MARKER_PADDING, innerStrokeWidth = 1 }) => {
    const scaleX = type === 'human' ? scale * HUMAN_SCALE_X * SELECTED_HUMAN_SCALE : scale;
    const scaleY = type === 'rectangle' && preserveRectAspectRatio
        ? scale / GOLDEN_RATIO
        : type === 'human'
            ? scale * SELECTED_HUMAN_SCALE
            : scale;
    const tX = tx != null ? tx : ((1 - scaleX) * width) / 2;
    const tY = ty != null ? ty : ((1 - scaleY) * height) / 2;
    const ry = (height / 2) * (type === 'ellipse' && preserveRectAspectRatio ? 1 / GOLDEN_RATIO : 1);
    switch (type) {
        case 'human': {
            if (outerStroke) {
                return (jsxRuntime.jsxs("g", { children: [jsxRuntime.jsx(Path, { type: "human", tx: tX, ty: tY, fill: fill, stroke: outerStroke, strokeWidth: outerStrokeWidth, width: width, height: height, scaleX: scaleX, scaleY: scaleY }), jsxRuntime.jsx(Path, { type: "human", tx: tX, ty: tY, fill: fill, stroke: stroke, strokeWidth: innerStrokeWidth, width: width, height: height, scaleX: scaleX, scaleY: scaleY, isInteractive: isInteractive, dataInfo: dataInfo })] }));
            }
            return (jsxRuntime.jsx(Path, { type: "human", tx: tX, ty: tY, fill: fill, stroke: stroke, width: width, height: height, scaleX: scaleX, scaleY: scaleY, isInteractive: isInteractive, dataInfo: dataInfo }));
        }
        case 'rectangle':
        case 'square': {
            const x = (-width / 2) * scaleX;
            const y = (-height / 2) * scaleY;
            if (outerStroke) {
                return (jsxRuntime.jsxs("g", { children: [jsxRuntime.jsx(Rect, { x: x, y: y, width: width - outerStrokeWidth, height: height - outerStrokeWidth, scaleX: scaleX, scaleY: scaleY, fill: fill, stroke: outerStroke, strokeWidth: outerStrokeWidth, tx: tX + outerStrokeWidth / 2, ty: tY + outerStrokeWidth / 2 }), jsxRuntime.jsx(Rect, { x: x, y: y, width: width - outerStrokeWidth, height: height - outerStrokeWidth, scaleX: scaleX, scaleY: scaleY, fill: fill, stroke: stroke, strokeWidth: innerStrokeWidth, tx: tX + outerStrokeWidth / 2, ty: tY + outerStrokeWidth / 2, isInteractive: isInteractive, dataInfo: dataInfo })] }));
            }
            return (jsxRuntime.jsx(Rect, { x: x, y: y, width: width - 2 * outerStrokeWidth, height: height - 2 * outerStrokeWidth, scaleX: scaleX, scaleY: scaleY, fill: fill, stroke: stroke, tx: tX + outerStrokeWidth, ty: tY + outerStrokeWidth, isInteractive: isInteractive, dataInfo: dataInfo }));
        }
        case 'circle':
        case 'ellipse': {
            if (outerStroke) {
                return (jsxRuntime.jsxs("g", { children: [jsxRuntime.jsx(Ellipse, { cx: 0, cy: 0, scaleX: scaleX, scaleY: scaleY, fill: fill, stroke: outerStroke, strokeWidth: outerStrokeWidth, rx: width / 2 - outerStrokeWidth, ry: ry - outerStrokeWidth, tx: tX, ty: tY, isInteractive: isInteractive, dataInfo: dataInfo }), jsxRuntime.jsx(Ellipse, { cx: 0, cy: 0, scaleX: scaleX, scaleY: scaleY, fill: fill, stroke: stroke, strokeWidth: innerStrokeWidth, rx: width / 2 - outerStrokeWidth, ry: ry - outerStrokeWidth, tx: tX, ty: tY, isInteractive: isInteractive, dataInfo: dataInfo })] }));
            }
            return (jsxRuntime.jsx(Ellipse, { cx: 0, cy: 0, scaleX: scaleX, scaleY: scaleY, fill: fill, stroke: stroke, rx: width / 2 - outerStrokeWidth, ry: ry - outerStrokeWidth, tx: tX, ty: tY, isInteractive: isInteractive, dataInfo: dataInfo }));
        }
        default: {
            if (outerStroke) {
                return (jsxRuntime.jsxs("g", { children: [jsxRuntime.jsx(Polygon, { fill: fill, stroke: outerStroke, strokeWidth: outerStrokeWidth, type: type, scaleX: scaleX, scaleY: scale, tx: tX, ty: tY, height: height - outerStrokeWidth, width: width - outerStrokeWidth, isInteractive: isInteractive, dataInfo: dataInfo }), jsxRuntime.jsx(Polygon, { fill: fill, stroke: stroke, strokeWidth: innerStrokeWidth, type: type, scaleX: scaleX, scaleY: scale, tx: tX, ty: tY, height: height - outerStrokeWidth, width: width - outerStrokeWidth, isInteractive: isInteractive, dataInfo: dataInfo })] }));
            }
            return (jsxRuntime.jsx(Polygon, { fill: fill, stroke: stroke, type: type, scaleX: scaleX, scaleY: scale, tx: tX, ty: tY, height: height - 2 * outerStrokeWidth, width: width - 2 * outerStrokeWidth, isInteractive: isInteractive, dataInfo: dataInfo }));
        }
    }
};

exports.MARKER_PADDING = MARKER_PADDING;
exports.Marker = Marker;
//# sourceMappingURL=Marker-8747d07b.js.map
