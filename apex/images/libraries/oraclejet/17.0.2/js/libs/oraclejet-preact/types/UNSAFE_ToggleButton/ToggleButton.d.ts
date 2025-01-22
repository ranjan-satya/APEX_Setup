/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren, Ref } from 'preact';
import type { DimensionProps } from '../utils/UNSAFE_interpolations/dimensions';
import { ToggleDetail } from "../hooks/UNSAFE_useToggleAction";
import { TestIdProps } from "../hooks/UNSAFE_useTestId";
import type { ButtonIntrinsicProps } from "../utils/UNSAFE_buttonUtils";
type WidthProps = Pick<DimensionProps, 'width'>;
export type ToggleButtonProps = ButtonIntrinsicProps & WidthProps & TestIdProps & {
    /**
     * The startIcon is the button's start icon. This should not vary depending on state.
     */
    startIcon?: ComponentChildren;
    /**
     * The endIcon is the button's end icon. This should not vary depending on state.
     */
    endIcon?: ComponentChildren;
    /**
     * Specifies that the togglebutton element should be disabled.
     */
    isDisabled?: boolean;
    /**
     * label - togglebutton label, used for accessibility if no override
     */
    label: string;
    /**
     * aria-label - override label for accessibility
     */
    'aria-label'?: string;
    /**
     * Indicates in what states the togglebutton has chrome (background and border).
     *     "borderless"': "Borderless togglebuttons are a more prominent variation. Borderless
     * togglebuttons are useful for supplemental actions that require minimal emphasis.",
     *     "outlined"': "Outlined togglebuttons are salient, but lighter weight than
     * solid togglebuttons. Outlined togglebuttons are useful for secondary actions.",
     */
    variant?: 'outlined' | 'borderless';
    /**
     * The size indicates how large the togglebutton is rendered.
     */
    size?: 'sm' | 'md' | 'lg';
    /**
     * Specifies if the toggle button is selected
     */
    isSelected?: boolean;
    /**
     * Property that triggers a callback immediately when toggle happens and value of isSelected property should be updated
     */
    onToggle?: (details: ToggleDetail) => void;
    /**
     * Display indicates whether only the label or all elements should be rendered by the togglebutton.
     */
    display?: 'label' | 'all';
    /**
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the togglebutton.
     */
    'aria-describedby'?: string;
};
/**
 * ToggleButtons direct users to toggle a state with a single tap, click, or keystroke.
 */
export declare const ToggleButton: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<ToggleButtonProps> & {
    ref?: Ref<HTMLButtonElement> | undefined;
}>;
export {};
