/**
 * @license
 * Copyright (c) 2004 %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { NativeDateTimeResolvedOptions } from './NativeDateTimeOptions';
export declare const _ISO_DATE_REGEXP: RegExp;
/**
 * Returns true if the value represents a date-only ISO string.
 *
 * @param {string} value
 * @returns true if the string represents a date-only ISO string
 */
export declare function isDateOnlyIsoString(value?: string | null): boolean;
export declare function startsWith(value: string, pattern: string): boolean;
export declare function trim(value: string): string;
export declare function trimRightZeros(value: string): string;
export declare function trimNumber(value: string): string;
export declare function toUpper(value: string): string;
export declare function padZeros(num: number, c: number): string;
export declare function zeroPad(str: string, count: number, left: boolean): string;
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
export declare function dateToLocalIso(_date: Date | number): string;
export declare function isLeapYear(y: number): boolean;
export declare function getDaysInMonth(y: number, m: number): 28 | 31 | 30 | 29;
export declare function IsoStrParts(isoString: string): number[];
export declare function getGetOption(options: NativeDateTimeResolvedOptions, getOptionCaller: string): (property: any, type: any, values: any, defaultValue: any) => any;
export declare function partsToIsoString(parts: any): string;
/**
 * Returns a local Date object from a local ISO string. This method is only meant
 * to work with local ISO strings. If the input ISO string contain Z or offset,
 * they will be ignored.
 * @param {string} isoString
 * @memberof oj.OraI18nUtils
 * @method isoToLocalDate
 */
export declare function isoToLocalDate(isoString: string): Date | null;
export declare function getISOStrFormatInfo(isoStr: string): any;
export declare function getTimeStringFromOffset(prefix: string, offset: number, reverseSign: boolean, alwaysMinutes: boolean): string;
