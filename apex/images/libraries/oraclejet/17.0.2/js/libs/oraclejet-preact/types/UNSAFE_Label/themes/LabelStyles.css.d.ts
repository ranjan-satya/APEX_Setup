import { ComponentThemeType, CompoundVariantStyles, VariantOptions } from "../../UNSAFE_Theme";
type LabelVariants = typeof variants;
type LabelVariantOptions = VariantOptions<LabelVariants>;
type LabelStyles = typeof styles;
type LabelTheme = ComponentThemeType<LabelVariants, LabelStyles>;
/*******************
 * Component Styles
 *******************/
declare const baseStyle: string;
declare const startBase: string;
declare const topBase: string;
declare const insideBase: string;
declare const insideBaseUADensityEfficientReflow: string;
declare const insideReadonlyInEnabledForm: string;
declare const insideReadonlyNotInEnabledForm: string;
declare const insideNonReadonly: string;
declare const insideNonReadonlyHasValue: string;
declare const insideDisabled: string;
declare const noWrap: string;
declare const uaDensityCompactStart: string;
declare const uaDensityCompactTop: string;
declare const uaDensityCompactLabel: string;
declare const uaDensityCompactLabelStart: string;
declare const uaDensityCompactLabelTopInside: string;
declare const styles: {
    uaDensityCompactLabel: string;
    uaDensityCompactLabelStart: string;
    uaDensityCompactLabelTopInside: string;
};
/*******************
 * Style Variants
 *******************/
declare const variants: {
    readonly position: {
        readonly top: string;
        readonly start: string;
        readonly inside: "";
    };
    readonly inside: {
        readonly isInside: string;
        readonly notInside: "";
    };
    readonly textField: {
        readonly isTextField: "";
        readonly notTextField: "";
    };
    readonly inEnabledForm: {
        readonly isInEnabledForm: "";
        readonly notInEnabledForm: "";
    };
    readonly labelWrapping: {
        readonly wrap: "";
        readonly truncate: "";
    };
    readonly readonly: {
        readonly isReadonly: "";
        readonly notReadonly: "";
    };
    readonly focused: {
        readonly isFocused: "";
        readonly nonFocused: "";
    };
    readonly disabled: {
        readonly isDisabled: "";
        readonly nonDisabled: "";
    };
    readonly formLayout: {
        readonly isFormLayout: "";
        readonly nonFormLayout: "";
    };
    readonly readonlyForm: {
        readonly isReadonlyForm: "";
        readonly notReadonlyForm: "";
    };
    readonly value: {
        readonly hasValue: "";
        readonly noValue: "";
    };
    readonly valueOrFocus: {
        readonly hasValueOrFocus: "";
        readonly noValueOrFocus: "";
    };
    readonly userAssistanceDensity: {
        readonly compact: string;
        readonly efficient: "";
        readonly reflow: "";
    };
    readonly animatedWhenInside: {
        readonly isAnimated: "";
        readonly notAnimated: "";
    };
};
declare const compoundVariants: CompoundVariantStyles<LabelVariantOptions>;
export type { LabelVariantOptions, LabelStyles, LabelTheme };
export { baseStyle, startBase, topBase, insideBase, insideBaseUADensityEfficientReflow, insideReadonlyInEnabledForm, insideReadonlyNotInEnabledForm, insideNonReadonly, insideNonReadonlyHasValue, insideDisabled, noWrap, uaDensityCompactStart, uaDensityCompactTop, uaDensityCompactLabel, uaDensityCompactLabelStart, uaDensityCompactLabelTopInside, variants, compoundVariants, styles };
