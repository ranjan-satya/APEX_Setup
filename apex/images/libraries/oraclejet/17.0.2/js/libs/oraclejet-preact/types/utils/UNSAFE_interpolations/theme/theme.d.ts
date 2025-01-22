import { ColorScheme, Density, Scale } from "../../../UNSAFE_Theme";
export type ThemeProps = {
    colorScheme?: ColorScheme;
    scale?: Scale;
    density?: Density;
};
declare const themeInterpolations: {
    colorScheme: ({ colorScheme }: Pick<ThemeProps, 'colorScheme'>) => {
        class?: undefined;
    } | {
        class: string;
    };
    scale: ({ scale }: Pick<ThemeProps, 'scale'>) => {
        class?: undefined;
    } | {
        class: string;
    };
    density: ({ density }: Pick<ThemeProps, 'density'>) => {
        class?: undefined;
    } | {
        class: string;
    };
};
export { themeInterpolations };
