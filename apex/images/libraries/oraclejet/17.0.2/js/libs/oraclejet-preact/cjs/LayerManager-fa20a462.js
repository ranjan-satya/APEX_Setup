/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var compat = require('preact/compat');
var LayerHost = require('./LayerHost-46e4d858.js');

function LayerManager({ children }) {
    const [defaultHost, setDefaultHost] = compat.useState();
    //const context = useContext(LayerContext);
    const defaultHostRef = compat.useCallback((el) => {
        // ref callbacks fire after the component has been unnmounted so we do not
        // want to set state in this use-case
        if (el !== null) {
            setDefaultHost(el);
        }
    }, []);
    return (jsxRuntime.jsx(LayerHost.LayerContext.Consumer, { children: (value) => {
            let defaultHostContext = {};
            if (defaultHost) {
                defaultHostContext = {
                    getRootLayerHost: () => {
                        return defaultHost;
                    },
                    getLayerHost: () => {
                        return defaultHost;
                    }
                };
            }
            const layerContext = value.getLayerHost ? value : defaultHostContext;
            return (jsxRuntime.jsxs(LayerHost.LayerContext.Provider, { value: layerContext, children: [children, !value.getLayerHost && jsxRuntime.jsx(LayerHost.LayerHost, { ref: defaultHostRef })] }));
        } }));
}

exports.LayerManager = LayerManager;
//# sourceMappingURL=LayerManager-fa20a462.js.map
