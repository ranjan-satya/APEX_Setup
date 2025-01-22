import { ComponentThemeType } from '../../UNSAFE_Theme';
type DatePickerStyles = typeof styles;
type DatePickerTheme = ComponentThemeType<DatePickerStyles>;
/*******************
 * Component Styles
 *******************/
declare const styles: {};
declare const multiVariantStyles: import("@vanilla-extract/recipes").RuntimeFn<{
    [x: string]: {
        [x: string]: string | import("@vanilla-extract/css").ComplexStyleRule;
    };
}>;
export type { DatePickerTheme, DatePickerStyles };
export { multiVariantStyles };
