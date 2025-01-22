/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentProps, Ref, RefObject } from 'preact';
import { AriaAttributesSignalExcluded } from "../utils/UNSAFE_attributeUtils";
import type { CalendarDate, DatePlaceholders } from './types';
import { InlineUserAssistance, UserAssistanceDensityType } from "../UNSAFE_UserAssistance";
import { Size } from "../utils/UNSAFE_size";
import { TextFieldContent } from "../UNSAFE_TextField/TextFieldContent";
import type { TestIdProps } from "../hooks/UNSAFE_useTestId";
import type { TextProps } from "../utils/UNSAFE_interpolations/text";
import { FocusableHandle } from "../hooks/UNSAFE_useFocusableTextField";
import { ValueUpdateDetail } from "../utils/UNSAFE_valueUpdateDetail";
import { LayoutColumnSpan } from '../utils/UNSAFE_styles/Layout';
type InlineUserAssistanceProps = ComponentProps<typeof InlineUserAssistance>;
type TextFieldContentProps = ComponentProps<typeof TextFieldContent>;
type Props = TestIdProps & {
    /**
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the input.
     */
    'aria-describedby'?: AriaAttributesSignalExcluded['aria-describedby'];
    /**
     * Text to provide guidance to help the user understand what data to enter.
     */
    assistiveText?: InlineUserAssistanceProps['assistiveText'];
    /**
     * Specifies how many columns to span in a FormLayout with direction === 'row'
     */
    columnSpan?: LayoutColumnSpan;
    /**
     * Use this property to provide content for the end slot, such as a calendar icon.
     */
    endContent?: TextFieldContentProps['endContent'];
    /**
     * Specifies the smallest date unit that is displayed by the component.
     * If set to month, only month and year are shown.
     * If set to day then month, day, and year are shown.
     */
    granularity?: 'month' | 'day';
    /**
     * Help source URL associated with the component.
     */
    helpSourceLink?: InlineUserAssistanceProps['helpSourceLink'];
    /**
     * Custom text to be rendered for the <code>helpSourceLink</code>.
     */
    helpSourceText?: InlineUserAssistanceProps['helpSourceText'];
    /**
     * Specifies whether the component is disabled.
     */
    isDisabled?: boolean;
    /**
     * Specifies whether the component is readonly.
     */
    isReadonly?: boolean;
    /**
     * Specifies for accessibility purposes whether a value is required.
     *
     * Setting this property to <code>false</code> means that a value is not required to be
     * committed by the user. Setting this property to <code>true</code> means that a value
     * is required to be committed by the user.
     */
    isRequired?: boolean;
    /**
     * Specifies whether to show an indicator on screen that a value is required, for example
     * before the user has committed a value.
     */
    isRequiredShown?: InlineUserAssistanceProps['isRequiredShown'];
    /**
     * Specifies the label associated with the field.
     */
    label: string;
    /**
     * Specifies where the label is positioned relative to the field.
     */
    labelEdge?: 'inside' | 'start' | 'top' | 'none';
    /**
     * Specifies the width of the label when <code>labelEdge</code> is <code>"start"</code>.
     */
    labelStartWidth?: Size;
    /**
     * A ref to the component field. This can be used when you are composing with InputDateMask
     * and need to provide an anchor ref to a floating component.
     */
    mainFieldRef?: RefObject<HTMLDivElement>;
    /**
     * If specified, overrides the locale specific order of the individual date segments as
     * well as the locale specific separator. The value of each placeholder is only used
     * when the type is 'literal', otherwise it is replaced with a translated placeholder
     * for month, day, or year. If masks are specified and granularity = day, then the
     * placeholders must include month, day, and year. If granularity = month, then the
     * placeholders must include month and year, but not day.
     */
    masks?: DatePlaceholders;
    /**
     * Messages to show on screen that are associated with the component.
     */
    messages?: InlineUserAssistanceProps['messages'];
    /**
     * Specifies how to align text within the field.
     */
    textAlign?: TextProps['textAlign'];
    /**
     * Specifies the density of the user assistance presentation. It can be set to:
     * <ul>
     * <li><code>'efficient'</code>: Show inline and reserve space to prevent layout reflow when user
     * assistance text is displayed.</li>
     * <li><code>'reflow'</code>: Show inline. Layout will reflow when text is displayed.</li>
     * <li><code>'compact'</code>: Messages, help, hints, and required will not be shown inline; they will show in a mode that keeps the screen more compact, like a popup for the messages, and a required icon to indicate Required. </li>
     * </ul>
     */
    userAssistanceDensity?: UserAssistanceDensityType;
    /**
     * The current display value of the component.
     */
    value?: CalendarDate;
    /**
     * The style variant of the component.
     */
    variant?: 'default' | 'embedded';
    /**
     * Callback invoked when the user commits the entered value by blurring or hitting the enter key.
     */
    onCommit?: (detail: ValueUpdateDetail<CalendarDate>) => void;
    /**
     * Callback invoked each time the user changes the value of a segment For example, if the user
     * types '12' into the month segment, this callback will be called twice to change the month
     * first to '1' and then '12'.
     */
    onInput: (detail: ValueUpdateDetail<CalendarDate>) => void;
};
/**
 * An InputDateMask allows you to edit the month, day, and year fields of a calendar date.
 */
export declare const InputDateMask: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: Ref<FocusableHandle> | undefined;
}>;
export {};
