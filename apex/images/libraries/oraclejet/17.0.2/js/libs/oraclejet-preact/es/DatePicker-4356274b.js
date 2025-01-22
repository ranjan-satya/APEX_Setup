/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs } from 'preact/jsx-runtime';
import { F as Flex } from './Flex-24628925.js';
import { u as useTestId } from './useTestId-adde554c.js';
import { u as useFocusWithin } from './useFocusWithin-30b1e2d8.js';
import { u as useTranslationBundle } from './useTranslationBundle-cd815e10.js';
import { e as compareDates, h as addToCalendarDate, j as addToYear, k as addToMonth, l as getDaysInMonth, m as isCalendarDateBefore, n as getCalendarDateToday, o as constrainCalendarDate } from './calendarDateUtils-d586e25e.js';
import { useReducer, useRef, useMemo, useCallback } from 'preact/compat';
import { u as useBreakpointValues } from './useBreakpointValues-de03c6fa.js';
import { B as Button } from './Button-50c5589f.js';
import { datePickerPropVars } from './UNSAFE_DatePicker/themes/DatePickerContract.css.js';
import { u as useComponentTheme } from './useComponentTheme-d2f9e47f.js';
import { DatePickerRedwoodTheme } from './UNSAFE_DatePicker/themes/redwood/DatePickerTheme.js';
import { D as DatePickerHeader } from './DatePickerHeader-7078d6e8.js';
import { M as MonthView } from './MonthView-cc017afe.js';
import { M as MonthsGridView, Y as YearsGridView } from './YearsGridView-165e5eec.js';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const datePickerViewActionTypes = [
    'monthView',
    'monthsGridView',
    'yearsGridView',
    'viewFocus',
    'viewBlur'
];
const monthViewActionTypes = [
    'daySelected',
    'goToToday',
    'previousDay',
    'nextDay',
    'previousWeek',
    'nextWeek',
    'previousMonth',
    'previousMonthAndFocus',
    'nextMonth',
    'nextMonthAndFocus',
    'previousYear',
    'nextYear',
    'firstDayOfMonth',
    'lastDayOfMonth'
];
const monthsGridViewActionTypes = [
    'previousMonthInGridView',
    'nextMonthInGridView',
    'previousMonthRowInGridView',
    'nextMonthRowInGridView',
    'monthSelected'
];
const yearsGridViewActionTypes = [
    'previousYearInGridView',
    'nextYearInGridView',
    'previousYearRowInGridView',
    'nextYearRowInGridView',
    'previousDecade',
    'previousDecadeAndFocus',
    'nextDecade',
    'nextDecadeAndFocus',
    'yearSelected'
];
// A reducer is a plain old function you write that takes the current state,
// and the action to be processed, and returns the state as it should be, based on that action occurring.
// The reducer, not the sender,  determines how a given report (action) affects the state.
const datePickerReducer = (state, action) => {
    // On mount, the reducer is initialized with initial state derived from the DatePicker's value.
    // If that value is changed programmatically afterwards, the only way to push that update
    // into the reducer is to define a "reset" action.
    if (action.type === 'reset') {
        return action.payload;
    }
    switch (action.type) {
        case 'monthView': {
            return {
                ...state,
                currentView: 'monthView',
                isViewFocused: false,
                isNextNavigationButtonHidden: false,
                isPreviousNavigationButtonHidden: false,
                isTodayNavigationButtonHidden: false
            };
        }
        case 'monthsGridView': {
            return {
                ...state,
                currentView: 'monthsGridView',
                focusableMonth: state.focusableDate.month,
                isViewFocused: false,
                isNextNavigationButtonHidden: true,
                isPreviousNavigationButtonHidden: true,
                isTodayNavigationButtonHidden: true
            };
        }
        case 'yearsGridView': {
            return {
                ...state,
                currentView: 'yearsGridView',
                focusableYear: state.focusableDate.year,
                isViewFocused: false,
                isNextNavigationButtonHidden: false,
                isPreviousNavigationButtonHidden: false,
                isTodayNavigationButtonHidden: true
            };
        }
        case 'viewFocus': {
            return state.isViewFocused ? state : { ...state, isViewFocused: true };
        }
        case 'viewBlur': {
            return state.isViewFocused ? { ...state, isViewFocused: false } : state;
        }
        case 'daySelected': {
            return { ...state, isViewFocused: true, focusableDate: action.payload };
        }
        case 'goToToday': {
            // User clicked on the 'Today' icon, which means they want to navigate to show the month of Today
            // payload is Today's date. We also set the focus to Today.
            return { ...state, isViewFocused: true, focusableDate: action.payload };
        }
        case 'previousDay': {
            const previousDay = addToCalendarDate(action.payload, { days: -1 });
            return { ...state, isViewFocused: true, focusableDate: previousDay };
        }
        case 'nextDay': {
            const nextDay = addToCalendarDate(action.payload, { days: 1 });
            return { ...state, isViewFocused: true, focusableDate: nextDay };
        }
        case 'previousWeek': {
            const previousDay = addToCalendarDate(action.payload, { days: -7 });
            return { ...state, isViewFocused: true, focusableDate: previousDay };
        }
        case 'nextWeek': {
            const nextDay = addToCalendarDate(action.payload, { days: 7 });
            return { ...state, isViewFocused: true, focusableDate: nextDay };
        }
        case 'previousMonth':
        case 'previousMonthAndFocus': {
            // PageUp moves focus to the previous month.
            // We also get here if the DatePicker while in month view header's Previous navigation button is pressed.
            const prevMonth = addToCalendarDate(action.payload, { months: -1 });
            return {
                ...state,
                isViewFocused: action.type === 'previousMonthAndFocus',
                focusableDate: prevMonth
            };
        }
        case 'nextMonth':
        case 'nextMonthAndFocus': {
            // Shift PageDown moves focus to the next month. TODO: Confirm this works on a Windows machine.
            // Shift Fn Arrow Down works on my Mac.
            // We also get here if the DatePicker while in month view header's Next navigation button is pressed.
            const nextMonth = addToCalendarDate(action.payload, { months: 1 });
            return {
                ...state,
                isViewFocused: action.type === 'nextMonthAndFocus',
                focusableDate: nextMonth
            };
        }
        case 'previousYear': {
            // Shift Page Up moves focus to the previous year. TODO: Confirm this works on a Windows machine.
            const previousYear = addToCalendarDate(action.payload, { years: -1 });
            return { ...state, isViewFocused: true, focusableDate: previousYear };
        }
        case 'nextYear': {
            const nextYear = addToCalendarDate(action.payload, { years: 1 });
            return { ...state, isViewFocused: true, focusableDate: nextYear };
        }
        case 'firstDayOfMonth': {
            // Home moves focus to the first day of the month (Fn+LeftArrow on a mouse.)
            const currentDate = action.payload;
            const firstDayOfMonthDate = {
                year: currentDate.year,
                month: currentDate.month,
                day: 1
            };
            return { ...state, isViewFocused: true, focusableDate: firstDayOfMonthDate };
        }
        case 'lastDayOfMonth': {
            // End moves focus to the last day of the month
            const currentDate = action.payload;
            const lastDay = getDaysInMonth(currentDate.month, currentDate.year);
            const lastDayOfMonthDate = {
                year: currentDate.year,
                month: currentDate.month,
                day: lastDay
            };
            return { ...state, isViewFocused: true, focusableDate: lastDayOfMonthDate };
        }
        case 'previousMonthInGridView': {
            const previousMonth = addToMonth(action.payload.month, -1);
            return { ...state, focusableMonth: previousMonth, isViewFocused: true };
        }
        case 'previousMonthRowInGridView': {
            const previousMonth = addToMonth(action.payload.month, -4);
            return { ...state, focusableMonth: previousMonth, isViewFocused: true };
        }
        case 'nextMonthInGridView': {
            const nextMonth = addToMonth(action.payload.month, 1);
            return { ...state, focusableMonth: nextMonth, isViewFocused: true };
        }
        case 'nextMonthRowInGridView': {
            const nextMonth = addToMonth(action.payload.month, 4);
            return { ...state, focusableMonth: nextMonth, isViewFocused: true };
        }
        case 'monthSelected': {
            const monthSteps = action.payload.month - state.focusableDate.month;
            const goToDate = addToCalendarDate(state.focusableDate, { months: monthSteps });
            return {
                ...state,
                currentView: 'monthView',
                focusableDate: goToDate,
                isViewFocused: true,
                isNextNavigationButtonHidden: false,
                isPreviousNavigationButtonHidden: false,
                isTodayNavigationButtonHidden: false
            };
        }
        case 'previousYearInGridView': {
            const previousYear = addToYear(action.payload.year, -1);
            return { ...state, focusableYear: previousYear, isViewFocused: true };
        }
        case 'previousYearRowInGridView': {
            const previousYear = addToYear(action.payload.year, -4);
            return { ...state, focusableYear: previousYear, isViewFocused: true };
        }
        case 'previousDecade':
        case 'previousDecadeAndFocus': {
            const previousYear = addToYear(action.payload.year, -10);
            return {
                ...state,
                focusableYear: previousYear,
                isViewFocused: action.type === 'previousDecadeAndFocus'
            };
        }
        case 'nextYearInGridView': {
            const nextYear = addToYear(action.payload.year, 1);
            return { ...state, focusableYear: nextYear, isViewFocused: true };
        }
        case 'nextYearRowInGridView': {
            const nextYear = addToYear(action.payload.year, 4);
            return { ...state, focusableYear: nextYear, isViewFocused: true };
        }
        case 'nextDecade':
        case 'nextDecadeAndFocus': {
            const nextYear = addToYear(action.payload.year, 10);
            return {
                ...state,
                focusableYear: nextYear,
                isViewFocused: action.type === 'nextDecadeAndFocus'
            };
        }
        case 'yearSelected': {
            const yearSteps = action.payload.year - state.focusableDate.year;
            const goToDate = addToCalendarDate(state.focusableDate, { years: yearSteps });
            return {
                ...state,
                currentView: 'monthView',
                focusableDate: goToDate,
                isViewFocused: true,
                isNextNavigationButtonHidden: false,
                isPreviousNavigationButtonHidden: false,
                isTodayNavigationButtonHidden: false
            };
        }
        default:
            return state;
    }
};
/**
 * useDatePickerState takes an object with the initialFocusableDate and
 * determines the initial state; i.e., focusableDate and focusedDate. It returns the state
 * and actions a user can take on the DatePicker that will update the state. The actions are functions
 * that call dispatch with the type and payload.
 * @param param0
 * @returns
 */
