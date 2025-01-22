import { ComponentThemeType, VariantOptions } from '../../UNSAFE_Theme';
type InsetVariant = typeof variants;
type InsetVariantOptions = VariantOptions<InsetVariant>;
type InsetStyles = typeof styles;
type InsetTheme = ComponentThemeType<InsetVariant, InsetStyles>;
declare const variants: {
    variantGroup: {
        listview: {
            paddingTop: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            paddingBottom: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            paddingLeft: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            paddingRight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        toolbar: {
            paddingTop: string;
            paddingBottom: string;
        };
    };
};
declare const styles: {
    insetBase: string;
};
declare const multiVariantStyles: import("@vanilla-extract/recipes").RuntimeFn<{
    variantGroup: {
        listview: {
            paddingTop: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            paddingBottom: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            paddingLeft: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            paddingRight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        toolbar: {
            paddingTop: string;
            paddingBottom: string;
        };
    };
}>;
export type { InsetStyles, InsetTheme, InsetVariantOptions };
export { variants, styles, multiVariantStyles };
