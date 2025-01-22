/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var LayerHost = require('./LayerHost-46e4d858.js');
require('preact/jsx-runtime');
require('preact/compat');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
function useScale() {
    return hooks.useContext(LayerHost.EnvironmentContext).scale;
}

exports.useScale = useScale;
//# sourceMappingURL=useScale-74bd6456.js.map
