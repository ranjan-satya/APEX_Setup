/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var PRIVATE_ChartScrollBar_themes_ScrollBarStyles_css = require('./PRIVATE_ChartScrollBar/themes/ScrollBarStyles.css.js');

const SCROLLBAR_SIZE = 3;
function ScrollBar({ viewport, axisExtent, availSpace, isHoriz, isRtl }) {
    const axisRange = axisExtent.max - axisExtent.min;
    const viewportStartOffset = viewport.viewportMin - axisExtent.min;
    const viewportRange = viewport.viewportMax - viewport.viewportMin;
    const height = isHoriz ? SCROLLBAR_SIZE : availSpace.height;
    const width = isHoriz ? availSpace.width : SCROLLBAR_SIZE;
    const x = isHoriz ? availSpace.x : availSpace.x + availSpace.width - width / 2;
    const y = !isHoriz ? availSpace.y : availSpace.y + availSpace.height - height / 2;
    const w1 = isHoriz ? (availSpace.width * viewportRange) / axisRange : SCROLLBAR_SIZE;
    const x1Rtl = x + availSpace.width - (availSpace.width * viewportStartOffset) / axisRange - w1;
    const x1 = isHoriz
        ? isRtl
            ? x1Rtl
            : x + (availSpace.width * viewportStartOffset) / axisRange
        : x;
    const y1 = isHoriz ? y : y + (availSpace.height * viewportStartOffset) / axisRange;
    const h1 = isHoriz ? SCROLLBAR_SIZE : (availSpace.height * viewportRange) / axisRange;
    return (jsxRuntime.jsxs("g", { "data-oj-object": "scrollBar", children: [jsxRuntime.jsx("rect", { x: x, y: y, width: width, height: height, class: PRIVATE_ChartScrollBar_themes_ScrollBarStyles_css.styles.scrollBarTrack }), jsxRuntime.jsx("rect", { x: x1, y: y1, width: w1, height: h1, class: PRIVATE_ChartScrollBar_themes_ScrollBarStyles_css.styles.scrollBar }), jsxRuntime.jsx("rect", { ...availSpace, class: PRIVATE_ChartScrollBar_themes_ScrollBarStyles_css.styles.scrollBarSpace })] }));
}

exports.ScrollBar = ScrollBar;
//# sourceMappingURL=ScrollBar-dc5cf205.js.map
