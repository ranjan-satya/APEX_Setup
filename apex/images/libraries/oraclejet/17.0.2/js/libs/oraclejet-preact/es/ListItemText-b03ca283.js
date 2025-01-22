/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { T as Text } from './Text-da8588ce.js';
import './TabbableModeContext-7d8ad946.js';
import { u as useTabbableMode } from './useTabbableMode-a3a351d0.js';

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
    const { isTabbable } = useTabbableMode();
    const textContent = (jsx(Text, { variant: textVariants[variant], size: textSizes[variant], lineClamp: textLineClamps[variant], children: children }));
    return isTabbable ? jsx("div", { tabIndex: 0, children: textContent }) : textContent;
}

export { ListItemText as L };
//# sourceMappingURL=ListItemText-b03ca283.js.map
