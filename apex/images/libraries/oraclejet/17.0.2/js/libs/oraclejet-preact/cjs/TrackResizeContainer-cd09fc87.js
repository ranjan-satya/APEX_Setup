/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var hooks = require('preact/hooks');
var useSize = require('./useSize-b125f55d.js');
var size = require('./size-4e606ce4.js');

const TrackResizeContainer = ({ children, width: w, height: h, class: className }) => {
    const width = dimToCSS(w);
    const height = dimToCSS(h);
    const content = width && height && isFixedLength(width) && isFixedLength(height) ? (jsxRuntime.jsx("div", { style: { width, height }, class: className, children: children(fixedLengthToNumber(width), fixedLengthToNumber(height)) })) : (jsxRuntime.jsx(TrackResizeOnContainer, { width: width, height: height, class: className, children: children }));
    return content;
};
const TrackResizeOnContainer = ({ children, width, height, class: className }) => {
    const ref = hooks.useRef(null);
    const optionsRef = hooks.useRef({ box: 'border-box' });
    const size = useSize.useSize(ref, optionsRef.current);
    return (jsxRuntime.jsx("div", { ref: ref, style: { width, height }, class: className, children: size && children(size.width, size.height) }));
};
const isFixedLength = (length) => length.endsWith('px') || length === '0';
const fixedLengthToNumber = (length) => length === '0' ? 0 : Number(length.substring(0, length.length - 2));
const dimToCSS = (dim) => dim === 'initial' || dim === undefined ? dim : size.sizeToCSS(dim) || '0px';

exports.TrackResizeContainer = TrackResizeContainer;
//# sourceMappingURL=TrackResizeContainer-cd09fc87.js.map
