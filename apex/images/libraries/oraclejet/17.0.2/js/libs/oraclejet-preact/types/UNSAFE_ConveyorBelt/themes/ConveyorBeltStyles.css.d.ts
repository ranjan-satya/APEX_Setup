import { ComponentThemeType, VariantOptions, CompoundVariantStyles } from '../../UNSAFE_Theme';
type ConveyorBeltStyles = typeof styles;
type ConveyorBeltVariants = typeof variants;
type ConveyorBeltVariantOptions = VariantOptions<ConveyorBeltVariants>;
type ConveyorBeltTheme = ComponentThemeType<ConveyorBeltVariants, ConveyorBeltStyles>;
declare const baseStyle: string;
declare const variants: {
    readonly orientation: {
        readonly horizontal: {
            readonly vars: {
                readonly [x: string]: "flex";
            };
        };
        readonly vertical: {
            readonly vars: {
                readonly [x: string]: "inline-flex";
            };
            readonly flexDirection: "column";
        };
    };
    readonly content: {
        readonly horizontal: {
            readonly height: "100%";
        };
        readonly vertical: {
            readonly height: "auto";
        };
    };
    readonly overflow: {
        readonly horizontal: {
            readonly overflowX: "scroll";
            readonly overflowY: "hidden";
        };
        readonly vertical: {
            readonly overflowX: "hidden";
            readonly overflowY: "scroll";
        };
    };
    readonly direction: {
        readonly rtl: "";
        readonly ltr: "";
    };
    readonly previousButton: {
        readonly horizontal: "";
        readonly vertical: string;
    };
    readonly nextButton: {
        readonly horizontal: "";
        readonly vertical: string;
    };
    readonly pagination: {
        readonly next: "";
        readonly previous: "";
        readonly both: "";
        readonly none: "";
    };
    readonly arrowVisibility: {
        readonly visible: "";
        readonly hidden: "";
    };
};
declare const compoundVariants: CompoundVariantStyles<ConveyorBeltVariantOptions>;
declare const styles: {
    readonly baseStyle: string;
    readonly conveyorStyle: string;
    readonly buttonContainer: string;
    readonly overflowContainer: string;
    readonly contentContainer: string;
    readonly conveyorBeltItemStyle: string;
};
export type { ConveyorBeltVariantOptions, ConveyorBeltStyles, ConveyorBeltTheme };
export { styles, baseStyle, variants, compoundVariants };
