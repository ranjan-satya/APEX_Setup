/**
 * The global theme's structure is defined here, where the theme associates the list of components
 * with their respective theme types. The theme is passed via the Environment context
 * and utilized by components using the `useComponentTheme` hook.
 */
import type { ColorProps } from '../utils/UNSAFE_interpolations/colors';
import type { NestedKeyOf } from '../utils/UNSAFE_typeUtils';
import type { ColorScheme as TokenColorScheme } from "../Common/themes/generatedContract.tokens";
import type { Base } from "../Common/themes/manualContract.tokens";
type ColorScheme = (typeof colorThemes)[number];
type Scale = 'sm' | 'md' | 'lg';
type Density = 'standard' | 'compact';
type Obj = Record<string, any>;
type ScaleVars = {
    size: {
        units: string;
    };
};
type DensityVars = {
    density: {
        units: string;
    };
};
type RuntimeFn<V> = (options?: V) => string;
type ThemeModifiers = {
    density: Density;
    colorScheme: ColorScheme;
    scale: Scale;
    currentBgColor: ColorProps['backgroundColor'];
};
type ComponentThemeType<Variants = Obj, Styles = Obj> = {
    multiVariantStyles: RuntimeFn<any>;
    variants?: Variants;
    styles?: Styles;
    baseTheme?: string;
};
type VariantOptions<V extends object> = Partial<NestedKeyOf<V>>;
type Theme = {
    name: string;
    base: Base;
    colorScheme: TokenColorScheme;
    scale: ScaleVars;
    density: DensityVars;
};
type CompoundVariantStyles<T> = {
    variants: Partial<T>;
    style: string | object;
}[];
declare const colorThemes: readonly ["light", "dark"];
declare const ROOT_SELECTOR = ":root";
declare const DARK_CLASS = "oj-c-colorscheme-dark";
declare const LIGHT_CLASS = "oj-c-colorscheme-light";
declare const INVERT_CLASS = "oj-color-invert";
declare const COLORSCHEME_DEPENDENT_CLASS = "oj-c-colorscheme-dependent";
declare const SCALE_DEPENDENT_CLASS = "oj-scale-dependent";
declare const SCALE_DEPENDENT_SELECTOR = ".oj-scale-dependent";
declare const SCALE_SM_CLASS = "oj-scale-sm";
declare const SCALE_SM_SELECTORS = ".oj-scale-sm, :root.oj-scale-sm";
declare const SCALE_MD_CLASS = "oj-scale-md";
declare const SCALE_MD_SELECTORS = ".oj-scale-md, :root.oj-scale-md";
declare const SCALE_LG_CLASS = "oj-scale-lg";
declare const SCALE_LG_SELECTORS = ".oj-scale-lg";
declare const SCALE_DEFAULT_SELECTORS = ":root";
declare const SCALE_DEPENDENT_SELECTORS = ".oj-scale-dependent, :root.oj-scale-sm, :root.oj-scale-md";
declare const DENSITY_STANDARD_CLASS = "oj-density-standard";
declare const DENSITY_STANDARD_SELECTORS = ".oj-density-standard";
declare const DENSITY_COMPACT_CLASS = "oj-density-compact";
declare const DENSITY_COMPACT_SELECTORS = ".oj-density-compact";
declare const DENSITY_SELECTORS = ".oj-density-compact, .oj-density-standard";
declare const DENSITY_DEPENDENT_CLASS = "oj-density-dependent";
declare const DENSITY_DEPENDENT_SELECTOR = ".oj-density-dependent";
export type { Theme, ComponentThemeType, ColorScheme, Scale, Density, ThemeModifiers, CompoundVariantStyles, VariantOptions };
export { colorThemes, DARK_CLASS, LIGHT_CLASS, INVERT_CLASS, COLORSCHEME_DEPENDENT_CLASS, ROOT_SELECTOR, SCALE_SM_CLASS, SCALE_SM_SELECTORS, SCALE_MD_CLASS, SCALE_MD_SELECTORS, SCALE_LG_CLASS, SCALE_LG_SELECTORS, SCALE_DEPENDENT_SELECTORS, SCALE_DEFAULT_SELECTORS, DENSITY_COMPACT_CLASS, DENSITY_COMPACT_SELECTORS, DENSITY_STANDARD_CLASS, DENSITY_STANDARD_SELECTORS, SCALE_DEPENDENT_CLASS, SCALE_DEPENDENT_SELECTOR, DENSITY_DEPENDENT_SELECTOR, DENSITY_DEPENDENT_CLASS, DENSITY_SELECTORS };
