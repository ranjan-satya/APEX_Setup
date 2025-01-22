import { textAlign as align } from './text.css';
type TextAlign = Parameters<typeof align>[0];
export type TextProps = {
    textAlign?: TextAlign['textAlign'];
};
declare const textInterpolations: {
    textAlign: ({ textAlign }: Pick<TextProps, 'textAlign'>) => {
        class?: undefined;
    } | {
        class: string;
    };
};
export { textInterpolations };
