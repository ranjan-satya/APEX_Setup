/* @oracle/oraclejet-preact: undefined */
'use strict';

var clientHints = require('./clientHints-9e411b6e.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const clientPlatform = clientHints.getClientHints().platform;
const ARIA_LABEL_STATE_DELIMITER = ', ';
const ARIA_LABEL_DESC_DELIMITER = '. ';
const supportsMobileScreenReader = clientPlatform === 'android' || clientPlatform === 'ios';
/**
 * Produces an aria label by combining a given aria label and states.
 * @param translations The translations bundle.
 * @param accessibleLabel The accessible label.
 * @param states The states.
 * @returns Final aria label.
 */
const generateAriaLabel = (translations, accessibleLabel, states) => {
    const stateStrings = [
        states.isSelected === undefined
            ? ''
            : states.isSelected
                ? translations.vis_stateSelected()
                : translations.vis_stateUnselected(),
        states.isDrillable ? translations.vis_drillable() : ''
    ];
    return [accessibleLabel, stateStrings.filter(Boolean).join(ARIA_LABEL_STATE_DELIMITER)]
        .filter(Boolean)
        .join(ARIA_LABEL_DESC_DELIMITER);
};

exports.generateAriaLabel = generateAriaLabel;
exports.supportsMobileScreenReader = supportsMobileScreenReader;
//# sourceMappingURL=accUtils-50f26093.js.map
