/* @oracle/oraclejet-preact: undefined */
/**
 * @license
 * Copyright (c) 2008 %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Adapted from D3.js -- d3_svg_lineLinear
 * @param {array} points Points in the form of [[p0x p0y] [p1x p1y] ...].
 * @return {string} Path commands.
 */
function lineLinear(points) {
    return points.join('L');
}
/**
 * Adapted from D3.js -- d3_svg_lineCardinalClosed
 * @param {array} points Points in the form of [[p0x p0y] [p1x p1y] ...].
 * @param {number} tension A number from 0 to 1 specifying the tension.
 * @return {string} Path commands.
 */
function lineCardinalClosed(points, tension) {
    // TODO: remove ts-ignores
    if (points.length < 3) {
        return lineLinear(points);
    }
    /** @ts-ignore */
    lineCardinalTangents([points[points.length - 2]].concat(points, [points[1]]), tension);
    return (points[0] +
        lineHermite((points.push(points[0]), points), points));
}
/**
 * Adapted from D3.js -- d3_svg_lineCardinal
 * @param {array} points Points in the form of [[p0x p0y] [p1x p1y] ...].
 * @param {number} tension A number from 0 to 1 specifying the tension.
 * @return {string} Path commands.
 */
function lineCardinal(points, tension) {
    return points.length < 3
        ? lineLinear(points)
        : points[0] +
            lineHermite(points, 
            // @ts-ignore
            lineCardinalTangents(points, tension));
}
/**
 * Adapted from D3.js -- d3_svg_lineHermite
 * @param {array} points Points in the form of [[p0x p0y] [p1x p1y] ...].
 * @param {array} tangents Tangents in the form of [[t0x t0y] [t1x t1y] ...].
 * @return {string} Path commands.
 */
function lineHermite(points, tangents) {
    if (tangents.length < 1 ||
        (points.length != tangents.length && points.length != tangents.length + 2)) {
        return lineLinear(points);
    }
    const quad = points.length != tangents.length;
    let path = '';
    let p0 = points[0];
    let p = points[1];
    const t0 = tangents[0];
    let t = t0;
    let pi = 1;
    if (quad) {
        path +=
            'Q' +
                Math.round(p[0] - (t0[0] * 2) / 3) +
                ',' +
                Math.round(p[1] - (t0[1] * 2) / 3) +
                ',' +
                Math.round(p[0]) +
                ',' +
                Math.round(p[1]);
        p0 = points[1];
        pi = 2;
    }
    if (tangents.length > 1) {
        t = tangents[1];
        p = points[pi];
        pi++;
        path +=
            'C' +
                Math.round(p0[0] + t0[0]) +
                ',' +
                Math.round(p0[1] + t0[1]) +
                ',' +
                Math.round(p[0] - t[0]) +
                ',' +
                Math.round(p[1] - t[1]) +
                ',' +
                Math.round(p[0]) +
                ',' +
                Math.round(p[1]);
        for (let i = 2; i < tangents.length; i++, pi++) {
            p = points[pi];
            t = tangents[i];
            path +=
                'S' +
                    Math.round(p[0] - t[0]) +
                    ',' +
                    Math.round(p[1] - t[1]) +
                    ',' +
                    Math.round(p[0]) +
                    ',' +
                    Math.round(p[1]);
        }
    }
    if (quad) {
        const lp = points[pi];
        path +=
            'Q' +
                Math.round(p[0] + (t[0] * 2) / 3) +
                ',' +
                Math.round(p[1] + (t[1] * 2) / 3) +
                ',' +
                Math.round(lp[0]) +
                ',' +
                Math.round(lp[1]);
    }
    return path;
}
/**
 * Adapted from D3.js -- d3_svg_lineCardinalTangents
 * @param {array} points Points in the form of [[p0x p0y] [p1x p1y] ...].
 * @param {number} tension A number from 0 to 1 specifying the tension.
 * @return {array} Tangents in the form of [[t0x t0y] [t1x t1y] ...].
 */
function lineCardinalTangents(points, tension) {
    const tangents = [];
    const a = (1 - tension) / 2;
    let p0;
    let p1 = points[0];
    let p2 = points[1];
    let i = 1;
    const n = points.length;
    while (++i < n) {
        p0 = p1;
        p1 = p2;
        p2 = points[i];
        tangents.push([a * (p2[0] - p0[0]), a * (p2[1] - p0[1])]);
    }
    return tangents;
}
/**
 * Adapted from D3.js -- d3_svg_lineSlope
 * @param {array} p0 Point in the form of [x y].
 * @param {array} p1 Point in the form of [x y].
 * @return {number} Slope.
 */
