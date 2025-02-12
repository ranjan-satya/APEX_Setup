/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentProps, Ref } from 'preact';
import { FocusableHandle } from '../hooks/UNSAFE_useFocusableTextField';
import { TextFieldInput } from '../UNSAFE_TextField';
import { InlineUserAssistance, UserAssistanceDensityType } from '../UNSAFE_UserAssistance';
import { CountUnit } from '../hooks/UNSAFE_useLengthFilter';
import { Size } from '../utils/UNSAFE_size';
import { LayoutColumnSpan } from '../utils/UNSAFE_styles/Layout';
import type { TestIdProps } from "../hooks/UNSAFE_useTestId";
type TextFieldInputProps = ComponentProps<typeof TextFieldInput>;
type InlineUserAssistanceProps = ComponentProps<typeof InlineUserAssistance>;
type Props = TestIdProps & {
    /**
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the input.
     */
    'aria-describedby'?: TextFieldInputProps['aria-describedby'];
    /**
     * Text to provide guidance to help the user understand what to enter.
     */
    assistiveText?: InlineUserAssistanceProps['assistiveText'];
    /**
     * Dictates component's autocomplete state.
     * This attribute indicates whether the value of the control can be automatically completed by the browser.
     * The common values are "on" and "off".
     */
    autoComplete?: TextFieldInputProps['autoComplete'];
    /**
     * Autofocus specifies whether the component will get focus when the page is loaded.
     * If it is set to true then the associated component will get input focus when the page is loaded.
     * Setting this property doesn't set the focus to the component; it tells the browser to focus
     * to it when the element is inserted in the document.
     */
    autoFocus?: TextFieldInputProps['autoFocus'];
    /**
     * Specifies how many columns to span in a FormLayout with direction === 'row'
     */
    columnSpan?: LayoutColumnSpan;
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
     * committed by the user.  Setting this property to <code>true</code> means that a value
     * is required to be committed by the user.
     */
    isRequired?: TextFieldInputProps['isRequired'];
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
     * Specifies the width of the label when <code>labelEdge</code> is <code>"start"</code>
     */
    labelStartWidth?: Size;
    /**
     * Specifies the maximum number of characters that can be entered in the input field.
     */
    maxLength?: number;
    /**
     * Determines whether the remaining number of characters that can be entered is shown or not.
     */
    maxLengthCounter?: 'none' | 'remaining';
    /**
     * Specifies how the input text characters are to be counted when maxLength is specified.
     */
    maxLengthUnit?: CountUnit;
    /**
     * Specifies the maximum number of rows that the TextAreaAutosize is allowed to grow to.
     * If maxRows is less than minRows, it is ignored.
     */
    maxRows?: number;
    /**
     * Messages to show on screen that are associated with the component.
     */
    messages?: InlineUserAssistanceProps['messages'];
    /**
     * Specifies the minimum number of rows that the TextAreaAutosize is allowed to shrink to.
     */
    minRows?: number;
    /**
     * A short hint to display before the user enters a value.
     */
    placeholder?: TextFieldInputProps['placeholder'];
    /**
     * Specifies how the user is allowed to manually resize the TextArea component.
     */
    role?: TextFieldInputProps['role'];
    /**
     * Specifies the number of rows to display
     */
    textAlign?: TextFieldInputProps['textAlign'];
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
    value?: TextFieldInputProps['value'];
    /**
     * The style variant of the component.
     */
    variant?: TextFieldInputProps['variant'];
    /**
     * Callback invoked when the user commits the entered value by blurring out of the field.
     *
     */
    onCommit?: TextFieldInputProps['onCommit'];
    /**
     * Callback invoked when the user inputs a value.
     *
     */
    onInput: TextFieldInputProps['onInput'];
};
/**
 * A text area auto size displays a field that allows a user to enter a multi-line text value, and will adjust its height based on its content.
 */
export declare const TextAreaAutosize: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: Ref<FocusableHandle> | undefined;
}>;
export {};
