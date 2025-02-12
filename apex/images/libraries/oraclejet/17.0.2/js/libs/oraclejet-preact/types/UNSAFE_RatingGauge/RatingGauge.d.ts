import { Threshold, CommitDetail, InputDetail } from '../utils/UNSAFE_meterUtils';
import { type TestIdProps } from '../hooks/UNSAFE_useTestId';
/**
 * Props for the RatingGauge
 */
type Props = TestIdProps & {
    /**
     * Defines whether the rating gauge should be read only. User interaction is prevented if set to true.
     */
    isReadonly?: boolean;
    /**
     * Defines whether the rating gauge is disabled or not. User interaction is prevented and the rating gauge is hidden from screen readers if set to true.
     */
    isDisabled?: boolean;
    /**
     * The size of the individual rating gauge items. The default value of this property is theme driven.
     */
    size?: 'sm' | 'md' | 'lg';
    /**
     * The color of the individual rating gauge items.
     */
    color?: 'neutral' | 'gold';
    /**
     * The value of the rating gauge.
     */
    value?: number;
    /**
     * Specifies the increment by which values can be changed.
     */
    step?: number;
    /**
     * Integer value specifying the maximum value of the rating gauge, which determines the number of items that are displayed
     */
    max?: number;
    /**
     * The callback called in response to hover or focus interactions with the rating gauge items.
     */
    onInput?: (detail: InputDetail) => void;
    /**
     * The callback called when value of rating gauge changes on blur or Enter or click.
     */
    onCommit?: (detail: CommitDetail) => void;
    /**
     * The rating gauge tooltip. Tooltip is only used for read only rating gauges. If aria-label is not specified, tooltip will be used as the aria-label.
     */
    tooltip?: string;
    /**
     * The rating gauge datatip string. Datatip is used for interactive rating gauges.
     */
    datatip?: string;
    /**
     * A label to be used for accessibility purposes. Default label will be used if not provided. This will be used for the aria-label of the DOM element.
     */
    'aria-label'?: string;
    /**
     * One or more ids (separated by spaces) of elements that label the rating gauge. This will be used for the aria-labelledby of the DOM element.
     */
    'aria-labelledby'?: string;
    /**
     * One or more ids (separated by spaces) of elements that describe the rating gauge. This will be used for the aria-describedby of the DOM element.
     */
    'aria-describedby'?: string;
    /**
     * An array of Threshold objects.
     * Applications are required to include information about thresholds for screen readers to make their component accessible by using aria-describedby, aria-labelledby or aria-label.
     */
    thresholds?: Threshold[];
};
/**
 * A rating gauge displays information graphically, typically displaying or accepting user feedback on a product or service.
 */
export declare function RatingGauge({ max, value, size, color, step, isReadonly, isDisabled, testId, ...props }: Props): import("preact").JSX.Element;
export {};
