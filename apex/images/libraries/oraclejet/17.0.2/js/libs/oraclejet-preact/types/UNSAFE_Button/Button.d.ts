/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren, ComponentProps, Ref } from 'preact';
import { BaseButton } from '../UNSAFE_BaseButton';
import type { DimensionProps } from '../utils/UNSAFE_interpolations/dimensions';
import { HTMLAttributesSignalExcluded } from '../utils/UNSAFE_attributeUtils';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
type IntrinsicProps = Pick<HTMLAttributesSignalExcluded<HTMLElement>, 'autofocus' | 'onBlur' | 'onFocus' | 'onMouseEnter' | 'onMouseLeave' | 'onTouchEnd' | 'onTouchStart'>;
type WidthProps = Pick<DimensionProps, 'width'>;
type Props = IntrinsicProps & WidthProps & TestIdProps & {
    /**
     * The startIcon is the button's start icon.
     */
    startIcon?: ComponentChildren;
    /**
     * The endIcon is the button's end icon.
     */
    endIcon?: ComponentChildren;
    /**
     * Specifies that the button element should be disabled.
     */
    isDisabled?: boolean;
    /**
     * Specifies if repeated events are dispatched for key or pointer held down
     */
    isRepeat?: boolean;
    /**
     * Specifes the button type
     */
    type?: 'button' | 'submit';
    /**
     * label - button label, used for accessibility if no override
     */
    label?: string;
    /**
     * aria-label - override label for accessibility
     */
    'aria-label'?: string;
    /**
     * Indicates in what states the button has chrome (background and border).
     *     "ghost": "Ghost buttons are the least prominent variation. Ghost buttons are
     * useful for performing low-priority tasks, such as manipulating the UI.",
     *     "borderless"': "Borderless buttons are a more prominent variation. Borderless
     * buttons are useful for supplemental actions that require minimal emphasis.",
     *     "outlined"': "Outlined buttons are salient, but lighter weight than
     * solid buttons. Outlined buttons are useful for secondary actions.",
     *     "solid"': "Solid buttons stand out, and direct the user's attention to the
     *  most important actions in the UI.",
     *     "callToAction"': "A Call To Action (CTA) button guides the user to take or
     * complete the action that is the main goal of the page or page section. There
     * should only be one CTA button on a page at any given time.",
     *     "danger"': "A Danger button alerts the user to a dangerous situation."
     */
    variant?: ComponentProps<typeof BaseButton>['variant'];
    /**
     * The size indicates how large the button is rendered.
     */
    size?: 'xs' | 'sm' | 'md' | 'lg';
    /**
     * Edge can be used to specify that the button is intended to go at the bottom of
     * a region, stretching from left to right.
     */
    edge?: ComponentProps<typeof BaseButton>['edge'];
    /**
     * Triggered when a button is clicked, whether by keyboard, mouse, or touch events.
     */
    onAction?: () => void | null;
    /**
     * Display indicates whether only the label or all elements should be rendered by the button.
     */
    display?: 'label' | 'all';
    /**
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the button.
     */
    'aria-describedby'?: string;
};
/**
 * A button is a pressable element that invokes an action.
 */
export declare const Button: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: Ref<HTMLButtonElement> | undefined;
}>;
export {};
