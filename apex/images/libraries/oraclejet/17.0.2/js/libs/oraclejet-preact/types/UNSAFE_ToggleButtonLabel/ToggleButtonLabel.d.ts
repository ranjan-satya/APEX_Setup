/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Vers.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
import { ToggleButtonTypes } from "../utils/UNSAFE_buttonUtils/toggle.types";
import { HTMLAttributesSignalExcluded } from '../utils/UNSAFE_attributeUtils';
type IntrinsicProps = Pick<HTMLAttributesSignalExcluded<HTMLElement>, 'autofocus' | 'onBlur' | 'onFocus' | 'onMouseEnter' | 'onMouseLeave' | 'onTouchEnd' | 'onTouchStart'>;
export type ToggleButtonLabelProps = IntrinsicProps & {
    /**
     * Specifies that the button separator should be rendered disabled.
     */
    isDisabled?: boolean;
    /**
     * Specifies if button is selected
     */
    isSelected?: boolean;
    /**
     * Specifies if button is toggle
     */
    isToggle?: boolean;
    /**
     * onAction is invoked when then input is pressed
     */
    onAction?: (event: Event) => void;
    /**
     * inputType specifies what type of input is needed
     */
    inputType?: ToggleButtonTypes;
    /**
     * inputName is the name of the radio or checkbox
     */
    inputName?: string;
    /**
     *  value is the value of the radio or checkbox
     */
    value?: string;
    /**
     * The startIcon is the button's start icon.
     */
    startIcon?: ComponentChildren;
    /**
     * The endIcon is the button's end icon.
     */
    endIcon?: ComponentChildren;
    /**
     * Display indicates whether only the label or all elements should be rendered by the togglebutton.
     */
    display?: 'label' | 'all' | 'icons';
    /**
     * The size indicates how large the togglebutton is rendered.
     */
    size?: 'sm' | 'md' | 'lg';
    /**
     * label - togglebutton label
     */
    label?: string;
};
export declare const ToggleButtonLabel: {
    ({ isDisabled, isSelected, isToggle, inputName, inputType, value, startIcon, endIcon, display, onAction, size, label, onBlur, onFocus, onMouseEnter, onMouseLeave, onTouchEnd, onTouchStart }: ToggleButtonLabelProps): import("preact").JSX.Element;
    displayName: string;
};
export {};
