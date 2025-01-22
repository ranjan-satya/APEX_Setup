/* @oracle/oraclejet-preact: undefined */
import { C as CalendarUtils } from './getFormatParse-8a357e1c.js';
import './logger-c92f309c.js';
import { c as checkIsValidIsoYear, b as checkNoCalendarExtension } from './calendarDateUtils-d586e25e.js';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const NUMBERS_ONLY_REGEXP = /\d/;
/**
 * Replace placeholders in the masks array with their translated equivalents.
 */
const translateCustomMasks = (masks, monthPlaceholder, dayPlaceholder, yearPlaceholder) => {
    return masks.map((p) => {
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
    });
};
/**
 * Return month names for the Gregorian calendar.
 */
const getMonthNamesGregorian = (locale, style) => {
    const cal = CalendarUtils.getCalendar(locale, 'gregory');
    const _monthNamesFormatMap = {
        short: 'abbreviated',
        narrow: 'narrow',
        long: 'wide'
    };
    const calType = _monthNamesFormatMap[style];
    const months = cal.months['stand-alone'][calType];
    return months;
};
const cachedMonthNames = new Map();
/**
 * Return month name for the given locale, month, year, and style (long | short | narrow).
 * If year is unknown, pass '*'. We'll have to figure out how to handle this when we add support
 * for multiple calendars, where the number of months in a year can vary. The year is unused for
 * Gregorian calendars because the number of months is always 12.
 */
const getMonthName = (locale, month, year, style) => {
    if (year !== '*') {
        checkIsValidIsoYear(year);
    }
    checkNoCalendarExtension(locale);
    let monthNames = cachedMonthNames.get(`${locale}-${style}`);
    if (!monthNames) {
        monthNames = getMonthNamesGregorian(locale, style);
        cachedMonthNames.set(`${locale}-${style}`, monthNames);
    }
    const monthIndex = '' + month;
    return monthNames[monthIndex];
};
/**
 * Return year, month, and day for Today.
 */
const getTodayAsCalendarDate = () => {
    const date = new Date();
    const year = date.getFullYear();
    const month = date.getMonth() + 1;
    const day = date.getDate();
    return { year, month, day };
};
/**
 * Return true if the specified string contains numbers only.
 */
const isNumberOnlyString = (s) => {
    return NUMBERS_ONLY_REGEXP.test(s);
};
/**
 * Return true if the date params represent 2 different calendar dates.
 */
const calendarDatesAreDifferent = (d1, d2) => {
    const d1_empty = !d1 || (!d1.day && !d1.month && !d1.year);
    const d2_empty = !d2 || (!d2.day && !d2.month && !d2.year);
    // If both dates are empty, return false.
    if (d1_empty && d2_empty) {
        return false;
    }
    // If one is empty and the other isn't, return true.
    if ((d1_empty && !d2_empty) || (!d1_empty && d2_empty)) {
        return true;
    }
    // Return true if any of the segment values don't match.
    const d1_day = d1?.day;
    const d1_month = d1?.month;
    const d1_year = d1?.year;
    const d2_day = d2?.day;
    const d2_month = d2?.month;
    const d2_year = d2?.year;
    if (d1_day !== d2_day || d1_month !== d2_month || d1_year !== d2_year) {
        return true;
    }
    return false;
};

export { getTodayAsCalendarDate as a, calendarDatesAreDifferent as c, getMonthName as g, isNumberOnlyString as i, translateCustomMasks as t };
//# sourceMappingURL=maskUtils-4bccc3d0.js.map
