/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var TabbableModeContext = require('./TabbableModeContext-e99d527e.js');
var useId = require('./useId-6c0eeb27.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Utility hook for consuming the TabbableModeContext
 * @param isDisabled boolean flag to communicate disabled state of consumer
 * @param isRovable boolean flag for consumers to opt out of roving logic and the returned data attribute
 * @returns an object containing a boolean isTabbable value as well as the tabbableModeProps object that contains a tabIndex
 * along with other properties needed to support keyboard navigation.
 * In order to properly participate in keyboard navigation patterns (including roving tab index navigation),
 * consumers must spread the returned tabbableModeProps on the target tabbable element.
 */
function useTabbableMode(isDisabled, isRovable = true) {
    const { isTabbable, isRoving, focusedId } = hooks.useContext(TabbableModeContext.TabbableModeContext);
    const id = useId.useId();
    const isActive = isTabbable && !isDisabled;
    const tabbableModeProps = {
        tabIndex: isActive && (isRoving ? id === focusedId : true) ? 0 : -1,
        ...(isActive && isRoving && isRovable && { 'data-oj-roving-tabindex-item': id })
    };
    return {
        isTabbable,
        tabbableModeProps
    };
}

exports.useTabbableMode = useTabbableMode;
//# sourceMappingURL=useTabbableMode-5c8fd9e5.js.map
