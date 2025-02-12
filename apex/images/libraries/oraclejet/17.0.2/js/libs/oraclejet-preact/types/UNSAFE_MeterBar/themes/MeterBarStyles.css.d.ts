import { ComponentThemeType, VariantOptions } from '../../UNSAFE_Theme';
type MeterBarVariants = typeof variants;
type MeterBarVariantOptions = VariantOptions<MeterBarVariants>;
type MeterBarStyles = typeof styles;
type MeterBarTheme = ComponentThemeType<MeterBarVariants, MeterBarStyles>;
/*******************
 * Component Styles
 *******************/
declare const baseStyle: string;
/*******************
 * Style Variants
 *******************/
declare const variants: {
    readonly size: {
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
        readonly fit: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
    };
    readonly orientation: {
        readonly horizontal: string;
        readonly vertical: string;
    };
};
declare const styles: {
    interactiveStyle: string;
    barValueBaseStyle: string;
    barValueVerticalStyle: string;
    barValueHorizontalStyle: string;
    barValueHighContrastStyle: string;
    barTrackBaseStyle: string;
    barTrackHorizontalSizeStyle: string;
    barTrackVerticalSizeStyle: string;
    barTrackBorderStyle: string;
    barTrackMarginTopStyle: string;
    barTrackMarginStartStyle: string;
    barTrackMarginBottomStyle: string;
    barTrackMarginEndStyle: string;
    barTrackMarginTopFitStyle: string;
    barTrackMarginStartFitStyle: string;
    barTrackMarginBottomFitStyle: string;
    barTrackMarginEndFitStyle: string;
    trackSectionHorizontalFirstStyle: string;
    trackSectionHorizontalLastStyle: string;
    trackSectionVerticalFirstStyle: string;
    trackSectionVerticalLastStyle: string;
    trackSectionRoundedCornersStyle: string;
    referenceLinesBaseStyle: string;
    referenceLinesVerticalStyle: string;
    referenceLinesHorizontalStyle: string;
    referenceLinesHoriontalStartStyle: string;
    referenceLinesVerticalStartLtrStyle: string;
    referenceLinesVerticalStartRtlStyle: string;
    thresholdBarBaseStyle: string;
    thresholdBarVerticalBarTrackSectionStyle: string;
    thresholdBarHorizontalBarTrackSectionRtlStyle: string;
    thresholdBarHorizontalBarTrackSectionLtrStyle: string;
};
export type { MeterBarVariantOptions, MeterBarStyles, MeterBarTheme };
export { variants, baseStyle, styles };
