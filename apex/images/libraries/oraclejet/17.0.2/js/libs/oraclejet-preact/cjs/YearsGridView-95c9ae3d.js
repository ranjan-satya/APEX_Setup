/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var Grid = require('./Grid-03d487e5.js');
var StyledDatePickerButton = require('./StyledDatePickerButton-d6fb1f86.js');
var useTranslationBundle = require('./useTranslationBundle-9da032d6.js');
var useUser = require('./useUser-a6d15333.js');
require('./getFormatParse-4a697b8f.js');
require('./logger-2b636482.js');
var maskUtils = require('./maskUtils-f03f9c47.js');
var compat = require('preact/compat');
var useCellNavigation = require('./useCellNavigation-24bff833.js');
var calendarDateUtils = require('./calendarDateUtils-ca9bde6d.js');
var _curry2 = require('./_curry2-c15d89cd.js');

function _isNumber(x) {
  return Object.prototype.toString.call(x) === '[object Number]';
}

/**
 * Returns a list of numbers from `from` (inclusive) to `to` (exclusive).
 *
 * @func
 * @memberOf R
 * @since v0.1.0
 * @category List
 * @sig Number -> Number -> [Number]
 * @param {Number} from The first number in the list.
 * @param {Number} to One more than the last number in the list.
 * @return {Array} The list of numbers in the set `[a, b)`.
 * @example
 *
 *      R.range(1, 5);    //=> [1, 2, 3, 4]
 *      R.range(50, 53);  //=> [50, 51, 52]
 */

var range =
/*#__PURE__*/
_curry2._curry2(function range(from, to) {
  if (!(_isNumber(from) && _isNumber(to))) {
    throw new TypeError('Both arguments to range must be numbers');
  }

  var result = [];
  var n = from;

  while (n < to) {
    result.push(n);
    n += 1;
  }

  return result;
});

var range$1 = range;

/**
 * A custom hook that adds functionalities to the MonthCell component and computes properties for the
 * StyledDatePickerButton.
 */
const useMonthCell = ({ isCurrent, isFocusable, isFocused, isSelected, month, onAction, onNavigation }) => {
    const { locale } = useUser.useUser();
    const monthText = compat.useMemo(() => ({
        short: maskUtils.getMonthName(locale, month, '*', 'short'),
        long: maskUtils.getMonthName(locale, month, '*', 'long')
    }), [locale, month]);
    // custom aria label for selected and current month
    const translations = useTranslationBundle.useTranslationBundle('@oracle/oraclejet-preact');
    const ariaLabel = `${monthText.long}${isCurrent ? `, ${translations.datePicker_currentDate()}` : ''}${isSelected ? `, ${translations.datePicker_selected()}` : ''}`;
    const buttonProps = useCellNavigation.useFocusableCell({ isFocusable, isFocused });
    const buttonEventHandlers = useCellNavigation.useCellNavigation({
        navigationMap: {
            ArrowDown: 'down',
            ArrowLeft: { ltr: 'previous', rtl: 'next' },
            ArrowRight: { ltr: 'next', rtl: 'previous' },
            ArrowUp: 'up'
        },
        payload: { month },
        onAction,
        onNavigation
    });
    return {
        buttonProps: {
            'aria-label': ariaLabel,
            isActivable: true,
            label: monthText.short,
            isHoverable: true,
            isSelected,
            isToday: isCurrent,
            variant: 'month',
            ...buttonProps,
            ...buttonEventHandlers
        }
    };
};

/**
 * This component renders the individual month cell in the MonthsGridView.
 */
const MonthCell = (props) => {
    const { buttonProps } = useMonthCell(props);
    return jsxRuntime.jsx(StyledDatePickerButton.StyledDatePickerButton, { ...buttonProps });
};

const MONTHS = range$1(1, 13);
/**
 * This component renders the Months Grid View for the DatePicker component.
 */
