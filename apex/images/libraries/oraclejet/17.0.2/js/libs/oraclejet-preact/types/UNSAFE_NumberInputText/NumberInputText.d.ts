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
import { Size } from '../utils/UNSAFE_size';
import { StepEvent } from '../hooks/UNSAFE_useSpinning';
import { LayoutColumnSpan } from '../utils/UNSAFE_styles/Layout';
import type { TestIdProps } from "../hooks/UNSAFE_useTestId";
type TextFieldInputProps = ComponentProps<typeof TextFieldInput>;
type InlineUserAssistanceProps = ComponentProps<typeof InlineUserAssistance>;
type NumberInputTextProps = {
    /**
     * Controls whether the step down button is disabled.
     */
    isStepDownDisabled?: boolean;
    /**
     * Controls whether the step up button is disabled.
     */
    isStepUpDisabled?: boolean;
    /**
     * Called when a continuous step is requested (aka "spin")
     * by holding down the arrow up or arrow down keys, or
     * by pressing and holding down a step button.
     */
    onSpin?: (event: StepEvent) => void;
    /**
     * Called when spinning is complete and the user has
     * released the arrow key or step button.
     */
    onSpinComplete?: () => void;
    /**
     * Called when a step is requested by clicking a step button
     * or by pressing the arrow up or arrow down keys.
     */
    onStep?: (event: StepEvent) => void;
};
type Props = NumberInputTextProps & TestIdProps & {
    /**+
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the input.
     */
    'aria-describedby'?: TextFieldInputProps['aria-describedby'];
    /**
     * The maximum allowed value when hasSteppers is true. Used for the aria-valuemax attribute.
     * When hasSteppers is false, this is ignored because when there are no steppers, there is no role="spinbutton",
     * and aria-value* attributes are not valid without this role.
     */
    'aria-valuemax'?: TextFieldInputProps['aria-valuemax'];
    /**
     * The minimum allowed value when hasSteppers is true. Used for the aria-valuemin attribute.
     * When hasSteppers is false, this is ignored because when there are no steppers, there is no role="spinbutton",
     * and aria-value* attributes are not valid without this role.
     */
    'aria-valuemin'?: TextFieldInputProps['aria-valuemin'];
    /**
     * The number value of the component when hasSteppers is true. Used for the aria-valuenow attribute.
     * When hasSteppers is false, this is ignored because when there are no steppers, there is no role="spinbutton",
     * and aria-value* attributes are not valid without this role.
     */
    'aria-valuenow'?: TextFieldInputProps['aria-valuenow'];
    /**
     * The formatted value of the component when hasSteppers is true. Used for the aria-valueText
     * attribute to provide a more human readable text alternative for
     * aria-valuenow.
     * When hasSteppers is false, this is ignored because when there are no steppers, there is no role="spinbutton",
     * and aria-value* attributes are not valid without this role.
     */
    'aria-valuetext'?: TextFieldInputProps['aria-valuetext'];
    /**
     * Text to provide guidance to help the user understand what data to enter.
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
     * Setting this property doesn't set the focus to the component: it tells the browser to focus
     * to it when the element is inserted in the document.
     */
    autoFocus?: TextFieldInputProps['autoFocus'];
    /**
     * Specifies how many columns to span in a FormLayout with direction === 'row'
     */
    columnSpan?: LayoutColumnSpan;
    /**
     * Controls whether the step buttons are shown.
     */
    hasSteppers?: boolean;
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
     * Specifies the width of the label when <code>labelEdge</code> is <code>"start"</code>.
     */
    labelStartWidth?: Size;
    /**
     * Messages to show on screen that are associated with the component.
     */
    messages?: InlineUserAssistanceProps['messages'];
    /**
     * A short hint to display before the user enters a value.
     */
    placeholder?: TextFieldInputProps['placeholder'];
    /**
     * The prefix displays as regular text before the input text, and inline with it.
     * The prefix is not editable or focusable.
     */
    prefix?: string;
    /**
     * Variant style of step buttons.
     * @default directional
     */
    stepperVariant?: (typeof stepperVariants)[number];
    /**
     * The suffix displays as regular text after the input text, and inline with it.
     * The suffix is not editable or focusable.
     */
    suffix?: string;
    /**
     * Specifies how to align text within the field.
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
     * The current possibly formatted display value of the component.
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
    virtualKeyboard?: 'auto' | 'number' | 'text';
    /**
     * Callback invoked when the user commits the entered value by either blurring or pressing Enter.
     */
    onCommit?: TextFieldInputProps['onCommit'];
    /**
     * Callback invoked each time the user changes the value of the field. For example, if the user
     * types 'abcd', this callback will be called four times with the value as 'a', 'ab', 'abc' and 'abcd'
     * respectively.
     */
    onInput: TextFieldInputProps['onInput'];
};
export declare const stepperVariants: readonly ["directional", "quantitative"];
export declare const NumberInputText: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: Ref<FocusableHandle> | undefined;
}>;
export {};
