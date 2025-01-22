/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentProps } from 'preact';
import { DatePicker } from "../UNSAFE_DatePicker";
import { type CloseDetail as DropdownCloseDetail } from "../UNSAFE_Dropdown";
import { InputDatePicker } from './InputDatePicker';
import { StickyPositioningDropdown } from "../PRIVATE_FormControls";
import { type CloseDetail as SheetCloseDetail } from "../UNSAFE_Sheet";
import type { TestIdProps } from "../hooks/UNSAFE_useTestId";
type StickyPositioningDropdownProps = ComponentProps<typeof StickyPositioningDropdown>;
type InputDatePickerProps = ComponentProps<typeof InputDatePicker>;
type PickedPropsFromInputDatePicker = Pick<InputDatePickerProps, 'assistiveText' | 'dayFormatter' | 'daysOutsideMonth' | 'helpSourceLink' | 'helpSourceText' | 'isDisabled' | 'isReadonly' | 'label' | 'messages' | 'min' | 'max' | 'monthAndYearPicker' | 'todayButton' | 'todayTimeZone' | 'userAssistanceDensity' | 'value'>;
type DatePickerProps = ComponentProps<typeof DatePicker>;
type PickedPropsFromDatePicker = Pick<DatePickerProps, 'value' | 'onCommit'>;
type PickedPropsFromDropdown = Omit<StickyPositioningDropdownProps, 'onClose'>;
type CloseDetail = SheetCloseDetail | DropdownCloseDetail;
type Props = PickedPropsFromDatePicker & PickedPropsFromInputDatePicker & PickedPropsFromDropdown & TestIdProps & {
    /**
     * Called when the dropdown or sheet is supposed to be closed.
     */
    onClose?: (detail: CloseDetail) => void;
};
/**
 * Component that renders DatePicker either inside a dropdown or sheet; at small screen
 * widths, it renders inside a sheet. Additionally, when a dropdown is being shown beneath
 * the component, we also show any user assistance text or messages below the picker
 * because otherwise that information would be obscured from view. When a sheet is being
 * shown, it will always display UA and messages at the bottom of the sheet.
 */
declare const InputDatePickerDropdown: ({ anchorRef, assistiveText, dayFormatter, daysOutsideMonth, helpSourceLink, helpSourceText, isDisabled, isOpen, isReadonly, label, onClose, onCommit, max, messages, min, monthAndYearPicker, testId, todayButton, todayTimeZone, userAssistanceDensity, value }: Props) => import("preact").JSX.Element;
export { InputDatePickerDropdown, type CloseDetail };
