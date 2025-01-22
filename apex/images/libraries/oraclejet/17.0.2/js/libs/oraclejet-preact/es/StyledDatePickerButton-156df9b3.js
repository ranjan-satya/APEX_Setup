/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { multiVariantStyles } from './PRIVATE_StyledDatePickerButton/themes/StyledDatePickerButtonStyles.css.js';
import { styles } from './UNSAFE_BaseButton/themes/BaseButtonStyles.css.js';
import { c as classNames } from './classNames-4e12b00d.js';
import { forwardRef } from 'preact/compat';

/**
 * StyledDatePickerButton is a controlled component that displays a stylized span for a button that goes into a DatePicker.
 */
const StyledDatePickerButton = forwardRef(({ isActivable = false, isReadonly = false, isAdjacentMonth = false, isDimmed = false, isHidden = false, isHoverable = false, isRestricted = false, isSelected = false, isToday = false, tabIndex, label, variant, ...props }, ref = null) => {
    // The multiVariantStyles function is defined in StyledDatePickerButtonStyles.css.ts,
    // using the recipe utility provided by @vanilla-extract/recipes.
    // This function is used to merge the base styles, variants, and compound variants
    // into a single set of styles for components based on the component's properties.
    const variantClasses = multiVariantStyles({
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
    const classes = classNames([
        styles.base,
        styles.sizes.sm,
        styles.styled,
        variantClasses
    ]);
    return (jsx("span", { role: !isReadonly ? 'button' : undefined, class: classes, ref: ref, tabIndex: tabIndex, ...props, children: label }));
});

export { StyledDatePickerButton as S };
//# sourceMappingURL=StyledDatePickerButton-156df9b3.js.map
