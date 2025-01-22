/* @oracle/oraclejet-preact: undefined */
'use strict';

var LayerHost = require('./LayerHost-46e4d858.js');
require('preact/jsx-runtime');
var hooks = require('preact/hooks');
require('preact/compat');

/**
 * Returns the set of attributes to be applied to the DOM node if the application's mode is not
 * set to "production".
 */
function useTestId(testId) {
    const context = hooks.useContext(LayerHost.EnvironmentContext);
    return context.mode === 'production' || testId === ''
        ? {}
        : {
            'data-testid': testId
        };
}

exports.useTestId = useTestId;
//# sourceMappingURL=useTestId-8234ec1e.js.map
