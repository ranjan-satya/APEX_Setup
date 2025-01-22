/* @oracle/oraclejet-preact: undefined */
import { useState, useCallback } from 'preact/hooks';
import { u as useResizeObserver } from './useResizeObserver-260ee12b.js';

const useSize = (ref, options = { box: 'content-box' }) => {
    const [size, setSize] = useState();
    useResizeObserver(ref, useCallback((entry) => {
        const boxSize = options.box === 'border-box' ? entry.borderBoxSize : entry.contentBoxSize;
        const newWidth = boxSize[0].inlineSize;
        const newHeight = boxSize[0].blockSize;
        setSize({ width: newWidth, height: newHeight });
    }, [options]), options);
    return size;
};

export { useSize as u };
//# sourceMappingURL=useSize-b08223d4.js.map
