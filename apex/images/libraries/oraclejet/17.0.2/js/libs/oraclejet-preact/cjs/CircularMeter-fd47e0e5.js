/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');

const CircleWrapper = ({ id, children, color, clipPath, borderWidth, ariaProps, wrapperRef, width, height, ...otherProps }) => {
    return (jsxRuntime.jsx("div", { ref: wrapperRef, id: id, ...ariaProps, class: otherProps.class, style: {
            borderColor: color,
            borderWidth: borderWidth,
            clipPath: clipPath,
            width,
            height
        }, children: children }));
};
function getBorderWidth(section, borderWidth) {
    const border = {
        borderTopWidth: borderWidth,
        borderBottomWidth: borderWidth,
        borderRightWidth: borderWidth,
        borderLeftWidth: borderWidth
    };
    switch (section) {
        case 'top':
            border['borderBottomWidth'] = undefined;
            break;
        case 'bottom':
            border['borderTopWidth'] = undefined;
            break;
        case 'left':
            border['borderRightWidth'] = undefined;
            break;
        case 'right':
            border['borderLeftWidth'] = undefined;
            break;
    }
    return border;
}
const CircleInner = ({ clipPath, color, height, width, size, section = 'full', ...otherProps }) => {
    const borderWidth = getBorderWidth(section, size);
    return (jsxRuntime.jsx("div", { class: otherProps.class, style: {
            clipPath: clipPath,
            borderColor: color,
            height,
            width,
            ...borderWidth
        } }));
};

exports.CircleInner = CircleInner;
exports.CircleWrapper = CircleWrapper;
//# sourceMappingURL=CircularMeter-fd47e0e5.js.map
