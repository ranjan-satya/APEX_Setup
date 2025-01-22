import { ComponentThemeType, VariantOptions, CompoundVariantStyles } from '../../UNSAFE_Theme';
type BaseButtonVariants = typeof variants;
type BaseButtonVariantOptions = VariantOptions<BaseButtonVariants>;
type BaseButtonStyles = typeof styles;
type BaseButtonTheme = ComponentThemeType<BaseButtonVariants, BaseButtonStyles>;
declare const styles: {
    base: string;
    styled: string;
    outline: string;
    min: string;
    fill: string;
    spanOnly: string;
    embedded: string;
    noBorderStart: string;
    noBorderEnd: string;
    noBorderStartButtonset: string;
    noBorderEndButtonset: string;
    unselectedBorderEnd: string;
    unselectedBorderStart: string;
    noBorderRadiusStart: string;
    noBorderRadiusEnd: string;
    inputLabel: string;
    widthEqual: string;
    widthAuto: string;
    bottom: string;
    variants: {
        outlined: {
            base: string;
            disabled: string;
            hover: string;
            active: string;
            selected: string;
            selectedDisabled: string;
            pseudohover: string;
            pseudohoverSelected: string;
            pseudohoverSpan: string;
            pseudohoverSpanSelected: string;
            container: string;
            buttonSetItem: string;
            buttonSetItemSelected: string;
            buttonSetItemDisabled: string;
        };
        callToAction: {
            base: string;
            disabled: string;
            hover: string;
            active: string;
            pseudohover: string;
            pseudohoverSpan: string;
            container: string;
        };
        borderless: {
            base: string;
            disabled: string;
            hover: string;
            active: string;
            selected: string;
            selectedDisabled: string;
            pseudohover: string;
            pseudohoverSelected: string;
            pseudohoverSpan: string;
            pseudohoverSpanSelected: string;
            container: string;
            buttonSetItem: string;
        };
        ghost: {
            base: string;
            disabled: string;
            hover: string;
            active: string;
            pseudohover: string;
            pseudohoverSpan: string;
            container: string;
        };
        solid: {
            base: string;
            disabled: string;
            hover: string;
            active: string;
            pseudohover: string;
            pseudohoverSpan: string;
            container: string;
        };
        danger: {
            base: string;
            disabled: string;
            hover: string;
            active: string;
            pseudohover: string;
            pseudohoverSpan: string;
            container: string;
        };
    };
    sizes: {
        xs: string;
        sm: string;
        md: string;
        lg: string;
    };
    labelSizes: {
        xs: string;
        sm: string;
        md: string;
        lg: string;
    };
};
/*******************
 * Style Variants
 *******************/
declare const variants: {
    readonly size: {
        readonly xs: string;
        readonly sm: string;
        readonly md: string;
        readonly lg: string;
    };
    readonly variant: {
        readonly ghost: string;
        readonly borderless: string;
        readonly outlined: string;
        readonly solid: string;
        readonly callToAction: string;
        readonly danger: string;
    };
    readonly disabled: {
        readonly isDisabled: "";
        readonly notDisabled: "";
    };
    readonly unstyled: {
        readonly isUnstyled: "";
        readonly notUnstyled: string;
    };
    readonly embedded: {
        readonly isEmbedded: string;
        readonly notEmbedded: "";
    };
    readonly container: {
        readonly isContainer: "";
        readonly notContainer: "";
    };
    readonly trailingItem: {
        readonly isTrailingItem: "";
        readonly notTrailingItem: "";
    };
    readonly noBorderStart: {
        readonly isNoBorderStart: "";
        readonly notNoBorderStart: "";
    };
    readonly noBorderEnd: {
        readonly isNoBorderEnd: "";
        readonly notNoBorderEnd: "";
    };
    readonly noBorderStartButtonset: {
        readonly isNoBorderStartButtonset: "";
        readonly notNoBorderStartButtonset: "";
    };
    readonly noBorderEndButtonset: {
        readonly isNoBorderEndButtonset: "";
        readonly notNoBorderEndButtonset: "";
    };
    readonly noBorderRadiusStart: {
        readonly isNoBorderRadiusStart: string;
        readonly notNoBorderRadiusStart: "";
    };
    readonly noBorderRadiusEnd: {
        readonly isNoBorderRadiusEnd: string;
        readonly notNoBorderRadiusEnd: "";
    };
    readonly activeStyle: {
        readonly isActiveStyle: "";
        readonly notActiveStyle: "";
    };
    readonly selectedStyle: {
        readonly isSelectedStyle: "";
        readonly notSelectedStyle: "";
    };
    readonly buttonSetItem: {
        readonly isButtonSetItem: "";
        readonly notButtonSetItem: "";
    };
    readonly fill: {
        readonly isFill: string;
        readonly notFill: "";
    };
    readonly min: {
        readonly isMin: string;
        readonly notMin: "";
    };
    readonly edge: {
        readonly bottom: string;
        readonly none: "";
    };
    readonly active: {
        readonly isActive: "";
        readonly notActive: "";
    };
    readonly hover: {
        readonly isHover: "";
        readonly notHover: "";
    };
    readonly span: {
        readonly isSpan: string;
        readonly notSpan: "";
    };
    readonly hybrid: {
        readonly isHybrid: "";
        readonly notHybrid: "";
    };
    readonly colorScheme: {
        readonly light: "";
        readonly dark: "";
    };
    readonly widthEqual: {
        readonly isWidthEqual: string;
        readonly notWidthEqual: "";
    };
    readonly widthAuto: {
        readonly isWidthAuto: string;
        readonly notWidthAuto: "";
    };
};
declare const compoundVariants: CompoundVariantStyles<BaseButtonVariantOptions>;
export type { BaseButtonVariantOptions, BaseButtonStyles, BaseButtonTheme };
export { variants, compoundVariants, styles };