const useDatePickerState = ({ initialFocusableDate }) => {
    // Create the initial state to pass to our reducer.
    const initialState = {
        currentView: 'monthView',
        focusableDate: initialFocusableDate,
        focusableMonth: initialFocusableDate.month,
        focusableYear: initialFocusableDate.year,
        isViewFocused: false,
        isNextNavigationButtonHidden: false,
        isPreviousNavigationButtonHidden: false,
        isTodayNavigationButtonHidden: false
    };
    const [state, dispatch] = useReducer(datePickerReducer, initialState);
    // initialFocusableDate is the controlled value passed from the parent.
    const lastValueFromParentRef = useRef(initialFocusableDate);
    // If a new value is being pushed from the parent, and that value differs from
    // the current focusableDate of the reducer, then this is a programmatic update
    // and we need to call 'reset' to update the reducer state. Otherwise, the only
    // time the reducer state is updated from the value is on mount.
    if (compareDates(lastValueFromParentRef.current, initialFocusableDate) !== 0) {
        lastValueFromParentRef.current = initialFocusableDate;
        if (compareDates(initialFocusableDate, state.focusableDate) !== 0) {
            dispatch({ type: 'reset', payload: initialState });
        }
    }
    // Using an action creator like this is nice because now each time we want to add an action,
    // we don't have to remember the action constant to use or how the payload should be structured. (from the redux doc)
    // memoize the actions object since we pass this around to our components.
    const actions = useMemo(() => {
        const actionsObject = {};
        datePickerViewActionTypes.forEach((type) => {
            actionsObject[type] = () => dispatch({ type });
        });
        monthViewActionTypes.forEach((type) => {
            actionsObject[type] = (payload) => dispatch({ type, payload });
        });
        monthsGridViewActionTypes.forEach((type) => {
            actionsObject[type] = (payload) => dispatch({ type, payload });
        });
        yearsGridViewActionTypes.forEach((type) => {
            actionsObject[type] = (payload) => dispatch({ type, payload });
        });
        return actionsObject;
    }, [dispatch]);
    return { state, actions };
};

