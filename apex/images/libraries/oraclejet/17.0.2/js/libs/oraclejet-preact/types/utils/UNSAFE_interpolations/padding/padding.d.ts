import { Size } from '../../UNSAFE_size';
declare const paddingstartends: readonly ["paddingBlockStart", "paddingBlockEnd", "paddingInlineStart", "paddingInlineEnd"];
type PaddingStartEnd = (typeof paddingstartends)[number];
type PaddingStartEndProps = {
    [key in PaddingStartEnd]?: Size;
};
export type PaddingProps = {
    padding?: Size | [Size] | [Size, Size] | [Size, Size, Size] | [Size, Size, Size, Size];
} & PaddingStartEndProps;
declare const paddingInterpolations: {
    padding: ({ padding }: Pick<PaddingProps, 'padding'>) => {
        padding?: undefined;
    } | {
        padding: string;
    };
    paddingBlockStart: ({ paddingBlockStart }: Pick<PaddingProps, 'paddingBlockStart'>) => {
        paddingBlockStart?: undefined;
    } | {
        paddingBlockStart: string;
    };
    paddingBlockEnd: ({ paddingBlockEnd }: Pick<PaddingProps, 'paddingBlockEnd'>) => {
        paddingBlockEnd?: undefined;
    } | {
        paddingBlockEnd: string;
    };
    paddingInlineStart: ({ paddingInlineStart }: Pick<PaddingProps, 'paddingInlineStart'>) => {
        paddingInlineStart?: undefined;
    } | {
        paddingInlineStart: string;
    };
    paddingInlineEnd: ({ paddingInlineEnd }: Pick<PaddingProps, 'paddingInlineEnd'>) => {
        paddingInlineEnd?: undefined;
    } | {
        paddingInlineEnd: string;
    };
};
export { paddingInterpolations };
