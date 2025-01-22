import { Threshold } from '../utils/UNSAFE_meterUtils';
type Props = {
    max: number;
    value: number;
    isDisabled?: boolean;
    datatip?: string;
    thresholds?: Threshold[];
    width: number;
    isReadonly?: boolean;
};
export declare function useRatingDatatip({ max, value, isDisabled, isReadonly, datatip, thresholds, width }: Props): {
    datatipContent: import("preact").JSX.Element | null;
    datatipProps: {
        'aria-describedby': string | undefined;
    };
};
export {};
