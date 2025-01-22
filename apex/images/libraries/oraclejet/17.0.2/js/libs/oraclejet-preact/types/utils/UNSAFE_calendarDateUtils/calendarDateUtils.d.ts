import { CalendarDate, CalendarDateRequired, CalendarMonth, CalendarMonthRequired, DateGranularity, DatePlaceholders, MonthYearPlaceholders, IsoDay, IsoMonth } from './types';
import { BCP47Locale, DateISOStr } from "../../UNSAFE_IntlDateTime";
declare const MAX_ISO_YEAR = 9999;
declare const MIN_ISO_YEAR = 0;
declare const MIN_ISO_DAY = 1;
declare const MIN_ISO_MONTH = 1;
declare const checkNoCalendarExtension: (locale: BCP47Locale) => void;
declare const toJSDate: (year: number, month: IsoMonth, day: IsoDay) => Date;
declare const toIsoCalendarDate: (jsDate: Date) => CalendarDateRequired;
type Duration = {
    years: number;
    months?: never;
    days?: never;
} | {
    years?: never;
    months: number;
    days?: never;
} | {
    years?: never;
    months?: never;
    days: number;
};
/**
 * This function can add and subtract years/months/days to an existing CalendarDateRequired object.
 * You can only add/subtract one duration type (years, months, days) at a time.
 * Note: When adding/subtracting years or months, the end of the month is constrained. Examples:
 * e.g. if adding 1 month: 1/31/2024 -> 2/29/2024
 * e.g. if adding 1 year: 2/29/2024 -> 2/28/2025
 * @param calendarDate
 * @param Duration Object containing the optional years/months/days you want to add to the calendarDate. Positive and negative integers are allowed.
 * @returns CalendarDateRequired
 *
 * @example
 * // To add one month:
 * addToCalendarDate({ year: 2024, month: 1, day: 31 }, { months: 1 });
 * returns: { year: 2024, month: 2, day: 29 }
 * // To subtract 7 days (go back one week):
 * addToCalendarDate({ year: 2024, month: 1, day: 31 }, { days: -7 });
 * returns: { year: 2024, month: 1, day: 24 }
 * // To add 10 years:
 * addToCalendarDate({ year: 2024, month: 1, day: 31 }, { years: 10 });
 * returns: { year: 2034, month: 1, day: 31 }
 *
 * NOTE: When Temporal is available and supported, we can be using Temporal.add() instead of
 * js Date() to do the addition / subtraction.
 * See https://tc39.es/proposal-temporal/docs/plaindate.html. For instance, to add one month:
 * const plainDate = new Temporal.PlainDate(isoYear, isoMonth, isoDay);
 * const adjustedDate = plainDate.add({months: 1}); // constrains to end of month if needed, e.g. Jan 31 -> Feb 28
 */
declare const addToCalendarDate: (calendarDate: CalendarDateRequired, { years, months, days }: Duration) => CalendarDateRequired;
/**
 * This function can add or subtract months to the existing month. When the end is reached
 * it goes to the beginning when adding and end when subtracting.
 *
 * @example
 * // adds one month
 * addToMonth(5, 1); // returns 6.
 * // subtracts one month
 * addToMonth(5, -1); // returns 4.
 * // adds one month from december
 * addToMonth(12, 1); // returns 1.
 * // subtracts one month from january
 * addToMonth(1, -1); // returns 12.
 *
 * @param month
 * @param months Duration of months that need to be added
 * @returns the result month of type IsoMonth
 */
declare const addToMonth: (month: IsoMonth, months: number) => IsoMonth;
/**
 * This function can add or subtract years to the existing year. The resulting year
 * cannot be greater than the MAX_ISO_YEAR (9999) or less than MIN_ISO_YEAR (0).
 *
 * @example
 * // adds one year
 * addToYear(2025, 1); // returns 2026.
 * // subtracts one year
 * addToYear(2025, -1); // returns 2024.
 * // adds one year to ISO_MAX_YEAR
 * addToYear(9999, 1); // returns 9999.
 * // subtracts one year from ISO_MIN_YEAR
 * addToYear(0, -1); // returns 0.
 *
 * @param year
 * @param years Duration of years that need to be added
 * @returns the result year
 */