function lineSlope(p0, p1) {
    return (p1[1] - p0[1]) / (p1[0] - p0[0]);
}
/**
 * Adapted from D3.js -- d3_svg_lineFiniteDifferences
 * @param {array} points Points in the form of [[p0x p0y] [p1x p1y] ...].
 * @return {array} Finite differences.
 */
function lineFiniteDifferences(points) {
    let i = 0;
    const j = points.length - 1;
    const m = [];
    let p0 = points[0];
    let p1 = points[1];
    let d = (m[0] = lineSlope(p0, p1));
    while (++i < j) {
        m[i] = (d + (d = lineSlope((p0 = p1), (p1 = points[i + 1])))) / 2;
    }
    m[i] = d;
    return m;
}
/**
 * Adapted from D3.js -- d3_svg_lineMonotoneTangents
 * @param {array} points Points in the form of [[p0x p0y] [p1x p1y] ...].
 * @param {boolean} isHoriz If true, the spline is monotonic in X. Otherwise, it is monotonic in Y.
 * @return {array} Tangents in the form of [[t0x t0y] [t1x t1y] ...].
 */
function lineMonotoneTangents(points, isHoriz) {
    if (isHoriz)
        // swap x and y
        points = _rotatePoints(points);
    let tangents = [], d, a, b, s;
    const m = lineFiniteDifferences(points);
    let i = -1;
    const j = points.length - 1;
    while (++i < j) {
        d = lineSlope(points[i], points[i + 1]);
        if (Math.abs(d) < 1e-6) {
            m[i] = m[i + 1] = 0;
        }
        else {
            a = m[i] / d;
            b = m[i + 1] / d;
            s = a * a + b * b;
            if (s > 9) {
                s = (d * 3) / Math.sqrt(s);
                m[i] = s * a;
                m[i + 1] = s * b;
            }
        }
    }
    i = -1;
    while (++i <= j) {
        s = (points[Math.min(j, i + 1)][0] - points[Math.max(0, i - 1)][0]) / (6 * (1 + m[i] * m[i]));
        tangents.push([s || 0, m[i] * s || 0]);
    }
    if (isHoriz)
        // swap x and y again
        tangents = _rotatePoints(tangents);
    return tangents;
}
/**
 * Adapted from D3.js -- d3_svg_lineMonotone
 * @param {array} points Points in the form of [[p0x p0y] [p1x p1y] ...].
 * @param {boolean} isHoriz If true, the spline is monotonic in X. Otherwise, it is monotonic in Y.
 * @return {string} Path commands.
 */
function lineMonotone(points, isHoriz) {
    return points.length < 3
        ? lineLinear(points)
        : points[0] + lineHermite(points, lineMonotoneTangents(points, isHoriz));
}
/**
 * Rotate the points by swapping the x and y.
 * @param {array} points Points in the form of [[p0x p0y] [p1x p1y] ...].
 * @return {array} Rotated points.
 * @private
 */
function _rotatePoints(points) {
    const rPoints = [];
    for (let i = 0; i < points.length; i++) {
        rPoints.push([points[i][1], points[i][0]]);
    }
    return rPoints;
}

/**
 * @license
 * Copyright (c) 2008 %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const SPLINE_TYPE_MONOTONE_VERTICAL = 'mv';
const SPLINE_TYPE_MONOTONE_HORIZONTAL = 'mh';
const SPLINE_TYPE_CARDINAL_CLOSED = 'cc';
/**
 * Returns a curved path command, based on cubic hermite splines, that goes through the points in the points array.
 * @param {array} points Polyline points array.
 * @param {boolean} connectWithLine Whether the first point is reached using lineTo. Otherwise, moveTo is used.
 * @param {string} type The spline type.
 * @return {string} Path commands.
 */
function curveThroughPoints(points, connectWithLine, splineType) {
    if (points.length == 0)
        return '';
    const prefix = connectWithLine ? 'L' : 'M';
    if (splineType == SPLINE_TYPE_MONOTONE_VERTICAL) {
        return prefix + lineMonotone(points, false);
    }
    else if (splineType == SPLINE_TYPE_MONOTONE_HORIZONTAL) {
        return prefix + lineMonotone(points, true);
    }
    else if (splineType == SPLINE_TYPE_CARDINAL_CLOSED) {
        return prefix + lineCardinalClosed(points, 0.7);
    }
    else {
        return prefix + lineCardinal(points, 0.7);
    }
}
/**
 * Returns a path command for a move to the specified coordinates
 * @param x the destination x coordinate
 * @param y the destination y coordinate
 * @returns the moveTo path command
 */