/**
 * A map that specifies the selection of the header toggle button based on the
 * view we are in.
 */
const headerToggleSelection = {
    monthView: 'none',
    monthsGridView: 'month',
    yearsGridView: 'year'
};
/**
 * A custom hook that adds functionality to the DatePicker component.
 */
const useDatePicker = ({ isReadonly, max, min, todayTimeZone, value, onCommit }) => {
    // Check for errors first
    if (min && max && isCalendarDateBefore(max, min)) {
        throw new Error('DatePicker: min must be equal or less than max.');
    }
    const todaysDate = getCalendarDateToday(todayTimeZone);
    // We need to make sure that this initialFocusableDate is within the min/max range.
    // When there is no min or max set, we draw the month of the value if value is set, otherwise we draw today's month.
    // If the initialFocusableDate is not within the min/max range, then we constrain the calendar date by changing the month to draw
    // so that the initialFocusableDate is the min date if the initialFocusableDate is < min or the max month if the initialFocusableDate is > max.
    const initialFocusableDate = useMemo(() => constrainCalendarDate(value ?? todaysDate, min, max), [value, todaysDate, min, max]);
    const { state, actions } = useDatePickerState({ initialFocusableDate });
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const accessibleLabels = {
        next: translations.datePicker_next(),
        previous: translations.datePicker_prev(),
        goToToday: translations.datePicker_goToToday(),
        today: translations.datePicker_today()
    };
    const handlers = {
        /**
         * Handler for DatePickerHeader.onMonthToggle.
         * This is used for toggling between the MonthView and
         * MonthsGridView.
         */
        handleMonthToggle: useCallback(() => {
            if (state.currentView !== 'monthsGridView') {
                actions.monthsGridView(undefined);
            }
            else {
                actions.monthView(undefined);
            }
        }, [actions, state.currentView]),
        /**
         * Handler for DatePickerHeader.onYearToggle.
         * This is used for toggling between the MonthView and
         * YearsGridView.
         */
        handleYearToggle: useCallback(() => {
            if (state.currentView !== 'yearsGridView') {
                actions.yearsGridView(undefined);
            }
            else {
                actions.monthView(undefined);
            }
        }, [actions, state.currentView]),
        /**
         * Handler for DatePickerHeader.onTodayNavigation.
         * This is used for navigating to today in the MonthView.
         */
        handleTodayNavigation: useCallback(() => {
            actions.goToToday(todaysDate);
        }, [actions, todaysDate]),
        /**
         * Handler for DatePickerHeader.onPreviousNavigation.
         * This is used for navigating to the previous month in MonthView
         * and previous decade in YearsGridView.
         */
        handlePreviousNavigation: useCallback(() => {
            if (state.currentView === 'monthView') {
                return actions.previousMonth(state.focusableDate);
            }
            if (state.currentView === 'yearsGridView') {
                return actions.previousDecade({ year: state.focusableYear });
            }
        }, [actions, state.currentView, state.focusableDate, state.focusableYear]),
        /**
         * Handler for DatePickerHeader.onNextNavigation.
         * This is used for navigating to the next month in MonthView
         * and next decade in YearsGridView.
         */
        handleNextNavigation: useCallback(() => {
            if (state.currentView === 'monthView') {
                return actions.nextMonth(state.focusableDate);
            }
            if (state.currentView === 'yearsGridView') {
                return actions.nextDecade({ year: state.focusableYear });
            }
        }, [actions, state.currentView, state.focusableDate, state.focusableYear]),
        /**
         * Handler for MonthView.onAction.
         * This is used for selecting a date in MonthView.
         */
        handleMonthViewAction: useCallback((payload) => {
            if (payload.date === undefined || isReadonly)
                return;
            actions.daySelected(payload.date);
            // We purposely send onCommit even if the value is the same.
            // The InputDatePicker closes the datepicker when the user commits,
            // even if it is the already selected date.
            onCommit?.({ previousValue: value, value: payload.date });
        }, [actions, isReadonly, onCommit, value]),
        /**
         * Handler for MonthView.onNavigation.
         * This is used for navigating in the MonthView like moving around the
         * dates in the month and going to the prev/next month/year.
         */
        handleMonthViewNavigation: useCallback((detail) => {
            switch (detail.direction) {
                case 'previousMonth':
                    return actions.previousMonthAndFocus(detail.date);
                case 'nextMonth':
                    return actions.nextMonthAndFocus(detail.date);
                case 'today':
                    return actions.goToToday(todaysDate);
                default:
                    return actions[detail.direction](detail.date);
            }
        }, [actions, todaysDate]),
        /**
         * Handler for MonthsGridView.onAction.
         * This is used for selecting a month in MonthsGridView and navigating to
         * the selected month in MonthView.
         */
        handleMonthsGridViewAction: useCallback((detail) => {
            actions.monthSelected(detail);
        }, [actions]),
        /**
         * Handler for MonthsGridView.onNavigation.
         * This is used for navigating through the MonthsGridView.
         */
        handleMonthsGridViewNavigation: useCallback((detail) => {
            switch (detail.direction) {
                case 'down':
                    return actions.nextMonthRowInGridView({ month: detail.month });
                case 'next':
                    return actions.nextMonthInGridView({ month: detail.month });
                case 'previous':
                    return actions.previousMonthInGridView({ month: detail.month });
                case 'up':
                    return actions.previousMonthRowInGridView({ month: detail.month });
            }
        }, [actions]),
        /**
         * Handler for YearsGridView.onAction.
         * This is used for selecting a year in YearsGridView and navigating to
         * the selected year in MonthView.
         */
        handleYearsGridViewAction: useCallback((detail) => {
            actions.yearSelected(detail);
        }, [actions]),
        /**
         * Handler for YearsGridView.onNavigation.
         * This is used for navigating through the YearsGridView.
         */
        handleYearsGridViewNavigation: useCallback((detail) => {
            switch (detail.direction) {
                case 'down':
                    return actions.nextYearRowInGridView({ year: detail.year });
                case 'next':
                    return actions.nextYearInGridView({ year: detail.year });
                case 'nextDecade':
                    return actions.nextDecadeAndFocus({ year: detail.year });
                case 'previous':
                    return actions.previousYearInGridView({ year: detail.year });
                case 'previousDecade':
                    return actions.previousDecadeAndFocus({ year: detail.year });
                case 'up':
                    return actions.previousYearRowInGridView({ year: detail.year });
            }
        }, [actions])
    };
    const { focusProps } = useFocusWithin({
        // keep the state in sync with the actual focus state
        onBlurWithin: useCallback(() => actions.viewBlur(undefined), [actions]),
        onFocusWithin: useCallback(() => actions.viewFocus(undefined), [actions])
    });
    return {
        accessibleLabels,
        actions,
        handlers,
        state,
        todaysDate,
        toggleSelection: headerToggleSelection[state.currentView],
        viewContainerProps: { ...focusProps }
    };
};

