/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { E as EnvironmentContext, D as DefaultEnvironment } from './LayerHost-45f545d7.js';
import { useMemo, useContext } from 'preact/hooks';
import { L as LayerManager } from './LayerManager-625d2503.js';

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
    const mergedEnvironment = useMemo(() => mergeEnvironment(DefaultEnvironment, environment), [environment]);
    return (jsx(EnvironmentContext.Provider, { value: mergedEnvironment, children: jsx(LayerManager, { children: children }) }));
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
    const consumerEnv = useContext(EnvironmentContext);
    const mergedEnvironment = useMemo(() => mergeEnvironment(consumerEnv, environment), [consumerEnv, environment]);
    return (jsx(EnvironmentContext.Provider, { value: mergedEnvironment, children: children }));
}

export { EnvironmentProvider as E, RootEnvironmentProvider as R };
//# sourceMappingURL=EnvironmentProvider-f543a463.js.map
