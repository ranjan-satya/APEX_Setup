/* @oracle/oraclejet-preact: undefined */
'use strict';

var dimensionUtils = require('./dimensionUtils-3919753d.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const ELLIPSIS = '\u2026';
const MAX_MULTILINE_THRESHOLD = 3;
/**
 * Checks if the text lines ends with ellipses and
 * hence if they need tooltip.
 * @param lines
 * @returns
 */
function endsWithEllipsis(lines) {
    const lastLine = lines[lines.length - 1];
    return lastLine?.endsWith(ELLIPSIS);
}
/**
 * Truncates the text in a single line.
 * @param text The untruncated text.
 * @param maxWidth The max available width.
 * @param maxHeight The max available height.
 * @param minChars The min chars before ellisis is introduced.
 * @param getTextDimensions
 * @returns
 */
function truncateSingleLineText(text, textStyle, maxWidth, maxHeight, minChars, getTextDimensions) {
    if (!getTextDimensions) {
        return '';
    }
    if (maxWidth <= 0) {
        return '';
    }
    let dims = getTextDimensions(text, textStyle);
    if (dims.width <= maxWidth)
        return text;
    if (dims.height > maxHeight)
        return '';
    // Determine avg pixels per char and make an initial guess at the truncation
    const textString = text;
    const textLength = text.length;
    const avgPixelsPerChar = dims.width / getTextLength(text);
    let maxNumChars = Math.max(Math.floor(maxWidth / avgPixelsPerChar) - 2, minChars);
    let truncatedTextString = textString.substring(0, maxNumChars) + ELLIPSIS;
    // Add characters if initial guess is too short.
    // Keep track of the previous string and dims in case we overshoot
    let prevTextString = truncatedTextString;
    dims = getTextDimensions(truncatedTextString, textStyle);
    let prevDims = dims;
    while (dims.width < maxWidth) {
        if (maxNumChars >= textString.length)
            break;
        // Calculate the availWidth and use that to estimate the number of characters to increment
        const availWidth = maxWidth - dims.width;
        // estimatedIncrement: The smaller of the chars remaining and the estimate of characters than can fit
        const estimatedIncrement = Math.min(textLength - maxNumChars, Math.max(Math.floor(availWidth / avgPixelsPerChar), 1));
        // Add chars and measure again
        maxNumChars += estimatedIncrement;
        truncatedTextString = textString.substring(0, maxNumChars) + ELLIPSIS;
        dims = getTextDimensions(truncatedTextString, textStyle);
        // If we overshot and the increment was only 1, then restore the old string
        if (estimatedIncrement == 1 && dims.width > maxWidth) {
            truncatedTextString = prevTextString;
            dims = prevDims;
            break;
        }
        // Otherwise update the previous string and dims
        prevTextString = truncatedTextString;
        prevDims = dims;
    }
    // Remove characters if initial guess is too long
    while (dims.width > maxWidth) {
        if (maxNumChars <= minChars) {
            truncatedTextString = '';
            break;
        }
        // Truncate 1 char at a time
        maxNumChars -= 1;
        truncatedTextString = textString.substring(0, maxNumChars) + ELLIPSIS;
        dims = getTextDimensions(truncatedTextString, textStyle);
    }
    return truncatedTextString;
}
/**
 * Returns the length of the string after replacing zero length chars.
 * @param textString
 * @returns The length of the string.
 */
function getTextLength(textString) {
    textString = textString.replace(/[\u200A\u200B\u200C\u200D\u200E\u200F\uFEFF]/g, '');
    return textString.length;
}
/**
 * Truncates the string recursively.
 * @returns
 */
function truncatedMultilineTextRecursive(splits, textStyle, maxWidth, maxHeight, minChars, getTextDimensions, layer = 1) {
    const fullText = splits.join(' ');
    const { width, height } = getTextDimensions(fullText, textStyle);
    if (height > maxHeight) {
        return [];
    }
    if (width <= maxWidth) {
        return [splits.join(' ')];
    }
    let currentIndex = 0;
    let lastUntrucatedLine = '';
    while (currentIndex < splits.length) {
        const currentLine = splits.slice(0, currentIndex + 1).join(' ');
        const truncated = truncateSingleLineText(currentLine, textStyle, maxWidth, maxHeight, minChars, getTextDimensions);
        const isTruncated = truncated != currentLine;
        const doesNotFit = truncated === '';
        if (isTruncated) {
            const newSplits = splits.slice(currentIndex);
            const otherLines = layer < MAX_MULTILINE_THRESHOLD
                ? truncatedMultilineTextRecursive(newSplits, textStyle, maxWidth, maxHeight - 12, minChars, getTextDimensions, layer + 1)
                : [];
            if (otherLines.length === 0) {
                return [truncated];
            }
            else {
                return [lastUntrucatedLine, ...otherLines];
            }
        }
        else if (doesNotFit) {
            return [];
        }
        else {
            currentIndex += 1;
            lastUntrucatedLine = currentLine;
        }
    }
    // shouldn't actually reach here.
    return [splits.join(' ')];
}
/**
 * Returns the array of lines of texts.
 * @param splits The words in the text.
 * @param maxWidth The max available width.
 * @param maxHeight The max available height.
 * @param minChars The min number of chars before ellipsis is shown.
 * @param getTextDimensions The function used to measure the dimension of a text.
 * @returns
 */
function truncateMultilineText(text, textStyle, maxWidth, maxHeight, minChars, getTextDimensions) {
    const splits = text.split(/\s+/);
    return truncatedMultilineTextRecursive(splits, textStyle, maxWidth, maxHeight, minChars, getTextDimensions, 1);
}

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const REPRESENTATIVE_TEXT = 'MV';
/**
 * Returns the (x, y) coordinate of the text given the width and height of the chart.
 * @param position
 * @param availSpace
 * @param textDims
 * @returns
 */
const positionMultilineText = (lines, dims, lineHeight, position, availSpace, isRtl) => {
    const space = dimensionUtils.cloneDimension(availSpace);
    return lines.map((_, i) => {
        const textCoord = centerTextInAvailSpace(position, space, isRtl, dims[i]);
        if (position === 'top') {
            space.y += lineHeight;
            space.height -= lineHeight;
        }
        else if (position === 'left') {
            space.x += lineHeight;
            space.width -= lineHeight;
        }
        else if (position === 'bottom') {
            space.height -= lineHeight;
        }
        else {
            space.width -= lineHeight;
        }
        return textCoord;
    });
};
/**
 * Returns the x and y positon for a centered text.
 * @param position
 * @param availSpace
 * @param isRtl
 * @param textDims
 * @returns
 */
function centerTextInAvailSpace(position, availSpace, isRtl, textDims) {
    let x;
    let y;
    if (position === 'left') {
        x = availSpace.x + textDims.height / 2 - (isRtl ? textDims.height / 2 : 0);
        y = availSpace.y + availSpace.height / 2;
    }
    else if (position === 'right') {
        x = availSpace.x + availSpace.width - (isRtl ? textDims.height / 2 : 0);
        y = availSpace.y + availSpace.height / 2;
    }
    else if (position === 'top') {
        x = availSpace.x + availSpace.width / 2;
        y = availSpace.y + textDims.height / 2;
    }
    else {
        x = availSpace.x + availSpace.width / 2;
        y = availSpace.y + availSpace.height - textDims.height / 2;
    }
    return { x, y };
}
/**
 * Returns the props for the text component.
 */
function getTextProps(lines, textStyle, bounds, isRotated, isRtl, getTextDimension) {
    let { x, y } = bounds;
    const lineHeight = getTextDimension(REPRESENTATIVE_TEXT, textStyle).width;
    const props = [];
    lines.forEach((line, i) => {
        const transform = isRotated
            ? `matrix(0, ${isRtl ? 1 : -1}, ${isRtl ? -1 : 1}, 0, ${x}, ${y})`
            : undefined;
        props.push({
            text: line,
            x: isRotated ? undefined : x,
            y: isRotated ? undefined : y + i * lineHeight,
            transform: isRotated ? transform : undefined
        });
        x += isRotated ? lineHeight : 0;
        y += isRotated ? 0 : lineHeight;
    });
    return props;
}
/**
 * Returns the text info for the given text.
 */
function getTextInfo(text, textStyle, width, height, isMultiline, getTextDimension) {
    const lines = isMultiline
        ? truncateMultilineText(text, textStyle, width, height, 1, getTextDimension)
        : [truncateSingleLineText(text, textStyle, width, height, 1, getTextDimension)];
    const lineHeight = getTextDimension(REPRESENTATIVE_TEXT, textStyle).width;
    const dims = lines.map((line) => getTextDimension(line, textStyle));
    const didNotFit = lines.every((line) => line === '');
    const maxWidth = Math.max(...dims.map((dim) => {
        return dim.width;
    }));
    return {
        lines,
        dims,
        didNotFit,
        height: lines.length * lineHeight,
        width: maxWidth,
        isMultiline: lines.length > 1,
        lineHeight,
        isTruncated: endsWithEllipsis(lines)
    };
}

exports.centerTextInAvailSpace = centerTextInAvailSpace;
exports.getTextInfo = getTextInfo;
exports.getTextProps = getTextProps;
exports.positionMultilineText = positionMultilineText;
exports.truncateMultilineText = truncateMultilineText;
exports.truncateSingleLineText = truncateSingleLineText;
//# sourceMappingURL=utils-1d526d92.js.map
