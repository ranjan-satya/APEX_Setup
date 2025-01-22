import { ComponentChildren, ComponentProps, Ref } from 'preact';
import { InlineUserAssistance, UserAssistanceDensityType } from "../UNSAFE_UserAssistance";
import { ValueUpdateDetail } from "../utils/UNSAFE_valueUpdateDetail";
import { FocusableHandle } from "../hooks/UNSAFE_useFocusableTextField";
import { AriaAttributesSignalExcluded } from "../utils/UNSAFE_attributeUtils";
import { LayoutColumnSpan } from "../utils/UNSAFE_styles/Layout";
import { TestIdProps } from "../hooks/UNSAFE_useTestId";
type InlineUserAssistanceProps = ComponentProps<typeof InlineUserAssistance>;
type Props = {
    /**
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the input.
     */
    'aria-describedby'?: AriaAttributesSignalExcluded['aria-describedby'];
    /**
     * Text to provide the user with additional information.
     */
    assistiveText?: InlineUserAssistanceProps['assistiveText'];
    /**
     * Content associated with checkbox. This can be a label or a block of text.
     */
    children: ComponentChildren;
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
     * Specifies whether the checkbox requires a selection to be made.
     */
    isRequired?: boolean;
    /**
     * Specifies if the checkbox is read-only.
     */
    isReadonly?: boolean;
    /**
     * Specifies if the checkbox is disabled.
     */
    isDisabled?: boolean;
    /**
     * Messages to show on screen that are associated with the component.
     */
    messages?: InlineUserAssistanceProps['messages'];
    /**
     * Callback invoked each time the user changes checkbox selection.
     */
    onCommit: (detail: ValueUpdateDetail<boolean>) => void;
    /**
     * Specifies the density of the user assistance presentation.  It can be set to:
     * <ul>
     * <li><code>'reflow'</code>: Show inline. Layout will reflow when text is displayed.</li>
     * <li><code>'efficient'</code>: Show inline and reserve space to prevent layout reflow when user
     * assistance text is displayed.</li>
     * <li><code>'compact'</code>: Show inline and reserve space to prevent layout reflow when user
     * assistance text is displayed.</li>
     * </ul>
     */
    userAssistanceDensity?: UserAssistanceDensityType;
    /**
     * Value of the checkbox.
     */
    value?: boolean;
} & TestIdProps;
/**
 * Checkbox is a single standalone checkbox control. It represents a boolean value.
 */
export declare const Checkbox: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: Ref<FocusableHandle> | undefined;
}>;
export {};
