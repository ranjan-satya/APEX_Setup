import { Size } from '../../../utils/UNSAFE_size';
import { boxAlignment } from './boxalignment.css';
type BoxAlignments = Parameters<typeof boxAlignment>[0];
export type BoxAlignmentProps = {
    align?: BoxAlignments['alignItems'];
    gap?: Size | [Size] | [Size, Size];
    justify?: BoxAlignments['justifyContent'];
};
declare const boxAlignmentInterpolations: {
    align: ({ align }: Pick<BoxAlignmentProps, 'align'>) => {
        class?: undefined;
    } | {
        class: string;
    };
    justify: ({ justify }: Pick<BoxAlignmentProps, 'justify'>) => {
        class?: undefined;
    } | {
        class: string;
    };
    gap: ({ gap }: Pick<BoxAlignmentProps, 'gap'>) => {
        gap?: undefined;
    } | {
        gap: string;
    };
};
export { boxAlignmentInterpolations };
