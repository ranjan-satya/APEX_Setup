import { ComponentThemeType, CompoundVariantStyles, VariantOptions } from '../../UNSAFE_Theme';
type TextVariants = typeof variants;
type TextVariantOptions = VariantOptions<TextVariants>;
type TextStyles = typeof styles;
type TextTheme = ComponentThemeType<TextVariants, TextStyles>;
declare const styles: {
    base: string;
    lineClamp: string;
};
/*******************
 * Style Variants
 *******************/
declare const variants: {
    readonly size: {
        readonly '2xs': {
            readonly fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly xs: {
            readonly fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly sm: {
            readonly fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly md: {
            readonly fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly lg: {
            readonly fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly xl: {
            readonly fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly inherit: {
            readonly fontSize: "inherit";
            readonly lineHeight: "inherit";
        };
    };
    readonly variant: {
        readonly primary: {
            readonly color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly secondary: {
            readonly color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly disabled: {
            readonly color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly danger: {
            readonly color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly warning: {
            readonly color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly success: {
            readonly color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly inherit: {
            readonly color: "inherit";
        };
    };
    readonly weight: {
        readonly normal: {
            readonly fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly semiBold: {
            readonly fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly bold: {
            readonly fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly inherit: {
            readonly fontWeight: "inherit";
        };
    };
    readonly hyphens: {
        readonly auto: {
            readonly hyphens: "auto";
        };
        readonly none: {
            readonly hyphens: "none";
        };
    };
    readonly truncation: {
        readonly none: "";
        readonly clip: {
            readonly textOverflow: "clip";
            readonly whiteSpace: "nowrap";
            readonly width: "100%";
            readonly display: "inline-block";
        };
        readonly ellipsis: {
            readonly textOverflow: "ellipsis";
            readonly whiteSpace: "nowrap";
            readonly width: "100%";
            readonly display: "inline-block";
        };
    };
    readonly overflowWrap: {
        readonly breakWord: {
            readonly overflowWrap: "break-word";
        };
        readonly normal: {
            readonly overflowWrap: "normal";
        };
        readonly anywhere: {};
    };
};
declare const compoundVariants: CompoundVariantStyles<TextVariantOptions>;
declare const multiVariantStyles: import("@vanilla-extract/recipes").RuntimeFn<{
    readonly size: {
        readonly '2xs': {
            readonly fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly xs: {
            readonly fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly sm: {
            readonly fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly md: {
            readonly fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly lg: {
            readonly fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly xl: {
            readonly fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly inherit: {
            readonly fontSize: "inherit";
            readonly lineHeight: "inherit";
        };
    };
    readonly variant: {
        readonly primary: {
            readonly color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly secondary: {
            readonly color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly disabled: {
            readonly color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly danger: {
            readonly color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly warning: {
            readonly color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly success: {
            readonly color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly inherit: {
            readonly color: "inherit";
        };
    };
    readonly weight: {
        readonly normal: {
            readonly fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly semiBold: {
            readonly fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly bold: {
            readonly fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly inherit: {
            readonly fontWeight: "inherit";
        };
    };
    readonly hyphens: {
        readonly auto: {
            readonly hyphens: "auto";
        };
        readonly none: {
            readonly hyphens: "none";
        };
    };
    readonly truncation: {
        readonly none: "";
        readonly clip: {
            readonly textOverflow: "clip";
            readonly whiteSpace: "nowrap";
            readonly width: "100%";
            readonly display: "inline-block";
        };
        readonly ellipsis: {
            readonly textOverflow: "ellipsis";
            readonly whiteSpace: "nowrap";
            readonly width: "100%";
            readonly display: "inline-block";
        };
    };
    readonly overflowWrap: {
        readonly breakWord: {
            readonly overflowWrap: "break-word";
        };
        readonly normal: {
            readonly overflowWrap: "normal";
        };
        readonly anywhere: {};
    };
}>;
export type { TextVariantOptions, TextStyles, TextTheme };
export { multiVariantStyles, variants, compoundVariants, styles };
