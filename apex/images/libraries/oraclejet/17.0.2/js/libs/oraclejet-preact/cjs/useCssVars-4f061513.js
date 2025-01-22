/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var hooks = require('preact/hooks');
var useUser = require('./useUser-a6d15333.js');
var useTheme = require('./useTheme-9b0dc066.js');
var useColorScheme = require('./useColorScheme-d2c4adcc.js');
var useScale = require('./useScale-74bd6456.js');

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
    const cssDivRef = hooks.useRef(null);
    const [resolvedVars, setResolvedVars] = hooks.useState({});
    const { forcedColors } = useUser.useUser();
    const { name } = useTheme.useTheme();
    const scale = useScale.useScale();
    const colorScheme = useColorScheme.useColorScheme();
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
    const cssContent = jsxRuntime.jsx("div", { ref: cssDivRef, style: { display: 'none', ...style } });
    hooks.useLayoutEffect(() => {
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

exports.useCssVars = useCssVars;
//# sourceMappingURL=useCssVars-4f061513.js.map
