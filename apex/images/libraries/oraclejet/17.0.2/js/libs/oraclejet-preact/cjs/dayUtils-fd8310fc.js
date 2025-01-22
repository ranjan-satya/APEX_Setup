/* @oracle/oraclejet-preact: undefined */
'use strict';

var getFormatParse = require('./getFormatParse-4a697b8f.js');
require('./logger-2b636482.js');
var supplementalData = require('./supplementalData-cdc1a84a.js');
var calendarDateUtils = require('./calendarDateUtils-ca9bde6d.js');

// Utilities for the calendar grid
// -------------------------------
/**
 * Given the locale and the week name type format (e.g., 'short'), return an array of the localized day of the week
 * names, in order where index 0 is the first day of the week for that locale, index 1 is the second day of the week, etc.
 *
 * For example, if the locale is 'en-US', the region is 'US' and the first day of the week for 'US' is Sunday, and this
 * will return ['Sun', 'Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat'].
 * Another example, if the locale is 'es', its default region is 'ES', and the first day of the week is Monday. This
 * will return ['lun', 'mar', 'mié', 'jue', 'vie', 'sáb', 'dom'].
 * And if the region is not found in our supplemental data, we return the week day names for the locale starting on Monday.
 * For example, VA is not in our supplemental data, so for locale 'it-VA', this returns
 * ['lun', 'mar', 'mer', 'gio', 'ven', 'sab', 'dom'].
 * @param locale
 * @param type 'long', 'short', or 'narrow'
 * @returns an array of the localized day of the week
 * names, in order where index 0 is the first day of the week for that locale, index 1 is the second day of the week for that locale, etc.
 */
function getDaysOfWeekNames(locale, type) {
    calendarDateUtils.checkNoCalendarExtension(locale);
    const dayOfWeekNames = getDaysOfWeekNamesSunThroughSat(locale, type);
    const firstDay = getWeekStart(locale); // 1 is Monday, 7 is Sunday.
    return [...new Array(7).keys()].map((dow) => {
        // days of the week
        const day = (dow + firstDay) % 7;
        return dayOfWeekNames[day];
    });
}
/*
 * Returns an array of the day of the week names for the locale in the type format (e.g., 'short')
 * where sunday is the index 0, monday is index 1.
 */
function getDaysOfWeekNamesSunThroughSat(locale, type) {
    const cal = getFormatParse.CalendarUtils.getCalendar(locale, 'gregory');
    // convert to type that the cal days takes. These options do not match Intl.DateTimeFormat so I do not use those in
    // getDaysOfWeekNamesSunThroughSat api.
    const _monthNamesFormatMap = {
        short: 'abbreviated',
        narrow: 'narrow',
        long: 'wide'
    };
    const calType = _monthNamesFormatMap[type];
    const days = cal.days['stand-alone'][calType];
    // this is the translated days of the week for the locale.
    return [days.sun, days.mon, days.tue, days.wed, days.thu, days.fri, days.sat];
}
/**
 * Given the locale, return the first day of the week number (1-7) for that locale's region or default region.
 * 1 for Monday, 7 for Sunday.
 * <p>
 * From the intl locale proposal it says Monday is 1 and Sunday is 7, as defined by ISO-8861 and followed by Temporal proposal
 * and this follows the same.
 * </p>
 * @param locale
 * @returns {FirstDayNum} the first day of the week for the locale's region or
 * 1 if no first day of week for the region is found in our supplemental data. 1 is for Monday, and this
 * is the international standard for first day of the week.
 */
function getWeekStart(locale) {
    calendarDateUtils.checkNoCalendarExtension(locale);
    // 1. given locale, get the region
    // 2. given the region, get the first day of the week from the supplemental data.
    // TODO: When Intl.Locale's weekInfo supports all browsers, we can switch to using that.
    const region = getRegion(locale);
    // We default to 1 like we do in legacy jet's supplementalData.
    // Monday is the first day of the week according to the international standard ISO 8601.
    const FIRST_DAY_OF_WEEK_DEFAULT = 1;
    return supplementalData.weekData.firstDay[region] ?? FIRST_DAY_OF_WEEK_DEFAULT;
}
const cachedRegions = new Map();
/**
 * Given the locale, return its region or its default region or '001'. Internally it
 * delegates to new Intl.Locale(locale).maximize().region and caches the result.
 * Examples:
 * new Intl.Locale('en-US').maximize().region returns 'US'.
 * new Intl.Locale('es').maximize().region returns 'ES'.
 * new Intl.Locale('ar').maximize().region returns 'EG'.
 * new Intl.Locale('pseudo').maximize().region returns undefined, so this method returns '001'.
 * @param locale
 * @returns the locale's region or default region or '001' if the region is undefined.
 */
