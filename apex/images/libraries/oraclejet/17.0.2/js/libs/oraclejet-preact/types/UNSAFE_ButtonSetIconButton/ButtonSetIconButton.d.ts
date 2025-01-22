/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChild } from 'preact';
import { ToggleDetail } from "../hooks/UNSAFE_useToggleAction";
import { TestIdProps } from "../hooks/UNSAFE_useTestId";
import type { DimensionProps } from "../utils/UNSAFE_interpolations/dimensions";
import { ButtonSetPosition, LayoutWidths, type InputTypes } from "../utils/UNSAFE_buttonUtils";
type WidthInterpolationProps = Pick<DimensionProps, 'width'>;
export type ButtonSetIconButtonProps = WidthInterpolationProps & TestIdProps & {
    /**
     * icon - the icon for the button
     */
    children?: ComponentChild;
    /**
     * InpuType indicate if the toggle is a radio or checkbox,
     */
    inputType?: InputTypes;
    /**
     * The name of the input group
     */
    inputName?: string;
    /**
     * The value of the input
     */
    value?: string;
    /**
     * Specifies that the button element should be disabled.
     */
    isDisabled?: boolean;
    /**
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the button.
     */
    'aria-describedby'?: string;
    /**
     * Specifies if the toggle button is selected
     */
    isSelected?: boolean;
    /**
     * Property that triggers a callback immediately when toggle happens and value of isSelected property should be updated
     */
    onToggle?: (details: ToggleDetail) => void;
    /**
     * Indicates in what states the button has chrome (background and border).
     *     "ghost": "Ghost buttons are the least prominent variant. Ghost buttons are
     * useful for performing low-priority tasks, such as manipulating the UI.",
     *     "borderless"': "Borderless buttons are a more prominent variation. Borderless
     * buttons are useful for supplemental actions that require minimal emphasis.",
     *     "outlined"': "Outlined buttons are salient, but lighter weight than
     * solid buttons. Outlined buttons are useful for secondary actions.",
     */
    variant?: 'ghost' | 'borderless' | 'outlined';
    /**
     * The size indicates how large the button is rendered: "sm", "md" (default), "lg".
     */
    size?: 'sm' | 'md' | 'lg';
    /**
     * The position modifies the borders for usage inside a button group.
     */
    position?: ButtonSetPosition;
    /**
     * The layoutWidth specifies if the toggle button width fits the contents or
     * the container.
     */
    layoutWidth?: LayoutWidths;
};
/**
 * Note that either an accessibleLabel or tooltip must be specified.
 */
type VariationAccessibleLabelProps = {
    /**
     * accessibleLabel - the aria label
     */
    accessibleLabel: string;
    /**
     * tooltip - overrides the accessibleLabel for the tooltip
     */
    tooltip?: string;
} | {
    accessibleLabel?: string;
    tooltip: string;
};
/**
 * A ButtonSetIconButton is an icon button that allows users to switch
 * between states when pressed.
 */
export declare const ButtonSetIconButton: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<WidthInterpolationProps & TestIdProps & ({
    /**
     * icon - the icon for the button
     */
    children?: ComponentChild;
    /**
     * InpuType indicate if the toggle is a radio or checkbox,
     */
    inputType?: InputTypes | undefined;
    /**
     * The name of the input group
     */
    inputName?: string | undefined;
    /**
     * The value of the input
     */
    value?: string | undefined;
    /**
     * Specifies that the button element should be disabled.
     */
    isDisabled?: boolean | undefined;
    /**
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the button.
     */
    'aria-describedby'?: string | undefined;
    /**
     * Specifies if the toggle button is selected
     */
    isSelected?: boolean | undefined;
    /**
     * Property that triggers a callback immediately when toggle happens and value of isSelected property should be updated
     */
    onToggle?: ((details: ToggleDetail) => void) | undefined;
    /**
     * Indicates in what states the button has chrome (background and border).
     *     "ghost": "Ghost buttons are the least prominent variant. Ghost buttons are
     * useful for performing low-priority tasks, such as manipulating the UI.",
     *     "borderless"': "Borderless buttons are a more prominent variation. Borderless
     * buttons are useful for supplemental actions that require minimal emphasis.",
     *     "outlined"': "Outlined buttons are salient, but lighter weight than
     * solid buttons. Outlined buttons are useful for secondary actions.",
     */
    variant?: "ghost" | "borderless" | "outlined" | undefined;
    /**
     * The size indicates how large the button is rendered: "sm", "md" (default), "lg".
     */
    size?: "sm" | "md" | "lg" | undefined;
    /**
     * The position modifies the borders for usage inside a button group.
     */
    position?: ButtonSetPosition | undefined;
    /**
     * The layoutWidth specifies if the toggle button width fits the contents or
     * the container.
     */
    layoutWidth?: LayoutWidths | undefined;
} & VariationAccessibleLabelProps)> & {
    ref?: import("preact").Ref<HTMLButtonElement> | undefined;
}>;
export {};