function moveTo(x, y) {
    return 'M' + x + ',' + y;
}
/**
 * Returns a path command for a line to the specified coordinates
 * @param x the destination x coordinate
 * @param y the destination y coordinate
 * @returns the lineTo path command
 */
function lineTo(x, y) {
    return 'L' + x + ',' + y;
}
/**
 * Returns a path command for a vertical line to the specified x coordinate
 * @param x the destination x coordinate
 * @returns the horizontal line path command
 */
function horizontalLineTo(x) {
    return 'H' + x;
}
/**
 * Returns a path command for a horizontal line to the specified y coordinate
 * @param y the destination y coordinate
 * @returns the vertical line path command
 */
function verticalLineTo(y) {
    return 'V' + y;
}
/**
 * Returns a path command for a rectangle.
 * @param x Rectangle x.
 * @param y Rectangle y.
 * @param w Rectangle width.
 * @param h Rectangle height.
 * @returns Path command.
 */
function rectangle(x, y, w, h) {
    const cmd = moveTo(x, y) +
        horizontalLineTo(x + w) +
        verticalLineTo(y + h) +
        horizontalLineTo(x) +
        closePath();
    return cmd;
}
/**
 * Returns a path command for an arc to the specified coordinates
 * @param rx the x radius of the ellipse whose arc will be drawn
 * @param ry the y radius of the ellipse whose arc will be drawn
 * @param angleExtent the sweep of the arc to be drawn
 * @param direction 1 for clockwise, 0 for counter-clockwise
 * @param x the ending x coordinate
 * @param y the ending y coordinate
 */
function arcTo(rx, ry, angleExtent, direction, x, y) {
    let cmd = 'A' + rx + ',' + ry + ',0,';
    if (angleExtent > Math.PI) {
        cmd += '1,';
    }
    else {
        cmd += '0,';
    }
    cmd += direction + ',' + x + ',' + y;
    return cmd;
}
/**
 * Returns a path command that closes the path.
 */
function closePath() {
    return 'Z';
}
/**
 * Parse corner radii and return the new shape.
 *
 * Sample (valid) radius values:
 *  '5px' - 5px all corners
 *  '50% 50% 0 0' - 50% top corners, 0 bottom corners
 *  '50% 10' - 50% top left bottom right, 10px top right bottom left.
 *  '5px / 10px' - 5px horizontal radius, 10px vertical radius all corners
 *  '50% 50% 25% 25% / 25% 25% 50% 50%' - 50% h radius 25% v radius top corners, 25% h radius 50% v radius bottom corners
 *
 * Note that all non-% values (including unitless) get interpreted as 'px'.
 *
 * @param x Rectangle x.
 * @param y Rectangle y.
 * @param w Rectangle width.
 * @param h Rectangle height.
 * @param radius The string to be parsed.
 * @param multiplier The value used for when a percent radius is provided
 * @param defaultValue A specified value for the border radius
 * @returns Path command of shape with border radius.
 */