declare const addToYear: (year: number, years: number) => number;
/**
 * This function formats a test date using Intl.DateTimeFormat for the given locale.
 * It then uses Intl.DateTimeFormat.formatToParts to get the parts of the date in a
 * locale specific order, substitutes translated placeholders, and filters out
 * unwanted parts of the date. If granularity = month, then the placeholder for day
 * is removed. The shape of the return value matches what is returned by formatToParts.
 *
 * @param locale The BCP47Locale
 * @param granularity Specifies whether you want placeholders for month, year OR day, month, year
 * @param monthPlaceholder The translated month placeholder
 * @param dayPlaceholder The translated day placeholder
 * @param yearPlaceholder The translated year placeholder
 */
declare const getDatePlaceholderMasks: (locale: BCP47Locale, granularity: 'month' | 'day', monthPlaceholder: string, dayPlaceholder: string, yearPlaceholder: string) => DatePlaceholders;
/**
 * Return the number of days in a given month and year. Pass '*' if you don't know a value.
 * If neither month or year are known, then return the maximum number of days in any month in any year.
 * If only month is known, return the maximum number of days for that month in any year.
 * For Gregorian calendar:
 *   getDaysInMonth(2, *) => returns 29
 *   getDaysInMonth(*, *) => returns 31
 *   getDaysInMonth(*, 2023) => returns 31
 */
declare const getDaysInMonth: (month: IsoMonth | '*', year: number | '*') => 28 | 31 | 30 | 29;
/**
 * Return the number of months in a given year. Pass '*' if you don't know the year.
 * In a Gregorian calendar the number of months is always 12. We'll have to revisit this
 * when multiple calendars are supported; in some cases the number of months can vary by year.
 */
declare const getMonthsInYear: (year: number | '*') => number;
/**
 * Throw an error if year is not a valid ISO year (0-9999).
 * The allowed range is too large to express using Typescript.
 */
declare const checkIsValidIsoYear: (year: number) => void;
/**
 * This utility method uses Intl.DateTimeFormat directly to format with month: long and
 * year: numeric. It returns something like 'May 2025'.
 */
declare const getLongFormattedYearMonth: (locale: BCP47Locale, year: number, month: IsoMonth) => string;
/**
 * This utility method uses Intl.DateTimeFormat directly to format with year: numeric.
 * It returns something like '2025'.
 * @param locale the locale for formatting the year
 * @param year the year of the date to be formatted
 * @param month the month of the date to be formatted
 * @returns the numeric formatted year
 */
declare const getNumericFormattedYear: (locale: BCP47Locale, year: number, month: IsoMonth) => string;
/**
 * Construct and return an IS0 date string from year, month, and day.
 */
declare const getIsoDateStr: (year: number, month: IsoMonth, day: IsoDay) => string;
/**
 * Parse a DateIsoStr and return an equivalent CalendarDate.
 */
declare const getCalendarDateFromIso: (str: DateISOStr) => CalendarDate | undefined;
/**
 * Returns the CalendarDateRequired object that represents the current CalendarDate for today
 * in the timeZone specified, or if not specified, in the default system timezone.
 *
 * @param timeZone the timeZone name
 * @returns CalendarDateRequired
 *
 * @example
 * // Return today's date in New York for the current time
 * getCalendarDateToday('America/New_York');
 */
declare const getCalendarDateToday: (timeZone?: Intl.DateTimeFormatOptions['timeZone']) => Required<CalendarDate>;
/**
 * Return the calendar date for year, month, and day formatted using the specified date style
 * in the given locale.
 */
declare const getFormattedYearMonthDay: (locale: BCP47Locale, year: number, month: IsoMonth, day: IsoDay, style: NonNullable<Intl.DateTimeFormatOptions['dateStyle']>) => string;
/**
 * Format and return the calendar date as a string. If the date is not a complete
 * date, i.e. any of its segments are missing, return an empty string.
 */
declare const formatCalendarDateAsString: (locale: BCP47Locale, calendarDate: CalendarDate, style: NonNullable<Intl.DateTimeFormatOptions['dateStyle']>) => string;
/**
 * Format an example DateISOStr in short format.
 */
declare const formatIsoDateStrAsExample: (locale: BCP47Locale, str: DateISOStr, masks?: DatePlaceholders, granularity?: DateGranularity) => string;
/**
 * Format an example CalendarMonthRequired in short format.
 */
declare const formatCalendarMonthRequiredAsExample: (locale: BCP47Locale, calMonth: CalendarMonthRequired, masks?: DatePlaceholders) => string;
/**
 * Format a CalendarDate in short format.
 */
