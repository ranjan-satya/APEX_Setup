/* @oracle/oraclejet-preact: undefined */
'use strict';

var types = require('./types-55573a46.js');
var logger = require('./logger-2b636482.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
class CalendarUtils {
    // Uses the Intl.DateTimeFormat formatToParts to get the day periods.
    // Returns this object
    // "dayPeriods": {
    //  "format": {
    //    "wide": {
    //      "am": "AM",
    //      "pm": "PM"
    //    }}}
    static _getDayPeriods(locale, calendar) {
        const date = new Date(2019, 0, 1, 0, 0, 0);
        function getDayPeriodsFromFormatToParts(formatter) {
            const formatParts = formatter.formatToParts(date);
            const eraPart = formatParts.find((value) => value.type === 'dayPeriod');
            // TODO Era is failing for chinese calendar. Need to fix it
            if (eraPart) {
                return eraPart.value;
            }
            return '';
        }
        const options = { hour: 'numeric', hour12: true };
        const formatterLocale = CalendarUtils.getFormatterLocale(locale, calendar);
        const formatter = new Intl.DateTimeFormat(formatterLocale, options);
        const amValue = getDayPeriodsFromFormatToParts(formatter);
        date.setHours(20);
        const pmValue = getDayPeriodsFromFormatToParts(formatter);
        return { format: { wide: { am: amValue, pm: pmValue } } };
    }
    static getFormatterLocale(locale, calendar) {
        return locale + '-u-ca-' + calendar;
    }
    // Example of an eras from localeElements is this, but this fn gets all the data, not just eraAbbr.
    // "eras": {
    //   "eraAbbr": {
    //     "0": "BC",
    //     "1": "AD"
    //   }
    // },
    static _getEras(locale, calendar) {
        const eras = [{ era: '0', start: '2000-02-11T00:00:00' }];
        const cal = {
            eraNarrow: { '0': '', '1': '' },
            eraAbbr: { '0': '', '1': '' },
            eraName: { '0': '', '1': '' }
        };
        function getEraFromFormatToParts(formatter, date) {
            const formatParts = formatter.formatToParts(date);
            const eraPart = formatParts.find((value) => value.type === 'era');
            if (eraPart) {
                return eraPart.value;
            }
            return '';
        }
        const eraLenArray = [
            'narrow',
            'short',
            'long'
        ];
        const formatterLocale = CalendarUtils.getFormatterLocale(locale, calendar);
        // get the erra name for narrow, short, long.
        // e.g., A, AD, Anno Domini
        // this is used to map the era option value from Intl.DateTimeFormat to
        // what we want to short in our CalendarNode
        const eraMap = {
            narrow: 'eraNarrow',
            short: 'eraAbbr',
            long: 'eraName'
        };
        for (let i = 0; i < eras.length; i++) {
            const date = new Date(eras[i].start);
            for (let j = 0; j < eraLenArray.length; j++) {
                const eraLenName = eraLenArray[j];
                const options = { year: 'numeric', month: 'numeric', day: 'numeric', era: eraLenName };
                const formatter = new Intl.DateTimeFormat(formatterLocale, options);
                const eraForLength = getEraFromFormatToParts(formatter, date);
                const eraNameForNode = eraMap[eraLenName];
                const eraObj = { '0': eraForLength, '1': eraForLength };
                cal[eraNameForNode] = eraObj;
            }
        }
        return cal;
    }
    static _fillMonthAndDays(locale, calendar, widthVal, options, isStandAlone) {
        // These date are used to fill in the months and weekdays.
        // Each date is a different day of week and month. Like, the first is sun in January, the second is mon in Feb, etc.
        // If you know that a specific date, such as January 5, 2020, falls on a Sunday in Los Angeles, you can safely assume that it's also a Sunday in China.
        // This assumption is based on the consistency of the seven-day week cycle used worldwide
        // and the fact that days of the week are determined by the Earth's rotation.
        const dates = [
            [2020, 0, 5],
            [2020, 1, 3],
            [2020, 2, 3],
            [2020, 3, 1],
            [2020, 4, 7],
            [2020, 5, 5],
            [2020, 6, 4],
            [2020, 7, 1],
            [2020, 8, 1],
            [2020, 9, 1],
            [2020, 10, 1],
            [2020, 11, 1]
        ];
        function getMonthFromFormatToParts(formatParts) {
            const monthPart = formatParts.find((value) => value.type === 'month');
            if (monthPart) {
                return monthPart.value;
            }
            return null;
        }
        function getWeekdayFromFormatToParts(formatParts) {
            const weekdayPart = formatParts.find((value) => value.type === 'weekday');
            if (weekdayPart) {
                return weekdayPart.value;
            }
            return null;
        }
        const formatterLocale = CalendarUtils.getFormatterLocale(locale, calendar);
        const formatter = new Intl.DateTimeFormat(formatterLocale, options);
        const calMonthFormat = {};
        const calDayFormat = {};
        // It loops from 0 to 12, dates is for each month. [0] is the year, [1] is the month, [2] is the day
        // create a new date with year, month, day. each date[j] is a different month of the year, and it also has a different weekday.
        for (let j = 0; j < dates.length; j++) {
            const index = j + 1; // 1 to 12
            const dayIndexVal = CalendarUtils._weekdaysFormatMap[index];
            const date = new Date(dates[j][0], dates[j][1], dates[j][2]);
            const formatParts = formatter.formatToParts(date);
            let month;
            let weekday;
            // for stand-alone (e.g., {month: 'short'}), there is only one entry, so we can just get the
            // value of format. No need for formatToParts to pull out just the month piece.
            // Note that for ja format gives you the month kanji character too and formatToParts month is only the number. The kanji character is in the literal.
            if (isStandAlone) {
                month = formatter.format(date);
                weekday = formatter.format(date);
            }
            else {
                month = getMonthFromFormatToParts(formatParts);
                weekday = getWeekdayFromFormatToParts(formatParts);
            }
            // store the month and weekday in the obj; only fill in weekday if (index <= 7)
            if (calMonthFormat[widthVal] === undefined) {
                calMonthFormat[widthVal] = {};
            }
            // @ts-ignore
            calMonthFormat[widthVal][index] = month;
            if (index <= 7) {
                if (calDayFormat[widthVal] === undefined) {
                    calDayFormat[widthVal] = {};
                }
                // @ts-ignore
                calDayFormat[widthVal][dayIndexVal] = weekday;
            }
        }
        return {
            monthFormat: calMonthFormat, // This will be an object like {'abbreviated': Partial<MonthType}
            dayFormat: calDayFormat
        };
    }
    static _getFormatMonthAndDays(locale, calendar) {
        const calMonths = [];
        const calDays = [];
        // Intl.DateTimeFormat's month can take: "numeric" (e.g., 3)"2-digit" (e.g., 03)"long" (e.g., March)"short" (e.g., Mar) "narrow" (e.g., M).
        const types = ['short', 'narrow', 'long'];
        for (let i = 0; i < types.length; i++) {
            const options = {
                month: types[i],
                weekday: types[i],
                year: 'numeric',
                day: 'numeric'
            };
            // types get mapped to short: 'abbreviated', narrow: 'narrow', long: 'wide'
            const widthVal = CalendarUtils._monthNamesFormatMap[types[i]]; // get alternate names for 'narrow', 'short', 'long'
            const monthDayObjForWidth = CalendarUtils._fillMonthAndDays(locale, calendar, widthVal, options, false);
            calMonths[i] = monthDayObjForWidth.monthFormat;
            calDays[i] = monthDayObjForWidth.dayFormat;
        }
        const myMonthObj = Object.assign({}, ...calMonths);
        const myDayObj = Object.assign({}, ...calDays);
        const myMonthFormatObj = {};
        myMonthFormatObj.format = myMonthObj;
        const myDayFormatObj = {};
        myDayFormatObj.format = myDayObj;
        myMonthFormatObj['stand-alone'] = myMonthFormatObj.format;
        myDayFormatObj['stand-alone'] = myDayFormatObj.format;
        return {
            monthsNode: myMonthFormatObj,
            daysNode: myDayFormatObj
        };
    }
    static _getStandAloneDays(locale, calendar) {
        const calDays = [];
        // Intl.DateTimeFormat's weekday can take: "long" (e.g., Monday)"short" (e.g., Mon) "narrow" (e.g., M).
        // stand-alone weekday is displayed when the options conatin only one attribute weekday: options = {weekday:'long'}
        const types = ['short', 'narrow', 'long'];
        for (let i = 0; i < types.length; i++) {
            const options = {
                weekday: types[i]
            };
            // types get mapped to short: 'abbreviated', narrow: 'narrow', long: 'wide'
            const widthVal = CalendarUtils._monthNamesFormatMap[types[i]]; // get alternate names for 'narrow', 'short', 'long'
            const dayObjForWidth = CalendarUtils._fillMonthAndDays(locale, calendar, widthVal, options, true);
            calDays[i] = dayObjForWidth.dayFormat;
        }
        const myDayObj = Object.assign({}, ...calDays);
        const myDayStandAloneObj = { 'stand-alone': {} };
        myDayStandAloneObj['stand-alone'] = myDayObj;
        return {
            daysNode: myDayStandAloneObj
        };
    }
    static _getStandAloneMonths(locale, calendar) {
        const calMonths = [];
        // Intl.DateTimeFormat's month can take: "numeric" (e.g., 3)"2-digit" (e.g., 03)"long" (e.g., March)"short" (e.g., Mar) "narrow" (e.g., M).
        // stand-alone month is displayed when the options conatin only one attribute month: options = {month:'long'}
        const types = ['short', 'narrow', 'long'];
        for (let i = 0; i < types.length; i++) {
            const options = {
                month: types[i]
            };
            // types get mapped to short: 'abbreviated', narrow: 'narrow', long: 'wide'
            const widthVal = CalendarUtils._monthNamesFormatMap[types[i]]; // get alternate names for 'narrow', 'short', 'long'
            const monthObjForWidth = CalendarUtils._fillMonthAndDays(locale, calendar, widthVal, options, true);
            calMonths[i] = monthObjForWidth.monthFormat;
        }
        const myMonthObj = Object.assign({}, ...calMonths);
        const myMonthStandAloneObj = { 'stand-alone': {} };
        myMonthStandAloneObj['stand-alone'] = myMonthObj;
        return {
            monthsNode: myMonthStandAloneObj
        };
    }
    /**
     * Fills in CalendarUtils.calendars[locale][calendar] public static object.
     * @param locale locale name
     * @param calendar calendar name
     */
    static getCalendar(locale, calendar) {
        CalendarUtils.calendars = CalendarUtils.calendars ?? {};
        CalendarUtils.calendars[locale] = CalendarUtils.calendars[locale] ?? {};
        if (CalendarUtils.calendars[locale][calendar] === undefined) {
            const dayPeriodsObj = CalendarUtils._getDayPeriods(locale, calendar);
            const erasObj = CalendarUtils._getEras(locale, calendar);
            let monthFormat;
            let dayFormat;
            const standAloneMonths = CalendarUtils._getStandAloneMonths(locale, calendar);
            const standAloneDays = CalendarUtils._getStandAloneDays(locale, calendar);
            const useStandAlone = CalendarUtils.exceptionLocales.includes(locale);
            // TODO this might only be needed for gregorian calendar. Need to check when
            // we support other calendars
            if (useStandAlone) {
                monthFormat = standAloneMonths.monthsNode['stand-alone'];
                dayFormat = standAloneDays.daysNode['stand-alone'];
            }
            else {
                const monthsDaysNodeObj = CalendarUtils._getFormatMonthAndDays(locale, calendar);
                monthFormat = monthsDaysNodeObj.monthsNode.format;
                dayFormat = monthsDaysNodeObj.daysNode.format;
            }
            const monthsNodes = {
                format: monthFormat,
                'stand-alone': standAloneMonths.monthsNode['stand-alone']
            };
            const daysNodes = {
                format: dayFormat,
                'stand-alone': standAloneDays.daysNode['stand-alone']
            };
            CalendarUtils.calendars[locale][calendar] = {
                dayPeriods: dayPeriodsObj,
                months: monthsNodes,
                days: daysNodes,
                eras: erasObj,
                locale: locale
            };
        }
        return CalendarUtils.calendars[locale][calendar];
    }
}
CalendarUtils._monthNamesFormatMap = {
    short: 'abbreviated',
    narrow: 'narrow',
    long: 'wide'
};
CalendarUtils._weekdaysFormatMap = {
    1: 'sun',
    2: 'mon',
    3: 'tue',
    4: 'wed',
    5: 'thu',
    6: 'fri',
    7: 'sat'
};
// The following locales have month name like '1<literal>' (where literal is the lang's character for 'month')
// if we pass in the options
// month:'long' or month:'short' the corresponding pattern in CLDR is 'M<literal>'
// which is month numeric followed by the <literal>. As a result formatToParts
// will return {type: month, value:1} followed by {type: literal, value:<literal>}.
// These locales have same names for stand-alone and format month names.
// As a work around we will get the format month names for these
// locales using the stand-alone option instead of formatToParts.
// For example: in ja-JP locale we have:
// "months": {
//   "format": {
//       "abbreviated": {
//           "1": "1\u6708",
//  }
// but the corresponding pattern is "yMMMd": "y\u5e74M\u6708d\u65e5"
// so formatToParts will return
// {type: month, value:1} followed by {type: literal, value:'\u6708d'}
// As a result we get '1' as month name in the calendar data instead of '1\u6708'
CalendarUtils.exceptionLocales = [
    'ja',
    'ja-JP',
    'zh',
    'zh-Hans',
    'zh-Hans-CN',
    'zh-Hans-HK',
    'zh-Hans-MO',
    'zh-Hans-SG',
    'zh-Hant',
    'zh-Hant-HK',
    'zh-Hant-MO',
    'zh-Hant-TW'
];

/**
 * @license
 * Copyright (c) 2004 %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
// cache the converters
const formatterCache = new Map();
function getISODateOffset(date, timeZone) {
    // Get the timezone-adjusted representation of the date parameter interpreted as UTC
    const d = new Date(Date.UTC(date.year, date.month - 1, date.date, date.hours, date.minutes));
    const utcDateAtTimezone = _applyTimezoneToDate(d, timeZone);
    // get the offset of the target timezone (subject to a possible DTS change ajustment)
    const offset = _getOffset(date, utcDateAtTimezone);
    let adjustment = 0;
    d.setTime(d.getTime() - offset * 60000);
    // check whether the offset is correct
    if (!_compareDates(_applyTimezoneToDate(d, timeZone), date)) {
        // try to accommodate 'fall back'/move 1 hour west
        adjustment = -60;
        d.setTime(d.getTime() + 60 * 60000);
        if (!_compareDates(_applyTimezoneToDate(d, timeZone), date)) {
            // spring forward/move 1 hour east
            // This case should always produce a match unless we are hitting the missing hour during the 'spring forward'
            // JS Date() favors the DST in this case, so we will remain at the 'spring forward' offset even if _compareDates()
            // would have returned false
            adjustment = 60;
            d.setTime(d.getTime() - 120 * 60000);
        }
    }
    const result = offset + adjustment;
    return result;
}
function _applyTimezoneToDate(d, timeZone) {
    const cnv = _getConverter(timeZone);
    const formattedUTC = cnv.format(d);
    const [localDate, localTime] = formattedUTC.split(',');
    const [month, date, year] = localDate.split('/');
    const [hours, minutes] = localTime.trim().split(':');
    return {
        year: parseInt(year),
        month: parseInt(month),
        date: parseInt(date),
        hours: parseInt(hours),
        minutes: parseInt(minutes)
    };
}
function _getOffset(original, asUTC) {
    let originalMins = original.hours * 60 + original.minutes;
    let utcMinutes = asUTC.hours * 60 + asUTC.minutes;
    // any shift in year, month or day indicates the following day
    let delta = original.year - asUTC.year;
    if (delta == 0) {
        delta = original.month - asUTC.month;
        if (delta === 0) {
            delta = original.date - asUTC.date;
        }
    }
    if (delta > 0) {
        originalMins += 24 * 60;
    }
    else if (delta < 0) {
        utcMinutes += 24 * 60;
    }
    return utcMinutes - originalMins;
}
function _compareDates(date1, date2) {
    return (date1.year === date2.year &&
        date1.month === date2.month &&
        date1.hours === date2.hours &&
        date1.minutes === date2.minutes);
}
function _getConverter(timezone) {
    let formatter = formatterCache.get(timezone);
    if (!formatter) {
        formatter = new Intl.DateTimeFormat('en-US', {
            year: 'numeric',
            month: 'numeric',
            day: 'numeric',
            hour: 'numeric',
            minute: 'numeric',
            second: 'numeric',
            hourCycle: 'h23',
            timeZone: timezone
        });
        formatterCache.set(timezone, formatter);
    }
    return formatter;
}

/**
 * @license
 * Copyright (c) 2004 %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
class NativeDateTimeConstants {
}
NativeDateTimeConstants._YEAR_AND_DATE_REGEXP = /(\d{1,4})\D+?(\d{1,4})/g;
NativeDateTimeConstants._YMD_REGEXP = /(\d{1,4})\D+?(\d{1,4})\D+?(\d{1,4})/g;
NativeDateTimeConstants._TIME_REGEXP = /(\d{1,2})(?:\D(\d{1,2}))?(?:\D(\d{1,2}))?(?:\D(\d{1,3}))?/g;
NativeDateTimeConstants._TIME_FORMAT_REGEXP = /h|H|K|k/g;
NativeDateTimeConstants._YEAR_REGEXP = /y{1,4}/;
NativeDateTimeConstants._MONTH_REGEXP = /M{1,5}/;
NativeDateTimeConstants._DAY_REGEXP = /d{1,2}/;
NativeDateTimeConstants._WEEK_DAY_REGEXP = /E{1,5}/;
NativeDateTimeConstants._HOUR_REGEXP = /h{1,2}|k{1,2}/i;
NativeDateTimeConstants._MINUTE_REGEXP = /m{1,2}/;
NativeDateTimeConstants._SECOND_REGEXP = /s{1,2}/;
NativeDateTimeConstants._FRACTIONAL_SECOND_REGEXP = /S{1,3}/;
NativeDateTimeConstants._AMPM_REGEXP = /a{1,2}/;
NativeDateTimeConstants._WORD_REGEXP = '(\\D+?\\s*)';
// This eslint disable require to make eacs happy
// eslint-disable-next-line no-useless-escape
NativeDateTimeConstants._ESCAPE_REGEXP = /([\^$.*+?|\[\](){}])/g;
NativeDateTimeConstants._TOKEN_REGEXP = /ccccc|cccc|ccc|cc|c|EEEEE|EEEE|EEE|EE|E|dd|d|MMMMM|MMMM|MMM|MM|M|LLLLL|LLLL|LLL|LL|L|yyyy|yy|y|hh|h|HH|H|KK|K|kk|k|mm|m|ss|s|aa|a|SSS|SS|S|zzzz|zzz|zz|z|v|ZZZ|ZZ|Z|XXX|XX|X|VV|GGGGG|GGGG|GGG|GG|G/g;
NativeDateTimeConstants._ZULU = 'zulu';
NativeDateTimeConstants._LOCAL = 'local';
NativeDateTimeConstants._AUTO = 'auto';
NativeDateTimeConstants._INVARIANT = 'invariant';
NativeDateTimeConstants._OFFSET = 'offset';
NativeDateTimeConstants._ALNUM_REGEXP = '(\\D+|\\d\\d?\\D|\\d\\d?|\\D+\\d\\d?)';
NativeDateTimeConstants._NON_DIGIT_REGEXP = '(\\D+|\\D+\\d\\d?)';
NativeDateTimeConstants._NON_DIGIT_OPT_REGEXP = '(\\D*)';
NativeDateTimeConstants._STR_REGEXP = '(.+?)';
NativeDateTimeConstants._TWO_DIGITS_REGEXP = '(\\d\\d?)';
NativeDateTimeConstants._THREE_DIGITS_REGEXP = '(\\d{1,3})';
NativeDateTimeConstants._FOUR_DIGITS_REGEXP = '(\\d{1,4})';
NativeDateTimeConstants._SLASH_REGEXP = '(\\/)';
NativeDateTimeConstants._PROPERTIES_MAP = {
    MMM: {
        token: 'months',
        style: 'format',
        mLen: 'abbreviated',
        matchIndex: 0,
        key: 'month',
        value: 'short',
        regExp: NativeDateTimeConstants._ALNUM_REGEXP
    },
    MMMM: {
        token: 'months',
        style: 'format',
        mLen: 'wide',
        matchIndex: 0,
        key: 'month',
        value: 'long',
        regExp: NativeDateTimeConstants._ALNUM_REGEXP
    },
    MMMMM: {
        token: 'months',
        style: 'format',
        mLen: 'narrow',
        matchIndex: 0,
        key: 'month',
        value: 'narrow',
        regExp: NativeDateTimeConstants._ALNUM_REGEXP
    },
    LLL: {
        token: 'months',
        style: 'stand-alone',
        mLen: 'abbreviated',
        matchIndex: 1,
        key: 'month',
        value: 'short',
        regExp: NativeDateTimeConstants._ALNUM_REGEXP
    },
    LLLL: {
        token: 'months',
        style: 'stand-alone',
        mLen: 'wide',
        matchIndex: 1,
        key: 'month',
        value: 'long',
        regExp: NativeDateTimeConstants._ALNUM_REGEXP
    },
    LLLLL: {
        token: 'months',
        style: 'stand-alone',
        mLen: 'narrow',
        matchIndex: 1,
        key: 'month',
        value: 'narrow',
        regExp: NativeDateTimeConstants._ALNUM_REGEXP
    },
    E: {
        token: 'days',
        style: 'format',
        dLen: 'abbreviated',
        matchIndex: 0,
        key: 'weekday',
        value: 'short',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    EE: {
        token: 'days',
        style: 'format',
        dLen: 'abbreviated',
        matchIndex: 0,
        key: 'weekday',
        value: 'short',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    EEE: {
        token: 'days',
        style: 'format',
        dLen: 'abbreviated',
        matchIndex: 0,
        key: 'weekday',
        value: 'short',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    EEEE: {
        token: 'days',
        style: 'format',
        dLen: 'wide',
        matchIndex: 0,
        key: 'weekday',
        value: 'long',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    EEEEE: {
        token: 'days',
        style: 'format',
        dLen: 'narrow',
        matchIndex: 0,
        key: 'weekday',
        value: 'narrow',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    c: {
        token: 'days',
        style: 'stand-alone',
        dLen: 'abbreviated',
        matchIndex: 1,
        key: 'weekday',
        value: 'short',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    cc: {
        token: 'days',
        style: 'stand-alone',
        dLen: 'abbreviated',
        matchIndex: 1,
        key: 'weekday',
        value: 'short',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    ccc: {
        token: 'days',
        style: 'stand-alone',
        dLen: 'abbreviated',
        matchIndex: 1,
        key: 'weekday',
        value: 'short',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    cccc: {
        token: 'days',
        style: 'stand-alone',
        dLen: 'wide',
        matchIndex: 1,
        key: 'weekday',
        value: 'long',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    ccccc: {
        token: 'days',
        style: 'stand-alone',
        dLen: 'narrow',
        matchIndex: 1,
        key: 'weekday',
        value: 'narrow',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    h: {
        token: 'time',
        timePart: 'hour',
        start1: 0,
        end1: 11,
        start2: 1,
        end2: 12,
        key: 'hour',
        value: 'numeric',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    hh: {
        token: 'time',
        timePart: 'hour',
        start1: 0,
        end1: 11,
        start2: 1,
        end2: 12,
        key: 'hour',
        value: '2-digit',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    K: {
        token: 'time',
        timePart: 'hour',
        start1: 0,
        end1: 12,
        start2: 0,
        end2: 12,
        key: 'hour',
        value: 'numeric',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    KK: {
        token: 'time',
        timePart: 'hour',
        start1: 0,
        end1: 12,
        start2: 0,
        end2: 12,
        key: 'hour',
        value: '2-digit',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    H: {
        token: 'time',
        timePart: 'hour',
        start1: 0,
        end1: 23,
        start2: 0,
        end2: 23,
        key: 'hour',
        value: 'numeric',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    HH: {
        token: 'time',
        timePart: 'hour',
        start1: 0,
        end1: 23,
        start2: 0,
        end2: 23,
        key: 'hour',
        value: '2-digit',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    k: {
        token: 'time',
        timePart: 'hour',
        start1: 0,
        end1: 24,
        start2: 0,
        end2: 24,
        key: 'hour',
        value: 'numeric',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    kk: {
        token: 'time',
        timePart: 'hour',
        start1: 0,
        end1: 24,
        start2: 0,
        end2: 24,
        key: 'hour',
        value: '2-digit',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    m: {
        token: 'time',
        timePart: 'minute',
        start1: 0,
        end1: 59,
        start2: 0,
        end2: 59,
        key: 'minute',
        value: 'numeric',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    mm: {
        token: 'time',
        timePart: 'minute',
        start1: 0,
        end1: 59,
        start2: 0,
        end2: 59,
        key: 'minute',
        value: '2-digit',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    s: {
        token: 'time',
        timePart: 'second',
        start1: 0,
        end1: 59,
        start2: 0,
        end2: 59,
        key: 'second',
        value: 'numeric',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    ss: {
        token: 'time',
        timePart: 'second',
        start1: 0,
        end1: 59,
        start2: 0,
        end2: 59,
        key: 'second',
        value: '2-digit',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    S: {
        token: 'time',
        timePart: 'millisec',
        start1: 0,
        end1: 999,
        start2: 0,
        end2: 999,
        key: 'millisecond',
        value: 'numeric',
        regExp: NativeDateTimeConstants._THREE_DIGITS_REGEXP
    },
    SS: {
        token: 'time',
        timePart: 'millisec',
        start1: 0,
        end1: 999,
        start2: 0,
        end2: 999,
        key: 'millisecond',
        value: 'numeric',
        regExp: NativeDateTimeConstants._THREE_DIGITS_REGEXP
    },
    SSS: {
        token: 'time',
        timePart: 'millisec',
        start1: 0,
        end1: 999,
        start2: 0,
        end2: 999,
        key: 'millisecond',
        value: 'numeric',
        regExp: NativeDateTimeConstants._THREE_DIGITS_REGEXP
    },
    d: {
        token: 'dayOfMonth',
        key: 'day',
        value: 'numeric',
        getPartIdx: 2,
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    dd: {
        token: 'dayOfMonth',
        key: 'day',
        value: '2-digit',
        getPartIdx: 2,
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    M: {
        token: 'monthIndex',
        key: 'month',
        value: 'numeric',
        getPartIdx: 1,
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    MM: {
        token: 'monthIndex',
        key: 'month',
        value: '2-digit',
        getPartIdx: 1,
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    L: {
        token: 'monthIndex',
        key: 'month',
        value: 'numeric',
        getPartIdx: 1,
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    LL: {
        token: 'monthIndex',
        key: 'month',
        value: '2-digit',
        getPartIdx: 1,
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    y: {
        token: 'year',
        key: 'year',
        value: 'numeric',
        regExp: NativeDateTimeConstants._FOUR_DIGITS_REGEXP
    },
    yy: {
        token: 'year',
        key: 'year',
        value: '2-digit',
        regExp: NativeDateTimeConstants._TWO_DIGITS_REGEXP
    },
    yyyy: {
        token: 'year',
        key: 'year',
        value: 'numeric',
        regExp: NativeDateTimeConstants._FOUR_DIGITS_REGEXP
    },
    a: {
        token: 'ampm',
        key: 'dayPeriod',
        value: undefined,
        regExp: NativeDateTimeConstants._WORD_REGEXP
    },
    z: {
        token: 'tzAbbrev',
        key: 'timeZoneName',
        value: 'short',
        regExp: NativeDateTimeConstants._STR_REGEXP
    },
    v: {
        token: 'tzAbbrev',
        key: 'timeZoneName',
        value: 'short',
        regExp: NativeDateTimeConstants._STR_REGEXP
    },
    zz: {
        token: 'tzAbbrev',
        key: 'timeZoneName',
        value: 'short',
        regExp: NativeDateTimeConstants._STR_REGEXP
    },
    zzz: {
        token: 'tzAbbrev',
        key: 'timeZoneName',
        value: 'short',
        regExp: NativeDateTimeConstants._STR_REGEXP
    },
    zzzz: {
        token: 'tzFull',
        key: 'timeZoneName',
        value: 'long',
        regExp: NativeDateTimeConstants._STR_REGEXP
    },
    Z: {
        token: 'tzhm',
        key: 'tzhm',
        value: 'short',
        regExp: NativeDateTimeConstants._STR_REGEXP,
        type: 'tzOffset'
    },
    ZZ: {
        token: 'tzhm',
        key: 'tzhm',
        value: 'short',
        regExp: NativeDateTimeConstants._STR_REGEXP,
        type: 'tzOffset'
    },
    ZZZ: {
        token: 'tzhm',
        key: 'tzhm',
        value: 'short',
        regExp: NativeDateTimeConstants._STR_REGEXP,
        type: 'tzOffset'
    },
    X: {
        token: 'tzh',
        key: 'tzh',
        value: 'short',
        regExp: NativeDateTimeConstants._STR_REGEXP,
        type: 'tzOffset'
    },
    XX: {
        token: 'tzhm',
        key: 'tzhm',
        value: 'short',
        regExp: NativeDateTimeConstants._STR_REGEXP,
        type: 'tzOffset'
    },
    XXX: {
        token: 'tzhsepm',
        key: 'tzhsepm',
        value: 'short',
        regExp: NativeDateTimeConstants._STR_REGEXP,
        type: 'tzOffset'
    },
    VV: {
        token: 'tzid',
        key: 'tzid',
        value: 'short',
        regExp: NativeDateTimeConstants._STR_REGEXP,
        type: 'tzOffset'
    },
    G: {
        token: 'era',
        key: 'era',
        value: 'eraAbbr',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    GG: {
        token: 'era',
        key: 'era',
        value: 'eraAbbr',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    GGG: {
        token: 'era',
        key: 'era',
        value: 'eraAbbr',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    GGGG: {
        token: 'era',
        key: 'era',
        value: 'eraName',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    GGGGG: {
        token: 'era',
        key: 'era',
        value: 'eraNarrow',
        regExp: NativeDateTimeConstants._NON_DIGIT_REGEXP
    },
    '/': {
        token: 'slash',
        regExp: NativeDateTimeConstants._SLASH_REGEXP
    }
};
NativeDateTimeConstants.FRACTIONAL_SECOND_MAP = {
    a: {
        key: 'dayPeriod',
        token: 'dayPeriod',
        value: 'narrow'
    },
    SSS: {
        key: 'fractionalSecondDigits',
        token: 'fractionalSecond',
        value: 3
    },
    SS: {
        key: 'fractionalSecondDigits',
        token: 'fractionalSecond',
        value: 2
    },
    S: {
        key: 'fractionalSecondDigits',
        token: 'fractionalSecond',
        value: 1
    }
};
// Map between tokens length and options
NativeDateTimeConstants._tokenMap = {
    era: { short: 'GGG', long: 'GGGG', narrow: 'GGGGG' },
    month: { short: 'MMM', long: 'MMMM', narrow: 'MMMMM', numeric: 'M', '2-digit': 'MM' },
    weekday: { short: 'EEE', long: 'EEEE', narrow: 'EEEEE' },
    year: { numeric: 'y', '2-digit': 'yy' },
    day: { numeric: 'd', '2-digit': 'dd' },
    hour: { numeric: 'h', '2-digit': 'hh' },
    minute: { numeric: 'm', '2-digit': 'mm' },
    second: { numeric: 's', '2-digit': 'ss' },
    fractionalSecond: { 1: 'S', 2: 'SS', 3: 'SSS' },
    timeZoneName: { short: 'z', long: 'zzzz' }
};
// Map between tokens and timeStyle and dateStyle
// Always set year to y, hour to h, minute to m, and second to s
// We need to get the pattern from the options. It is only needed by parse,
// prase does not care of the difference between h an hh, y and yy because
// they are all numeric. so 2021/09/01 is equivalent to 21/9/1 because the
// pattern is (\d)+/(\d)+/(\(d)+ matches both of inputs
NativeDateTimeConstants._dateTimeFormats = {
    dateStyle: {
        full: { year: 'y', month_s: 'MM', month_m: 'MMMM', weekday: 'EEEE', day: 'd' },
        long: { year: 'y', month_s: 'MM', month_m: 'MMMM', day: 'd' },
        medium: { year: 'y', month_s: 'MM', month_m: 'MMM', day: 'd' },
        short: { year: 'y', month_s: 'M', month_m: 'MMM', day: 'd' }
    },
    timeStyle: {
        full: { hour: 'h', minute: 'mm', second: 'ss', timeZoneName: 'zzzz' },
        long: { hour: 'h', minute: 'mm', second: 'ss', timeZoneName: 'z' },
        medium: { hour: 'h', minute: 'mm', second: 'ss' },
        short: { hour: 'h', minute: 'mm' }
    }
};
// letters a-z and A-Z are reserved for date-time tokens in the pattern
// they need to be surrounded by single quote if they are not a token.
// for example at should appear as 'at' in the pattern
NativeDateTimeConstants._ALPHA_REGEXP = /([a-zA-Z]+)/;
NativeDateTimeConstants._HOUR12_REGEXP = /h/g;
NativeDateTimeConstants._hourCycleMap = {
    h12: 'h',
    h23: 'H',
    h11: 'K',
    h24: 'k'
};
// zh-TW locales have different symbols for pm depending on the time.
// The following entries are noon, after noon, and evening
NativeDateTimeConstants._zh_tw_locales = ['zh-TW', 'zh-Hant', 'zh-Hant-TW'];
NativeDateTimeConstants._zh_tw_pm_symbols = ['\u4e2d\u5348', '\u4e0b\u5348', '\u665a\u4e0a'];

/**
 * @license
 * Copyright (c) 2004 %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Date time utilities.
 */
const regexTrim = /^\s+|\s+$|\u200f|\u200e/g;
const regexTrimNumber = /\s+|\u200f|\u200e/g;
const regexTrimRightZeros = /0+$/g;
const zeros = ['0', '00', '000'];
// ISO 8601 string accepted values:
// -date only: YYYY or YYYY-MM or YYYY-MM-dd
// -time only without timezone: Thh:mm or Thh:mm:ss or Thh:mm:ss.SSS
// -time only with timezone: any of the time values above followed by any of the following:
// Z or +/-hh:mm or +/-hhmm or +/-hh
// -date time: any of the date values followed by any of the time values
const _ISO_DATE_REGEXP = /^[+-]?\d{4}(?:-\d{2}(?:-\d{2})?)?(?:T\d{2}:\d{2}(?::\d{2}(?:\.\d+)?)?(Z|[+-]\d{2}(?::?\d{2})?)?)?$|^T\d{2}:\d{2}(?::\d{2}(?:\.\d+)?)?(Z|[+-]\d{2}(?::?\d{2})?)?$/;
const _ISO_DATE_ONLY_REGEXP = /^[+-]?\d{4}-\d{2}-\d{2}$/;
/**
 * Returns true if the value represents a date-only ISO string.
 *
 * @param {string} value
 * @returns true if the string represents a date-only ISO string
 */
function isDateOnlyIsoString(value) {
    // If value is undefined/null, returns true.
    // If value is empty or blank string, returns false.
    // Otherwise checks value against the regexp.
    const isValid = value === undefined || value === null
        ? true
        : value.trim().length > 0
            ? _ISO_DATE_ONLY_REGEXP.test(value.trim())
            : false;
    return isValid;
}
function startsWith(value, pattern) {
    return value.indexOf(pattern) === 0;
}
function trim(value) {
    return (value + '').replace(regexTrim, '');
}
function trimRightZeros(value) {
    return (value + '').replace(regexTrimRightZeros, '');
}
function trimNumber(value) {
    const s = (value + '').replace(regexTrimNumber, '');
    return s;
}
function toUpper(value) {
    // "he-IL" has non-breaking space in weekday names.
    return value.split('\u00A0').join(' ').toUpperCase();
}
function padZeros(num, c) {
    let s = num + '';
    let isNegative = false;
    if (num < 0) {
        s = s.substr(1);
        isNegative = true;
    }
    if (c > 1 && s.length < c) {
        s = zeros[c - 2] + s;
        s = s.substr(s.length - c, c);
    }
    if (isNegative) {
        s = '-' + s;
    }
    return s;
}
function zeroPad(str, count, left) {
    let result = '' + str;
    for (let l = result.length; l < count; l += 1) {
        result = left ? '0' + result : result + '0';
    }
    return result;
}
function _throwInvalidISOStringRange(isoStr, name, displayValue, displayLow, displayHigh) {
    const msg = 'The string ' +
        isoStr +
        ' is not a valid ISO 8601 string: ' +
        displayValue +
        ' is out of range.  Enter a value between ' +
        displayLow +
        ' and ' +
        displayHigh +
        ' for ' +
        name;
    const errorInfo = {
        cause: {
            code: 'isoStringOutOfRange',
            parameterMap: {
                isoStr: isoStr,
                value: displayValue,
                minValue: displayLow,
                maxValue: displayHigh,
                propertyName: name
            }
        }
    };
    const rangeError = new RangeError(msg, errorInfo);
    throw rangeError;
}
function _throwInvalidISOStringSyntax(str) {
    const msg = 'The string ' + str + ' is not a valid ISO 8601 string syntax.';
    const errorInfo = {
        cause: {
            code: 'invalidISOString',
            parameterMap: {
                isoStr: str
            }
        }
    };
    const e = new Error(msg, errorInfo);
    throw e;
}
/**
 * <p>Returns a local ISO string provided a Date object.
 * This method can be used to convert a moment in time or a local ISO string into
 * a local ISO string. It can also be used to convert any Date object into local ISO
 * string.</p>
 * Examples below are where the local (user's system) time zone is UTC-06:00<br>
 * dateToLocalIso(new Date('2021-06-04T00:00:00-04:00')); -->'2021-06-03T22:00:00'<br>
 * dateToLocalIso(new Date('2021-06-04T02:30:00Z')); -->'2021-06-03T20:30:00'<br>
 * In this example the input ISO string is local, the output is the same:<br>
 * dateToLocalIso(new Date('2021-06-04T02:30:00')); -->'2021-06-04T02:30:00'<br>
 * In this example we just want to convert a Date object:<br>
 * dateToLocalIso(new Date());<br>
 */
function dateToLocalIso(_date) {
    let date = _date;
    if (typeof date === 'number') {
        date = new Date(date);
    }
    let isoStr = padZeros(date.getFullYear(), 4) +
        '-' +
        padZeros(date.getMonth() + 1, 2) +
        '-' +
        padZeros(date.getDate(), 2) +
        'T' +
        padZeros(date.getHours(), 2) +
        ':' +
        padZeros(date.getMinutes(), 2) +
        ':' +
        padZeros(date.getSeconds(), 2);
    if (date.getMilliseconds() > 0) {
        isoStr += '.' + trimRightZeros(padZeros(date.getMilliseconds(), 3));
    }
    return isoStr;
}
function isLeapYear(y) {
    if (y % 400 === 0) {
        return true;
    }
    else if (y % 100 === 0) {
        return false;
    }
    else if (y % 4 === 0) {
        return true;
    }
    return false;
}
// Get days in month depending on month and leap year
function getDaysInMonth(y, m) {
    switch (m) {
        case 0:
        case 2:
        case 4:
        case 6:
        case 7:
        case 9:
        case 11:
            return 31;
        case 1:
            if (isLeapYear(y)) {
                return 29;
            }
            return 28;
        default:
            return 30;
    }
}
function IsoStrParts(isoString) {
    const tst = _ISO_DATE_REGEXP.test(isoString);
    if (tst === false) {
        _throwInvalidISOStringSyntax(isoString);
    }
    const splitted = isoString.split('T');
    const tIndex = isoString.indexOf('T');
    const today = new Date();
    let i;
    let isBC = false;
    const datetime = [today.getFullYear(), today.getMonth() + 1, today.getDate(), 0, 0, 0, 0];
    if (splitted[0] !== '') {
        // contains date portion
        // test if date is BC, year is negative
        if (startsWith(splitted[0], '-')) {
            splitted[0] = splitted[0].slice(1);
            isBC = true;
        }
        const dateSplitted = splitted[0].split('-');
        for (i = 0; i < dateSplitted.length; i++) {
            const val = parseInt(dateSplitted[i], 10);
            // validate month
            if (i === 1) {
                if (val < 1 || val > 12) {
                    _throwInvalidISOStringRange(isoString, 'month', val, 1, 12);
                }
            }
            // validate day
            if (i === 2) {
                const nbDays = getDaysInMonth(datetime[0], datetime[1] - 1);
                if (val < 1 || val > nbDays) {
                    _throwInvalidISOStringRange(isoString, 'day', val, 1, nbDays);
                }
            }
            datetime[i] = val;
        }
        if (isBC) {
            datetime[0] = -datetime[0];
        }
    }
    if (tIndex !== -1) {
        const milliSecSplitted = splitted[1].split('.'); // contain millseconds
        const timeSplitted = milliSecSplitted[0].split(':'); // contain hours, minutes, seconds
        for (i = 0; i < timeSplitted.length; i++) {
            const tVal = parseInt(timeSplitted[i], 10);
            // validate hour
            if (i === 0) {
                if (tVal < 0 || tVal > 24) {
                    _throwInvalidISOStringRange(isoString, 'hour', tVal, 0, 24);
                }
            }
            // validate minute
            if (i === 1) {
                if (tVal < 0 || tVal > 59) {
                    _throwInvalidISOStringRange(isoString, 'minute', tVal, 0, 59);
                }
            }
            // validate second
            if (i === 2) {
                if (tVal < 0 || tVal > 59) {
                    _throwInvalidISOStringRange(isoString, 'second', tVal, 0, 59);
                }
            }
            datetime[3 + i] = tVal;
        }
        if (milliSecSplitted.length === 2 && milliSecSplitted[1]) {
            datetime[6] = parseInt(zeroPad(milliSecSplitted[1], 3, false), 10);
        }
    }
    return datetime;
}
function _toBoolean(value) {
    if (typeof value === 'string') {
        const s = value.toLowerCase().trim();
        switch (s) {
            case 'true':
            case '1':
                return true;
            case 'false':
            case '0':
                return false;
            default:
                return value;
        }
    }
    return value;
}
// Return a function getOption.
// The getOption function extracts the value of the property named
// property from the provided options object, converts it to the required type,
// checks whether it is one of a List of allowed values, and fills in a
// fallback value if necessary.
function getGetOption(options, getOptionCaller) {
    if (options === undefined) {
        throw new Error('Internal ' + getOptionCaller + ' error. Default options missing.');
    }
    const getOption = function (property, type, values, defaultValue) {
        if (options[property] !== undefined) {
            let value = options[property];
            switch (type) {
                case 'boolean':
                    value = _toBoolean(value);
                    break;
                case 'string':
                    value = String(value);
                    break;
                case 'number':
                    value = Number(value);
                    break;
                default:
                    throw new Error('Internal error. Wrong value type.');
            }
            if (values !== undefined && values.indexOf(value) === -1) {
                const expectedValues = [];
                for (let i = 0; i < values.length; i++) {
                    expectedValues.push(values[i]);
                }
                const msg = "The value '" +
                    options[property] +
                    "' is out of range for '" +
                    getOptionCaller +
                    "' options property '" +
                    property +
                    "'. Valid values: " +
                    expectedValues;
                const rangeError = new RangeError(msg);
                const errorInfo = {
                    errorCode: 'optionOutOfRange',
                    parameterMap: {
                        propertyName: property,
                        propertyValue: options[property],
                        propertyValueValid: expectedValues,
                        caller: getOptionCaller
                    }
                };
                rangeError.errorInfo = errorInfo;
                throw rangeError;
            }
            return value;
        }
        return defaultValue;
    };
    return getOption;
}
function partsToIsoString(parts) {
    let isoStr = padZeros(parts[0], 4) +
        '-' +
        padZeros(parts[1], 2) +
        '-' +
        padZeros(parts[2], 2) +
        'T' +
        padZeros(parts[3], 2) +
        ':' +
        padZeros(parts[4], 2) +
        ':' +
        padZeros(parts[5], 2);
    if (parts[6] > 0) {
        isoStr += '.' + trimRightZeros(padZeros(parts[6], 3));
    }
    return isoStr;
}
/**
 * Returns a local Date object from a local ISO string. This method is only meant
 * to work with local ISO strings. If the input ISO string contain Z or offset,
 * they will be ignored.
 * @param {string} isoString
 * @memberof oj.OraI18nUtils
 * @method isoToLocalDate
 */
function isoToLocalDate(isoString) {
    if (!isoString || typeof isoString !== 'string') {
        return null;
    }
    return _isoToLocalDateIgnoreTimezone(isoString);
}
function _isoToLocalDateIgnoreTimezone(isoString) {
    const datetime = IsoStrParts(isoString);
    const date = new Date(datetime[0], datetime[1] - 1, datetime[2], datetime[3], datetime[4], datetime[5], datetime[6]);
    // As per the documentation:
    // new Date(year, monthIndex [, day [, hours [, minutes [, seconds [, milliseconds]]]]]);
    // year - Integer value representing the year and
    // values from 0 to 99 map to the years 1900 to 1999; all other values are the actual year.
    // Use Date.prototype.setFullYear to create dates between the years 0 and 99.
    date.setFullYear(datetime[0]);
    return date;
}
function getISOStrFormatInfo(isoStr) {
    const res = {
        format: null,
        dateTime: null,
        timeZone: '',
        isoStrParts: null
    };
    const exe = _ISO_DATE_REGEXP.exec(isoStr);
    if (exe === null) {
        _throwInvalidISOStringSyntax(isoStr);
    }
    if (exe && exe[1] === undefined && exe[2] === undefined) {
        res.format = 'local';
        res.dateTime = isoStr;
        res.isoStrParts = IsoStrParts(res.dateTime);
        return res;
    }
    res.timeZone = exe[1] !== undefined ? exe[1] : exe[2];
    if (res.timeZone === 'Z') {
        res.format = 'zulu';
    }
    else {
        res.format = 'offset';
    }
    const isoStrLen = isoStr.length;
    const timeZoneLen = res.timeZone.length;
    res.dateTime = isoStr.substring(0, isoStrLen - timeZoneLen);
    res.isoStrParts = IsoStrParts(res.dateTime);
    return res;
}
function getTimeStringFromOffset(prefix, offset, reverseSign, alwaysMinutes) {
    const isNegative = reverseSign ? offset > 0 : offset < 0;
    const absOffset = Math.abs(offset);
    let hours = Math.floor(absOffset / 60);
    const minutes = absOffset % 60;
    const sign = isNegative ? '-' : '+';
    if (alwaysMinutes) {
        hours = zeroPad(hours, 2, true);
    }
    let str = prefix + sign + hours;
    if (minutes > 0 || alwaysMinutes) {
        str += ':' + zeroPad(minutes, 2, true);
    }
    return str;
}

var dateTimeUtils = {
    __proto__: null,
    _ISO_DATE_REGEXP: _ISO_DATE_REGEXP,
    isDateOnlyIsoString: isDateOnlyIsoString,
    startsWith: startsWith,
    trim: trim,
    trimRightZeros: trimRightZeros,
    trimNumber: trimNumber,
    toUpper: toUpper,
    padZeros: padZeros,
    zeroPad: zeroPad,
    dateToLocalIso: dateToLocalIso,
    isLeapYear: isLeapYear,
    getDaysInMonth: getDaysInMonth,
    IsoStrParts: IsoStrParts,
    getGetOption: getGetOption,
    partsToIsoString: partsToIsoString,
    isoToLocalDate: isoToLocalDate,
    getISOStrFormatInfo: getISOStrFormatInfo,
    getTimeStringFromOffset: getTimeStringFromOffset
};

/**
 * @license
 * Copyright (c) 2004 %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
// cache locale system time zone
let localSystemTimeZone = null;
class NativeParserImpl {
    static parseImpl(str, pattern, resOptions, cal) {
        let dtStyle = 0;
        // First try if str is an iso 8601 string
        const testIsoStr = _ISO_DATE_REGEXP.test(str);
        let parsedIsoStr = '';
        let isoStrInfo = null;
        let res;
        if (testIsoStr === true) {
            parsedIsoStr = str;
            dtStyle = this._isoStrDateTimeStyle(str);
        }
        else {
            dtStyle = this._dateTimeStyle(resOptions);
            res = this._parseExact(str, pattern, resOptions, cal);
            parsedIsoStr = res.value;
        }
        isoStrInfo = getISOStrFormatInfo(parsedIsoStr);
        if (resOptions.timeZone !== undefined && isoStrInfo.format !== NativeDateTimeConstants._LOCAL) {
            this._adjustHours(isoStrInfo, resOptions);
        }
        parsedIsoStr = this._createParseISOStringFromDate(dtStyle, isoStrInfo, resOptions);
        if (res === undefined) {
            res = { value: parsedIsoStr, warning: null };
        }
        else {
            res.value = parsedIsoStr;
            res.warning = null;
        }
        // If the returned ISO string is date-time and isoStrFormat is local,
        // log a warning saying that local is not supported for date-time iso strings
        // and return offset instead
        if (dtStyle === 2 && resOptions.isoStrFormat === NativeDateTimeConstants._LOCAL) ;
        return res;
    }
    // appends pre- and post- token match strings while removing escaped
    // characters.
    // Returns a single quote count which is used to determine if the
    // token occurs
    // in a string literal.
    static _appendPreOrPostMatch(preMatch, strings) {
        let quoteCount = 0;
        let escaped = false;
        for (let i = 0, il = preMatch.length; i < il; i++) {
            const c = preMatch.charAt(i);
            switch (c) {
                case "'":
                    if (escaped) {
                        strings.push("'");
                    }
                    else {
                        quoteCount += 1;
                    }
                    escaped = false;
                    break;
                case '\\':
                    if (escaped) {
                        strings.push('\\');
                    }
                    escaped = !escaped;
                    break;
                default:
                    strings.push(c);
                    escaped = false;
                    break;
            }
        }
        return quoteCount;
    }
    static _validateRange(range) {
        if (range.value < range.low || range.value > range.high) {
            const msg = range.displayValue +
                ' is out of range.  Enter a value between ' +
                range.displayLow +
                ' and ' +
                range.displayHigh +
                ' for ' +
                range.name;
            const errorInfo = {
                cause: {
                    code: 'datetimeOutOfRange',
                    parameterMap: {
                        value: range.displayValue,
                        minValue: range.displayLow,
                        maxValue: range.displayHigh,
                        propertyName: range.name
                    }
                }
            };
            const rangeError = new RangeError(msg, errorInfo);
            throw rangeError;
        }
    }
    // Throw an exception if date-time pattern is invalid
    static _throwInvalidDateFormat(format, options, m) {
        const isDate = options.year !== undefined ||
            options.month !== undefined ||
            options.weekday !== undefined ||
            options.day !== undefined;
        const isTime = options.hour !== undefined || options.minute !== undefined || options.second !== undefined;
        let samplePattern = '';
        if (isDate && isTime) {
            samplePattern = 'MM/dd/yy hh:mm:ss a';
        }
        else if (isDate) {
            samplePattern = 'MM/dd/yy';
        }
        else {
            samplePattern = 'hh:mm:ss a';
        }
        const msg = 'Unexpected character(s) ' +
            m +
            ' encountered in the pattern "' +
            format +
            ' An example of a valid pattern is "' +
            samplePattern +
            '".';
        const errorInfo = {
            cause: {
                code: 'optionValueInvalid',
                parameterMap: {
                    propertyName: 'pattern',
                    propertyValue: format
                }
            }
        };
        const error = new SyntaxError(msg, errorInfo);
        throw error;
    }
    // parse functions
    static _throwWeekdayMismatch(weekday, day) {
        const msg = 'The weekday ' + weekday + ' does not match the date ' + day;
        const errorInfo = {
            cause: {
                code: 'dateToWeekdayMismatch',
                parameterMap: {
                    weekday: weekday,
                    date: day
                }
            }
        };
        const error = new types.FormatParseError(msg, errorInfo);
        throw error;
    }
    static _throwDateFormatMismatch(value, format, style) {
        let msg = '';
        let errorCodeType = '';
        if (style === 2) {
            msg =
                'The value "' + value + '" does not match the expected date-time format "' + format + '"';
            errorCodeType = 'datetimeFormatMismatch';
        }
        else if (style === 0) {
            msg = 'The value "' + value + '" does not match the expected date format "' + format + '"';
            errorCodeType = 'dateFormatMismatch';
        }
        else {
            msg = 'The value "' + value + '" does not match the expected time format "' + format + '"';
            errorCodeType = 'timeFormatMismatch';
        }
        const errorInfo = {
            cause: {
                code: errorCodeType,
                parameterMap: {
                    value: value,
                    format: format
                }
            }
        };
        const error = new types.FormatParseError(msg, errorInfo);
        throw error;
    }
    static _parseTimezoneOffset(_offset) {
        const parts = _offset.split(':');
        const offsetParts = new Array(2);
        // offset is +hh:mm
        if (parts.length === 2) {
            offsetParts[0] = parseInt(parts[0], 10);
            offsetParts[1] = parseInt(parts[1], 10);
        }
        else if (_offset.length === 2 || _offset.length === 3) {
            // offset is +hh or +h
            offsetParts[0] = parseInt(_offset, 10);
            offsetParts[1] = 0;
        }
        else {
            // offset is +hhmm
            offsetParts[0] = parseInt(_offset.substr(0, 3), 10);
            offsetParts[1] = parseInt(_offset.substr(3), 10);
        }
        return offsetParts;
    }
    static _expandYear(start2DigitYear, year) {
        // expands 2-digit year into 4 digits.
        year = Number(year);
        if (year < 100) {
            const ambiguousTwoDigitYear = start2DigitYear % 100;
            // eslint-disable-next-line no-param-reassign
            year += Math.floor(start2DigitYear / 100) * 100 + (year < ambiguousTwoDigitYear ? 100 : 0);
        }
        return year;
    }
    static _arrayIndexOfMonthOrDay(monthsDaysData, userInput, type) {
        const trimUserInput = NativeParserImpl.toUpperTrimmedNoPeriod(userInput);
        const keys = Object.keys(monthsDaysData);
        for (let i = 0; i < keys.length; i++) {
            const valueFromData = monthsDaysData[keys[i]];
            const trimValueFromData = NativeParserImpl.toUpperTrimmedNoPeriod(valueFromData);
            // first try an exact match.
            if (trimUserInput === trimValueFromData) {
                return i;
            }
            // Test if user input is a number. We don't use parseInt because we want
            // to make sure trimUserInput is only number lie '5' and not '5abc'
            if (type === 'months') {
                const trimUserInputNumber = Number(trimUserInput);
                // In some locales the month name is something like 1月. Remove the literal
                // before compare in case the user enters only 1.
                const numberPartFromData = parseInt(trimValueFromData);
                if (Number.isInteger(numberPartFromData) && Number.isInteger(trimUserInputNumber)) {
                    if (numberPartFromData === trimUserInputNumber) {
                        return i;
                    }
                }
            }
        }
        return -1;
    }
    static toUpperTrimmedNoPeriod(value) {
        let trimItem = toUpper(value);
        trimItem = trim(trimItem);
        // In some locales the short month name ends with '.', remove it in case
        // the user does not enter the dot at the end of the month name.
        trimItem = trimItem.replace(/\.$/, '');
        return trimItem;
    }
    static _getDayIndex(calNode, value) {
        let ret = 0;
        let days = [];
        const calDaysFmt = calNode.days.format;
        const calDaysStdAlone = calNode.days['stand-alone'];
        days = [
            calDaysFmt.abbreviated,
            calDaysFmt.wide,
            calDaysStdAlone.abbreviated,
            calDaysStdAlone.wide
        ];
        for (let m = 0; m < days.length; m++) {
            ret = this._arrayIndexOfMonthOrDay(days[m], value, 'days');
            if (ret !== -1) {
                return ret;
            }
        }
        return ret;
    }
    static _getMonthIndex(calNode, value) {
        let ret = -1;
        const calMonthsFmt = calNode.months.format;
        const calMonthsStdAlone = calNode.months['stand-alone'];
        const months = [
            calMonthsFmt.wide,
            calMonthsFmt.abbreviated,
            calMonthsStdAlone.wide,
            calMonthsStdAlone.abbreviated
        ];
        for (let m = 0; m < months.length; m++) {
            ret = this._arrayIndexOfMonthOrDay(months[m], value, 'months');
            if (ret !== -1) {
                return ret;
            }
        }
        return ret;
    }
    // converts a format string into a regular expression with groups that
    // can be used to extract date fields from a date string.
    // check for a cached parse regex.
    static _getParseRegExp(format, options) {
        //let re = {};
        // expand single digit formats, then escape regular expression
        //  characters.
        const expFormat = format.replace(NativeDateTimeConstants._ESCAPE_REGEXP, '\\\\$1');
        const regexp = ['^'];
        const groups = [];
        let index = 0;
        let quoteCount = 0;
        // iterate through each date token found.
        let match = NativeDateTimeConstants._TOKEN_REGEXP.exec(expFormat);
        while (match !== null) {
            const preMatch = expFormat.slice(index, match.index);
            index = NativeDateTimeConstants._TOKEN_REGEXP.lastIndex;
            // don't replace any matches that occur inside a string literal.
            quoteCount += this._appendPreOrPostMatch(preMatch, regexp);
            if (quoteCount % 2) {
                regexp.push(match[0]);
            }
            else {
                // add a regex group for the token.
                const m = match[0];
                let add = '';
                if (NativeDateTimeConstants._PROPERTIES_MAP[m] !== undefined) {
                    add = NativeDateTimeConstants._PROPERTIES_MAP[m].regExp;
                }
                else {
                    this._throwInvalidDateFormat(format, options, m);
                }
                if (add) {
                    regexp.push(add);
                }
                groups.push(match[0]);
            }
            match = NativeDateTimeConstants._TOKEN_REGEXP.exec(expFormat);
        }
        this._appendPreOrPostMatch(expFormat.slice(index), regexp);
        regexp.push('$');
        // allow whitespace to differ when matching formats.
        const regexpStr = regexp.join('').replace(/\s+/g, '\\s+');
        const parseRegExp = {
            regExp: regexpStr,
            groups: groups
        };
        // cache the regex for this format.
        //re[format] = parseRegExp;
        return parseRegExp;
    }
    static _getTokenIndex(arr, token) {
        for (let i = 0; i < arr.length; i++) {
            if (arr[i][token] !== undefined) {
                return i;
            }
        }
        return 0;
    }
    // time lenient parse
    static _parseLenienthms(result, timepart, format, dtype, calNode) {
        // hour, optional minutes and optional seconds
        NativeDateTimeConstants._TIME_REGEXP.lastIndex = 0;
        let hour = 0;
        let minute = 0;
        let second = 0;
        let msec = 0;
        let idx;
        let match = NativeDateTimeConstants._TIME_REGEXP.exec(timepart);
        let range;
        if (match === null) {
            this._throwDateFormatMismatch(timepart, format, dtype);
        }
        if (match[1] !== undefined) {
            hour = parseInt(match[1], 10);
        }
        if (match[2] !== undefined) {
            minute = parseInt(match[2], 10);
        }
        if (match[3] !== undefined) {
            second = parseInt(match[3], 10);
        }
        if (match[4] !== undefined) {
            msec = parseInt(match[4], 10);
        }
        NativeDateTimeConstants._TIME_FORMAT_REGEXP.lastIndex = 0;
        match = NativeDateTimeConstants._TIME_FORMAT_REGEXP.exec(format);
        switch (match[0]) {
            case 'h':
                // Hour in am/pm (1-12)
                if (hour === 12) {
                    hour = 0;
                }
                range = {
                    name: 'hour',
                    value: hour,
                    low: 0,
                    high: 11,
                    displayValue: hour,
                    displayLow: 1,
                    displayHigh: 12
                };
                this._validateRange(range);
                idx = this._matchPMSymbol(calNode, timepart);
                if (idx && hour < 12) {
                    hour += 12;
                }
                break;
            case 'K':
                // Hour in am/pm (0-11)
                range = {
                    name: 'hour',
                    value: hour,
                    low: 0,
                    high: 11,
                    displayValue: hour,
                    displayLow: 0,
                    displayHigh: 11
                };
                this._validateRange(range);
                idx = this._matchPMSymbol(calNode, timepart);
                if (idx && hour < 12) {
                    hour += 12;
                }
                break;
            case 'H':
                range = {
                    name: 'hour',
                    value: hour,
                    low: 0,
                    high: 23,
                    displayValue: hour,
                    displayLow: 0,
                    displayHigh: 23
                };
                this._validateRange(range);
                break;
            case 'k':
                if (hour === 24) {
                    hour = 0;
                }
                range = {
                    name: 'hour',
                    value: hour,
                    low: 0,
                    high: 23,
                    displayValue: hour,
                    displayLow: 1,
                    displayHigh: 24
                };
                break;
        }
        // Minutes.
        range = {
            name: 'minute',
            value: minute,
            low: 0,
            high: 59,
            displayValue: minute,
            displayLow: 0,
            displayHigh: 59
        };
        this._validateRange(range);
        // Seconds.
        range = {
            name: 'second',
            value: second,
            low: 0,
            high: 59,
            displayValue: second,
            displayLow: 0,
            displayHigh: 59
        };
        this._validateRange(range);
        // millisec
        range = {
            name: 'farctionalSecond',
            value: msec,
            low: 0,
            high: 999,
            displayValue: msec,
            displayLow: 0,
            displayHigh: 999
        };
        this._validateRange(range);
        result.setHours(hour, minute, second, msec);
    }
    static _getWeekdayName(value, calNode) {
        const calDaysFmt = calNode.days.format;
        const calDaysStandAlone = calNode.days['stand-alone'];
        const days = [
            calDaysFmt.wide,
            calDaysFmt.abbreviated,
            calDaysStandAlone.wide,
            calDaysStandAlone.abbreviated
        ];
        for (let i = 0; i < days.length; i++) {
            const dayKeys = Object.keys(days[i]);
            for (let j = 0; j < dayKeys.length; j++) {
                const dName = days[i][dayKeys[j]];
                const dRegExp = new RegExp(dName + '\\b', 'i');
                if (dRegExp.test(value)) {
                    return dName;
                }
            }
        }
        return null;
    }
    // lenient parse yMd and yMEd patterm. Must have year, moth,
    // date all numbers. Ex: 5/3/2013
    // weekday is optional. If present it must match date.
    // Ex:  Tuesday 11/19/2013
    // if year is 3-digits it can be anywhere in the string.
    // Otherwise assume its position based on pattern
    // if date > 12 it can be anywhere in the string.
    // Otherwise assume its position based on pattern
    // separators can be any non digit characters
    static _parseLenientyMEd(value, format, options, cal, isDateTime) {
        NativeDateTimeConstants._YMD_REGEXP.lastIndex = 0;
        const match = NativeDateTimeConstants._YMD_REGEXP.exec(value);
        let dtype = 0;
        if (match === null) {
            dtype = isDateTime ? 2 : 0;
            this._throwDateFormatMismatch(value, format, dtype);
        }
        const tokenIndexes = [
            {
                y: format.indexOf('y')
            },
            {
                M: format.indexOf('M')
            },
            {
                d: format.indexOf('d')
            }
        ];
        tokenIndexes.sort(function (a, b) {
            const n1 = Object.keys(a)[0];
            const n2 = Object.keys(b)[0];
            return a[n1] - b[n2];
        });
        let year = 0;
        let month = 0;
        let day = 0;
        let yearIndex = 0;
        let foundDayIndex = 0;
        let i = 0;
        const dayIndex = this._getTokenIndex(tokenIndexes, 'd');
        let foundYear = false;
        let foundDay = false;
        for (i = 1; i <= 3; i++) {
            const tokenMatch = match[i];
            // find year if year is yyy|yyyy
            const intToken = parseInt(tokenMatch);
            if (tokenMatch.length > 2 || intToken > 31) {
                year = intToken;
                foundYear = true;
                yearIndex = i - 1;
            }
        }
        if (!foundYear) {
            yearIndex = this._getTokenIndex(tokenIndexes, 'y');
            year = match[this._getTokenIndex(tokenIndexes, 'y') + 1];
        }
        // find day if day value > 12
        for (i = 0; i < 3; i++) {
            if (i !== yearIndex && match[i + 1] > 12) {
                day = match[i + 1];
                foundDay = true;
                foundDayIndex = i;
                break;
            }
        }
        if (!foundDay) {
            if (yearIndex === this._getTokenIndex(tokenIndexes, 'd')) {
                day = match[this._getTokenIndex(tokenIndexes, 'y') + 1];
                month = match[this._getTokenIndex(tokenIndexes, 'M') + 1];
            }
            else if (yearIndex === this._getTokenIndex(tokenIndexes, 'M')) {
                day = match[this._getTokenIndex(tokenIndexes, 'd') + 1];
                month = match[this._getTokenIndex(tokenIndexes, 'y') + 1];
            }
            else {
                day = match[this._getTokenIndex(tokenIndexes, 'd') + 1];
                month = match[this._getTokenIndex(tokenIndexes, 'M') + 1];
            }
        }
        else {
            for (i = 0; i < 3; i++) {
                if (i !== foundDayIndex && i !== yearIndex) {
                    month = match[i + 1];
                    break;
                }
            }
            if (month === undefined) {
                month = match[this._getTokenIndex(tokenIndexes, 'M') + 1];
            }
        }
        month -= 1;
        const daysInMonth = getDaysInMonth(year, month);
        let range;
        // if both month and day > 12 and swapped, throw exception
        // based on original order
        if (foundDay && dayIndex !== foundDayIndex && month > 12) {
            range = {
                name: 'month',
                value: day,
                low: 0,
                high: 11,
                displayValue: day,
                displayLow: 1,
                displayHigh: 12
            };
            this._validateRange(range);
        }
        range = {
            name: 'month',
            value: month,
            low: 0,
            high: 11,
            displayValue: month + 1,
            displayLow: 1,
            displayHigh: 12
        };
        this._validateRange(range);
        range = {
            name: 'day',
            value: day,
            low: 1,
            high: daysInMonth,
            displayValue: day,
            displayLow: 1,
            displayHigh: daysInMonth
        };
        this._validateRange(range);
        const start2DigitYear = options.twoDigitYearStart || 1950;
        year = this._expandYear(start2DigitYear, year);
        range = {
            name: 'year',
            value: year,
            low: 0,
            high: 9999,
            displayValue: year,
            displayLow: 0,
            displayHigh: 9999
        };
        this._validateRange(range);
        const parsedDate = new Date(year, month, day);
        // locate weekday
        const dName = this._getWeekdayName(value, cal);
        if (dName !== null) {
            const weekDay = this._getDayIndex(cal, dName);
            // day of week does not match date
            if (parsedDate.getDay() !== weekDay) {
                this._throwWeekdayMismatch(dName, parsedDate.getDate());
            }
        }
        if (isDateTime) {
            const timepart = value.substr(NativeDateTimeConstants._YMD_REGEXP.lastIndex);
            if (timepart.length === 0) {
                parsedDate.setHours(0, 0, 0, 0);
            }
            else {
                this._parseLenienthms(parsedDate, timepart, format, 2, cal);
            }
        }
        const result = {
            value: dateToLocalIso(parsedDate),
            warning: 'lenient parsing was used'
        };
        return result;
    }
    // lenient parse yMMMd and yMMMEd patterns. Must have year, date as numbers
    // and month name.
    // weekday is optional. If present it must match date.
    // Ex:  Monday Nov, 11 2013
    // weekday and month name can be anywhere in the string.
    // if year > 2-digits it can be anywhere in the string.
    // Otherwise assume its position based on pattern
    // separators can be any non digit characters
    static _parseLenientyMMMEd(value, format, options, cal, isDateTime) {
        const origValue = value;
        // eslint-disable-next-line no-param-reassign
        value = toUpper(value);
        // locate month name
        const calMonthsFmt = cal.months.format;
        const calMonthsStandAlone = cal.months['stand-alone'];
        const months = [
            calMonthsFmt.wide,
            calMonthsFmt.abbreviated,
            calMonthsStandAlone.wide,
            calMonthsStandAlone.abbreviated
        ];
        let foundMatch = false;
        let reverseMonth = [];
        let i = 0;
        let mName = '';
        for (i = 0; i < months.length; i++) {
            reverseMonth = [];
            const monthKeys = Object.keys(months[i]);
            let j = 0;
            for (j = 0; j < monthKeys.length; j++) {
                mName = toUpper(months[i][monthKeys[j]]);
                reverseMonth.unshift({
                    idx: j,
                    name: mName
                });
            }
            reverseMonth.sort(function (a, b) {
                return b.idx - a.idx;
            });
            for (j = 0; j < reverseMonth.length; j++) {
                mName = reverseMonth[j].name;
                // JET-65914. Do not match if month name is a number in locale data.
                // Only match strings otherwise we match wrong field. for numeric
                // month names _parseLenientyMEd will be invoked
                if (value.indexOf(mName) !== -1 && isNaN(+mName)) {
                    foundMatch = true;
                    // eslint-disable-next-line no-param-reassign
                    value = value.replace(mName, '');
                    break;
                }
            }
            if (foundMatch) {
                break;
            }
        }
        // There is no month name. Try yMEd lenient parse.
        if (!foundMatch) {
            return this._parseLenientyMEd(origValue, format, options, cal, isDateTime);
        }
        const month = this._getMonthIndex(cal, mName);
        let range = {
            name: 'month',
            value: month,
            low: 0,
            high: 11,
            displayValue: month,
            displayLow: 1,
            displayHigh: 12
        };
        this._validateRange(range);
        // locate weekday
        const dName = this._getWeekdayName(origValue, cal);
        const dRegExp = new RegExp(dName + '\\W', 'i');
        if (dName !== null) {
            // eslint-disable-next-line no-param-reassign
            value = value.replace(dRegExp, '');
        }
        // find year and date
        NativeDateTimeConstants._YEAR_AND_DATE_REGEXP.lastIndex = 0;
        const match = NativeDateTimeConstants._YEAR_AND_DATE_REGEXP.exec(value);
        if (match === null) {
            const dtype = isDateTime ? 2 : 0;
            this._throwDateFormatMismatch(origValue, format, dtype);
        }
        const tokenIndexes = [
            {
                y: format.indexOf('y')
            },
            {
                d: format.indexOf('d')
            }
        ];
        tokenIndexes.sort(function (a, b) {
            const n1 = Object.keys(a)[0];
            const n2 = Object.keys(b)[0];
            return a[n1] - b[n2];
        });
        let year = 0;
        let day = 0;
        let yearIndex = 0;
        let foundYear = false;
        for (i = 1; i <= 2; i++) {
            const tokenMatch = match[i];
            // find year if year is yyy|yyyy
            const intToken = parseInt(tokenMatch);
            if (tokenMatch.length > 2 || intToken > 31) {
                year = intToken;
                foundYear = true;
                yearIndex = i - 1;
            }
        }
        if (!foundYear) {
            yearIndex = this._getTokenIndex(tokenIndexes, 'y');
            year = parseInt(match[this._getTokenIndex(tokenIndexes, 'y') + 1], 10);
        }
        if (yearIndex === this._getTokenIndex(tokenIndexes, 'd')) {
            day = parseInt(match[this._getTokenIndex(tokenIndexes, 'y') + 1], 10);
        }
        else {
            day = parseInt(match[this._getTokenIndex(tokenIndexes, 'd') + 1], 10);
        }
        const start2DigitYear = options.twoDigitYearStart || 1950;
        year = this._expandYear(start2DigitYear, year);
        range = {
            name: 'year',
            value: year,
            low: 0,
            high: 9999,
            displayValue: year,
            displayLow: 0,
            displayHigh: 9999
        };
        this._validateRange(range);
        const parsedDate = new Date(year, month, day);
        if (dName !== null) {
            const weekDay = this._getDayIndex(cal, dName);
            // day of week does not match date
            if (parsedDate.getDay() !== weekDay) {
                this._throwWeekdayMismatch(dName, parsedDate.getDate());
            }
        }
        const daysInMonth = getDaysInMonth(year, month);
        range = {
            name: 'day',
            value: day,
            low: 1,
            high: daysInMonth,
            displayValue: day,
            displayLow: 1,
            displayHigh: daysInMonth
        };
        this._validateRange(range);
        if (isDateTime) {
            const timepart = value.substr(NativeDateTimeConstants._YEAR_AND_DATE_REGEXP.lastIndex);
            if (timepart.length === 0) {
                parsedDate.setHours(0, 0, 0, 0);
            }
            else {
                this._parseLenienthms(parsedDate, timepart, format, 2, cal);
            }
        }
        const result = {
            value: dateToLocalIso(parsedDate),
            warning: 'lenient parsing was used'
        };
        return result;
    }
    static _parseLenient(value, format, options, cal) {
        const dtStyle = this._dateTimeStyle(options);
        let result;
        switch (dtStyle) {
            case 0:
                // date style
                result = this._parseLenientyMMMEd(value, format, options, cal, false);
                break;
            case 1:
                // time style
                const d = new Date();
                this._parseLenienthms(d, value, format, 1, cal);
                const isoStr = dateToLocalIso(d);
                result = { value: isoStr, warning: 'lenient parsing was used' };
                break;
            case 2:
                // date-time style
                result = this._parseLenientyMMMEd(value, format, options, cal, true);
                break;
            default:
                result = { value: '', warning: 'lenient parsing was used' };
                break;
        }
        // convert result to gregorian
        const parts = IsoStrParts(result.value);
        const gregParts = [parts[0], parts[1], parts[2]];
        const isoParts = result.value.split('T');
        result.value =
            padZeros(gregParts[0], 4) +
                '-' +
                padZeros(gregParts[1], 2) +
                '-' +
                padZeros(gregParts[2], 2) +
                'T' +
                isoParts[1];
        return result;
    }
    static _getNameIndex(calNode, datePart, matchGroup, mLength, style, 
    // @ts-ignore
    matchIndex, start1, end1, start2, end2, name) {
        let index = 0;
        const monthsFormat = calNode[datePart][style];
        if (datePart === 'months') {
            index = this._getMonthIndex(calNode, matchGroup);
        }
        else {
            index = this._getDayIndex(calNode, matchGroup);
        }
        const startName = monthsFormat[mLength][start2];
        const endName = monthsFormat[mLength][end2];
        const range = {
            name: name,
            value: index,
            low: start1,
            high: end1,
            displayValue: parseInt(matchGroup),
            displayLow: startName,
            displayHigh: endName
        };
        this._validateRange(range);
        return index;
    }
    static _validateTimePart(matchInt, _timeObj, objMap, timeToken) {
        const timeObj = _timeObj;
        timeObj[objMap.timePart] = matchInt;
        if (timeToken === 'h' || timeToken === 'hh') {
            if (matchInt === 12) {
                timeObj[objMap.timePart] = 0;
            }
        }
        else if (timeToken === 'k' || timeToken === 'kk') {
            timeObj.htoken = timeToken;
            if (matchInt === 24) {
                timeObj[objMap.timePart] = 0;
            }
        }
        else if (timeToken === 'K' || timeToken === 'KK') {
            if (matchInt === 12) {
                timeObj[objMap.timePart] = 0;
            }
        }
        const range = {
            name: objMap.timePart,
            value: timeObj[objMap.timePart],
            low: objMap.start1,
            high: objMap.end1,
            displayValue: matchInt,
            displayLow: objMap.start2,
            displayHigh: objMap.end2
        };
        this._validateRange(range);
    }
    // test if the pattern/options is date, time or date-time
    // 0: date, 1:time, 2:date-time
    static _dateTimeStyle(resOptions) {
        const isTime = resOptions.hour !== undefined ||
            resOptions.minute !== undefined ||
            resOptions.second !== undefined ||
            resOptions.fractionalSecondDigits !== undefined;
        const isDate = resOptions.year !== undefined ||
            resOptions.month !== undefined ||
            resOptions.day !== undefined ||
            resOptions.weekday !== undefined;
        if (isDate && isTime) {
            return 2;
        }
        else if (isTime) {
            return 1;
        }
        else if (isDate) {
            return 0;
        }
        // try predefined style
        if (resOptions.dateStyle !== undefined && resOptions.timeStyle !== undefined) {
            return 2;
        }
        if (resOptions.timeStyle !== undefined) {
            return 1;
        }
        return 0;
    }
    // for zh-TW locales the pm symbol can vary depending on the time. We need
    // to iterate through the pm symbols in order to find a match.
    static _matchPMSymbol(cal, matchGroup) {
        const loc = cal.locale;
        let isPM = false;
        let i = 0;
        if (NativeDateTimeConstants._zh_tw_locales.includes(loc)) {
            const pmSymbols = NativeDateTimeConstants._zh_tw_pm_symbols;
            for (i = 0; i < pmSymbols.length; i++) {
                const pmSymbol = pmSymbols[i];
                if (matchGroup.indexOf(pmSymbol) !== -1) {
                    return true;
                }
            }
        }
        else {
            const calPM = cal.dayPeriods.format.wide.pm;
            isPM = toUpper(matchGroup).indexOf(toUpper(calPM)) !== -1;
        }
        return isPM;
    }
    // exact match parsing for date-time. If it fails, try lenient parse.
    static _parseExact(value, format, resOptions, cal) {
        // remove spaces from era.
        const eraPart = cal.eras.eraAbbr['1'];
        const trimEraPart = trimNumber(eraPart);
        // eslint-disable-next-line no-param-reassign
        value = value.replace(eraPart, trimEraPart);
        const getOption = getGetOption(resOptions, 'NativeDateTimeConverter.parse');
        const lenientParse = getOption('lenientParse', 'string', ['none', 'full'], 'full');
        const dtStyle = this._dateTimeStyle(resOptions);
        // convert date formats into regular expressions with groupings.
        // use the regexp to determine the input format and extract the date
        //  fields.
        const parseInfo = this._getParseRegExp(format, resOptions);
        const match = new RegExp(parseInfo.regExp).exec(value);
        if (match === null) {
            if (lenientParse === 'full') {
                return this._parseLenient(value, format, resOptions, cal);
            }
            this._throwDateFormatMismatch(value, format, dtStyle);
        }
        // found a date format that matches the input.
        const groups = parseInfo.groups;
        let year = null;
        let month = null;
        let date = null;
        let weekDay = null;
        let hourOffset = '';
        let tzID = null;
        let pmHour = undefined;
        let weekDayName = '';
        let range;
        const timeObj = {
            hour: 0,
            minute: 0,
            second: 0,
            millisec: 0,
            htoken: ''
        };
        const start2DigitYear = resOptions.twoDigitYearStart || 1950;
        // iterate the format groups to extract and set the date fields.
        for (let j = 0, jl = groups.length; j < jl; j++) {
            const matchGroup = match[j + 1];
            if (matchGroup) {
                const current = groups[j];
                const matchInt = parseInt(matchGroup, 10);
                const currentGroup = NativeDateTimeConstants._PROPERTIES_MAP[current];
                switch (currentGroup.token) {
                    case 'months':
                        month = this._getNameIndex(cal, currentGroup.token, matchGroup, currentGroup.mLen, currentGroup.style, currentGroup.matchIndex, 0, 11, '1', '12', 'month name');
                        break;
                    case 'days':
                        weekDayName = matchGroup;
                        weekDay = this._getNameIndex(cal, currentGroup.token, matchGroup, currentGroup.dLen, currentGroup.style, currentGroup.matchIndex, 0, 6, 'sun', 'sat', 'weekday');
                        break;
                    case 'time':
                        this._validateTimePart(matchInt, timeObj, currentGroup, current);
                        break;
                    case 'dayOfMonth':
                        date = matchInt;
                        break;
                    case 'monthIndex':
                        // Month.
                        month = matchInt - 1;
                        // try lenient parse for date style only
                        if (month > 11 && lenientParse === 'full') {
                            try {
                                return this._parseLenient(value, format, resOptions, cal);
                            }
                            catch (e) {
                                range = {
                                    name: 'month',
                                    value: month,
                                    low: 0,
                                    high: 11,
                                    displayValue: month + 1,
                                    displayLow: 1,
                                    displayHigh: 12
                                };
                                this._validateRange(range);
                            }
                        }
                        break;
                    case 'year':
                        year = this._expandYear(start2DigitYear, matchInt);
                        break;
                    case 'ampm':
                        pmHour = this._matchPMSymbol(cal, matchGroup);
                        break;
                    case 'tzhm':
                        // Time zone hours minutes: -0800
                        hourOffset = matchGroup.substr(-2);
                        hourOffset = matchGroup.substr(0, 3) + ':' + hourOffset;
                        break;
                    case 'tzhsepm':
                        // Time zone hours minutes: -08:00
                        hourOffset = matchGroup;
                        break;
                    case 'tzh':
                        // Time zone hours minutes: -08
                        hourOffset = matchGroup + ':00';
                        break;
                    case 'tzid':
                        // Time zone ID: America/Los_Angeles
                        tzID = matchGroup;
                        break;
                }
            }
        }
        const parsedDate = new Date();
        if (year === null) {
            year = parsedDate.getFullYear();
        }
        // if day and month are unspecified,the defaults are current
        // day and month.
        if (month === null && date === null) {
            month = parsedDate.getMonth();
            date = parsedDate.getDate();
        }
        else if (date === null) {
            // if day is unspecified, default 1st day of month.
            date = 1;
        }
        parsedDate.setFullYear(year, month, date);
        // validate month days
        const MonthDays = getDaysInMonth(year, month);
        range = {
            name: 'day',
            value: date,
            low: 1,
            high: MonthDays,
            displayValue: date,
            displayLow: 1,
            displayHigh: MonthDays
        };
        this._validateRange(range);
        // if pm designator token was found make sure the hours fit the
        // 24-hour clock.
        if (pmHour == true && timeObj.hour < 12) {
            timeObj.hour += 12;
        }
        // when hour is 12 AM and hour cycle is h24, set hour to 00
        if (pmHour == false &&
            timeObj.hour == 12 &&
            (timeObj.htoken == 'k' || timeObj.htoken == 'kk')) {
            timeObj.hour = 0;
        }
        // use the Date object to set hours, minutes, ... so that it can
        // adjust the hour correctly in case we are in missing hour during dst
        // transition, like 2:30 AM
        parsedDate.setHours(timeObj.hour, timeObj.minute, timeObj.second, timeObj.millisec);
        const parts = [year, month + 1, date, 0, 0, 0, 0];
        parts[3] = parsedDate.getHours();
        parts[4] = parsedDate.getMinutes();
        parts[5] = parsedDate.getSeconds();
        parts[6] = parsedDate.getMilliseconds();
        let isoParsedDate = partsToIsoString(parts);
        if (tzID !== null) {
            const zoneOffset = this._getTimeZoneOffset(parts, tzID);
            hourOffset = getTimeStringFromOffset('', zoneOffset, false, true);
        }
        if (hourOffset !== '') {
            isoParsedDate += hourOffset;
        }
        // validate year
        range = {
            name: 'year',
            value: year,
            low: 0,
            high: 9999,
            displayValue: year,
            displayLow: 0,
            displayHigh: 9999
        };
        this._validateRange(range);
        // validate month
        range = {
            name: 'month',
            value: month,
            low: 0,
            high: 11,
            displayValue: month + 1,
            displayLow: 1,
            displayHigh: 12
        };
        this._validateRange(range);
        // validate day range, depending on the month and year
        const daysInMonth = getDaysInMonth(parts[0], parts[1] - 1);
        range = {
            name: 'day',
            value: parts[2],
            low: 1,
            high: daysInMonth,
            displayValue: parts[2],
            displayLow: 1,
            displayHigh: daysInMonth
        };
        this._validateRange(range);
        // day of week does not match date
        if (weekDay !== null) {
            const validateDay = isoToLocalDate(isoParsedDate);
            if (validateDay && validateDay.getDay() !== weekDay) {
                this._throwWeekdayMismatch(weekDayName, validateDay.getDate());
            }
        }
        const result = { value: isoParsedDate };
        return result;
    }
    // test if the isoStr is date, time or date-time
    // 0: date, 1:time, 2:date-time
    static _isoStrDateTimeStyle(isoStr) {
        const timeIndex = isoStr.indexOf('T');
        if (timeIndex === -1) {
            return 0;
        }
        if (timeIndex > 0) {
            return 2;
        }
        return 1;
    }
    /*
     * Returns the offset of a time zone at a given moment-in-time.
     *
     * @param {Object} localeElements - locale data bundle, it also contain the
     * timezone data.
     * @param {string} tzName - The IANA time zone name for which we want to get the
     * offset. If it is the same as the local system's time zone, return the local
     * system's time zone offset by using Date.getTimezoneOffset() instead of
     * going through time zone data.
     * @param {array} parts - An array conataining year, month, day, hour, minute,
     * second that are used to create The Date object representing the moment-in-time.
     */
    static _getTimeZoneOffset(parts, tzName) {
        // if The timeZone in the options is the same as local system's
        // timezone, use Date.getTimezoneOffset
        const localTtimeZone = this.getLocalSystemTimeZone();
        if (localTtimeZone === tzName) {
            const d = new Date(parts[0], parts[1] - 1, parts[2], parts[3], parts[4], parts[5]);
            const localOffset = d.getTimezoneOffset();
            return -localOffset;
        }
        const dateParts = {
            year: parts[0],
            month: parts[1],
            date: parts[2],
            hours: parts[3],
            minutes: parts[4]
        };
        const offset = getISODateOffset(dateParts, tzName);
        return offset;
    }
    static _getAdjustedOffset(timezone, isoStrInfo) {
        const parts = isoStrInfo.isoStrParts;
        return this._getTimeZoneOffset(parts, timezone);
    }
    static _adjustHours(isoStrInfo, options) {
        const value = isoStrInfo.isoStrParts;
        const isoStrFormat = isoStrInfo.format;
        let origOffset = 0;
        switch (isoStrFormat) {
            case NativeDateTimeConstants._OFFSET:
                const tzParts = this._parseTimezoneOffset(isoStrInfo.timeZone);
                const hoursOffset = tzParts[0];
                const minOffset = tzParts[1];
                origOffset = hoursOffset * 60 + (hoursOffset < 0 ? -minOffset : minOffset);
                break;
            case NativeDateTimeConstants._ZULU:
                origOffset = 0;
                break;
        }
        let newOffset = this._getAdjustedOffset(options.timeZone, isoStrInfo);
        newOffset -= origOffset;
        // target time zone might have switched to dst before orig timezone, or
        // orig time zone might have switched to dst before target timezone.
        // Need to get the correct offset at target time zone. This happens when
        // we are very close to after target or orig time zones switched to dst.
        const newDate = new Date(value[0], value[1] - 1, value[2], value[3], value[4], value[4]);
        newDate.setHours(value[3] + ((newOffset / 60) << 0), newOffset % 60);
        const newDateIso = dateToLocalIso(newDate);
        const newDateIsoStrInfo = getISOStrFormatInfo(newDateIso);
        newOffset = this._getAdjustedOffset(options.timeZone, newDateIsoStrInfo);
        newOffset -= origOffset;
        // Do the offset math through the Date object.
        const adjustD = new Date(Date.UTC(value[0], value[1] - 1, value[2], value[3], value[4], value[5]));
        const adjustedMin = adjustD.getUTCMinutes() + newOffset;
        // eslint-disable-next-line no-bitwise
        adjustD.setUTCHours(adjustD.getUTCHours() + ((adjustedMin / 60) << 0), adjustedMin % 60);
        value[0] = adjustD.getUTCFullYear();
        value[1] = adjustD.getUTCMonth() + 1;
        value[2] = adjustD.getUTCDate();
        value[3] = adjustD.getUTCHours();
        value[4] = adjustD.getUTCMinutes();
        value[5] = adjustD.getUTCSeconds();
    }
    // Returns a time-only, date-only or date-time ISO string based on dtStyle.
    static _createISOStrParts(dtStyle, d) {
        let ms = 0;
        let val = '';
        switch (dtStyle) {
            // Date only
            case 0:
                val =
                    padZeros(d[0], 4) +
                        '-' +
                        padZeros(d[1], 2) +
                        '-' +
                        padZeros(d[2], 2);
                break;
            // Time only
            case 1:
                val =
                    'T' +
                        padZeros(d[3], 2) +
                        ':' +
                        padZeros(d[4], 2) +
                        ':' +
                        padZeros(d[5], 2);
                ms = d[6];
                if (ms > 0) {
                    val += '.' + trimRightZeros(ms);
                }
                break;
            // Date-Time
            default:
                val =
                    padZeros(d[0], 4) +
                        '-' +
                        padZeros(d[1], 2) +
                        '-' +
                        padZeros(d[2], 2) +
                        'T' +
                        padZeros(d[3], 2) +
                        ':' +
                        padZeros(d[4], 2) +
                        ':' +
                        padZeros(d[5], 2);
                ms = d[6];
                if (ms > 0) {
                    val += '.' + trimRightZeros(ms);
                }
                break;
        }
        return val;
    }
    static _getParseISOStringOffset(tzName, parts) {
        const offset = this._getTimeZoneOffset(parts, tzName);
        return getTimeStringFromOffset('', offset, false, true);
    }
    static _createParseISOStringFromDate(dtStyle, isoStrInfo, options) {
        const getOption = getGetOption(options, 'NativeDateTimeConverter.parse');
        const isoFormat = getOption('isoStrFormat', 'string', [
            NativeDateTimeConstants._ZULU,
            NativeDateTimeConstants._OFFSET,
            NativeDateTimeConstants._INVARIANT,
            NativeDateTimeConstants._LOCAL,
            NativeDateTimeConstants._AUTO
        ], NativeDateTimeConstants._AUTO);
        const parts = isoStrInfo.isoStrParts;
        const tzName = options.timeZone;
        let val = this._createISOStrParts(dtStyle, parts);
        // do not include timezone if date-only
        if (dtStyle === 0) {
            return val;
        }
        switch (isoFormat) {
            case NativeDateTimeConstants._OFFSET:
            case NativeDateTimeConstants._AUTO:
                val += this._getParseISOStringOffset(tzName, parts);
                break;
            case NativeDateTimeConstants._LOCAL:
                // if iso string is date-time, consider LOCAL as OFFSET
                if (dtStyle === 2) {
                    val += this._getParseISOStringOffset(tzName, parts);
                }
                break;
            case NativeDateTimeConstants._ZULU:
                let adjustedMin = 0;
                adjustedMin = -this._getTimeZoneOffset(parts, tzName);
                if (adjustedMin !== 0) {
                    // Do the offset math through date object.
                    const adjustD = new Date(Date.UTC(parts[0], parts[1] - 1, parts[2], parts[3], parts[4], parts[5], parts[6]));
                    adjustedMin = adjustD.getUTCMinutes() + adjustedMin;
                    // eslint-disable-next-line no-bitwise
                    adjustD.setUTCHours(adjustD.getUTCHours() + ((adjustedMin / 60) << 0), adjustedMin % 60);
                    parts[0] = adjustD.getUTCFullYear();
                    parts[1] = adjustD.getUTCMonth() + 1;
                    parts[2] = adjustD.getUTCDate();
                    parts[3] = adjustD.getUTCHours();
                    parts[4] = adjustD.getUTCMinutes();
                    parts[5] = adjustD.getUTCSeconds();
                    val = this._createISOStrParts(dtStyle, parts);
                }
                val += 'Z';
                break;
        }
        return val;
    }
    /*
     * Returns the current date at the specified timeZone. If timeZone is
     * null, return current date of the local system.
     */
    static getTimeZoneCurrentDate(tzName) {
        const options = {
            year: 'numeric',
            day: '2-digit',
            month: '2-digit'
        };
        if (tzName) {
            options.timeZone = tzName;
        }
        const cnv = Intl.DateTimeFormat('en-US', options);
        const fmt = cnv.format(new Date()); // fmt looks something like 03/05/2020
        const parts = fmt.split('/');
        const result = parts[2] + '-' + parts[0] + '-' + parts[1];
        return result;
    }
    /*
     * Returns the current offset of the specified timeZone.
     */
    static getTimeZoneCurrentOffset(timezone, timeOnlyIsoString) {
        const d = new Date();
        const localDateTimeIsoString = dateToLocalIso(d);
        let dateTimeIso;
        // Add the time to the date instead of using the current time.
        if (timeOnlyIsoString && timeOnlyIsoString.startsWith('T')) {
            const datePart = localDateTimeIsoString.split('T')[0];
            dateTimeIso = datePart + timeOnlyIsoString;
        }
        const isoStrInfo = getISOStrFormatInfo(dateTimeIso ?? localDateTimeIsoString);
        return this._getAdjustedOffset(timezone, isoStrInfo);
    }
    /*
     * Returns the local system's time zone.
     */
    static getLocalSystemTimeZone() {
        if (!localSystemTimeZone) {
            const intlCnv = new Intl.DateTimeFormat('en-US');
            localSystemTimeZone = intlCnv.resolvedOptions().timeZone;
        }
        return localSystemTimeZone;
    }
}

