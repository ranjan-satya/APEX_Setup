/* @oracle/oraclejet-preact: undefined */
'use strict';

var size = require('./size-4e606ce4.js');
var arrayUtils = require('./arrayUtils-7d8dcfc3.js');

const paddingInterpolations = {
    padding: ({ padding }) => {
        if (padding === undefined) {
            return {};
        }
        else {
            const [topPadding, rightPadding = topPadding, bottomPadding = topPadding, leftPadding = rightPadding] = arrayUtils.coerceArray(padding);
            return {
                padding: `${size.sizeToCSS(topPadding)} ${size.sizeToCSS(rightPadding)} 
        ${size.sizeToCSS(bottomPadding)} ${size.sizeToCSS(leftPadding)}`
            };
        }
    },
    paddingBlockStart: ({ paddingBlockStart }) => paddingBlockStart === undefined
        ? {}
        : {
            paddingBlockStart: `${size.sizeToCSS(paddingBlockStart)}`
        },
    paddingBlockEnd: ({ paddingBlockEnd }) => paddingBlockEnd === undefined
        ? {}
        : {
            paddingBlockEnd: `${size.sizeToCSS(paddingBlockEnd)}`
        },
    paddingInlineStart: ({ paddingInlineStart }) => paddingInlineStart === undefined
        ? {}
        : {
            paddingInlineStart: `${size.sizeToCSS(paddingInlineStart)}`
        },
    paddingInlineEnd: ({ paddingInlineEnd }) => paddingInlineEnd === undefined
        ? {}
        : {
            paddingInlineEnd: `${size.sizeToCSS(paddingInlineEnd)}`
        }
};

exports.paddingInterpolations = paddingInterpolations;
//# sourceMappingURL=padding-b9ee87ac.js.map
