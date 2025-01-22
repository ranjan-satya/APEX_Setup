/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { useRef } from 'preact/hooks';
import { u as useSize } from './useSize-b08223d4.js';
import { s as sizeToCSS } from './size-782ed57a.js';

const TrackResizeContainer = ({ children, width: w, height: h, class: className }) => {
    const width = dimToCSS(w);
    const height = dimToCSS(h);
    const content = width && height && isFixedLength(width) && isFixedLength(height) ? (jsx("div", { style: { width, height }, class: className, children: children(fixedLengthToNumber(width), fixedLengthToNumber(height)) })) : (jsx(TrackResizeOnContainer, { width: width, height: height, class: className, children: children }));
    return content;
};
const TrackResizeOnContainer = ({ children, width, height, class: className }) => {
    const ref = useRef(null);
    const optionsRef = useRef({ box: 'border-box' });
    const size = useSize(ref, optionsRef.current);
    return (jsx("div", { ref: ref, style: { width, height }, class: className, children: size && children(size.width, size.height) }));
};
const isFixedLength = (length) => length.endsWith('px') || length === '0';
const fixedLengthToNumber = (length) => length === '0' ? 0 : Number(length.substring(0, length.length - 2));
const dimToCSS = (dim) => dim === 'initial' || dim === undefined ? dim : sizeToCSS(dim) || '0px';

export { TrackResizeContainer as T };
//# sourceMappingURL=TrackResizeContainer-8360f2c2.js.map
