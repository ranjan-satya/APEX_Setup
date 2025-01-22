declare const multiVariantStyles: import("@vanilla-extract/recipes").RuntimeFn<{
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
}>;
export { multiVariantStyles };
