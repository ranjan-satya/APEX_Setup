/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren, Ref } from 'preact';
import { ToggleDetail } from "../hooks/UNSAFE_useToggleAction";
import { TestIdProps } from "../hooks/UNSAFE_useTestId";
import type { DimensionProps } from "../utils/UNSAFE_interpolations/dimensions";
import { LayoutWidths, ButtonSetPosition, type InputTypes, type ButtonIntrinsicProps } from "../utils/UNSAFE_buttonUtils";
type WidthProps = Pick<DimensionProps, 'width'>;
export type ButtonSetButtonProps = ButtonIntrinsicProps & WidthProps & TestIdProps & {
    /**
     * The startIcon is the button's start icon. This should not vary depending on state.
     */
    startIcon?: ComponentChildren;
    /**
     * The endIcon is the button's end icon. This should not vary depending on state.
     */
    endIcon?: ComponentChildren;
    /**
     * Input type indicate if the toggle is intended as a radio or checkbox.
     */
    inputType?: InputTypes;
    /**
     * The name of the input group
     */
    inputName?: string;
    /**
     * Specifies that the buttonsetbutton element should be disabled.
     */
    isDisabled?: boolean;
    /**
     * label - buttonsetbutton label, used for accessibility if no override
     */
    label?: string;
    /**
     * value - buttonsetbutton value
     */
    value?: string;
    /**
     * aria-label - override label for accessibility
     */
    'aria-label'?: string;
    /**
     * Indicates in what states the buttonsetbutton has chrome (background and border).
     *     "borderless"': "Borderless buttonsetbuttons are a more prominent variation. Borderless
     * buttonsetbuttons are useful for supplemental actions that require minimal emphasis.",
     *     "outlined"': "Outlined buttonsetbuttons are salient, but lighter weight than
     * solid buttonsetbuttons. Outlined buttonsetbuttons are useful for secondary actions.",
     */
    variant?: 'outlined' | 'borderless';
    /**
     * The size indicates how large the buttonsetbutton is rendered.
     */
    size?: 'sm' | 'md' | 'lg';
    /**
     * Specifies if the toggle button is selected
     */
    isSelected?: boolean;
    /**
     * The position modifies the borders for usage inside a button group.
     */
    position?: ButtonSetPosition;
    /**
     * Property that triggers a callback immediately when toggle happens and value of isSelected property should be updated
     */
    onToggle?: (details: ToggleDetail) => void;
    /**
     * Display indicates whether only the label or all elements should be rendered by the buttonsetbutton.
     */
    display?: 'label' | 'all';
    /**
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the buttonsetbutton.
     */
    'aria-describedby'?: string;
    /**
     * The layoutWidth specifies if the toggle button width fits the contents or
     * the container.
     */
    layoutWidth?: LayoutWidths;
};
/**
 * Toggle buttons allow users to switch between states when pressed.
 */
export declare const ButtonSetButton: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<ButtonSetButtonProps> & {
    ref?: Ref<HTMLButtonElement> | undefined;
}>;
export {};