/**
 * @license
 * Copyright (c) 2004 %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Create an Intl.DateTimeFormat from the options.
 */
const getFormatter = (options) => {
    return new Intl.DateTimeFormat(options.locale, options);
};
/**
 * Get the resolved options from the Intl.DateTimeFormat instance, plus any custom options used by our implementation.
 */
const getResolvedOptions = (formatter, options) => {
    const resOptions = formatter.resolvedOptions();
    const isoStrFormat = options.isoStrFormat ?? 'auto';
    const twoDigitYearStart = options.twoDigitYearStart ?? 1950;
    const lenientParse = options.lenientParse ?? 'full';
    const patternFromOptions = getPatternFromOptions(formatter, resOptions);
    return { ...resOptions, isoStrFormat, twoDigitYearStart, lenientParse, patternFromOptions };
};
/**
 * Create an Intl.DateTimeFormat that can merge in the year in the desired format during the call to 'format'.
 * This is useful if you always want year: 'numeric' for dateStyle: 'short' even if
 * in some locales dateStyle: 'short' yields a 2-digit year. 2-digit years are ambiguous.
 */
const getYearFormatter = (options, resOptions) => {
    let formatter = null;
    // Set up the yearFormatter if dateStyle is short and the dateStyleShortYear option is defined.
    // If we do not add numberingSystem/calendar, then Intl.DateTimeFormat defaults to the locale's
    // numberingSystem, and that is not what JET uses.
    if (options.dateStyle === 'short' && options.dateStyleShortYear) {
        formatter = new Intl.DateTimeFormat(options.locale, {
            year: options.dateStyleShortYear,
            numberingSystem: resOptions.numberingSystem,
            calendar: resOptions.calendar
        });
    }
    return formatter;
};
/**
 * Merge in the year in the desired format rather than whatever the locale default is for dateStyle: 'short'.
 */
