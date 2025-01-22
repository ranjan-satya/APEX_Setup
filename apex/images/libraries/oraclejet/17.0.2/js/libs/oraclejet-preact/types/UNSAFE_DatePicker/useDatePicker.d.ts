import { type CalendarDateRequired } from "../utils/UNSAFE_calendarDateUtils";
import { ValueUpdateDetail } from "../utils/UNSAFE_valueUpdateDetail";
type UseDatePickerProps = {
    isReadonly?: boolean;
    max?: CalendarDateRequired;
    min?: CalendarDateRequired;
    todayTimeZone?: Intl.DateTimeFormatOptions['timeZone'];
    value?: CalendarDateRequired;
    onCommit: (detail: ValueUpdateDetail<CalendarDateRequired>) => void;
};
/**
 * A custom hook that adds functionality to the DatePicker component.
 */
export declare const useDatePicker: ({ isReadonly, max, min, todayTimeZone, value, onCommit }: UseDatePickerProps) => {
    accessibleLabels: {
        next: string;
        previous: string;
        goToToday: string;
        today: string;
    };
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
    handlers: {
        /**
         * Handler for DatePickerHeader.onMonthToggle.
         * This is used for toggling between the MonthView and
         * MonthsGridView.
         */
        handleMonthToggle: () => void;
        /**
         * Handler for DatePickerHeader.onYearToggle.
         * This is used for toggling between the MonthView and
         * YearsGridView.
         */
        handleYearToggle: () => void;
        /**
         * Handler for DatePickerHeader.onTodayNavigation.
         * This is used for navigating to today in the MonthView.
         */
        handleTodayNavigation: () => void;
        /**
         * Handler for DatePickerHeader.onPreviousNavigation.
         * This is used for navigating to the previous month in MonthView
         * and previous decade in YearsGridView.
         */
        handlePreviousNavigation: () => void;
        /**
         * Handler for DatePickerHeader.onNextNavigation.
         * This is used for navigating to the next month in MonthView
         * and next decade in YearsGridView.
         */
        handleNextNavigation: () => void;
        /**
         * Handler for MonthView.onAction.
         * This is used for selecting a date in MonthView.
         */
        handleMonthViewAction: (payload: {
            date: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>;
        }) => void;
        /**
         * Handler for MonthView.onNavigation.
         * This is used for navigating in the MonthView like moving around the
         * dates in the month and going to the prev/next month/year.
         */
        handleMonthViewNavigation: (detail: {
            direction: "today" | "previousDay" | "nextDay" | "previousWeek" | "nextWeek" | "previousMonth" | "nextMonth" | "previousYear" | "nextYear" | "firstDayOfMonth" | "lastDayOfMonth";
            date: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>;
        }) => void;
        /**
         * Handler for MonthsGridView.onAction.
         * This is used for selecting a month in MonthsGridView and navigating to
         * the selected month in MonthView.
         */
        handleMonthsGridViewAction: (payload: {
            month: import("#utils/UNSAFE_calendarDateUtils").IsoMonth;
        }) => void;
        /**
         * Handler for MonthsGridView.onNavigation.
         * This is used for navigating through the MonthsGridView.
         */
        handleMonthsGridViewNavigation: (payload: {
            direction: "up" | "down" | "next" | "previous";
            month: import("#utils/UNSAFE_calendarDateUtils").IsoMonth;
        }) => void;
        /**
         * Handler for YearsGridView.onAction.
         * This is used for selecting a year in YearsGridView and navigating to
         * the selected year in MonthView.
         */
        handleYearsGridViewAction: (payload: {
            year: number;
        }) => void;
        /**
         * Handler for YearsGridView.onNavigation.
         * This is used for navigating through the YearsGridView.
         */
        handleYearsGridViewNavigation: (payload: {
            direction: "up" | "down" | "next" | "previous" | "previousDecade" | "nextDecade";
            year: number;
        }) => void;
    };
    state: import("./useDatePickerState").DatePickerState;
    todaysDate: Required<import("#utils/UNSAFE_calendarDateUtils").CalendarDate>;
    toggleSelection: "none" | "month" | "year";
    viewContainerProps: {
        onFocusIn?: undefined;
        onFocusOut?: undefined;
    } | {
        onFocusIn: (event: FocusEvent) => void;
        onFocusOut: (event: FocusEvent) => void;
    };
};
export {};
