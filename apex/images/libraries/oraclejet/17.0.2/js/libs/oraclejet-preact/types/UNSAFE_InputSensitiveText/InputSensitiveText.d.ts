/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentProps, Ref } from 'preact';
import { FocusableHandle } from "../hooks/UNSAFE_useFocusableTextField";
import { CountUnit } from "../hooks/UNSAFE_useLengthFilter";
import { TextFieldInput } from "../UNSAFE_TextField";
import { InlineUserAssistance, UserAssistanceDensityType } from "../UNSAFE_UserAssistance";
import { Size } from "../utils/UNSAFE_size";
import type { TestIdProps } from "../hooks/UNSAFE_useTestId";
import { LayoutColumnSpan } from "../utils/UNSAFE_styles/Layout";
type TextFieldInputProps = ComponentProps<typeof TextFieldInput>;
type InlineUserAssistanceProps = ComponentProps<typeof InlineUserAssistance>;
type Props = {
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
     * Specifies whether the clear icon should be shown.
     * <ul>
     * <li><code>'always'</code>: The clear icon is always visible.</li>
     * <li><code>'conditionally'</code>: The clear icon is visible under the following conditions:
     * if the component has a non-empty value, and it either has focus or the mouse is over the field.</li>
     * <li><code>'never'</code>: The clear icon is never visible.</li>
     * </ul>
     */
    hasClearIcon?: 'always' | 'conditionally' | 'never';
    /**
     * Specifies whether the reveal toggle should be shown.
     * <ul>
     * <li><code>'always'</code>: The reveal toggle is always visible and the user can click on it to reveal the password in plain text.
     * When the user leaves the field, the password is automatically masked.</li>
     * <li><code>'never'</code>: The reveal toggle is never visible and the user can never reveal the password in plain text.</li>
     * </ul>
     */
    hasRevealToggle?: 'always' | 'never';
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
     * Specifies where the label is positioned relative to the field. If the labelEdge is 'none',
     * the labelHint is hidden from the user but is still accessible.
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
     * Specifies how the input text characters are to be counted when `maxLength` is specified.
     */
    maxLengthUnit?: CountUnit;
    /**
     * Messages to show on screen that are associated with the component.
     */
    messages?: InlineUserAssistanceProps['messages'];
    /**
     * A short hint to display before the user enters a value.
     */
    placeholder?: TextFieldInputProps['placeholder'];
    /**
     * A label that describes what type of data is hidden.
     * This label becomes the aria-label of the reveal toggle icon button to make the button accessible.
     * Example: "Credit Card Number hidden"
     */
    revealToggleLabel?: string;
    /**
     * Specifies how to align text within the field.
     */
    textAlign?: TextFieldInputProps['textAlign'];
    /**
     * Specifies the density of the user assistance presentation.  It can be set to:
     * <ul>
     * <li><code>'efficient'</code>: Show inline and reserve space to prevent layout reflow when user
     * assistance text is displayed.</li>
     * <li><code>'reflow'</code>: Show inline.  Layout will reflow when text is displayed.</li>
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
     * The type of virtual keyboard to display for entering a value on mobile browsers.
     * This property has no effect on desktop browsers.
     */
    virtualKeyboard?: 'auto' | 'email' | 'number' | 'search' | 'tel' | 'text' | 'url';
    /**
     * Callback invoked when the user commits the entered value by either blurring or pressing Enter.
     *
     */
    onCommit?: TextFieldInputProps['onCommit'];
    /**
     * Callback invoked each time the user changes the value of the field. For example, if the user
     * types 'abcd', this callback will be called four times with the value as 'a', 'ab', 'abc' and 'abcd'
     * respectively.
     */
    onInput: TextFieldInputProps['onInput'];
} & TestIdProps;
/**
 * An InputSensitiveText allows you to enter/edit sensitive data, obfuscating the input as the user types.
 * The obfuscation can be toggled off and on via a reveal toggle button.
 * Examples: Credit Card Number, Social Security Number, etc.
 */
export declare const InputSensitiveText: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: Ref<FocusableHandle> | undefined;
}>;
export {};
