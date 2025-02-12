import { ComponentThemeType, VariantOptions } from '../../UNSAFE_Theme';
type ProgressBarVariants = typeof variants;
type ProgressBarVariantOptions = VariantOptions<ProgressBarVariants>;
type ProgressBarStyles = typeof styles;
type ProgressBarTheme = ComponentThemeType<ProgressBarVariants, ProgressBarStyles>;
declare const base: string;
/*******************
 * Style Variants
 *******************/
declare const variants: {
    readonly edge: {
        readonly none: {
            borderRadius: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
};
declare const styles: {
    valueStyle: string;
    indeterminate: string;
    trackBorderEdgeNone: string;
    trackBorderEdgeTop: string;
    animationStyleRTL: string;
    animationStyleLTR: string;
    highContrastValueStyle: string;
};
export type { ProgressBarVariantOptions, ProgressBarStyles, ProgressBarTheme };
export { variants, base, styles };
