/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';

const CircleWrapper = ({ id, children, color, clipPath, borderWidth, ariaProps, wrapperRef, width, height, ...otherProps }) => {
    return (jsx("div", { ref: wrapperRef, id: id, ...ariaProps, class: otherProps.class, style: {
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
    return (jsx("div", { class: otherProps.class, style: {
            clipPath: clipPath,
            borderColor: color,
            height,
            width,
            ...borderWidth
        } }));
};

export { CircleWrapper as C, CircleInner as a };
//# sourceMappingURL=CircularMeter-2c50b36e.js.map
