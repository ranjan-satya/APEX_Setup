/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { createRef } from 'preact';
import { forwardRef, useEffect } from 'preact/compat';
import '../LayerHost-45f545d7.js';
import { E as EnvironmentProvider } from '../EnvironmentProvider-f543a463.js';
import { D as DARK_CLASS, I as INVERT_CLASS, L as LIGHT_CLASS, C as COLORSCHEME_DEPENDENT_CLASS, S as SCALE_SM_CLASS, a as SCALE_MD_CLASS, b as SCALE_LG_CLASS, c as SCALE_DEPENDENT_CLASS, d as DENSITY_COMPACT_CLASS, e as DENSITY_STANDARD_CLASS, f as DENSITY_DEPENDENT_CLASS } from '../Theme-e6dec6db.js';
import '../Common/themes/redwood/theme.js';
import '../Common/themes/themeContract.css.js';
import 'preact/hooks';
import '../LayerManager-625d2503.js';

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
    const ComponentWithProvider = forwardRef(({ colorScheme, scale, density, ...props }, ref) => {
        // if no ref is supplied, create one
        const wrapRef = (ref || createRef());
        useEffect(() => {
            if (wrapRef.current) {
                const { classList } = wrapRef.current;
                if (!classList)
                    return;
                // dynamically apply the appropriate colorscheme classname to ref element
                if (colorScheme) {
                    const schemes = [
                        LIGHT_CLASS,
                        DARK_CLASS,
                        INVERT_CLASS,
                        COLORSCHEME_DEPENDENT_CLASS
                    ];
                    schemes.map((current) => classList.remove(current));
                    if (colorScheme === 'dark') {
                        classList.add(DARK_CLASS);
                        classList.add(INVERT_CLASS);
                    }
                    else {
                        classList.add(LIGHT_CLASS);
                    }
                    classList.add(COLORSCHEME_DEPENDENT_CLASS);
                }
                // dynamically apply the appropriate scale classname to ref element
                if (scale) {
                    const scales = [SCALE_SM_CLASS, SCALE_MD_CLASS, SCALE_LG_CLASS, SCALE_DEPENDENT_CLASS];
                    scales.map((current) => classList.remove(current));
                    classList.add(`${scale === 'sm' ? SCALE_SM_CLASS : scale === 'md' ? SCALE_MD_CLASS : SCALE_LG_CLASS}`);
                    classList.add(SCALE_DEPENDENT_CLASS);
                }
                // dynamically apply the appropriate density classname to ref element
                if (density) {
                    const densities = [
                        DENSITY_COMPACT_CLASS,
                        DENSITY_STANDARD_CLASS,
                        DENSITY_DEPENDENT_CLASS
                    ];
                    densities.map((current) => classList.remove(current));
                    classList.add(`${density === 'compact' ? DENSITY_COMPACT_CLASS : DENSITY_STANDARD_CLASS}`);
                    classList.add(DENSITY_DEPENDENT_CLASS);
                }
            }
        }, [wrapRef, colorScheme, scale, density]);
        // wrap component with new colorscheme context
        return (jsx(EnvironmentProvider, { environment: { colorScheme, scale, density }, children: jsx(WrappedComponent, { ...props, ref: wrapRef }) }));
    });
    ComponentWithProvider.displayName = `withThemeProps(${displayName})`;
    return ComponentWithProvider;
};

export { withThemeProps };
//# sourceMappingURL=UNSAFE_withThemeProps.js.map
