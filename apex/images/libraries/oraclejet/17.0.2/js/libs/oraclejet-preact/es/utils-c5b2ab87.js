/* @oracle/oraclejet-preact: undefined */
import { colorSchemeVars } from './Common/themes/themeContract.css.js';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Returns the color of the threshold.
 * @param color The color provided via prop of the visualization component.
 * @returns The color of the threshold.
 */
function getVisThresholdColor(color) {
    const colorAsString = color;
    if (colorAsString === 'danger' || colorAsString === 'warning' || colorAsString === 'success') {
        return colorSchemeVars.dvt.threshold[colorAsString];
    }
    return color;
}

export { getVisThresholdColor as g };
//# sourceMappingURL=utils-c5b2ab87.js.map
