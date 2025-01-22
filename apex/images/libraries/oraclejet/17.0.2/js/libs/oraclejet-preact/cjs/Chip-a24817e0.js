/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var useActionable = require('./useActionable-c6f17f0f.js');
var hooks = require('preact/hooks');
require('./TabbableModeContext-e99d527e.js');
var useTabbableMode = require('./useTabbableMode-5c8fd9e5.js');
var UNSAFE_Chip_themes_ChipStyles_css = require('./UNSAFE_Chip/themes/ChipStyles.css.js');
var useInteractionStyle = require('./useInteractionStyle-442c6a12.js');
var mergeProps = require('./mergeProps-e3da7237.js');
var useTestId = require('./useTestId-8234ec1e.js');

function Chip({ isSelected, isDisabled, 'aria-label': accessibleLabel, children, testId, onToggle }) {
    const handleAction = hooks.useCallback(() => {
        onToggle?.({ previousValue: isSelected, value: !isSelected });
    }, [isSelected, onToggle]);
    const { actionableProps } = useActionable.useActionable(handleAction);
    const { interactionProps, applyActiveStyle, applyHoverStyle, applyPseudoHoverStyle } = useInteractionStyle.useInteractionStyle();
    const mergedProps = mergeProps.mergeProps(actionableProps, interactionProps);
    const classes = UNSAFE_Chip_themes_ChipStyles_css.multiVariantStyles({
        disabled: isDisabled ? 'isDisabled' : 'notDisabled',
        hover: applyHoverStyle && !isDisabled && !isSelected ? 'isHover' : 'notHover',
        pseudoHover: applyPseudoHoverStyle && !isDisabled && !isSelected ? 'isPseudoHover' : 'notPseudoHover',
        active: isSelected || applyActiveStyle ? 'isActive' : 'notActive'
    });
    const { isTabbable } = useTabbableMode.useTabbableMode();
    const testIdProps = useTestId.useTestId(testId);
    return isDisabled ? (jsxRuntime.jsx("div", { class: classes, ...testIdProps, children: children })) : (jsxRuntime.jsx("div", { ...mergedProps, class: classes, ...testIdProps, tabIndex: isTabbable ? 0 : -1, "aria-label": accessibleLabel, role: "switch", "aria-checked": isSelected ? 'true' : 'false', children: children }));
}

exports.Chip = Chip;
//# sourceMappingURL=Chip-a24817e0.js.map
