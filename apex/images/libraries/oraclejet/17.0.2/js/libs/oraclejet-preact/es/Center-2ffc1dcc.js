/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { F as Flex } from './Flex-24628925.js';

/**
 * Center is a convenience component that creates a flexbox
 * with justifyContent: center and alignItems: center.
 *
 */
// TODO: How do I add background-color, border, etc?
function Center({ children, width = '100%', height = '100%', ...props }) {
    return (jsx(Flex, { ...props, justify: "center", align: "center", width: width, height: height, children: children }));
}

export { Center as C };
//# sourceMappingURL=Center-2ffc1dcc.js.map