const MonthsGridView = ({ currentMonth, focusableMonth, isFocused = false, selectedMonth, testId, onAction, onNavigation }) => {
    // Lay out the Months in a 3-row grid.
    const translations = useTranslationBundle.useTranslationBundle('@oracle/oraclejet-preact');
    const monthsAriaLabel = translations.datePicker_months();
    return (jsxRuntime.jsx(Grid.Grid, { role: "grid", gap: ['13.5x', '0x'], testId: testId, "aria-label": monthsAriaLabel, children: [0, 1, 2].map((rowIndex) => (jsxRuntime.jsx(Grid.Grid, { role: "row", gap: ['0x', '3x'], gridTemplateColumns: "repeat(4, 1fr)", children: [0, 1, 2, 3].map((cellIndex) => {
                const month = MONTHS[rowIndex * 4 + cellIndex];
                return (jsxRuntime.jsx("div", { role: "gridcell", children: jsxRuntime.jsx(MonthCell, { month: month, isCurrent: month === currentMonth, isFocusable: month === focusableMonth, isFocused: month === focusableMonth && isFocused, isSelected: month === selectedMonth, onAction: onAction, onNavigation: onNavigation }, `${month}`) }));
            }) }, rowIndex))) }));
};

/**
 * A custom hook that adds functionalities to the YearCell component and computes properties for the
 * StyledDatePickerButton.
 */
const useYearCell = ({ isCurrent, isFocusable, isFocused, isSelected, year, onAction, onNavigation }) => {
    const { locale } = useUser.useUser();
    const yearText = calendarDateUtils.getNumericFormattedYear(locale, year, 1);
    // custom aria label for selected and current year
    const translations = useTranslationBundle.useTranslationBundle('@oracle/oraclejet-preact');
    const ariaLabel = `${yearText}${isCurrent ? `, ${translations.datePicker_currentDate()}` : ''}${isSelected ? `, ${translations.datePicker_selected()}` : ''}`;
    const buttonProps = useCellNavigation.useFocusableCell({ isFocusable, isFocused });
    const buttonEventHandlers = useCellNavigation.useCellNavigation({
        navigationMap: {
            ArrowDown: 'down',
            ArrowLeft: { ltr: 'previous', rtl: 'next' },
            ArrowRight: { ltr: 'next', rtl: 'previous' },
            ArrowUp: 'up',
            PageDown: 'previousDecade',
            PageUp: 'nextDecade'
        },
        payload: { year },
        onAction,
        onNavigation
    });
    return {
        buttonProps: {
            'aria-label': ariaLabel,
            isActivable: true,
            label: yearText,
            isHoverable: true,
            isSelected,
            isToday: isCurrent,
            variant: 'year',
            ...buttonProps,
            ...buttonEventHandlers
        }
    };
};

/**
 * This component renders the individual year cell in the YearsGridView.
 */
const YearCell = (props) => {
    const { buttonProps } = useYearCell(props);
    return jsxRuntime.jsx(StyledDatePickerButton.StyledDatePickerButton, { ...buttonProps });
};

/**
 * Represents the total number of years rendered in the view
 */
const NUM_YEARS_IN_GRID = 11;
/**
 * This component renders the Years Grid View for the DatePicker component.
 */
const YearsGridView = ({ currentYear, focusableYear, isFocused = false, selectedYear, testId, onAction, onNavigation }) => {
    const decade = calendarDateUtils.getClosestDecade(focusableYear);
    // Lay out the 11 Years in a 3-row grid.
    const translations = useTranslationBundle.useTranslationBundle('@oracle/oraclejet-preact');
    const yearsAriaLabel = translations.datePicker_years();
    return (jsxRuntime.jsx(Grid.Grid, { role: "grid", gap: ['13.5x', '0x'], testId: testId, "aria-label": yearsAriaLabel, children: [0, 1, 2].map((rowIndex) => (jsxRuntime.jsx(Grid.Grid, { role: "row", gap: ['0x', '3x'], gridTemplateColumns: "repeat(4, 1fr)", children: range$1(rowIndex * 4, rowIndex * 4 + 4).map((index) => {
                const year = decade + index;
                if (year < decade + NUM_YEARS_IN_GRID) {
                    return (jsxRuntime.jsx("div", { role: "gridcell", children: jsxRuntime.jsx(YearCell, { year: year, isCurrent: year === currentYear, isFocusable: year === focusableYear, isFocused: year === focusableYear && isFocused, isSelected: year === selectedYear, onAction: onAction, onNavigation: onNavigation }, `${year}`) }));
                }
                return null;
            }) }, rowIndex))) }));
};

exports.MonthsGridView = MonthsGridView;
exports.YearsGridView = YearsGridView;
//# sourceMappingURL=YearsGridView-95c9ae3d.js.map
