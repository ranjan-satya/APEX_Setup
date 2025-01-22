import { flexbox } from './flexbox.css';
type Flexbox = Parameters<typeof flexbox>[0];
export type FlexboxProps = {
    direction?: Flexbox['flexDirection'];
    wrap?: Flexbox['flexWrap'];
};
declare const flexboxInterpolations: {
    direction: ({ direction }: Pick<FlexboxProps, 'direction'>) => {
        class?: undefined;
    } | {
        class: string;
    };
    wrap: ({ wrap }: Pick<FlexboxProps, 'wrap'>) => {
        class?: undefined;
    } | {
        class: string;
    };
};
export { flexboxInterpolations };
