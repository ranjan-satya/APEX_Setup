/**
 * @license
 * Copyright (c) 2019 %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { Range } from "../UNSAFE_typeUtils";
export type IsoMonth = Range<1, 13>;
export type IsoDay = Range<1, 32>;
export type CalendarDate = {
    year?: number;
    month?: IsoMonth;
    day?: IsoDay;
};
export type CalendarDateRequired = Required<CalendarDate>;
type MonthPlaceholder = {
    type: 'month';
    value: string;
};
type DayPlaceholder = {
    type: 'day';
    value: string;
};
type YearPlaceholder = {
    type: 'year';
    value: string;
};
type SeparatorPlaceholder = {
    type: 'literal';
    value: string;
};
export type MonthYearPlaceholders = [MonthPlaceholder, SeparatorPlaceholder, YearPlaceholder] | [YearPlaceholder, SeparatorPlaceholder, MonthPlaceholder];
export type CalendarDatePlaceholders = [MonthPlaceholder, SeparatorPlaceholder, DayPlaceholder, SeparatorPlaceholder, YearPlaceholder] | [MonthPlaceholder, SeparatorPlaceholder, YearPlaceholder, SeparatorPlaceholder, DayPlaceholder] | [DayPlaceholder, SeparatorPlaceholder, MonthPlaceholder, SeparatorPlaceholder, YearPlaceholder] | [DayPlaceholder, SeparatorPlaceholder, YearPlaceholder, SeparatorPlaceholder, MonthPlaceholder] | [YearPlaceholder, SeparatorPlaceholder, MonthPlaceholder, SeparatorPlaceholder, DayPlaceholder] | [YearPlaceholder, SeparatorPlaceholder, DayPlaceholder, SeparatorPlaceholder, MonthPlaceholder];
export type DatePlaceholders = MonthYearPlaceholders | CalendarDatePlaceholders;
export type DateGranularity = 'month' | 'day';
export type CalendarMonth = {
    year?: number;
    month?: IsoMonth;
};
export type CalendarMonthRequired = Required<CalendarMonth>;
export {};
