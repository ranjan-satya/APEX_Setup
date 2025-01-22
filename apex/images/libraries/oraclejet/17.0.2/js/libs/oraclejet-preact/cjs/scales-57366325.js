/* @oracle/oraclejet-preact: undefined */
'use strict';

var dayUtils = require('./dayUtils-fd8310fc.js');
var getFormatParse = require('./getFormatParse-4a697b8f.js');
require('./logger-2b636482.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const getFirstDayOfWeek = () => dayUtils.getWeekStart(navigator.language);
const getSecondsScale = (options = { target: 'minorAxis' }) => {
    const { formatter, labelPosition } = options;
    return {
        formatter: formatter ||
            getFormatParse.getFormatParse({
                locale: navigator.language,
                hour: 'numeric',
                minute: '2-digit',
                second: '2-digit'
            }).format,
        labelPosition: labelPosition || 'start',
        getPreviousDate: (date) => {
            const prevDate = new Date(date);
            prevDate.setMilliseconds(0);
            return prevDate.toISOString();
        },
        getNextDate: (date) => {
            const time = Date.parse(date);
            return new Date(time + 1000).toISOString();
        }
    };
};
const getMinutesScale = (options = { target: 'minorAxis' }) => {
    const { formatter, labelPosition } = options;
    return {
        formatter: formatter ||
            getFormatParse.getFormatParse({
                locale: navigator.language,
                hour: 'numeric',
                minute: '2-digit'
            }).format,
        labelPosition: labelPosition || 'start',
        getPreviousDate: (date) => {
            const prevDate = new Date(date);
            prevDate.setSeconds(0, 0);
            return prevDate.toISOString();
        },
        getNextDate: (date) => {
            const time = Date.parse(date);
            return new Date(time + 60000).toISOString();
        }
    };
};
const getHoursScale = (options = { target: 'minorAxis' }) => {
    const { formatter, labelPosition } = options;
    return {
        formatter: formatter ||
            getFormatParse.getFormatParse({
                locale: navigator.language,
                hour: 'numeric'
            }).format,
        labelPosition: labelPosition || 'start',
        getPreviousDate: (date) => {
            const prevDate = new Date(date);
            prevDate.setMinutes(0, 0, 0);
            return prevDate.toISOString();
        },
        getNextDate: (date) => {
            const time = Date.parse(date);
            return new Date(time + 3600000).toISOString();
        }
    };
};
const getDaysScale = (options = { target: 'minorAxis' }) => {
    const { target, formatter, labelPosition } = options;
    return {
        formatter: formatter ||
            getFormatParse.getFormatParse({
                locale: navigator.language,
                month: 'numeric',
                day: '2-digit'
            }).format,
        labelPosition: labelPosition || (target === 'majorAxis' ? 'center' : 'start'),
        getPreviousDate: (date) => {
            const prevDate = new Date(date);
            prevDate.setHours(0, 0, 0, 0);
            return prevDate.toISOString();
        },
        getNextDate: (date) => {
            const nextDate = new Date(date);
            nextDate.setDate(nextDate.getDate() + 1);
            return nextDate.toISOString();
        }
    };
};
const getWeeksScale = (options = { target: 'minorAxis' }) => {
    const { formatter, labelPosition } = options;
    return {
        formatter: formatter ||
            getFormatParse.getFormatParse({
                locale: navigator.language,
                month: 'numeric',
                day: '2-digit'
            }).format,
        labelPosition: labelPosition || 'start',
        getPreviousDate: (date) => {
            const prevDate = new Date(date);
            const rollAmt = (prevDate.getDay() - getFirstDayOfWeek() + 7) % 7;
            prevDate.setHours(0, 0, 0, 0);
            if (rollAmt > 0) {
                // Work with date instead of time in ms to avoid daylight savings issues
                prevDate.setDate(prevDate.getDate() - rollAmt);
            }
            return prevDate.toISOString();
        },
        getNextDate: (date) => {
            const nextDate = new Date(date);
            nextDate.setDate(nextDate.getDate() + 7);
            return nextDate.toISOString();
        }
    };
};
const getMonthsScale = (options = { target: 'minorAxis' }) => {
    const { formatter, labelPosition } = options;
    return {
        formatter: formatter ||
            getFormatParse.getFormatParse({
                locale: navigator.language,
                month: 'long'
            }).format,
        labelPosition: labelPosition || 'start',
        getPreviousDate: (date) => {
            const prevDate = new Date(date);
            prevDate.setDate(1);
            prevDate.setHours(0, 0, 0, 0);
            return prevDate.toISOString();
        },
        getNextDate: (date) => {
            const nextDate = new Date(date);
            nextDate.setMonth(nextDate.getMonth() + 1);
            return nextDate.toISOString();
        }
    };
};
const getQuartersScale = (options = { target: 'minorAxis' }) => {
    const { formatter, labelPosition } = options;
    return {
        formatter: formatter ||
            getFormatParse.getFormatParse({
                locale: navigator.language,
                month: 'long'
            }).format,
        labelPosition: labelPosition || 'start',
        getPreviousDate: (date) => {
            const prevDate = new Date(date);
            const quarter = Math.floor(prevDate.getMonth() / 3);
            prevDate.setDate(1);
            prevDate.setHours(0, 0, 0, 0);
            prevDate.setMonth(quarter * 3);
            return prevDate.toISOString();
        },
        getNextDate: (date) => {
            const nextDate = new Date(date);
            nextDate.setMonth(nextDate.getMonth() + 3);
            return nextDate.toISOString();
        }
    };
};
const getYearsScale = (options = { target: 'minorAxis' }) => {
    const { formatter, labelPosition } = options;
    return {
        formatter: formatter ||
            getFormatParse.getFormatParse({
                locale: navigator.language,
                year: 'numeric'
            }).format,
        labelPosition: labelPosition || 'start',
        getPreviousDate: (date) => {
            const prevDate = new Date(date);
            prevDate.setMonth(0);
            prevDate.setDate(1);
            prevDate.setHours(0, 0, 0, 0);
            return prevDate.toISOString();
        },
        getNextDate: (date) => {
            const nextDate = new Date(date);
            nextDate.setFullYear(nextDate.getFullYear() + 1);
            return nextDate.toISOString();
        }
    };
};

exports.getDaysScale = getDaysScale;
exports.getHoursScale = getHoursScale;
exports.getMinutesScale = getMinutesScale;
exports.getMonthsScale = getMonthsScale;
exports.getQuartersScale = getQuartersScale;
exports.getSecondsScale = getSecondsScale;
exports.getWeeksScale = getWeeksScale;
exports.getYearsScale = getYearsScale;
//# sourceMappingURL=scales-57366325.js.map
