/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentProps, Ref } from 'preact';
import { CalendarDate, CalendarDatePlaceholders, InputDateMask } from "../UNSAFE_InputDateMask";
import { DatePicker } from "../UNSAFE_DatePicker";
import { FocusableHandle } from "../hooks/UNSAFE_useFocusableTextField";
import { ValueUpdateDetail } from "../utils/UNSAFE_valueUpdateDetail";
type InputDateMaskProps = ComponentProps<typeof InputDateMask>;
type PickedPropsFromInputDateMask = Pick<InputDateMaskProps, 'aria-describedby' | 'assistiveText' | 'columnSpan' | 'helpSourceLink' | 'helpSourceText' | 'isDisabled' | 'isReadonly' | 'isRequired' | 'isRequiredShown' | 'label' | 'labelEdge' | 'labelStartWidth' | 'messages' | 'textAlign' | 'testId' | 'userAssistanceDensity' | 'variant'>;
type DatePickerProps = ComponentProps<typeof DatePicker>;
type PickedPropsFromDatePicker = Pick<DatePickerProps, 'dayFormatter' | 'daysOutsideMonth' | 'max' | 'min' | 'monthAndYearPicker' | 'todayTimeZone' | 'todayButton'>;
type Props = PickedPropsFromInputDateMask & PickedPropsFromDatePicker & {
    /**
     * If specified, overrides the locale specific order of the individual date segments
     * in the date field as well as the locale specific separator. The value of each placeholder
     * is only used when the type is 'literal', otherwise it is replaced with a translated
     * placeholder for month, day, or year. The placeholders must include month, day, and year.
     */
    masks?: CalendarDatePlaceholders;
    /**
     * The current display value of the component.
     * This is a CalendarDate, not CalendarDateRequired, because this is a controlled component and
     * the user may type the month, day, and year separately. If a selection is made in the date
     * picker, then the value is a complete date.
     */
    value?: CalendarDate;
    /**
     * Callback invoked when the user commits the entered value by blurring or hitting the enter key.
     * It is also called when a selection is made in the date picker.
     */
    onCommit?: (detail: ValueUpdateDetail<CalendarDate>) => void;
    /**
     * Callback invoked each time the user changes the value of a segment. For example, if the user
     * types '12' into the month segment, this callback will be called twice to change the month
     * first to '1' and then '12'.
     */
    onInput: (detail: ValueUpdateDetail<CalendarDate>) => void;
};
/**
 * InputDatePicker allows users to enter or select a single date using a calendar interface.
 */
export declare const InputDatePicker: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: Ref<FocusableHandle> | undefined;
}>;
export {};
