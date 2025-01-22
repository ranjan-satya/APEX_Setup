/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var Text = require('./Text-aaacb6a0.js');
require('./TabbableModeContext-e99d527e.js');
var useTabbableMode = require('./useTabbableMode-5c8fd9e5.js');

const textVariants = {
    primary: 'primary',
    secondary: 'primary',
    tertiary: 'secondary',
    quaternary: 'secondary',
    overline: 'secondary',
    metadata: 'secondary'
};
const textSizes = {
    primary: 'md',
    secondary: 'sm',
    tertiary: 'xs',
    quaternary: 'sm',
    overline: 'xs',
    metadata: 'sm'
};
const textLineClamps = {
    primary: undefined,
    secondary: 2,
    tertiary: 2,
    quaternary: 2,
    overline: 1,
    metadata: 1
};
function ListItemText({ children, variant }) {
    const { isTabbable } = useTabbableMode.useTabbableMode();
    const textContent = (jsxRuntime.jsx(Text.Text, { variant: textVariants[variant], size: textSizes[variant], lineClamp: textLineClamps[variant], children: children }));
    return isTabbable ? jsxRuntime.jsx("div", { tabIndex: 0, children: textContent }) : textContent;
}

exports.ListItemText = ListItemText;
//# sourceMappingURL=ListItemText-4c20b365.js.map
