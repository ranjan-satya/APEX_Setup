/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChild } from 'preact';
import type { DimensionProps } from '../utils/UNSAFE_interpolations/dimensions';
import { ToggleDetail } from "../hooks/UNSAFE_useToggleAction";
import { TestIdProps } from "../hooks/UNSAFE_useTestId";
import type { ButtonIntrinsicProps } from "../utils/UNSAFE_buttonUtils";
type WidthProps = Pick<DimensionProps, 'width'>;
export type IconToggleButtonProps = ButtonIntrinsicProps & WidthProps & TestIdProps & {
    /**
     * Specifies the icon for the button.   This should not vary depending on state.
     */
    children?: ComponentChild;
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
     *     "borderless"': "Borderless buttons are a more prominent variation. Borderless
     * buttons are useful for supplemental actions that require minimal emphasis.",
     *     "outlined"': "Outlined buttons are salient, but lighter weight than
     * solid buttons. Outlined buttons are useful for secondary actions.",
     */
    variant?: 'borderless' | 'outlined';
    /**
     * The size indicates how large the button is rendered: "sm", "md" (default), "lg".
     */
    size?: 'sm' | 'md' | 'lg';
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
 * IconToggleButtons direct users to toggle a state with
 * a single tap, click, or keystroke.
 */
export declare const IconToggleButton: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<ButtonIntrinsicProps & WidthProps & (TestIdProps & {
    /**
     * Specifies the icon for the button.   This should not vary depending on state.
     */
    children?: ComponentChild;
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
     *     "borderless"': "Borderless buttons are a more prominent variation. Borderless
     * buttons are useful for supplemental actions that require minimal emphasis.",
     *     "outlined"': "Outlined buttons are salient, but lighter weight than
     * solid buttons. Outlined buttons are useful for secondary actions.",
     */
    variant?: "borderless" | "outlined" | undefined;
    /**
     * The size indicates how large the button is rendered: "sm", "md" (default), "lg".
     */
    size?: "sm" | "md" | "lg" | undefined;
} & VariationAccessibleLabelProps)> & {
    ref?: import("preact").Ref<HTMLButtonElement> | undefined;
}>;
export {};
