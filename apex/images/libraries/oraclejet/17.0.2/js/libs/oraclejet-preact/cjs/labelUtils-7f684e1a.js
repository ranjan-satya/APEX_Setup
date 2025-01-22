/* @oracle/oraclejet-preact: undefined */
'use strict';

var textUtils = require('./textUtils-09e07d94.js');
require('./accUtils-50f26093.js');
require('preact/jsx-runtime');
var utils = require('./utils-1d526d92.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const AXIS_DEFAULTS = {
    titleGap: 6,
    labelGap: 6
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Calculates the number of skips between axis labels and the dimensions of unskipped labels.
 * @param labels The labels to render.
 * @param getLabelInfo The function that returns dimension of given label.
 * @param isHoriz Whether the axis is horizontal.
 * @param numOfSafeSkips The no of labels to skip safely.
 * @returns
 */
function skipLabelsUniform(labels, getLabelInfo, isHoriz, isRotated, autoTruncate, isWrapAllowed, numOfSafeSkips) {
    let numOfSkips = numOfSafeSkips || 0;
    let dimsA;
    let dimsB;
    const labelsInfo = [getLabelInfo(labels[0], 0, isRotated, autoTruncate, isWrapAllowed)];
    const isOverlapping = isHoriz ? textUtils.isWidthOverlap : textUtils.isHeightOverlap;
    let indexA = 0;
    let indexB = numOfSkips + 1;
    while (indexB < labels.length) {
        const labelsInfoA = labelsInfo[indexA] ||
            getLabelInfo(labels[indexA], indexA, isRotated, autoTruncate, isWrapAllowed);
        dimsA = labelsInfoA.dims;
        if (!labelsInfo[indexA]) {
            labelsInfo[indexA] = labelsInfoA;
        }
        const labelsInfoB = labelsInfo[indexB] ||
            getLabelInfo(labels[indexB], indexB, isRotated, autoTruncate, isWrapAllowed);
        dimsB = labelsInfoB.dims;
        if (!labelsInfo[indexB]) {
            labelsInfo[indexB] = labelsInfoB;
        }
        if (isOverlapping(dimsA, dimsB)) {
            numOfSkips += 1;
            indexA = 0;
            indexB = numOfSkips + 1;
        }
        else {
            indexA = indexB;
            indexB = indexA + numOfSkips + 1;
        }
    }
    return { numOfSkips, labelsInfo };
}
/**
 * Greedily skip labels. We will skip next label if it overlaps with the previous one.
 * This might not result in uniformly spaced labels.
 * @param labels
 * @param getLabelInfo
 * @param isHoriz
 * @returns
 */
function skipLabelsGreedy(labels, getLabelInfo, isHoriz, wrapText) {
    const isOverlapping = isHoriz ? textUtils.isWidthOverlap : textUtils.isHeightOverlap;
    let currentInfo = getLabelInfo(labels[0], 0, false, false, !!wrapText);
    const renderedLabels = [
        {
            text: currentInfo.text,
            lines: [currentInfo.text],
            index: 0,
            lineProps: [currentInfo.dims],
            dims: currentInfo.dims
        }
    ];
    let maxWidth = currentInfo.dims.width;
    let maxHeight = currentInfo.dims.height;
    for (let j = 1; j < labels.length; j++) {
        if (!labels[j])
            continue;
        const labelInfo = getLabelInfo(labels[j], j, false, false, !!wrapText);
        if (!isOverlapping(currentInfo.dims, labelInfo.dims)) {
            currentInfo = labelInfo;
            renderedLabels.push({
                text: labelInfo.text,
                lines: [labelInfo.text],
                index: j,
                dims: labelInfo.dims,
                lineProps: [labelInfo.dims]
            });
            maxWidth = Math.max(maxWidth, labelInfo.dims.width);
            maxHeight = Math.max(maxHeight, labelInfo.dims.height);
        }
    }
    return { tickLabels: renderedLabels, maxWidth, maxHeight };
}
function getDataAxisLabelsInfo(labels, getLabelInfo, isHoriz) {
    const { numOfSkips, labelsInfo } = skipLabelsUniform(labels, getLabelInfo, isHoriz, false, false, false, 0);
    const tickLabels = [];
    let maxWidth = 0;
    let maxHeight = 0;
    let isLabelTruncated = false;
    for (let i = 0; i < labels.length; i += numOfSkips + 1) {
        maxWidth = Math.max(maxWidth, labelsInfo[i].dims.width);
        maxHeight = Math.max(maxHeight, labelsInfo[i].dims.height);
        isLabelTruncated = isLabelTruncated || labelsInfo[i].isTruncated;
        tickLabels.push({
            text: labelsInfo[i].text,
            lines: labelsInfo[i].lines,
            index: i,
            dims: labelsInfo[i].dims,
            lineProps: labelsInfo[i].lineProps
        });
    }
    return {
        maxWidth,
        maxHeight,
        numOfSkips,
        isLabelTruncated,
        tickLabels
    };
}
function getGroupAxisLabelsInfo(labels, getLabelInfo, isHoriz, autoRotate, wrapText, numOfSafeSkips) {
    let isRotated = false;
    /**
     * 1.First calculate dims of all the labels in horizontal position without
     *   restriction and calculate the num of skips.
     * 2.Check if the labels overlap, and hence if we have to skip some labels to
     *   avoid overlap.
     * 3.If we had to skip some labels and if wrapping the text is allowed, try
     *   again horizontally with wrap enabled.
     * 4.Check again if the labels overlap, or if some text got truncated.Truncation is
     *   undesirable at this step if rotation is enabled.
     * 5.If rotation is enabled, rotate the labels and check for overlap again.
     * 6.After all the steps above, choose the setting that result in minimum number of skips.
     */
    let { numOfSkips, labelsInfo } = skipLabelsUniform(labels, getLabelInfo, isHoriz, false, false, false, numOfSafeSkips);
    if (numOfSkips > 0 && wrapText && isHoriz) {
        const wrapAllowedLabels = skipLabelsUniform(labels, getLabelInfo, isHoriz, false, false, true, numOfSafeSkips);
        const isNotValid = wrapAllowedLabels.labelsInfo.some((info) => info.isTruncated || info.didNotFit);
        if (!isNotValid && wrapAllowedLabels.numOfSkips < numOfSkips) {
            numOfSkips = wrapAllowedLabels.numOfSkips;
            labelsInfo = wrapAllowedLabels.labelsInfo;
        }
    }
    if (numOfSkips > 0 && autoRotate) {
        const skipInfoRotated = skipLabelsUniform(labels, getLabelInfo, isHoriz, true, true, false, numOfSafeSkips);
        if (skipInfoRotated.numOfSkips < numOfSkips) {
            numOfSkips = skipInfoRotated.numOfSkips;
            labelsInfo = skipInfoRotated.labelsInfo;
            isRotated = true;
        }
    }
    const tickLabels = [];
    let maxWidth = 0;
    let maxHeight = 0;
    for (let i = 0; i < labels.length; i += numOfSkips + 1) {
        maxWidth = Math.max(maxWidth, labelsInfo[i].dims.width);
        maxHeight = Math.max(maxHeight, labelsInfo[i].dims.height);
        tickLabels[i] = {
            text: labelsInfo[i].text,
            lines: labelsInfo[i].lines,
            index: i,
            dims: labelsInfo[i].dims,
            lineProps: labelsInfo[i].lineProps,
            isRotated,
            isTruncated: labelsInfo[i].isTruncated
        };
    }
    return {
        maxWidth,
        maxHeight,
        isRotated,
        numOfSkips,
        tickLabels
    };
}
function updateLabelsDims(maxWidth, maxHeight, renderedLabelsInfo, getAxisPos, availSpace, position) {
    renderedLabelsInfo.forEach((info) => {
        info.lines.forEach((_, index) => {
            const dim = info.lineProps[index];
            let x;
            let y;
            if (position === 'left') {
                x = availSpace.x + maxWidth;
                y = getAxisPos(info.index);
            }
            else if (position === 'right') {
                x = availSpace.x + availSpace.width - maxWidth;
                y = getAxisPos(info.index);
            }
            else if (position === 'top') {
                x = getAxisPos(info.index);
                y = availSpace.y + maxHeight - dim.height / 2;
            }
            else {
                x = getAxisPos(info.index);
                y = availSpace.y + availSpace.height - maxHeight + dim.height / 2 + dim.height * index;
            }
            dim.x = x;
            dim.y = y;
        });
        const textDim = info.dims;
        let x;
        let y;
        if (position === 'left') {
            x = availSpace.x + maxWidth;
            y = getAxisPos(info.index);
        }
        else if (position === 'right') {
            x = availSpace.x + availSpace.width - maxWidth;
            y = getAxisPos(info.index);
        }
        else if (position === 'top') {
            x = getAxisPos(info.index);
            y = availSpace.y + maxHeight - textDim.height / 2;
        }
        else {
            x = getAxisPos(info.index);
            y = availSpace.y + availSpace.height - maxHeight + textDim.height / 2;
        }
        textDim.x = x;
        textDim.y = y;
    });
}
/**
 * Returns the enclosing rect for the label of given dimension.
 * @param dims The dimension
 * @param axisPosition The position of the axis.
 * @returns
 */
function getEnclosingRectDims(dims, axisPosition) {
    let x;
    let y;
    if (axisPosition === 'left') {
        x = dims.x - dims.width;
        y = dims.y - dims.height / 2;
    }
    else if (axisPosition === 'right') {
        x = dims.x;
        y = dims.y - dims.height / 2;
    }
    else {
        x = dims.x - dims.width / 2;
        y = dims.y - dims.height / 2;
    }
    const width = dims.width;
    const height = dims.height;
    return { x, y, width, height };
}
/**
 * Retuns the unaligned label dimensions that can be used by skipLabels.
 * @returns
 */
function getTickLabelInfo(coord, label, labelStyle, isHoriz, isRotated, isWrapAllowed, allowTruncate, maxWidth, maxHeight, availSpace, getTextDimensions) {
    if (!getTextDimensions || !label) {
        return {
            text: '',
            dims: { width: 0, height: 0, x: 0, y: 0 },
            isTruncated: false,
            lines: [],
            didNotFit: false,
            lineProps: []
        };
    }
    const gap = AXIS_DEFAULTS.labelGap;
    const availWidth = isRotated ? maxHeight : isWrapAllowed ? maxWidth - gap : maxWidth;
    let width, height;
    let isTruncated = false;
    let lines = [];
    let dims = [];
    let lineHeight;
    let didNotFit = false;
    const mxHeight = isWrapAllowed ? maxHeight : Infinity;
    if (allowTruncate || isWrapAllowed) {
        const textInfo = utils.getTextInfo(label, labelStyle, availWidth, mxHeight, isWrapAllowed, getTextDimensions);
        width = textInfo.width;
        height = textInfo.height;
        lines = textInfo.lines;
        dims = textInfo.dims;
        isTruncated = textInfo.isTruncated;
        lineHeight = textInfo.lineHeight;
        didNotFit = textInfo.didNotFit;
    }
    else {
        dims = [getTextDimensions(label, labelStyle)];
        width = dims[0].width;
        height = dims[0].height;
        lines = [label];
        isTruncated = false;
        lineHeight = height;
    }
    const _labelWidth = isRotated ? height : width;
    const _labelHeight = isRotated ? width : height;
    const labelWidth = isHoriz ? _labelWidth + gap : _labelWidth;
    const labelHeight = isHoriz ? _labelHeight : _labelHeight + gap;
    return {
        text: label,
        lines,
        lineProps: dims.map((dim, i) => ({
            x: isHoriz ? coord - dim.width / 2 : availSpace.x,
            width: isRotated ? dim.height : dim.width,
            height: isRotated ? dim.width : dim.height,
            y: isHoriz ? availSpace.y + lineHeight * i : coord + dim.height / 2
        })),
        isTruncated,
        didNotFit,
        dims: {
            x: isHoriz ? coord - labelWidth / 2 : availSpace.x,
            width: labelWidth,
            height: labelHeight,
            y: isHoriz ? availSpace.y : coord + labelHeight / 2
        }
    };
}

exports.AXIS_DEFAULTS = AXIS_DEFAULTS;
exports.getDataAxisLabelsInfo = getDataAxisLabelsInfo;
exports.getEnclosingRectDims = getEnclosingRectDims;
exports.getGroupAxisLabelsInfo = getGroupAxisLabelsInfo;
exports.getTickLabelInfo = getTickLabelInfo;
exports.skipLabelsGreedy = skipLabelsGreedy;
exports.updateLabelsDims = updateLabelsDims;
//# sourceMappingURL=labelUtils-7f684e1a.js.map
