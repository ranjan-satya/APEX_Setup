/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
import { AriaAttributesSignalExcluded } from "../utils/UNSAFE_attributeUtils";
import { DateFieldAction } from './dateReducer';
import { EditableDateSegment } from './types';
type AriaProps = Pick<AriaAttributesSignalExcluded, 'aria-label' | 'aria-valuemax' | 'aria-valuemin' | 'aria-valuenow' | 'aria-valuetext'>;
type Props = AriaProps & {
    /** A ref that is provided for the first segment in a date field. */
    inputRef?: Ref<HTMLDivElement>;
    /**
     * True if the segment is complete in the sense that it contains a complete valid value.
     * For instance, entering '0' and then '1-9' is considered a complete value for month and day.
     * Also true if typing any additional digit would cause the segment value to exceed the max.
     */
    isComplete?: boolean;
    /**
     * True if the segment is disabled.
     */
    isDisabled?: boolean;
    /**
     * True if the segment should be hidden.
     */
    isHidden?: boolean;
    /**
     * True if the segment is highlighted.
     */
    isHighlighted?: boolean;
    /**
     * True if the segment is invalid.
     */
    isInvalid?: boolean;
    /**
     * Specifies for accessibility purposes whether a value is required.
     */
    isRequired?: boolean;
    /**
     * True if the segment is selected.
     */
    isSelected?: boolean;
    /**
     * Placeholder displayed when the segment has no display value.
     */
    placeholder?: string;
    /**
     * The text to display for this segment.
     */
    text?: string;
    /**
     * The segment of a calendar date which is being represented, i.e. the month, day, or year.
     */
    type: EditableDateSegment;
    /**
     * Callback invoked when a change to the segment is requested via user action, such as typing
     * a new value or pressing the Backspace or Delete keys.
     */
    onChange?: (action: DateFieldAction) => void;
};
/**
 * A DateSegment renders a part of a calendar date, e.g. the day, month, or year.
 * It can be used as a spinbutton to step or spin its value.
 */
export declare const DateSegment: ({ "aria-label": ariaLabel, "aria-valuemax": ariaValueMax, "aria-valuemin": ariaValueMin, "aria-valuenow": ariaValueNow, "aria-valuetext": ariaValueText, inputRef, isComplete, isDisabled, isHidden, isHighlighted, isInvalid, isRequired, isSelected, onChange, placeholder, text, type }: Props) => import("preact").JSX.Element;
export {};
