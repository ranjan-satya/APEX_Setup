import { ComponentThemeType, VariantOptions, CompoundVariantStyles } from '../../UNSAFE_Theme';
type ButtonLabelLayoutVariants = typeof variants;
type ButtonLabelLayoutVariantOptions = VariantOptions<ButtonLabelLayoutVariants>;
type ButtonLabelLayoutStyles = typeof styles;
type ButtonLabelLayoutTheme = ComponentThemeType<ButtonLabelLayoutVariants, ButtonLabelLayoutStyles>;
/*******************
 * Style Variants
 *******************/
declare const variants: {
    readonly size: {
        readonly xs: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        readonly sm: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        readonly md: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        readonly lg: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        readonly embeddedxs: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        readonly embeddedsm: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        readonly embeddedmd: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        readonly embeddedlg: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
    };
    readonly onlyIcon: {
        readonly isOnlyIcon: "";
        readonly notOnlyIcon: "";
    };
    readonly fill: {
        readonly isFill: string;
        readonly notFill: "";
    };
    readonly twoIcons: {
        readonly hasTwoIcons: "";
        readonly notTwoIcons: "";
    };
    readonly twoIconsOnly: {
        readonly isTwoIconsOnly: "";
        readonly notTwoIconsOnly: "";
    };
    readonly textStartIcon: {
        readonly hasTextStartIcon: "";
        readonly notTextStartIcon: "";
    };
    readonly suffix: {
        readonly hasSuffix: "";
        readonly notSuffix: "";
    };
    readonly textEndIcon: {
        readonly hasTextEndIcon: "";
        readonly notTextEndIcon: "";
    };
    readonly target: {
        readonly startIcon: string;
        readonly label: string;
        readonly suffix: string;
        readonly endIcon: string;
    };
};
declare const compoundVariants: CompoundVariantStyles<ButtonLabelLayoutVariantOptions>;
declare const styles: {
    base: string;
    text: string;
    suffix: string;
    icon: string;
    fill: string;
    fillText: string;
    startText: string;
    endText: string;
    startIcon: string;
    endIcon: string;
    startIconWhenBothIconsOnly: string;
    container: string;
};
export type { ButtonLabelLayoutVariantOptions, ButtonLabelLayoutStyles, ButtonLabelLayoutTheme };
export { variants, compoundVariants, styles };
