/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { CalendarDateRequired } from "../utils/UNSAFE_calendarDateUtils";
type DatePickerState = {
    /**
     * Specifies the current view the DatePicker is showing.
     */
    currentView: 'monthView' | 'monthsGridView' | 'yearsGridView';
    /**
     * The focusableDate is the one day in the MonthView that has tabIndex: 0 on it.
     * If nothing is selected, the DatePicker initially renders
     * with Today as the focusableDate. The focusableDate doesn't have focus until the user tabs in
     * to the Month View.
     * When the user navigates the days with the arrow keys,
     * the focusableDate changes along with the focusedDate, and they will be the same date.
     * This is a 'roving' index.
     * The focusableDate is never undefined.
     * <p>
     * If the user keyboards to the next month (Fn+Down Arrow on a Mac),
     * then the focusableDate and the focusedDate of the next month
     * is the same day number, or as close as possible to stay in the same month. For example,
     * if the focusedDate and focusableDate is April 2, 2024, the focusedDate and focusableDate for the next month is May 2, 2024.
     * If the focusedDate and focusableDate is February 28, 2024, the focusedDate and focusableDate for the next month is March 28, 2024.
     * If the focusedDate and focusableDate is January 31, 2024, the focusedDate and focusableDate for the next month is February 29, 2024 (2024 is a leap year).
     * </p>
     * <p>
     * If the user clicks the Next Month button in the DatePicker's header, then
     * there is no date that has focus, so the focusedDate is undefined.
     * The focusableDate will be set.
     * For example,
     * if the focusableDate is April 2, 2024, the focusableDate for the next month is May 2, 2024.
     * If the focusableDate is February 28, 2024, the focusableDate for the next month is March 28, 2024.
     * If the focusableDate is January 31, 2024, the focusableDate for the next month is February 29, 2024 (2024 is a leap year).
     *
     * </p>
     */
    focusableDate: CalendarDateRequired;
    /**
     * The focusableMonth is the one month in the MonthsGridView that has tabIndex: 0 on it.
     * If nothing is selected, the DatePicker initially renders with Today's month as the
     * focusableMonth. The focusableMonth doesn't have focus until the user tabs in
     * to the Months Grid View.
     *
     * When the user navigates the month with the arrow keys, the focusableMonth changes
     * along with the focusedMonth, and they will be the same date. This is a 'roving' index.
     *
     * The focusableMonth is never undefined.
     */
    focusableMonth: CalendarDateRequired['month'];
    /**
     * The focusableYear is the one month in the YearsGridView that has tabIndex: 0 on it.
     * If nothing is selected, the DatePicker initially renders with Today's month as the
     * focusableYear. The focusableYear doesn't have focus until the user tabs in
     * to the Months Grid View.
     *
     * When the user navigates the month with the arrow keys, the focusableYear changes
     * along with the focusedYear, and they will be the same date. This is a 'roving' index.
     *
     * The focusableYear is never undefined.
     */
    focusableYear: CalendarDateRequired['year'];
    /**
     * A boolean to indicate if the focus is in the view.
     */
    isViewFocused: boolean;
    /**
     * Specifies whether to hide the previous navigation button is hidden from the header.
     */
    isPreviousNavigationButtonHidden: boolean;
    /**
     * Specifies whether to hide the today navigation button is hidden from the header.
     */
    isTodayNavigationButtonHidden: boolean;
    /**
     * Specifies whether to hide the next navigation button is hidden from the header.
     */
    isNextNavigationButtonHidden: boolean;
};
declare const datePickerViewActionTypes: readonly ["monthView", "monthsGridView", "yearsGridView", "viewFocus", "viewBlur"];
declare const monthViewActionTypes: readonly ["daySelected", "goToToday", "previousDay", "nextDay", "previousWeek", "nextWeek", "previousMonth", "previousMonthAndFocus", "nextMonth", "nextMonthAndFocus", "previousYear", "nextYear", "firstDayOfMonth", "lastDayOfMonth"];
declare const monthsGridViewActionTypes: readonly ["previousMonthInGridView", "nextMonthInGridView", "previousMonthRowInGridView", "nextMonthRowInGridView", "monthSelected"];
declare const yearsGridViewActionTypes: readonly ["previousYearInGridView", "nextYearInGridView", "previousYearRowInGridView", "nextYearRowInGridView", "previousDecade", "previousDecadeAndFocus", "nextDecade", "nextDecadeAndFocus", "yearSelected"];
type DatePickerViewActionTypes = (typeof datePickerViewActionTypes)[number];
type MonthViewActionTypes = (typeof monthViewActionTypes)[number];
type MonthsGridViewActionTypes = (typeof monthsGridViewActionTypes)[number];
type YearsGridViewActionTypes = (typeof yearsGridViewActionTypes)[number];
type DatePickerStateAction = ReturnType<typeof useDatePickerState>['actions'];
type Props = {
    /**
     * This becomes the state's focusableDate.
     */
    initialFocusableDate: CalendarDateRequired;
};
/**
 * useDatePickerState takes an object with the initialFocusableDate and
 * determines the initial state; i.e., focusableDate and focusedDate. It returns the state
 * and actions a user can take on the DatePicker that will update the state. The actions are functions
 * that call dispatch with the type and payload.
 * @param param0
 * @returns
 */
declare const useDatePickerState: ({ initialFocusableDate }: Props) => {
    state: DatePickerState;
    actions: {
        previousDay: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        nextDay: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        previousWeek: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        nextWeek: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        previousMonth: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        nextMonth: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        previousYear: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        nextYear: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        firstDayOfMonth: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        lastDayOfMonth: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        previousDecade: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "year">) => void;
        nextDecade: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "year">) => void;
        monthView: (payload: undefined) => void;
        monthsGridView: (payload: undefined) => void;
        yearsGridView: (payload: undefined) => void;
        viewFocus: (payload: undefined) => void;
        viewBlur: (payload: undefined) => void;
        daySelected: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        goToToday: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        previousMonthAndFocus: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        nextMonthAndFocus: (payload: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>) => void;
        previousMonthInGridView: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "month">) => void;
        nextMonthInGridView: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "month">) => void;
        previousMonthRowInGridView: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "month">) => void;
        nextMonthRowInGridView: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "month">) => void;
        monthSelected: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "month">) => void;
        previousYearInGridView: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "year">) => void;
        nextYearInGridView: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "year">) => void;
        previousYearRowInGridView: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "year">) => void;
        nextYearRowInGridView: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "year">) => void;
        previousDecadeAndFocus: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "year">) => void;
        nextDecadeAndFocus: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "year">) => void;
        yearSelected: (payload: Pick<Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>, "year">) => void;
    };
};
export { useDatePickerState };
export type { DatePickerState, DatePickerStateAction, DatePickerViewActionTypes, MonthViewActionTypes, MonthsGridViewActionTypes, YearsGridViewActionTypes };
