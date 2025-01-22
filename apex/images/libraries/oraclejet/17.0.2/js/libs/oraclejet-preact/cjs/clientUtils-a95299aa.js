/* @oracle/oraclejet-preact: undefined */
'use strict';

var clientHints$1 = require('./clientHints-9e411b6e.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const clientHints = clientHints$1.getClientHints();
/**
 * Helper function to determine whether the current device is a mobile device
 * @returns true if runnning on a mobile device, false otherwise
 */
function isMobile() {
    const deviceType = clientHints.deviceType;
    return deviceType === 'phone' || deviceType === 'tablet';
}
/**
 * Helper function to determine whether the current device supports touch.
 */
function isTouch() {
    const touchSupport = clientHints.touchSupport;
    return touchSupport === 'primary';
}

exports.isMobile = isMobile;
exports.isTouch = isTouch;
//# sourceMappingURL=clientUtils-a95299aa.js.map