const formatWithYearFormat = (formatInstance, yearInstance, value) => {
    // first get the formatted numeric year
    const yearParts = yearInstance.formatToParts(value);
    const formattedYear = yearParts.find((part) => part.type === 'year')?.value;
    // next get the formatToParts of the formatInstance and substitute in formattedYear.
    const parts = formatInstance.formatToParts(value);
    return parts.reduce((acc, part) => {
        if (part.type === 'year') {
            return acc + (formattedYear ?? part.value);
        }
        return acc + part.value;
    }, '');
};
/**
 * Formats a date time string using Intl.DateTimeFormat.
 */
const formatDateTime = (intlFormatter, yearFormatter, timeZone, value) => {
    const isoStr = normalizeIsoString(timeZone, value);
    const isoStrDate = new Date(isoStr);
    return yearFormatter
        ? formatWithYearFormat(intlFormatter, yearFormatter, isoStrDate)
        : intlFormatter.format(isoStrDate);
};
/**
 * Parses the formatted string, and returns an iso string.
 * @returns an iso string
 * @throws Error if undefined, null, or '' or not an iso string, or if something went wrong in the call to parse.
 */
const parseDateTime = (locale, formatter, resOptions, str) => {
    if (str === undefined || str === null || str === '') {
        throw new types.FormatParseError('The parse value cannot be empty.', {
            cause: { code: 'emptyParseValue' }
        });
    }
    const cal = CalendarUtils.getCalendar(locale, resOptions.calendar);
    const pattern = getPatternFromOptions(formatter, resOptions);
    const result = NativeParserImpl.parseImpl(str, pattern, resOptions, cal);
    const parsed = result.value;
    if (parsed) {
        if (result.warning) {
            logger.warn('The value ' + str + ' was leniently parsed to represent a date ' + parsed);
        }
    }
    return parsed;
};
/**
 * Checks if it is a valid iso string.
 * Also fixes up the iso string if needed, i.e. if local and timezone are specified in the options.
 * @param timeZone
 * @param value
 * @returns
 * @throws Error if undefined, null, or '' or if it is an invalid iso string.
 */
