import { type TestIdProps } from "../hooks/UNSAFE_useTestId";
import { type CalendarDateRequired } from "../utils/UNSAFE_calendarDateUtils";
import type { ValueUpdateDetail } from "../utils/UNSAFE_valueUpdateDetail";
import { Size } from "../utils/UNSAFE_size";
export type DayFormatOptions = {
    state: 'enabled' | 'disabled' | 'restricted';
};
type Props = TestIdProps & {
    /**
     * A function that receives a date and returns an object specifying how to format the provided date.
     * This function is called for each date that is rendered and this can be used to control how individual
     * dates are rendered - disabled, restricted, or enabled.
     * @param date The date to format
     * @returns The format options
     */
    dayFormatter?: (date: CalendarDateRequired) => DayFormatOptions;
    /**
     * The daysOutsideMonth property affects the day cells that are outside of the current month.
     * If set to 'hidden', then the days outside of the current month will be hidden.
     * If set to 'selectable', then the days outside of the current month will be visible and selectable.
     * This defaults to 'hidden'.
     */
    daysOutsideMonth?: 'hidden' | 'selectable';
    /**
     * Specifies whether the component is readonly.
     */
    isReadonly?: boolean;
    /**
     * The monthAndYearPicker property can be used to specify whether or not the DatePicker should show the
     * Months Grid View and Years Grid View.
     */
    monthAndYearPicker?: 'on' | 'off';
    /**
     * The maximum selectable date. The max must be equal or greater than the min if they are both specified or an error is thrown.
     */
    max?: CalendarDateRequired;
    /**
     * Specifies the component style maxWidth.
     * <p>If not specified, defaults to the theme specified maxWidth.<br/>
     * This attribute accepts values of type:<br/>
     * 0 | `${number}${CssUnits}` | `${number}x` | `--${string}` | `var($string})` | `${number}%`</p>
     * <p>When this component is used in composition and the component should take up 100% of the parent container's
     * width, set maxWidth to '100%'.<br/>
     * Because there is a theme default value for maxWidth, when setting the width property to achieve a fixed width,
     * set the maxWidth property to the same value.</p>
     */
    maxWidth?: Size;
    /**
     * The minimum selectable date. The min must be equal or less than the max if they are both specified or an error is thrown.
     */
    min?: CalendarDateRequired;
    /**
     * The todayTimeZone property is used to compute what the highlighted today cell is for the DatePicker.
     * This defaults to the user's system timezone.
     * <p>
     * The only reason an application would set the todayTimeZone property is if they want the
     * highlighted today cell to be in a different timezone than the user's system's timezone,
     * like if the user has a preferred timezone that is not where they are physically working.
     * </p>
     */
    todayTimeZone?: Intl.DateTimeFormatOptions['timeZone'];
    /**
     * Specifies how to render the 'Go to today' button.
     * <ul>
     * <li>'visible' - set this property to 'visible' to show the 'Go to today' button.</li>
     * <li>'hidden' - set this property to 'hidden' to hide the 'Go to today' button.</li>
     * </ul>
     */
    todayButton?: 'visible' | 'hidden';
    /**
     * The value of the DatePicker. The value property is the date that looks selected in the DatePicker.
     * If the value is undefined, no day will look selected.
     * <p>
     * The DatePicker initially opens to the selected date if there is one and it is within the min/max range.
     * If there is no value, the DatePicker initially opens to today's month.
     * </p>
     */
    value?: CalendarDateRequired;
    /**
     * Specifies the component style width.
     * <p>If not specified, defaults to '100%'.</p>
     * <p>This attribute accepts values of type:</p>
     * <p>0 | `${number}${CssUnits}` | `${number}x` | `--${string}`  | `var($string})` | `${number}%`</p>
     * <br/>
     * <p>Because there is a theme default value for maxWidth, when setting the width property to achieve a fixed width,
     * set the maxWidth property to the same value.</p>
     */
    width?: Size;
    /**
     * Callback invoked when the user selects a date in the DatePicker. This callback is called even when the previous
     * value and the value are the same, that is, when the user selects an already selected date.
     * The app needs to handle this to write back the controlled 'value' property, or else no date will be shown
     * to be selected.
     * If the app is using a DatePicker to control another component, like as a way to navigate an Event Calendar,
     * then they would listen to the onCommit to get the value of the selected date.
     */
    onCommit: (detail: ValueUpdateDetail<CalendarDateRequired>) => void;
};
/**
 * A DatePicker is a calendar interface that allows users to select a single date.
 */
export declare const DatePicker: ({ dayFormatter, daysOutsideMonth, isReadonly, monthAndYearPicker, max, maxWidth, min, value, testId, todayTimeZone, todayButton, width, onCommit }: Props) => import("preact").JSX.Element;
export {};
