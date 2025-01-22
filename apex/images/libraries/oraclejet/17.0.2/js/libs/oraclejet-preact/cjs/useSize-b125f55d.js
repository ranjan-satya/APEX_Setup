/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var useResizeObserver = require('./useResizeObserver-819b1236.js');

const useSize = (ref, options = { box: 'content-box' }) => {
    const [size, setSize] = hooks.useState();
    useResizeObserver.useResizeObserver(ref, hooks.useCallback((entry) => {
        const boxSize = options.box === 'border-box' ? entry.borderBoxSize : entry.contentBoxSize;
        const newWidth = boxSize[0].inlineSize;
        const newHeight = boxSize[0].blockSize;
        setSize({ width: newWidth, height: newHeight });
    }, [options]), options);
    return size;
};

exports.useSize = useSize;
//# sourceMappingURL=useSize-b125f55d.js.map
