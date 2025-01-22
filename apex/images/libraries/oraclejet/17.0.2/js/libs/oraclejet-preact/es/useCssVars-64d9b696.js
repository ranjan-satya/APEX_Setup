/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { useRef, useState, useLayoutEffect } from 'preact/hooks';
import { u as useUser } from './useUser-99920e02.js';
import { u as useTheme } from './useTheme-1f6035d2.js';
import { u as useColorScheme } from './useColorScheme-e1b17324.js';
import { u as useScale } from './useScale-d64a1a28.js';

function getCssVarName(name) {
    const rxp = name.match(/var\((--[a-zA-Z_0-9\-]+)\)/);
    return rxp && rxp.length > 1 ? rxp[1] : '';
}
/**
 * Hook to resolve the css vars.
 * @param vars
 * @param classes
 * @returns
 */
function useCssVars(vars) {
    const cssDivRef = useRef(null);
    const [resolvedVars, setResolvedVars] = useState({});
    const { forcedColors } = useUser();
    const { name } = useTheme();
    const scale = useScale();
    const colorScheme = useColorScheme();
    // A css token var (eg, --tokenVar_123xyz) that is assigned to a css expression like min(25px, 5rem) resolves to
    // a string of the expression (resolved value) like "min(25px, 5rem)" and not absolute value (for eg 25px) (used value) when getComputedStyle is called.
    // We have to assign the token var to a valid css property(like width: var(--tokenVar_123xyz)) in order to get actual used value in
    // computed styles. https://developer.mozilla.org/en-US/docs/Web/CSS/used_value
    // build a style obj with valid css property to apply to div
    const style = vars.reduce((prev, current) => {
        if (current.cssProp) {
            prev[current.cssProp] = current.tokenVar;
        }
        return prev;
    }, {});
    const cssContent = jsx("div", { ref: cssDivRef, style: { display: 'none', ...style } });
    useLayoutEffect(() => {
        if (!cssDivRef.current) {
            return;
        }
        const computedStyle = window.getComputedStyle(cssDivRef.current);
        const resolved = {};
        vars.forEach((value) => {
            // use cssProp for token vars that resolve to expression
            const cssVar = value.cssProp || getCssVarName(value.tokenVar);
            resolved[value.key] = computedStyle.getPropertyValue(cssVar);
        });
        setResolvedVars(resolved);
    }, [forcedColors, name, colorScheme, scale, vars]);
    return {
        resolvedVars,
        cssContent
    };
}

export { useCssVars as u };
//# sourceMappingURL=useCssVars-64d9b696.js.map
