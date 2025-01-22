/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var LayerHost = require('./LayerHost-46e4d858.js');
var hooks = require('preact/hooks');
var LayerManager = require('./LayerManager-fa20a462.js');

// Custom merge function
function mergeEnvironment(env1, env2) {
    const userValue = Object.assign({}, env1.user, env2?.user);
    const themeValue = Object.assign({}, env1.theme, env2?.theme);
    // Merge translation values - one level merge
    const targetTranslations = Object.assign({}, env1.translations);
    const sourceTranslations = env2?.translations || {};
    Object.keys(sourceTranslations).forEach((key) => {
        let newVal = sourceTranslations[key];
        if (targetTranslations[key]) {
            // merge is needed
            newVal = Object.assign({}, targetTranslations[key], newVal);
        }
        targetTranslations[key] = newVal;
    });
    return {
        user: userValue,
        theme: themeValue,
        translations: targetTranslations,
        colorScheme: env2?.colorScheme ?? env1.colorScheme,
        scale: env2?.scale ?? env1.scale,
        currentBgColor: env2?.currentBgColor ?? env1.currentBgColor,
        mode: env2?.mode ?? env1.mode,
        density: env2?.density ?? env1.density
    };
}
/**
 * The RootEnvironmentProvider component bootstraps essential services and
 * must be placed at the root of any application using components from '@oracle/oraclejet-preact'.
 * Minimally, the application must load the appropriate translation bundle for the user's locale
 * and set it on the RootEnvironmentProvider.
 */
function RootEnvironmentProvider({ children, environment }) {
    const mergedEnvironment = hooks.useMemo(() => mergeEnvironment(LayerHost.DefaultEnvironment, environment), [environment]);
    return (jsxRuntime.jsx(LayerHost.EnvironmentContext.Provider, { value: mergedEnvironment, children: jsxRuntime.jsx(LayerManager.LayerManager, { children: children }) }));
}
/**
 * The EnvironmentProvider is a component that should be used by the application when there is a need to overwrite
 * environment values for a subtree.
 * The component receives an Environment object that will be merged into the values provided by the nearest ancestor Provider.
 * The new environment will be passed to the component's children.
 * Note that some environment values cannot be overwritten. See the description of the Environment type for the list of values
 * that can be replaced.
 */
function EnvironmentProvider({ children, environment }) {
    const consumerEnv = hooks.useContext(LayerHost.EnvironmentContext);
    const mergedEnvironment = hooks.useMemo(() => mergeEnvironment(consumerEnv, environment), [consumerEnv, environment]);
    return (jsxRuntime.jsx(LayerHost.EnvironmentContext.Provider, { value: mergedEnvironment, children: children }));
}

exports.EnvironmentProvider = EnvironmentProvider;
exports.RootEnvironmentProvider = RootEnvironmentProvider;
//# sourceMappingURL=EnvironmentProvider-42b2b998.js.map