declare const formatShortCalendarDate: (cd: CalendarDate, granularity: DateGranularity, masks: DatePlaceholders) => string;
/**
 * Format a CalendarDate in full format.
 */
declare const formatFullCalendarDate: (locale: BCP47Locale, cd: CalendarDate, granularity: DateGranularity) => string;
declare const isValidCalendarMonthRequired: (value?: CalendarMonthRequired | null) => boolean;
declare const isCompleteCalendarDate: (value: CalendarDate) => boolean;
declare const isCompleteCalendarMonth: (value: CalendarMonth) => boolean;
declare const getDatePlaceholdersFromPattern: (pattern: string) => DatePlaceholders;
declare const getMonthYearPlaceholdersFromDatePlaceholders: (datePlaceholders: DatePlaceholders) => MonthYearPlaceholders;
/**
 * Computes the closest decade that is before the provided year.
 * @param year the current year
 * @returns the closest decade before the provided year
 */
declare const getClosestDecade: (year: number) => number;
/**
 * Compares two CalendarDateRequired objects and returns a number indicating their relative order.
 * @param {CalendarDateRequired} date1 The first date to compare.
 * @param {CalendarDateRequired} date2 The second date to compare.
 * @returns {number} A negative number if date1 is before date2, a positive number if date1 is after date2, or 0 if they are the same.
 */
declare const compareDates: (date1: CalendarDateRequired, date2: CalendarDateRequired) => number;
/**
 * Checks if one CalendarDateRequired object is before another CalendarDateRequired object.
 * @param date1
 * @param date2
 * @returns {boolean} True if date1 is before date2, otherwise false.
 */
declare const isCalendarDateBefore: (date1: CalendarDateRequired, date2: CalendarDateRequired) => boolean;
/**
 * Checks if one CalendarDateRequired object is after another CalendarDateRequired object.
 * @param date1
 * @param date2
 * @returns {boolean} True if date1 is after date2, otherwise false.
 */
declare const isCalendarDateAfter: (date1: CalendarDateRequired, date2: CalendarDateRequired) => boolean;
/**
 * Constrains a given CalendarDateRequired object within the specified date range (inclusive).
 * If the date is before the min, constrain it to the min. If the date is after the max, constrain it to the max.
 * This function creates a new CalendarDateRequired object and does not modify the incoming objects.
 * @param {CalendarDateRequired} date The date to be constrained.
 * @param {CalendarDateRequired} [min] The minimum date allowed (inclusive)
 * @param {CalendarDateRequired} [max] The maximum date allowed (inclusive)
 * @returns {CalendarDateRequired} A new CalendarDateObject constrained within the specified min and max dates (inclusive).
 */
declare const constrainCalendarDate: (date: CalendarDateRequired, min?: CalendarDateRequired, max?: CalendarDateRequired) => {
    year: number;
    month: IsoMonth;
    day: IsoDay;
};
/**
 * Check if a given CalendarDateRequired object is outside of the specified min/max date range.
 * @param {CalendarDateRequired} date The date to check
 * @param {CalendarDateRequired} [min] The minimum date allowed (inclusive)
 * @param {CalendarDateRequired} [max] The maximum date allowed (inclusive)
 * @returns {boolean} True if the date is outside of the min/max range, otherwise false.
 */
declare const isDateOutOfRange: (date: CalendarDateRequired, min?: CalendarDateRequired, max?: CalendarDateRequired) => boolean | undefined;
export { MIN_ISO_DAY, MIN_ISO_MONTH, MIN_ISO_YEAR, MAX_ISO_YEAR, addToCalendarDate, addToMonth, addToYear, checkIsValidIsoYear, checkNoCalendarExtension, compareDates, constrainCalendarDate, formatCalendarDateAsString, formatShortCalendarDate, formatFullCalendarDate, formatCalendarMonthRequiredAsExample, formatIsoDateStrAsExample, getCalendarDateFromIso, getCalendarDateToday, getClosestDecade, getDatePlaceholderMasks, getFormattedYearMonthDay, getDaysInMonth, getDatePlaceholdersFromPattern, getLongFormattedYearMonth, getNumericFormattedYear, getMonthYearPlaceholdersFromDatePlaceholders, getIsoDateStr, getMonthsInYear, isCalendarDateAfter, isCalendarDateBefore, isCompleteCalendarDate, isCompleteCalendarMonth, isDateOutOfRange, isValidCalendarMonthRequired, toIsoCalendarDate, toJSDate };
