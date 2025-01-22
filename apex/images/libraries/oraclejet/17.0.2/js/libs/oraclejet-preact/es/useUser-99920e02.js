/* @oracle/oraclejet-preact: undefined */
import { useContext } from 'preact/hooks';
import { E as EnvironmentContext } from './LayerHost-45f545d7.js';
import 'preact/jsx-runtime';
import 'preact/compat';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
function useUser() {
    return useContext(EnvironmentContext).user;
}

export { useUser as u };
//# sourceMappingURL=useUser-99920e02.js.map