function rectangleWithBorderRadius(x, y, w, h, radius, multiplier, defaultValue) {
    if (radius == '0' || radius === '0px')
        return rectangle(x, y, w, h);
    let topLeftX = defaultValue;
    let topLeftY = defaultValue;
    let topRightX = defaultValue;
    let topRightY = defaultValue;
    let bottomRightX = defaultValue;
    let bottomRightY = defaultValue;
    let bottomLeftX = defaultValue;
    let bottomLeftY = defaultValue;
    if (radius.indexOf('/') != -1) {
        const splitHorizVert = radius.split('/');
        const horiz = splitHorizVert[0].trim().split(/\s+/);
        const vert = splitHorizVert[1].trim().split(/\s+/);
        if (horiz.length == 1)
            topLeftX = topRightX = bottomRightX = bottomLeftX = horiz[0];
        else if (horiz.length == 2) {
            topLeftX = bottomRightX = horiz[0];
            topRightX = bottomLeftX = horiz[1];
        }
        else if (horiz.length == 3) {
            topLeftX = horiz[0];
            topRightX = bottomLeftX = horiz[1];
            bottomRightX = horiz[2];
        }
        else if (horiz.length == 4) {
            topLeftX = horiz[0];
            topRightX = horiz[1];
            bottomRightX = horiz[2];
            bottomLeftX = horiz[3];
        }
        if (vert.length == 1)
            topLeftY = topRightY = bottomRightY = bottomLeftY = vert[0];
        else if (vert.length == 2) {
            topLeftY = bottomRightY = vert[0];
            topRightY = bottomLeftY = vert[1];
        }
        else if (vert.length == 3) {
            topLeftY = vert[0];
            topRightY = bottomLeftY = vert[1];
            bottomRightY = vert[2];
        }
        else if (vert.length == 4) {
            topLeftY = vert[0];
            topRightY = vert[1];
            bottomRightY = vert[2];
            bottomLeftY = vert[3];
        }
    }
    else if (radius != 'auto') {
        const split = radius.trim().split(/\s+/);
        if (split.length == 1) {
            topLeftX =
                topRightX =
                    bottomRightX =
                        bottomLeftX =
                            topLeftY =
                                topRightY =
                                    bottomRightY =
                                        bottomLeftY =
                                            split[0];
        }
        else if (split.length == 2) {
            topLeftX = bottomRightX = topLeftY = bottomRightY = split[0];
            topRightX = bottomLeftX = topRightY = bottomLeftY = split[1];
        }
        else if (split.length == 3) {
            topLeftX = topLeftY = split[0];
            topRightX = bottomLeftX = topRightY = bottomLeftY = split[1];
            bottomRightX = bottomRightY = split[2];
        }
        else if (split.length == 4) {
            topLeftX = topLeftY = split[0];
            topRightX = topRightY = split[1];
            bottomRightX = bottomRightY = split[2];
            bottomLeftX = bottomLeftY = split[3];
        }
    }
    return roundedRectangle(x, y, w, h, parseBorderRadiusItem(topLeftX, multiplier), parseBorderRadiusItem(topLeftY, multiplier), parseBorderRadiusItem(topRightX, multiplier), parseBorderRadiusItem(topRightY, multiplier), parseBorderRadiusItem(bottomRightX, multiplier), parseBorderRadiusItem(bottomRightY, multiplier), parseBorderRadiusItem(bottomLeftX, multiplier), parseBorderRadiusItem(bottomLeftY, multiplier));
}
/**
 * Parses a single corner radius dimension
 * @param item The x or y radius input need to be parsed
 * @param multiplier The value used for when a percent radius is provided
 * @returns The integer value of the corner radius
 */
function parseBorderRadiusItem(item, multiplier) {
    let radius = Math.min(parseFloat(item), multiplier / 2);
    if (item.indexOf('%') != -1) {
        radius = Math.min(50, parseFloat(item)) * 0.01 * multiplier;
    }
    return radius;
}
/**
 * Returns a path command for a rounded rectangle.
 * @param x Rectangle x.
 * @param y Rectangle y.
 * @param w Rectangle width.
 * @param h Rectangle height.
 * @param tlcrX Top left corner x radius.
 * @param tlcrY Top left corner y radius.
 * @param trcrX Top right corner x radius.
 * @param trcrY Top right corner y radius.
 * @param brcrX Bottom right corner x radius.
 * @param brcrY Bottom right corner y radius.
 * @param blcrX Bottom left corner x radius.
 * @param blcrY Bottom left corner  y radius.
 * @returns Path command.
 */
function roundedRectangle(x, y, w, h, tlcrX, tlcrY, trcrX, trcrY, brcrX, brcrY, blcrX, blcrY) {
    tlcrY = Math.min(tlcrY, 0.5 * h);
    trcrY = Math.min(trcrY, 0.5 * h);
    brcrY = Math.min(brcrY, 0.5 * h);
    blcrY = Math.min(blcrY, 0.5 * h);
    tlcrX = Math.min(tlcrX, 0.5 * w);
    trcrX = Math.min(trcrX, 0.5 * w);
    brcrX = Math.min(brcrX, 0.5 * w);
    blcrX = Math.min(blcrX, 0.5 * w);
    const cmd = moveTo(x + tlcrX, y) +
        lineTo(x + w - trcrX, y) +
        arcTo(trcrX, trcrY, Math.PI / 2, 1, x + w, y + trcrY) +
        lineTo(x + w, y + h - brcrY) +
        arcTo(brcrX, brcrY, Math.PI / 2, 1, x + w - brcrX, y + h) +
        lineTo(x + blcrX, y + h) +
        arcTo(blcrX, blcrY, Math.PI / 2, 1, x, y + h - blcrY) +
        lineTo(x, y + tlcrY) +
        arcTo(tlcrX, tlcrY, Math.PI / 2, 1, x + tlcrX, y) +
        closePath();
    return cmd;
}

export { _rotatePoints as _, arcTo as a, closePath as b, curveThroughPoints as c, lineLinear as d, lineCardinalClosed as e, lineCardinal as f, lineHermite as g, lineCardinalTangents as h, lineSlope as i, lineFiniteDifferences as j, lineMonotoneTangents as k, lineTo as l, moveTo as m, lineMonotone as n, horizontalLineTo as o, rectangleWithBorderRadius as r, verticalLineTo as v };
//# sourceMappingURL=pathUtils-1a478322.js.map
