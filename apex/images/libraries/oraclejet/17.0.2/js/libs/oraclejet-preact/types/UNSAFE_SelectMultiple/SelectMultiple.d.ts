/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { DataState } from "../UNSAFE_Collection";
import { TextFieldInput } from "../UNSAFE_TextField";
import { InlineUserAssistance, UserAssistanceDensityType } from "../UNSAFE_UserAssistance";
import { VirtualizedListView } from "../UNSAFE_VirtualizedListView";
import { FocusableHandle } from "../hooks/UNSAFE_useFocusableTextField";
import type { TestIdProps } from "../hooks/UNSAFE_useTestId";
import { Item } from "../utils/UNSAFE_dataProvider";
import { ItemTextType } from "../utils/UNSAFE_selectUtils";
import { Size } from "../utils/UNSAFE_size";
import { LayoutColumnSpan } from "../utils/UNSAFE_styles/Layout";
import { ValueUpdateDetail } from "../utils/UNSAFE_valueUpdateDetail";
import { ComponentChildren, ComponentProps, Ref } from 'preact';
import { ItemRendererProps } from './SelectMultiple.types';
import { SelectMultipleFieldInput } from './SelectMultipleFieldInput';
type TextFieldInputProps = ComponentProps<typeof TextFieldInput>;
type InlineUserAssistanceProps = ComponentProps<typeof InlineUserAssistance>;
type SelectMultipleFieldInputProps = ComponentProps<typeof SelectMultipleFieldInput>;
type Props<K extends string | number, D extends Record<string, any>> = TestIdProps & {
    /**
     * Specifies whether the add to list link is shown in the dropdown when the user filters
     * and there are no results.
     * It is up to the application to show its own UI when the link is triggered.
     */
    addToList?: 'on' | 'off';
    /**
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the input.
     */
    'aria-describedby'?: TextFieldInputProps['aria-describedby'];
    /**
     * Text to provide guidance to help the user understand what data to enter or select.
     */
    assistiveText?: InlineUserAssistanceProps['assistiveText'];
    /**
     * Specifies how many columns to span in a FormLayout with direction === 'row'
     */
    columnSpan?: LayoutColumnSpan;
    /**
     * Specifies data for the dropdown list.
     *
     * Note that the <code>itemText</code> property allows for customizing the rendering
     * of each data item.
     */
    data?: DataState<K, D> | null;
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
     * Specifies whether the component is waiting for <code>valueItems</code> to load.
     * While loading, SelectMultiple will show the progressive loading indicator in the text field.
     */
    isLoading?: boolean;
    /**
     * Specifies whether the component is readonly.
     */
    isReadonly?: boolean;
    /**
     * Specifies for accessibility purposes whether a value is required.
     *
     * Setting this property to <code>false</code> means that a value is not required to be
     * selected by the user.  Setting this property to <code>true</code> means that a value
     * is required to be selected by the user.
     */
    isRequired?: TextFieldInputProps['isRequired'];
    /**
     * Specifies whether to show an indicator on screen that a value is required, for example
     * before the user has selected a value.
     */
    isRequiredShown?: InlineUserAssistanceProps['isRequiredShown'];
    /**
     * Render function for an item in the default list in the dropdown.
     */
    itemRenderer?: (itemRendererProps: ItemRendererProps<K, D>) => ComponentChildren;
    /**
     * Specifies how to get the text string to render for a data item.
     * This property can be set to either:
     * <ul>
     * <li>a string that specifies the name of a top level data attribute to render as text, or</li>
     * <li>a callback function that takes a properties object and returns the text string to
     * display.</li>
     * </ul>
     *
     * This text will be rendered for the selected <code>valueItems</code> of the component.
     * It will also be rendered for each item in the dropdown.  When rendered for the
     * dropdown items, default matching search term highlighting will still be applied.
     */
    itemText: ItemTextType<K, D>;
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
     * Messages to show on screen that are associated with the component.
     */
    messages?: InlineUserAssistanceProps['messages'];
    /**
     * A short hint to display before the user selects or enters a value.
     */
    placeholder?: TextFieldInputProps['placeholder'];
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
     * Specifies the keys, data, and optional metadata for the selected values.
     */
    valueItems?: Item<K, D>[];
    /**
     * The style variant of the component.
     */
    variant?: TextFieldInputProps['variant'];
    /**
     * The type of virtual keyboard to display for entering a value on mobile browsers.
     * This property has no effect on desktop browsers.
     */
    virtualKeyboard?: SelectMultipleFieldInputProps['virtualKeyboard'];
    /**
     * Callback function called when the user triggers the add to list link shown in the dropdown.
     */
    onAddToListAction?: ({ searchText }: {
        searchText?: string;
    }) => void;
    /**
     * Callback invoked when the user commits the selected values.
     *
     * The function should set a new array as the <code>valueItems</code> property.
     */
    onCommit: (detail: ValueUpdateDetail<Set<K>>) => void;
    /**
     * Callback function to trigger loading data for the dropdown list, which may or may not be
     * filtered by user entered search text.
     *
     * The function should set a new <code>DataState</code> as the <code>data</code> property.
     */
    onFilter?: ({ searchText }: {
        searchText?: string;
    }) => void;
    /**
     * Callback function to handle when the viewport of the dropdown list has changed, for example
     * by scrolling, including the case where the user scrolls to the end of the list and there are
     * more items to load.
     *
     * The function should set a new <code>DataState</code> for the specified range as the
     * <code>data</code> property.
     */
    onLoadRange?: ComponentProps<typeof VirtualizedListView>['onLoadRange'];
};
/**
 * A SelectMultiple is a dropdown list that supports multiple selection and search filtering.
 */
export declare const SelectMultiple: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props<string | number, Record<string, any>>> & {
    ref?: Ref<FocusableHandle> | undefined;
}>;
export {};
