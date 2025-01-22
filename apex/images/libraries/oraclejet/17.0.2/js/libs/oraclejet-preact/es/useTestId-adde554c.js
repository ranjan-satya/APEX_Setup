/* @oracle/oraclejet-preact: undefined */
import { E as EnvironmentContext } from './LayerHost-45f545d7.js';
import 'preact/jsx-runtime';
import { useContext } from 'preact/hooks';
import 'preact/compat';

/**
 * Returns the set of attributes to be applied to the DOM node if the application's mode is not
 * set to "production".
 */
function useTestId(testId) {
    const context = useContext(EnvironmentContext);
    return context.mode === 'production' || testId === ''
        ? {}
        : {
            'data-testid': testId
        };
}

export { useTestId as u };
//# sourceMappingURL=useTestId-adde554c.js.map