/**
 * A Today button. The DatePicker puts this in its footer on small screens.
 * When a user presses the button, the DatePicker navigates to Today and sets focus on Today.
 */
const TodayButton = ({ onTodayNavigationAction, testId, todayNavigationAriaLabel, todayNavigationLabel }) => {
    return (jsx(Flex, { direction: "column", children: jsx(Button, { testId: testId, label: todayNavigationLabel, "aria-label": todayNavigationAriaLabel, size: "sm", onAction: onTodayNavigationAction }) }));
};

/**
 * A DatePicker is a calendar interface that allows users to select a single date.
 */
const DatePicker = ({ dayFormatter, daysOutsideMonth, isReadonly = false, monthAndYearPicker = 'on', max, maxWidth, min, value, testId, todayTimeZone, todayButton = 'visible', width, onCommit }) => {
    const { accessibleLabels, handlers, state, todaysDate, toggleSelection, viewContainerProps } = useDatePicker({
        isReadonly,
        max,
        min,
        todayTimeZone,
        value,
        onCommit
    });
    const { month, year } = state.focusableDate;
    const isMonthYearPickerEnabled = monthAndYearPicker === 'on' && !isReadonly;
    // When the screen is < 360px, we hide the DatePickerHeader's today button and show a Today button
    // on the bottom of the DatePicker instead.
    // NOTE: I cannot use xs, sm here since useBreakpointValues's types do not allow it.
    const shouldShowTodayFooterButton = useBreakpointValues({
        sm: true,
        md: false
    }, { sm: '0px', md: '360px' });
    const showTodayFooterButton = !state.isTodayNavigationButtonHidden &&
        shouldShowTodayFooterButton &&
        todayButton === 'visible';
    // we need to render the baseTheme on the root dom element so that the CSS vars in datePickerPropVars will be defined.
    const { baseTheme } = useComponentTheme(DatePickerRedwoodTheme);
    const testIdProps = useTestId(testId);
    return (jsx("div", { class: baseTheme, ...testIdProps, children: jsxs(Flex, { direction: "column", gap: state.currentView === 'monthView'
                ? datePickerPropVars.calendarGridRowGap
                : datePickerPropVars.monthYearGridRowGap, height: showTodayFooterButton
                ? datePickerPropVars.todayFooterButtonHeight
                : datePickerPropVars.height, width: width !== undefined ? width : datePickerPropVars.width, maxWidth: maxWidth !== undefined ? maxWidth : datePickerPropVars.maxWidth, children: [jsx(DatePickerHeader, { testId: testId ? testId + '_header' : undefined, month: month, year: year, isPreviousNavigationButtonHidden: state.isPreviousNavigationButtonHidden, isTodayNavigationButtonHidden: todayButton === 'hidden' ||
                        state.isTodayNavigationButtonHidden ||
                        shouldShowTodayFooterButton, isNextNavigationButtonHidden: state.isNextNavigationButtonHidden, monthYearHeader: isMonthYearPickerEnabled ? 'independentButtons' : 'text', toggleSelection: isMonthYearPickerEnabled ? toggleSelection : undefined, previousNavigationAccessibleLabel: accessibleLabels.previous, todayNavigationAccessibleLabel: accessibleLabels.goToToday, nextNavigationAccessibleLabel: accessibleLabels.next, onTodayNavigationAction: handlers.handleTodayNavigation, onPreviousNavigationAction: handlers.handlePreviousNavigation, onNextNavigationAction: handlers.handleNextNavigation, onMonthToggle: isMonthYearPickerEnabled ? handlers.handleMonthToggle : undefined, onYearToggle: isMonthYearPickerEnabled ? handlers.handleYearToggle : undefined }), jsxs("div", { ...viewContainerProps, children: [state.currentView === 'monthView' && (jsx(MonthView, { dayFormatter: dayFormatter, daysOutsideMonth: daysOutsideMonth, isReadonly: isReadonly, max: max, min: min, selectedDate: value, focusableDate: state.focusableDate, isFocused: state.isViewFocused, testId: testId ? testId + '_monthView' : undefined, todaysDate: todaysDate, onNavigation: handlers.handleMonthViewNavigation, onAction: handlers.handleMonthViewAction })), state.currentView === 'monthsGridView' && (jsx(MonthsGridView, { currentMonth: todaysDate.month, focusableMonth: state.focusableMonth, isFocused: state.isViewFocused, selectedMonth: month, testId: testId ? testId + '_monthsGridView' : undefined, onAction: handlers.handleMonthsGridViewAction, onNavigation: handlers.handleMonthsGridViewNavigation })), state.currentView === 'yearsGridView' && (jsx(YearsGridView, { currentYear: todaysDate.year, focusableYear: state.focusableYear, isFocused: state.isViewFocused, selectedYear: year, testId: testId ? testId + '_yearsGridView' : undefined, onAction: handlers.handleYearsGridViewAction, onNavigation: handlers.handleYearsGridViewNavigation }))] }), showTodayFooterButton && (jsx("div", { children: jsx(TodayButton, { testId: testId ? testId + '_footerTodayButton' : undefined, todayNavigationLabel: accessibleLabels.today, todayNavigationAriaLabel: accessibleLabels.goToToday, onTodayNavigationAction: handlers.handleTodayNavigation }) }))] }) }));
};

export { DatePicker as D };
//# sourceMappingURL=DatePicker-4356274b.js.map
