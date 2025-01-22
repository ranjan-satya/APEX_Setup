/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { G as Grid } from './Grid-cfeac922.js';
import { S as StyledDatePickerButton } from './StyledDatePickerButton-156df9b3.js';
import { u as useTranslationBundle } from './useTranslationBundle-cd815e10.js';
import { u as useUser } from './useUser-99920e02.js';
import './getFormatParse-8a357e1c.js';
import './logger-c92f309c.js';
import { g as getMonthName } from './maskUtils-4bccc3d0.js';
import { useMemo } from 'preact/compat';
import { u as useFocusableCell, a as useCellNavigation } from './useCellNavigation-006fbce0.js';
import { a as getNumericFormattedYear, d as getClosestDecade } from './calendarDateUtils-d586e25e.js';
import { _ as _curry2 } from './_curry2-34316bcf.js';

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
_curry2(function range(from, to) {
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
    const { locale } = useUser();
    const monthText = useMemo(() => ({
        short: getMonthName(locale, month, '*', 'short'),
        long: getMonthName(locale, month, '*', 'long')
    }), [locale, month]);
    // custom aria label for selected and current month
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const ariaLabel = `${monthText.long}${isCurrent ? `, ${translations.datePicker_currentDate()}` : ''}${isSelected ? `, ${translations.datePicker_selected()}` : ''}`;
    const buttonProps = useFocusableCell({ isFocusable, isFocused });
    const buttonEventHandlers = useCellNavigation({
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
    return jsx(StyledDatePickerButton, { ...buttonProps });
};

const MONTHS = range$1(1, 13);
/**
 * This component renders the Months Grid View for the DatePicker component.
 */
const MonthsGridView = ({ currentMonth, focusableMonth, isFocused = false, selectedMonth, testId, onAction, onNavigation }) => {
    // Lay out the Months in a 3-row grid.
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const monthsAriaLabel = translations.datePicker_months();
    return (jsx(Grid, { role: "grid", gap: ['13.5x', '0x'], testId: testId, "aria-label": monthsAriaLabel, children: [0, 1, 2].map((rowIndex) => (jsx(Grid, { role: "row", gap: ['0x', '3x'], gridTemplateColumns: "repeat(4, 1fr)", children: [0, 1, 2, 3].map((cellIndex) => {
                const month = MONTHS[rowIndex * 4 + cellIndex];
                return (jsx("div", { role: "gridcell", children: jsx(MonthCell, { month: month, isCurrent: month === currentMonth, isFocusable: month === focusableMonth, isFocused: month === focusableMonth && isFocused, isSelected: month === selectedMonth, onAction: onAction, onNavigation: onNavigation }, `${month}`) }));
            }) }, rowIndex))) }));
};

/**
 * A custom hook that adds functionalities to the YearCell component and computes properties for the
 * StyledDatePickerButton.
 */
const useYearCell = ({ isCurrent, isFocusable, isFocused, isSelected, year, onAction, onNavigation }) => {
    const { locale } = useUser();
    const yearText = getNumericFormattedYear(locale, year, 1);
    // custom aria label for selected and current year
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const ariaLabel = `${yearText}${isCurrent ? `, ${translations.datePicker_currentDate()}` : ''}${isSelected ? `, ${translations.datePicker_selected()}` : ''}`;
    const buttonProps = useFocusableCell({ isFocusable, isFocused });
    const buttonEventHandlers = useCellNavigation({
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
    return jsx(StyledDatePickerButton, { ...buttonProps });
};

/**
 * Represents the total number of years rendered in the view
 */
const NUM_YEARS_IN_GRID = 11;
/**
 * This component renders the Years Grid View for the DatePicker component.
 */
const YearsGridView = ({ currentYear, focusableYear, isFocused = false, selectedYear, testId, onAction, onNavigation }) => {
    const decade = getClosestDecade(focusableYear);
    // Lay out the 11 Years in a 3-row grid.
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const yearsAriaLabel = translations.datePicker_years();
    return (jsx(Grid, { role: "grid", gap: ['13.5x', '0x'], testId: testId, "aria-label": yearsAriaLabel, children: [0, 1, 2].map((rowIndex) => (jsx(Grid, { role: "row", gap: ['0x', '3x'], gridTemplateColumns: "repeat(4, 1fr)", children: range$1(rowIndex * 4, rowIndex * 4 + 4).map((index) => {
                const year = decade + index;
                if (year < decade + NUM_YEARS_IN_GRID) {
                    return (jsx("div", { role: "gridcell", children: jsx(YearCell, { year: year, isCurrent: year === currentYear, isFocusable: year === focusableYear, isFocused: year === focusableYear && isFocused, isSelected: year === selectedYear, onAction: onAction, onNavigation: onNavigation }, `${year}`) }));
                }
                return null;
            }) }, rowIndex))) }));
};

export { MonthsGridView as M, YearsGridView as Y };
//# sourceMappingURL=YearsGridView-165e5eec.js.map