const normalizeIsoString = (timeZone, value) => {
    if (value === undefined || value === null || value === '') {
        throw new types.FormatParseError('The format value cannot be empty.', {
            cause: { code: 'emptyFormatValue' }
        });
    }
    if (value.startsWith('T')) {
        // Intl Object takes Date object as parameter. new Date() throws an
        // exception with time only ISO string. Prepend current date to time
        // only iso string.
        let curDate = '';
        if (timeZone) {
            // if options contain a timeZone, get the current date at this time zone
            curDate = NativeParserImpl.getTimeZoneCurrentDate(timeZone);
        }
        else {
            // get the current date of the local system
            curDate = dateToLocalIso(new Date()).split('T')[0];
        }
        value = curDate + value;
    }
    else if (value.indexOf('T') === -1) {
        value = value + 'T00:00:00';
    }
    // test if value is a valid ISO string
    const exe = _ISO_DATE_REGEXP.exec(value);
    if (!exe) {
        const e = new types.FormatParseError('The format value must be a valid iso string.', {
            cause: { code: 'invalidISOString', parameterMap: { isoStr: value } }
        });
        throw e;
    }
    // If value is local ISO string and timeZone is specified in options, adjust
    // offset to avoid time zone conversion from local system's timezone to target timezone
    if (timeZone) {
        // Also test if timeZone in the options is the same as local system time zone
        let islocalTimeZone = false;
        const localTimeZone = NativeParserImpl.getLocalSystemTimeZone();
        if (localTimeZone === timeZone) {
            islocalTimeZone = true;
        }
        const timePart = value.substring(value.indexOf('T'));
        const isLocalValue = timePart.indexOf('Z') === -1 && timePart.indexOf('+') === -1 && timePart.indexOf('-') === -1;
        if (isLocalValue && !islocalTimeZone) {
            const parts = IsoStrParts(value);
            const dateParts = {
                year: parts[0],
                month: parts[1],
                date: parts[2],
                hours: parts[3],
                minutes: parts[4]
            };
            const offset = getISODateOffset(dateParts, timeZone);
            value = value + getTimeStringFromOffset('', offset, false, true);
        }
    }
    //if ISO string time zone offset is hh, replace it with hh:00 so that new Date() does not fail
    value = value.replace(/(T.*?[+-]..$)/, '$1:00');
    return value;
};
const getPatternFromOptions = (formatter, options) => {
    const isoSTr = '2000-01-02T00:00:00';
    const date = new Date(isoSTr);
    let pattern = '';
    let optVal = '';
    let token = null;
    let dtokenMap = null;
    let ttokenMap = null;
    let dateStyle = false;
    let timeStyle = false;
    if (options.dateStyle !== undefined) {
        dtokenMap = NativeDateTimeConstants._dateTimeFormats.dateStyle;
        dtokenMap = dtokenMap[options.dateStyle];
        dateStyle = true;
    }
    if (options.timeStyle !== undefined) {
        ttokenMap = NativeDateTimeConstants._dateTimeFormats.timeStyle;
        ttokenMap = ttokenMap[options.timeStyle];
        timeStyle = true;
    }
    const tokenMap = NativeDateTimeConstants._tokenMap;
    // eslint-disable-next-line array-callback-return
    formatter.formatToParts(date).map(({ type, value }) => {
        // TODO: Intl.DateTimeFormatPartType type does not have 'fractionalSecond' even though it is in the api.
        // so to workaround getting a typescript error, I'm setting as string here.
        // Fix when the typescript for Intl.DateTimeFormat gets fixed.
        switch (type) {
            case 'literal':
                token = value.replace(NativeDateTimeConstants._ALPHA_REGEXP, "'$1'");
                break;
            case 'dayPeriod':
                token = 'a';
                break;
            case 'hour':
                if (timeStyle) {
                    token = ttokenMap[type];
                }
                else {
                    optVal = options[type];
                    token = tokenMap[type][optVal];
                }
                let ish12 = options.hour12;
                if (ish12 === undefined) {
                    ish12 = false;
                }
                // take hourCycle into consideration
                if (options.hourCycle) {
                    token = token.replace(NativeDateTimeConstants._HOUR12_REGEXP, NativeDateTimeConstants._hourCycleMap[options.hourCycle]);
                }
                // h12 takes precedence over hourCycle
                if (ish12 === true) {
                    token = token.replace(NativeDateTimeConstants._HOUR12_REGEXP, 'h');
                }
                break;
            case 'month':
                // some locales have month as numeric for medium style and some have month
                // as medium style check the value to get accurate pattern
                if (dateStyle) {
                    if (isNaN(+value)) {
                        token = dtokenMap.month_m;
                    }
                    else {
                        token = dtokenMap.month_s;
                    }
                }
                else {
                    optVal = options[type];
                    token = tokenMap[type][optVal];
                }
                break;
            case 'year':
            case 'day':
            case 'weekday':
                if (dateStyle) {
                    token = dtokenMap[type];
                }
                else {
                    optVal = options[type];
                    token = tokenMap[type][optVal];
                }
                break;
            case 'minute':
            case 'second':
            case 'timeZoneName':
                if (timeStyle) {
                    token = ttokenMap[type];
                }
                else {
                    optVal = options[type];
                    token = tokenMap[type][optVal];
                }
                break;
            case 'era':
                optVal = options[type] || 'short';
                token = tokenMap[type][optVal];
                break;
            case 'fractionalSecond':
                token = options.fractionalSecondDigits;
                token = tokenMap[type][token];
                break;
        }
        pattern += token;
    });
    return pattern;
};

