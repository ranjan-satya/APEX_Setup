import { ComponentThemeType, CompoundVariantStyles, VariantOptions } from "../../UNSAFE_Theme";
type CheckboxIconVariants = typeof variants;
type CheckboxIconVariantOptions = VariantOptions<CheckboxIconVariants>;
type CheckboxIconStyles = typeof styles;
type CheckboxIconTheme = ComponentThemeType<CheckboxIconVariants, CheckboxIconStyles>;
/*******************
 * Style Variants
 *******************/
declare const variants: {
    readonly disabled: {
        readonly isDisabled: "";
        readonly notDisabled: "";
    };
    readonly checked: {
        readonly isChecked: "";
        readonly notChecked: "";
    };
    readonly readonly: {
        readonly isReadonly: "";
        readonly notReadonly: "";
    };
    readonly active: {
        readonly isActive: "";
        readonly notActive: "";
    };
    readonly focus: {
        readonly isFocused: string;
        readonly notFocused: "";
    };
    readonly iconSize: {
        readonly '4xUnits': {
            readonly vars: {
                readonly [x: string]: string;
            };
        };
    };
};
declare const compoundVariants: CompoundVariantStyles<CheckboxIconVariantOptions>;
declare const styles: {
    base: string;
};
export type { CheckboxIconVariantOptions, CheckboxIconStyles, CheckboxIconTheme };
export { styles, compoundVariants, variants };
