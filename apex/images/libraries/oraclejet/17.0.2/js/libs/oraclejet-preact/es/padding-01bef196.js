/* @oracle/oraclejet-preact: undefined */
import { s as sizeToCSS } from './size-782ed57a.js';
import { c as coerceArray } from './arrayUtils-35a58161.js';

const paddingInterpolations = {
    padding: ({ padding }) => {
        if (padding === undefined) {
            return {};
        }
        else {
            const [topPadding, rightPadding = topPadding, bottomPadding = topPadding, leftPadding = rightPadding] = coerceArray(padding);
            return {
                padding: `${sizeToCSS(topPadding)} ${sizeToCSS(rightPadding)} 
        ${sizeToCSS(bottomPadding)} ${sizeToCSS(leftPadding)}`
            };
        }
    },
    paddingBlockStart: ({ paddingBlockStart }) => paddingBlockStart === undefined
        ? {}
        : {
            paddingBlockStart: `${sizeToCSS(paddingBlockStart)}`
        },
    paddingBlockEnd: ({ paddingBlockEnd }) => paddingBlockEnd === undefined
        ? {}
        : {
            paddingBlockEnd: `${sizeToCSS(paddingBlockEnd)}`
        },
    paddingInlineStart: ({ paddingInlineStart }) => paddingInlineStart === undefined
        ? {}
        : {
            paddingInlineStart: `${sizeToCSS(paddingInlineStart)}`
        },
    paddingInlineEnd: ({ paddingInlineEnd }) => paddingInlineEnd === undefined
        ? {}
        : {
            paddingInlineEnd: `${sizeToCSS(paddingInlineEnd)}`
        }
};

export { paddingInterpolations as p };
//# sourceMappingURL=padding-01bef196.js.map
