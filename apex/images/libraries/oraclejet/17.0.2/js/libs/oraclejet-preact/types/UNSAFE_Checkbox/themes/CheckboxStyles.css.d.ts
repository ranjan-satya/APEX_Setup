import { ComponentThemeType, VariantOptions } from "../../UNSAFE_Theme";
type CheckboxVariants = typeof variants;
type CheckboxVariantOptions = VariantOptions<CheckboxVariants>;
type CheckboxStyles = typeof styles;
type CheckboxTheme = ComponentThemeType<CheckboxVariants, CheckboxStyles>;
/*******************
 * Component Styles
 *******************/
declare const checkboxBaseStyle: string;
declare const valueLabelStyle: string;
/*******************
 * Style Variants
 *******************/
declare const variants: {
    readonly disabled: {
        readonly isDisabled: {
            color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly notDisabled: {
            color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    readonly focused: {
        readonly isFocused: {
            '@supports': {
                'selector(:has(*))': {
                    selectors: {
                        '&:has(input:focus-visible)': {
                            outlineStyle: string;
                            outlineWidth: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                            outlineColor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                        };
                    };
                };
                'not selector(:has(*))': {
                    outlineStyle: string;
                    outlineWidth: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                    outlineColor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                };
            };
        };
        readonly notFocused: "";
    };
};
declare const styles: {
    checkboxBaseStyle: string;
    checkboxSpanStyle: string;
    valueLabelStyle: string;
};
export type { CheckboxVariantOptions, CheckboxStyles, CheckboxTheme };
export { checkboxBaseStyle, valueLabelStyle, styles, variants };
