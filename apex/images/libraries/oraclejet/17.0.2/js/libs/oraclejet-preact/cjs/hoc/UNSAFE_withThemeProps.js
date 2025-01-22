/* @oracle/oraclejet-preact: undefined */
'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

var jsxRuntime = require('preact/jsx-runtime');
var preact = require('preact');
var compat = require('preact/compat');
require('../LayerHost-46e4d858.js');
var EnvironmentProvider = require('../EnvironmentProvider-42b2b998.js');
var Theme = require('../Theme-f06687af.js');
require('../Common/themes/redwood/theme.js');
require('../Common/themes/themeContract.css.js');
require('preact/hooks');
require('../LayerManager-fa20a462.js');

/**
 * Higher Order Component that allows you to wrap an existing component with an EnvironmentProvider
 * containing the desired colorScheme, scale, and density context. The returned component contains all the props
 * of the wrapped component with the addition of the `colorScheme`, `scale`, and `density` props.
 *
 * This should be used when nesting an alternate colorScheme (ie dark palette sub-form within a global light
 * palette). You can use this HOC instead of manually applying colorScheme classnames to DOM elements. This also
 * eliminates the need to add additional DOM wrapper elements.
 */
const withThemeProps = (WrappedComponent) => {
    const displayName = WrappedComponent.displayName || WrappedComponent.name || 'ComponentWithProvider';
    const ComponentWithProvider = compat.forwardRef(({ colorScheme, scale, density, ...props }, ref) => {
        // if no ref is supplied, create one
        const wrapRef = (ref || preact.createRef());
        compat.useEffect(() => {
            if (wrapRef.current) {
                const { classList } = wrapRef.current;
                if (!classList)
                    return;
                // dynamically apply the appropriate colorscheme classname to ref element
                if (colorScheme) {
                    const schemes = [
                        Theme.LIGHT_CLASS,
                        Theme.DARK_CLASS,
                        Theme.INVERT_CLASS,
                        Theme.COLORSCHEME_DEPENDENT_CLASS
                    ];
                    schemes.map((current) => classList.remove(current));
                    if (colorScheme === 'dark') {
                        classList.add(Theme.DARK_CLASS);
                        classList.add(Theme.INVERT_CLASS);
                    }
                    else {
                        classList.add(Theme.LIGHT_CLASS);
                    }
                    classList.add(Theme.COLORSCHEME_DEPENDENT_CLASS);
                }
                // dynamically apply the appropriate scale classname to ref element
                if (scale) {
                    const scales = [Theme.SCALE_SM_CLASS, Theme.SCALE_MD_CLASS, Theme.SCALE_LG_CLASS, Theme.SCALE_DEPENDENT_CLASS];
                    scales.map((current) => classList.remove(current));
                    classList.add(`${scale === 'sm' ? Theme.SCALE_SM_CLASS : scale === 'md' ? Theme.SCALE_MD_CLASS : Theme.SCALE_LG_CLASS}`);
                    classList.add(Theme.SCALE_DEPENDENT_CLASS);
                }
                // dynamically apply the appropriate density classname to ref element
                if (density) {
                    const densities = [
                        Theme.DENSITY_COMPACT_CLASS,
                        Theme.DENSITY_STANDARD_CLASS,
                        Theme.DENSITY_DEPENDENT_CLASS
                    ];
                    densities.map((current) => classList.remove(current));
                    classList.add(`${density === 'compact' ? Theme.DENSITY_COMPACT_CLASS : Theme.DENSITY_STANDARD_CLASS}`);
                    classList.add(Theme.DENSITY_DEPENDENT_CLASS);
                }
            }
        }, [wrapRef, colorScheme, scale, density]);
        // wrap component with new colorscheme context
        return (jsxRuntime.jsx(EnvironmentProvider.EnvironmentProvider, { environment: { colorScheme, scale, density }, children: jsxRuntime.jsx(WrappedComponent, { ...props, ref: wrapRef }) }));
    });
    ComponentWithProvider.displayName = `withThemeProps(${displayName})`;
    return ComponentWithProvider;
};

exports.withThemeProps = withThemeProps;
//# sourceMappingURL=UNSAFE_withThemeProps.js.map
