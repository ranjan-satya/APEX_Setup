import { Size } from '../utils/UNSAFE_size';
import { InputDetail, CommitDetail, Threshold, ReferenceLine, MeterSize, ThresholdDisplay } from '../utils/UNSAFE_meterUtils';
import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
import type { TestIdProps } from '../hooks/UNSAFE_useTestId';
/**
 * Props for Meter Bar.
 */
export type MeterBarProps = TestIdProps & {
    /**
     * The size of the meter bar. The default value of this property is theme driven.
     */
    size?: MeterSize;
    /**
     * The value of the meter bar.
     */
    value?: number;
    /**
     * Integer value specifying the maximum value of the meter bar.
     */
    max?: number;
    /**
     * Integer value specifying the minimum value of the meter bar.
     */
    min?: number;
    /**
     * The orientation of the meter bar.
     */
    orientation?: 'vertical' | 'horizontal';
    /**
     * Specifies the increment by which values can be changed by the end user.
     */
    step?: number;
    /**
     * The length of meter bar.
     */
    length?: Size;
    /**
     * The datatip shown for meter bar. If datatip is undefined, meter bar will use the default datatip. If datatip is null, no datatip is shown.
     */
    datatip?: string | null;
    /**
     * The callback called in response to focus or keyboard (up, down, left, right, home, and end) or mouse (dragging) interactions that change the value of the meter bar.
     */
    onInput?: (detail: InputDetail) => void;
    /**
     * The callback called when value of the meter bar is submitted on Enter, blur, click, or drag end.
     */
    onCommit?: (detail: CommitDetail) => void;
    /**
     * Defines the ratio of relative thickness of the indicator to the track. Only supports number between 0 and 1.
     */
    indicatorSize?: number;
    /**
     * The color of the indicator of the bar.
     */
    indicatorColor?: ColorProps['color'];
    /**
     * Specifies if the track is rendered.
     */
    isTrackRendered?: boolean;
    /**
     * The color of the track.
     */
    trackColor?: ColorProps['color'];
    /**
     * Controls whether the current threshold is displayed on the indicator, in the track, or if all the thresholds are displayed in the track.
     */
    thresholdDisplay?: ThresholdDisplay;
    /**
     * An array of Threshold objects.
     * Applications are required to include information about thresholds for screen readers to make their component accessible by using aria-describedby, aria-labelledby or aria-label.
     */
    thresholds?: Threshold[];
    /**
     * Reference lines for the meter bar.
     * Applications are required to include information about reference lines for screen readers to make their component accessible by using aria-describedby, aria-labelledby or aria-label.
     */
    referenceLines?: ReferenceLine[];
    /**
     * A label to be used for accessibility purposes. Default label will be used if not provided. This will be used for the aria-label of the DOM element.
     */
    'aria-label'?: string;
    /**
     * One or more ids (separated by spaces) of elements that label the meter bar. This will be used for the aria-labelledby of the DOM element.
     */
    'aria-labelledby'?: string;
    /**
     * One or more ids (separated by spaces) of elements that describe the meter bar. This will be used for the aria-describedby of the DOM element.
     */
    'aria-describedby'?: string;
};
