import { ComponentThemeType, VariantOptions } from '../../UNSAFE_Theme';
type SplitMenuButtonVariants = typeof variants;
type SplitMenuButtonVariantOptions = VariantOptions<SplitMenuButtonVariants>;
type SplitMenuButtonStyles = typeof styles;
type SplitMenuButtonTheme = ComponentThemeType<SplitMenuButtonVariants, SplitMenuButtonStyles>;
/*******************
 * Style Variants
 *******************/
declare const variants: {
    readonly styleVariant: {
        readonly outlined: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        readonly solid: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        readonly callToAction: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
    };
};
declare const styles: {
    base: string;
    divider: string;
    disabledDivider: string;
    icon: string;
};
export type { SplitMenuButtonVariantOptions, SplitMenuButtonStyles, SplitMenuButtonTheme };
export { variants, styles };
