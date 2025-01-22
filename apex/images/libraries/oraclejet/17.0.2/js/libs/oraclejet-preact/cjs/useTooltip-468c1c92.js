/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var useTooltipControlled = require('./useTooltipControlled-706a3651.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const defaultOffset = 8; // Redwood tooltip has a default offset of 8 pixels
/**
 * A hook with tooltip implementation.
 * Returns event handlers that can enhance the target element with a tooltip displayed
 * on hover and focus.
 *
 * @param text tooltip text
 * @param position tooltip placement relative to the target element
 * @param isDisabled determines if the tooltip is disabled
 * @param anchor determines if the target is an element or the pointer
 * @param offset offset from the placement
 * @param variant specifies if the rendered popup should have 'tooltip' or 'datatip' look and behavior
 * @returns an object with the 'tooltipContent' and 'tooltipProps' properties.
 */
const useTooltip = ({ text, position = 'bottom', isDisabled = false, anchor = { x: 'element', y: 'element' }, offset, variant = 'tooltip', testId }) => {
    const [isOpen, setIsOpen] = hooks.useState(false);
    const disabled = isDisabled || !text;
    const newOffset = offset ? offset : { mainAxis: defaultOffset, crossAxis: 0 };
    const onToggleHandler = hooks.useCallback((details) => {
        setIsOpen(details.value);
    }, []);
    const { tooltipContent, tooltipProps } = useTooltipControlled.useTooltipControlled({
        text,
        isOpen,
        position,
        isDisabled: disabled,
        offset: newOffset,
        anchor,
        variant,
        onToggle: onToggleHandler,
        testId
    });
    return {
        tooltipContent,
        tooltipProps
    };
};

exports.useTooltip = useTooltip;
//# sourceMappingURL=useTooltip-468c1c92.js.map
