/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var PRIVATE_StyledDatePickerButton_themes_StyledDatePickerButtonStyles_css = require('./PRIVATE_StyledDatePickerButton/themes/StyledDatePickerButtonStyles.css.js');
var UNSAFE_BaseButton_themes_BaseButtonStyles_css = require('./UNSAFE_BaseButton/themes/BaseButtonStyles.css.js');
var classNames = require('./classNames-c14c6ef3.js');
var compat = require('preact/compat');

/**
 * StyledDatePickerButton is a controlled component that displays a stylized span for a button that goes into a DatePicker.
 */
const StyledDatePickerButton = compat.forwardRef(({ isActivable = false, isReadonly = false, isAdjacentMonth = false, isDimmed = false, isHidden = false, isHoverable = false, isRestricted = false, isSelected = false, isToday = false, tabIndex, label, variant, ...props }, ref = null) => {
    // The multiVariantStyles function is defined in StyledDatePickerButtonStyles.css.ts,
    // using the recipe utility provided by @vanilla-extract/recipes.
    // This function is used to merge the base styles, variants, and compound variants
    // into a single set of styles for components based on the component's properties.
    const variantClasses = PRIVATE_StyledDatePickerButton_themes_StyledDatePickerButtonStyles_css.multiVariantStyles({
        active: isActivable ? 'isActivable' : 'notActiveable',
        dimmed: isDimmed ? 'isDimmed' : 'notDimmed',
        hidden: isHidden ? 'isHidden' : 'notHidden',
        hover: isHoverable ? 'isHoverable' : 'notHoverable',
        adjacentMonth: isAdjacentMonth ? 'isAdjacentMonth' : 'notAdjacentMonth',
        restricted: isRestricted ? 'isRestricted' : 'notRestricted',
        selected: isSelected ? 'isSelected' : 'notSelected',
        today: isToday ? 'isToday' : 'notToday',
        variant
    });
    const classes = classNames.classNames([
        UNSAFE_BaseButton_themes_BaseButtonStyles_css.styles.base,
        UNSAFE_BaseButton_themes_BaseButtonStyles_css.styles.sizes.sm,
        UNSAFE_BaseButton_themes_BaseButtonStyles_css.styles.styled,
        variantClasses
    ]);
    return (jsxRuntime.jsx("span", { role: !isReadonly ? 'button' : undefined, class: classes, ref: ref, tabIndex: tabIndex, ...props, children: label }));
});

exports.StyledDatePickerButton = StyledDatePickerButton;
//# sourceMappingURL=StyledDatePickerButton-d6fb1f86.js.map
