/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentProps } from 'preact';
import { BCP47Locale } from "../UNSAFE_IntlDateTime";
import { DateField } from './DateField';
import { CalendarDate, DateGranularity, DatePlaceholders, EditableDateSegment } from './types';
import { DateSegment } from './DateSegment';
type DateFieldType = ComponentProps<typeof DateField>;
type useDateFieldProps = {
    ariaLabels: Record<EditableDateSegment, string>;
    dateMasks: DatePlaceholders;
    granularity: DateGranularity;
    locale: BCP47Locale;
    value: DateFieldType['value'];
};
type DateSegmentState = Readonly<ComponentProps<typeof DateSegment>>;
type DateFieldState = {
    readonly currentDate: CalendarDate | undefined;
    readonly isCompleteDate: boolean;
    readonly isDateSelected: boolean;
    readonly isPartialDate: boolean;
    readonly orderedSegments: EditableDateSegment[];
    readonly segments: DateSegmentState[];
};
/**
 * Hook that returns a DateFieldState and a dispatch method to request changes to that state.
 */
declare const useDateField: ({ ariaLabels, dateMasks, granularity, locale, value: currentValue }: useDateFieldProps) => {
    dateResetRef: import("preact/hooks").MutableRef<boolean>;
    dispatch: import("preact/hooks").Dispatch<import("./dateReducer").DateFieldAction | {
        actionType: "reset";
        data: DateFieldState;
    }>;
    state: DateFieldState;
};
export { useDateField };
export type { DateFieldState, DateSegmentState };
