/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var Flex = require('./Flex-fbba4ad6.js');

/**
 * Center is a convenience component that creates a flexbox
 * with justifyContent: center and alignItems: center.
 *
 */
// TODO: How do I add background-color, border, etc?
function Center({ children, width = '100%', height = '100%', ...props }) {
    return (jsxRuntime.jsx(Flex.Flex, { ...props, justify: "center", align: "center", width: width, height: height, children: children }));
}

exports.Center = Center;
//# sourceMappingURL=Center-dce9d477.js.map
