/* @oracle/oraclejet-preact: undefined */
import { g as getDaysInMonth$1, i as isDateOnlyIsoString, a as getFormatParse } from './getFormatParse-8a357e1c.js';
import './logger-c92f309c.js';

const MAX_ISO_YEAR = 9999;
const MIN_ISO_YEAR = 0;
const MIN_ISO_DAY = 1;
const MIN_ISO_MONTH = 1;
const checkNoCalendarExtension = (locale) => {
    if (locale.indexOf('-u-ca-') !== -1) {
        throw new Error('Calendar not allowed in locale');
    }
};
const toJSDate = (year, month, day) => {
    // Date uses 0-based index for month.
    const date = new Date(year, month - 1, day);
    if (year < 100) {
        // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date#interpretation_of_two-digit_years
        date.setFullYear(year);
    }
    return date;
};
const toIsoCalendarDate = (jsDate) => {
    const year = jsDate.getFullYear();
    const month = jsDate.getMonth() + 1;
    const day = jsDate.getDate();
    return { year, month: month, day: day };
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
const addToCalendarDate = (calendarDate, { years, months, days }) => {
    // Verify years, months and days are integers if defined.
    throwIfNotInteger(years, 'years');
    throwIfNotInteger(months, 'months');
    throwIfNotInteger(days, 'days');
    const YEAR_MIN = 1; // the lowest year we support
    // According to the Date jsdoc, years < 100 (two-digit) have a bug that we need to workaround.
    const TWO_DIGIT_YEAR_BROWSER_OFFSET = new Date(0, 1, 2).getFullYear(); // usually 1900, but the Date jsdoc says this could be 2000.
    // First, we adjust the year or month, using the first of the month so that we don't roll
    // over to the next month based on the current day.
    const newYear = calendarDate.year + (years ? years : 0);
    let jsDateOnFirstOfMonth;
    if (newYear < 100) {
        // Deal with this:
        // https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date#interpretation_of_two-digit_years
        // do not let new year be < the cap
        const cappedYear = newYear < YEAR_MIN ? YEAR_MIN : newYear;
        jsDateOnFirstOfMonth = new Date(cappedYear, calendarDate.month - 1 + (months ? months : 0), 1);
        // E.g., let's say cappedYear is 4. And we are subtracting 1 month, and we are on January, so we go to the previous year when we move back one month.
        // e.g., const mydate = new Date(4, -1, 1) => Tue Dec 01 1903
        // mydate.getFullYear() => 1903 (It should be 3, so we have to work around that browser offset for 2-digit years)
        // diff will be 1903 - (1900+4) => -1, so we want to set full year to 4-1, 3.
        const diff = jsDateOnFirstOfMonth.getFullYear() - (TWO_DIGIT_YEAR_BROWSER_OFFSET + cappedYear);
        jsDateOnFirstOfMonth.setFullYear(cappedYear + diff);
    }
    else {
        jsDateOnFirstOfMonth = new Date(newYear, calendarDate.month - 1 + (months ? months : 0), 1);
    }
    const adjYear = jsDateOnFirstOfMonth.getFullYear();
    if (adjYear < YEAR_MIN) {
        // do not adjust the calendarDate if doing so would make the year < the cap.
        return calendarDate;
    }
    const adjMonth = jsDateOnFirstOfMonth.getMonth();
    // Now we determine the current day of the month based on the number of days in the current
    // month and year before we add the days
    const adjDay = Math.min(calendarDate.day, getDaysInMonth((adjMonth + 1), adjYear));
    // now, we adjust for the days
    const adjustedJsDate = new Date(adjYear, adjMonth, adjDay + (days ? days : 0));
    // again, handle if adjYear is < 100.
    if (adjYear < 100) {
        const diff = adjustedJsDate.getFullYear() - (TWO_DIGIT_YEAR_BROWSER_OFFSET + adjYear);
        adjustedJsDate.setFullYear(adjYear + diff);
    }
    // this is the adjusted year after we adjust for days.
    const adjYear2 = adjustedJsDate.getFullYear();
    if (adjYear2 < YEAR_MIN) {
        return calendarDate;
    }
    return {
        year: adjustedJsDate.getFullYear(),
        month: (adjustedJsDate.getMonth() + 1),
        day: adjustedJsDate.getDate()
    };
};
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
const addToMonth = (month, months) => {
    const resultMonth = month - 1 + months;
    if (resultMonth >= 12)
        return ((resultMonth % 12) + 1);
    if (resultMonth < 0)
        return (12 + (resultMonth % 12) + 1);
    return (resultMonth + 1);
};
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
const addToYear = (year, years) => {
    const resultYear = year + years;
    if (resultYear < MIN_ISO_YEAR)
        return MIN_ISO_YEAR;
    if (resultYear > MAX_ISO_YEAR)
        return MAX_ISO_YEAR;
    return resultYear;
};
// Throws an error of the value exists and is not an integer.
const throwIfNotInteger = (value, valueName) => {
    if (value && !Number.isInteger(value)) {
        throw new Error(`Internal error. Argument '${valueName}' is not an integer.`);
    }
};
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
const getDatePlaceholderMasks = (locale, granularity, monthPlaceholder, dayPlaceholder, yearPlaceholder) => {
    checkNoCalendarExtension(locale);
    const testDate = new Date('2022-11-30');
    const formatter = new Intl.DateTimeFormat(locale, { dateStyle: 'short' });
    // Filter out anything that is not month, day, year, or literal (e.g. a separator).
    const filterByType = (p) => {
        return ((granularity === 'day' && p.type === 'day') ||
            p.type === 'month' ||
            p.type === 'year' ||
            p.type === 'literal');
    };
    // Substitute translated placeholders. Trim literals for visual consistency (they can include whitespace)
    // so the date looks more like a string when the placeholders are rendered next to each other.
    const mapTranslatedPlaceholders = (p) => {
        switch (p.type) {
            case 'month':
                return { ...p, value: monthPlaceholder };
            case 'day':
                return { ...p, value: dayPlaceholder };
            case 'year':
                return { ...p, value: yearPlaceholder };
            default:
                return { ...p, value: p.value.trim() };
        }
    };
    const parts = formatter.formatToParts(testDate).filter(filterByType);
    let placeholders = parts.map(mapTranslatedPlaceholders);
    // Remove any repeated literals, which can occur after filtering (such as mm//yyyy).
    placeholders = removeExcessiveLiteralsFromPlaceholders(placeholders);
    return placeholders;
};
/**
 * Return the number of days in a given month and year. Pass '*' if you don't know a value.
 * If neither month or year are known, then return the maximum number of days in any month in any year.
 * If only month is known, return the maximum number of days for that month in any year.
 * For Gregorian calendar:
 *   getDaysInMonth(2, *) => returns 29
 *   getDaysInMonth(*, *) => returns 31
 *   getDaysInMonth(*, 2023) => returns 31
 */
const getDaysInMonth = (month, year) => {
    if (month === '*') {
        return 31;
    }
    else if (year === '*') {
        return getDaysInMonthGregorian(month);
    }
    else {
        checkIsValidIsoYear(year);
        // DateTimeUtils.getDaysInMonth uses a 0-based index.
        return getDaysInMonth$1(year, month - 1);
    }
};
/**
 * Return the number of months in a given year. Pass '*' if you don't know the year.
 * In a Gregorian calendar the number of months is always 12. We'll have to revisit this
 * when multiple calendars are supported; in some cases the number of months can vary by year.
 */
const getMonthsInYear = (year) => {
    if (year !== '*') {
        checkIsValidIsoYear(year);
    }
    return 12;
};
/**
 * Return the number of days in a month in the Gregorian calendar, without knowing the year.
 */
const getDaysInMonthGregorian = (month) => {
    switch (month) {
        case 1:
        case 3:
        case 5:
        case 7:
        case 8:
        case 10:
        case 12:
            return 31;
        case 2:
            return 29; // Since we don't know the year, return the maximum possible number of days.
        default:
            return 30;
    }
};
/**
 * Throw an error if year is not a valid ISO year (0-9999).
 * The allowed range is too large to express using Typescript.
 */
const checkIsValidIsoYear = (year) => {
    if (year < MIN_ISO_YEAR || year > MAX_ISO_YEAR) {
        throw new Error('Invalid year value');
    }
};
/**
 * This utility method uses Intl.DateTimeFormat directly to format with month: long and
 * year: numeric. It returns something like 'May 2025'.
 */
const getLongFormattedYearMonth = (locale, year, month) => {
    checkNoCalendarExtension(locale);
    const formatter = new Intl.DateTimeFormat(locale, { month: 'long', year: 'numeric' });
    return formatter.format(toJSDate(year, month, 1));
};
/**
 * This utility method uses Intl.DateTimeFormat directly to format with year: numeric.
 * It returns something like '2025'.
 * @param locale the locale for formatting the year
 * @param year the year of the date to be formatted
 * @param month the month of the date to be formatted
 * @returns the numeric formatted year
 */
const getNumericFormattedYear = (locale, year, month) => {
    checkNoCalendarExtension(locale);
    const formatter = new Intl.DateTimeFormat(locale, { year: 'numeric' });
    return formatter.format(toJSDate(year, month, 1));
};
/**
 * Construct and return an IS0 date string from year, month, and day.
 */
const getIsoDateStr = (year, month, day) => {
    checkIsValidIsoYear(year);
    // Month and day must be 2 digits and year must be 4 digits to be a valid ISO 8601 string.
    const parts = [
        year.toString().padStart(4, '0'),
        month.toString().padStart(2, '0'),
        day.toString().padStart(2, '0')
    ];
    return parts.join('-');
};
/**
 * Parse a DateIsoStr and return an equivalent CalendarDate.
 */
const getCalendarDateFromIso = (str) => {
    if (!isDateOnlyIsoString(str)) {
        return undefined;
    }
    const parts = str.split('-');
    return { year: +parts[0], month: +parts[1], day: +parts[2] };
};
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
const getCalendarDateToday = (timeZone) => toIsoCalendarDate(
// If a timezone is passed in, then create a date adjusted with the timezone, otherwise just get the date with the default timezone.
timeZone ? new Date(new Intl.DateTimeFormat('en', { timeZone }).format(new Date())) : new Date());
/**
 * Return the calendar date for year, month, and day formatted using the specified date style
 * in the given locale.
 */
const getFormattedYearMonthDay = (locale, year, month, day, style) => {
    checkNoCalendarExtension(locale);
    const dateIsoStr = getIsoDateStr(year, month, day);
    const dateFormatOptions = {
        locale,
        dateStyle: style,
        dateStyleShortYear: style === 'short' ? 'numeric' : undefined
    };
    const { format } = getFormatParse(dateFormatOptions);
    return format(dateIsoStr);
};
/**
 * Format and return the calendar date as a string. If the date is not a complete
 * date, i.e. any of its segments are missing, return an empty string.
 */
const formatCalendarDateAsString = (locale, calendarDate, style) => {
    if (!calendarDate.year || !calendarDate.month || !calendarDate.day) {
        return '';
    }
    return getFormattedYearMonthDay(locale, calendarDate.year, calendarDate.month, calendarDate.day, style);
};
/**
 * Format an example DateISOStr in short format.
 */
const formatIsoDateStrAsExample = (locale, str, masks, granularity) => {
    const calDate = getCalendarDateFromIso(str);
    // The placeholders aren't used for formatting, so use dummy values.
    const dateMasks = masks ?? getDatePlaceholderMasks(locale, granularity ?? 'day', 'mm', 'dd', 'yyyy');
    return calDate === undefined
        ? ''
        : formatShortCalendarDate(calDate, granularity ?? 'day', dateMasks);
};
/**
 * Format an example CalendarMonthRequired in short format.
 */
const formatCalendarMonthRequiredAsExample = (locale, calMonth, masks) => {
    // The placeholders aren't used for formatting, so use dummy values.
    const dateMasks = masks ?? getDatePlaceholderMasks(locale, 'month', 'mm', 'dd', 'yyyy');
    return calMonth === undefined ? '' : formatShortCalendarDate(calMonth, 'month', dateMasks);
};
/**
 * Format a CalendarDate in short format.
 */
const formatShortCalendarDate = (cd, granularity, masks) => {
    if (!cd.year || !cd.month || (granularity === 'day' && !cd.day)) {
        return '';
    }
    const dateValues = masks.map(({ type, value }) => type === 'year' ? cd.year : type === 'month' ? cd.month : type === 'day' ? cd.day : value.trim());
    return dateValues.join('');
};
/**
 * Format a CalendarDate in full format.
 */
const formatFullCalendarDate = (locale, cd, granularity) => {
    if (!cd.year || !cd.month || (granularity === 'day' && !cd.day)) {
        return '';
    }
    checkNoCalendarExtension(locale);
    return granularity === 'day'
        ? getFormattedYearMonthDay(locale, cd.year, cd.month, cd.day, 'full')
        : getLongFormattedYearMonth(locale, cd.year, cd.month);
};
// returns true if undefined or null, or if the value has a year and month property that are valid.
// This is used to check if the value, min and max properties are valid in input-month-mask.
// This is equivalent to DateTimeUtils.isDateOnlyIsoString that is used for input-date-mask.
const isValidCalendarMonthRequired = (value) => {
    if (value === undefined || value === null)
        return true;
    const { year, month } = value;
    const isValidNumber = (num, max) => {
        return (typeof num === 'number' &&
            Number.isInteger(num) &&
            num > 0 &&
            (max === undefined || num <= max));
    };
    // Check if the value is a complete object and its month is valid
    if (isValidNumber(year, MAX_ISO_YEAR) && isValidNumber(month, getMonthsInYear(year))) {
        return true;
    }
    return false;
};
const isCompleteCalendarDate = (value) => {
    const { year, month, day } = value;
    // Check if the value is a complete object
    return year !== undefined && month !== undefined && day !== undefined;
};
const isCompleteCalendarMonth = (value) => {
    const { year, month } = value;
    // Check if the value is a complete object
    return year !== undefined && month !== undefined;
};
// Given a pattern, return a DatePlaceholder array.
const getDatePlaceholdersFromPattern = (pattern) => {
    const arr = getMaskArrayFromPattern(pattern);
    const datePlaceholders = convertMaskArrayToDatePlaceholders(arr);
    return datePlaceholders;
};
// Given a pattern, like 'd-m-yyyy', return an array like ['d', '-', 'm', '-', 'yyyy']
const getMaskArrayFromPattern = (pattern) => {
    const result = [];
    let currentSegmentStr = '';
    let currentLiteral = '';
    const addSegment = () => {
        if (currentSegmentStr !== '') {
            result.push(currentSegmentStr);
            currentSegmentStr = '';
        }
    };
    const addLiteral = () => {
        if (currentLiteral !== '') {
            // InputDateMask does not want spaces in its literals. Even if InputDateMask
            // trims its literals for the masks property, we do so here as well
            // since we could end up using this for things that are
            // outside of InputDateMasks masks property.
            result.push(currentLiteral.trim());
            currentLiteral = '';
        }
    };
    for (let i = 0; i < pattern.length; i++) {
        const char = pattern[i];
        if (char.toLowerCase() === 'm' || char.toLowerCase() === 'd' || char.toLowerCase() === 'y') {
            addLiteral();
            currentSegmentStr += char;
        }
        else {
            addSegment();
            currentLiteral += char;
        }
    }
    // Add the last components
    addSegment();
    addLiteral();
    return result;
};
const getMonthYearPlaceholdersFromDatePlaceholders = (datePlaceholders) => {
    // filter out day
    const noDay = datePlaceholders.filter((part) => part.type !== 'day');
    // now filter out the extra literal
    const monthYearPlaceholders = removeExcessiveLiteralsFromPlaceholders(noDay);
    return monthYearPlaceholders;
};
// converts an array into the object that is needed to set on the InputDateMask's masks property, DatePlaceholder[];
const convertMaskArrayToDatePlaceholders = (array) => {
    return array.map((item) => {
        if (item.toLowerCase()[0] === 'd') {
            return { type: 'day', value: item };
        }
        else if (item.toLowerCase()[0] === 'm') {
            return { type: 'month', value: item };
        }
        else if (item.toLowerCase()[0] === 'y') {
            return { type: 'year', value: item };
        }
        else {
            // Default to literal for anything else
            return { type: 'literal', value: item };
        }
    });
};
const removeExcessiveLiteralsFromPlaceholders = (placeholders) => {
    const index = placeholders.findIndex((element, index, array) => {
        return element.type === 'literal' && index > 0 && array[index - 1].type === 'literal';
    });
    if (index !== -1) {
        placeholders = placeholders.slice(0, index).concat(placeholders.slice(index + 1));
    }
    // Remove any leading or trailing literals. Leading literals can occur after filtering,
    // and certain locales include trailing literals such as mm.dd.yyyy. which we don't want.
    if (placeholders[placeholders.length - 1].type === 'literal') {
        placeholders = placeholders.slice(0, -1);
    }
    if (placeholders[0].type === 'literal') {
        placeholders = placeholders.slice(1);
    }
    return placeholders;
};
/**
 * Computes the closest decade that is before the provided year.
 * @param year the current year
 * @returns the closest decade before the provided year
 */
const getClosestDecade = (year) => Math.floor(year / 10) * 10;
/**
 * Compares two CalendarDateRequired objects and returns a number indicating their relative order.
 * @param {CalendarDateRequired} date1 The first date to compare.
 * @param {CalendarDateRequired} date2 The second date to compare.
 * @returns {number} A negative number if date1 is before date2, a positive number if date1 is after date2, or 0 if they are the same.
 */
const compareDates = (date1, date2) => {
    if (date1.year !== date2.year) {
        return date1.year - date2.year;
    }
    if (date1.month !== date2.month) {
        return date1.month - date2.month;
    }
    return date1.day - date2.day;
};
/**
 * Checks if one CalendarDateRequired object is before another CalendarDateRequired object.
 * @param date1
 * @param date2
 * @returns {boolean} True if date1 is before date2, otherwise false.
 */
const isCalendarDateBefore = (date1, date2) => {
    return compareDates(date1, date2) < 0;
};
/**
 * Checks if one CalendarDateRequired object is after another CalendarDateRequired object.
 * @param date1
 * @param date2
 * @returns {boolean} True if date1 is after date2, otherwise false.
 */
const isCalendarDateAfter = (date1, date2) => {
    return compareDates(date1, date2) > 0;
};
/**
 * Constrains a given CalendarDateRequired object within the specified date range (inclusive).
 * If the date is before the min, constrain it to the min. If the date is after the max, constrain it to the max.
 * This function creates a new CalendarDateRequired object and does not modify the incoming objects.
 * @param {CalendarDateRequired} date The date to be constrained.
 * @param {CalendarDateRequired} [min] The minimum date allowed (inclusive)
 * @param {CalendarDateRequired} [max] The maximum date allowed (inclusive)
 * @returns {CalendarDateRequired} A new CalendarDateObject constrained within the specified min and max dates (inclusive).
 */
const constrainCalendarDate = (date, min, max) => {
    let constrainedDate = { ...date }; // Create a new object to avoid modifying the original date objects that are passed in.
    if (min && isCalendarDateBefore(constrainedDate, min)) {
        constrainedDate = { ...min };
    }
    if (max && isCalendarDateAfter(constrainedDate, max)) {
        constrainedDate = { ...max };
    }
    return constrainedDate;
};
/**
 * Check if a given CalendarDateRequired object is outside of the specified min/max date range.
 * @param {CalendarDateRequired} date The date to check
 * @param {CalendarDateRequired} [min] The minimum date allowed (inclusive)
 * @param {CalendarDateRequired} [max] The maximum date allowed (inclusive)
 * @returns {boolean} True if the date is outside of the min/max range, otherwise false.
 */
const isDateOutOfRange = (date, min, max) => {
    return (min && isCalendarDateBefore(date, min)) || (max && isCalendarDateAfter(date, max));
};

export { getCalendarDateFromIso as A, getFormattedYearMonthDay as B, getDatePlaceholdersFromPattern as C, getMonthYearPlaceholdersFromDatePlaceholders as D, getIsoDateStr as E, isCalendarDateAfter as F, isCompleteCalendarMonth as G, isValidCalendarMonthRequired as H, toIsoCalendarDate as I, MAX_ISO_YEAR as M, getNumericFormattedYear as a, checkNoCalendarExtension as b, checkIsValidIsoYear as c, getClosestDecade as d, compareDates as e, formatFullCalendarDate as f, getLongFormattedYearMonth as g, addToCalendarDate as h, isDateOutOfRange as i, addToYear as j, addToMonth as k, getDaysInMonth as l, isCalendarDateBefore as m, getCalendarDateToday as n, constrainCalendarDate as o, getMonthsInYear as p, MIN_ISO_DAY as q, MIN_ISO_YEAR as r, MIN_ISO_MONTH as s, toJSDate as t, getDatePlaceholderMasks as u, formatShortCalendarDate as v, isCompleteCalendarDate as w, formatCalendarDateAsString as x, formatCalendarMonthRequiredAsExample as y, formatIsoDateStrAsExample as z };
//# sourceMappingURL=calendarDateUtils-d586e25e.js.map
