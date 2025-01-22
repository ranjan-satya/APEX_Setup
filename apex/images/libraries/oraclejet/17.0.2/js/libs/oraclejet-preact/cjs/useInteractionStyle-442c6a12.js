/* @oracle/oraclejet-preact: undefined */
'use strict';

var mergeProps = require('./mergeProps-e3da7237.js');
var clientHints = require('./clientHints-9e411b6e.js');
var useHover = require('./useHover-910b8e32.js');
var useActive = require('./useActive-b15c9e7e.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const useInteractionStyle = (isDisabled = false) => {
    const hints = clientHints.getClientHints();
    // :active only works on IOS devices if a touch handler exists
    const iosProps = hints.platform === 'ios' ? { ontouchstart: function () { } } : {};
    const isHybrid = hints.hoverSupport === 'events';
    // hook props and state
    const { activeProps, isActive } = useActive.useActive();
    const { hoverProps, isHover } = useHover.useHover({ isDisabled: !isHybrid });
    // apply hover styling to element on a device that does not have hoverSupport
    // events and is not active or disabled
    const applyPseudoHoverStyle = !isHybrid && !isActive && !isDisabled;
    // apply hover styling to element on a device that has hoverSupport events
    // and is not active or disabled
    const applyHoverStyle = isHybrid && isHover && !isActive && !isDisabled;
    // apply active style when element is active and not disabled
    const applyActiveStyle = isActive && !isDisabled;
    // merge all props
    const interactionProps = mergeProps.mergeProps(iosProps, activeProps, hoverProps);
    // in the event a component wants to conditionally use base props or hook state,
    // baseProps, and baseStates are returned
    return {
        interactionProps,
        baseProps: {
            iosProps,
            activeProps,
            hoverProps
        },
        applyPseudoHoverStyle,
        applyHoverStyle,
        applyActiveStyle,
        baseStates: {
            isActive,
            isHover
        }
    };
};

exports.useInteractionStyle = useInteractionStyle;
//# sourceMappingURL=useInteractionStyle-442c6a12.js.map