/**
 * @license
 * Copyright (c) 2004 %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * This function is used to retrieve 'format'and 'parse' methods for formatting or parsing date,
 * time, or datetime values according to the provided options. The options may include:
 *
 * Using the standard date, datetime and time format lengths defined by Unicode CLDR; these
 * include the dateStyle and timeStyle properties (full | long | medium | short).
 *
 * Using options defined by the ECMA 402 Specification, including the properties year,
 * month, day, hour, minute, second, weekday, era, timeZoneName, hour12, timeZone.
 *
 * Passing the BCP47Locale is the only required option. If no other options are specified,
 * the default is to use the 'short' format length for the provided locale.
 *
 * Once the function has been called with a set of options, there is no need to call it again unless
 * you want to change the options being used to format and parse, or the locale.
 */
function getFormatParse(options) {
    const intlFormatter = getFormatter(options);
    const resolvedOptions = getResolvedOptions(intlFormatter, options);
    const yearFormatter = getYearFormatter(options, resolvedOptions);
    const format = (value) => formatDateTime(intlFormatter, yearFormatter, resolvedOptions.timeZone, value);
    const parse = (str) => parseDateTime(options.locale, intlFormatter, resolvedOptions, str);
    return { format, parse, resolvedOptions, formatter: intlFormatter };
}

exports.CalendarUtils = CalendarUtils;
exports.NativeDateTimeConstants = NativeDateTimeConstants;
exports.NativeParserImpl = NativeParserImpl;
exports.dateTimeUtils = dateTimeUtils;
exports.formatWithYearFormat = formatWithYearFormat;
exports.getDaysInMonth = getDaysInMonth;
exports.getFormatParse = getFormatParse;
exports.getISODateOffset = getISODateOffset;
exports.isDateOnlyIsoString = isDateOnlyIsoString;
exports.normalizeIsoString = normalizeIsoString;
//# sourceMappingURL=getFormatParse-4a697b8f.js.map