function getRegion(locale) {
    calendarDateUtils.checkNoCalendarExtension(locale);
    // Constructing an Intl.Locale is expensive, so cache the result.
    let region = cachedRegions.get(locale);
    if (!region) {
        // Intl.Locale returns a default region if the locale doesn't explicitly have one.
        // If locale is not valid, it will throw an error.
        // 'pseudo' is a locale where it will not throw an error, and it will return undefined for region.
        // Legacy JET defaults the region to '001'.
        const JET_SUPPLEMENTAL_DATA_REGION_DEFAULT = '001';
        region = new Intl.Locale(locale).maximize().region ?? JET_SUPPLEMENTAL_DATA_REGION_DEFAULT;
        cachedRegions.set(locale, region); // cache our default if region is not found.
    }
    return region;
}
/**
 * Given a date (a year, month, day) and a locale, return the day of the week by index
 * as it would be rendered in a CalendarGrid, 0 if the date goes into the first day of the week column and 6 is the last column for the week.
 *
 * This is useful in determining the number of weeks in the month and the number
 * of lead days in the first week in a month in a CalendarGrid.
 *
 * For example, if the date is a Thursday and the locale is 'en_US' which has a weekStart of Sunday,
 * then the CalendarGrid's week is displayed Sun Mon Tue Wed Thu Fri Sat, and we will return 4, meaning
 * the date would go into index 4 of the week array that starts at 0.
 *
 * This is different than getDayOfWeek.
 * @param year
 * @param month
 * @param day
 * @returns 0-6, the day of the week number for the calendar grid as an index number.
 * 0 will be the first day of the week (this date belongs in the  first column in the calendar grid)
 *  and 6 will be the last day of the week (this date belongs in the last column in the calendar grid)
 */
function getDayOfWeekForCalendarGrid(year, month, day, locale) {
    calendarDateUtils.checkNoCalendarExtension(locale);
    const weekStart = getWeekStart(locale); // 1 for Monday, 6 for Saturday, 7 for Sunday.
    const weekdayNumberForDate = getDayOfWeek(year, month, day); // 1 for Monday, 7 for Sunday as well.
    // Calculate the day of the week relative to the locale's week start.
    // Examples:
    // if weekStart is 1 (Monday) and weekdayNumberForDate is 1, getDayOfWeekForCalendarGrid for calendar grid is 0.
    // if weekStart is 7 (Sunday) and weekdayNumberForDate is 1 (Monday), getDayOfWeekForCalendarGrid for calendar grid is 1.
    // if weekStart is 6 (Saturday) and weekdayNumberForDate is 1 (Monday), getDayOfWeekForCalendarGrid for calendar grid is 2.
    const dayOfWeekDiff = weekdayNumberForDate - weekStart;
    // constrain the number to between 0 and 7.
    // E.g., if weekStart is Saturday (6) and weekdayNumberForDate is Monday (1), dayOfWeekDiff is 1-6 = -5.
    // so we them make it 2 % 7 which is 2.
    const getDayOfWeekForCalendarGrid = (dayOfWeekDiff + 7) % 7;
    return getDayOfWeekForCalendarGrid;
}
/**
 * Returns the weekday number that the date falls on.
 * For the ISO 8601 calendar, the weekday number is defined as in the ISO 8601 standard:
 * a value between 1 and 7, inclusive, with Monday being 1, and Sunday 7. For an overview, see ISO 8601 on Wikipedia.
 * When we have Temporal, we can use temporalDate.dayOfWeek as the implementation.
 *
 * @param year
 * @param month
 * @param day
 * @returns A value between 1 and 7, inclusive, with Monday being 1, and Sunday 7.
 */
function getDayOfWeek(year, month, day) {
    const jsDate = calendarDateUtils.toJSDate(year, month, day);
    // date.getDay() returns an integer between 0 and 6, representing the day of the week for the given date according to local time.
    const dateDay = jsDate.getDay();
    // Instead of 0 for Sunday, we want 7 for Sunday so that it matches what Temporal does for temporalDate.dayOfWeek.
    const dayOfWeekNum = dateDay === 0 ? 7 : dateDay;
    return dayOfWeekNum;
}
// returns year/month/day object that is the start of the month.
// startOfMonth(2022, 2, 3); // {year: 2022, month:2, day:1}
function startOfMonth(year, month) {
    return {
        year,
        month,
        day: 1
    };
}
/**
 * Given a year, a month, and a locale, return the number of weeks in the month. This is useful for CalendarGrid.
 * @param year
 * @param month
 * @param locale
 * @returns the number of weeks in the month. Typically 4, 5, or 6.
 */
function getWeeksInMonth(year, month, locale) {
    calendarDateUtils.checkNoCalendarExtension(locale);
    // DateTimeUtils.getDaysInMonth uses a 0-based index for month.
    const daysInMonth = getFormatParse.getDaysInMonth(year, month - 1);
    const som = startOfMonth(year, month); // e.g., som is {year: 2023, month: 9, day: 1} for September 1, 2023.
    return Math.ceil((getDayOfWeekForCalendarGrid(som.year, som.month, som.day, locale) + daysInMonth) / 7);
}
/**
 * Helper function for getDatesInWeek. Given a date (as year, month, day), return an array of length 7 that
 * contains the the date in index 0, and then the next day in index 1, etc.
 * @param year
 * @param month
 * @param day
 * @returns
 */
function getDatesInOneWeek(year, month, day) {
    const weekArray = [];
    const jsStartDate = calendarDateUtils.toJSDate(year, month, day);
    const daysInWeek = 7;
    for (let i = 0; i < daysInWeek; i++) {
        const yearMonthDay = toIsoCalendarDateRequired(jsStartDate);
        weekArray.push(yearMonthDay);
        // When we have Temporal, we could do startDate.add({days: 1});
        const day = jsStartDate.getDate();
        jsStartDate.setDate(day + 1);
    }
    return weekArray;
}
/**
 * This function is used to generate a calendar grid for a month.
 * For a given date (a year, month, and day) that is the start of the calendar month, return an array with the dates for that week index.
 * For example,in a calendar that starts on Sunday, the start of the calendar for Feb, 2023 is Jan 29. So you should
 * pass in year: 2023, month: 1, day: 29 weekIndex 0 (call getStartOfWeek to get this)
 * when you want the dates for the first week of February, and weekIndex 1
 * if you want the dates for the second week of February.
 *
 *       February 2023
 * Sun Mon Tue Wed Thu Fri Sat
 *
 * 29  30  31  1   2   3   4
 *
 * You can use this in conjunction with getStartOfWeek(year, month, 1, locale) and getWeeksInMonth(weekIndex, startDateOfWeek.year,
 * startDateOfWeek.month, startDateOfWeek.day) to build a calendar month.
 *
 * @param weekIndex
 * @param year the year
 * @param month the startOfWeek month for the first week in the calendar month.
 * @param day the startOfWeek day for the first week in the calendar month.
 * @returns
 */
function getDatesInWeek(weekIndex, year, month, day) {
    const jsStartDate = calendarDateUtils.toJSDate(year, month, day);
    if (weekIndex === 0) {
        return getDatesInOneWeek(year, month, day);
    }
    // Temporal would do startDate.add({weeks: 1});
    // It is ok to setDate to a date > 31. setDate takes you into the next month or year if it has to.
    jsStartDate.setDate(day + 7 * weekIndex);
    const yearMonthDay = toIsoCalendarDateRequired(jsStartDate);
    return getDatesInOneWeek(yearMonthDay.year, yearMonthDay.month, yearMonthDay.day);
}
/**
 * Given a date (a year, month, and day) and a locale, return the start of the week date as an object with year, month and day keys.
 * @param year
 * @param month
 * @param day
 * @param locale
 * @returns the start of the week date as an object with type CalendarDateRequired.
 */
function getStartOfWeek(year, month, day, locale) {
    const dayOfWeekInGrid = getDayOfWeekForCalendarGrid(year, month, day, locale);
    const jsDateInWeek = calendarDateUtils.toJSDate(year, month, day);
    // Temporal would do this: date.subtract({days: dayOfWeekInGrid});
    jsDateInWeek.setDate(day - dayOfWeekInGrid);
    return toIsoCalendarDateRequired(jsDateInWeek);
}
function toIsoCalendarDateRequired(jsDate) {
    const year = jsDate.getFullYear();
    const month = jsDate.getMonth() + 1;
    const day = jsDate.getDate();
    return { year, month: month, day: day };
}

exports.getDatesInWeek = getDatesInWeek;
exports.getDayOfWeek = getDayOfWeek;
exports.getDayOfWeekForCalendarGrid = getDayOfWeekForCalendarGrid;
exports.getDaysOfWeekNames = getDaysOfWeekNames;
exports.getRegion = getRegion;
exports.getStartOfWeek = getStartOfWeek;
exports.getWeekStart = getWeekStart;
exports.getWeeksInMonth = getWeeksInMonth;
exports.toIsoCalendarDateRequired = toIsoCalendarDateRequired;
//# sourceMappingURL=dayUtils-fd8310fc.js.map
