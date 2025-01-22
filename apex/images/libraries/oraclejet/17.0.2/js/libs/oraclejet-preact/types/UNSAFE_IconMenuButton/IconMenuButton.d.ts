import { MenuToggleDetail } from '../hooks/UNSAFE_useMenuAction';
import type { DimensionProps } from '../utils/UNSAFE_interpolations/dimensions';
import { ComponentChildren, ComponentChild } from 'preact';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
type WidthInterpolationProps = Pick<DimensionProps, 'width'>;
export type BaseProps = WidthInterpolationProps & {
    /**
     * children - One or more MenuItems, dividers, or Menu groups
     */
    children?: ComponentChildren;
    /**
     * The icon is the button's icon.  Note that this is not the menu
     * expand icon shown on the right (or to the left in right to left mode).
     */
    icon?: ComponentChild;
    /**
     * Specifies that the button element should be disabled.
     */
    isDisabled?: boolean;
    /**
     * Specifies if only the icon is shown, and no down chevron.
     */
    isIconOnly?: boolean;
    /**
     * Specifes the button type
     */
    type?: 'button' | 'submit';
    /**
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the button.
     */
    'aria-describedby'?: string;
    /**
     * Specifies if the menu is open
     */
    isMenuOpen?: boolean;
    /**
     * Indicates in what states the button has chrome (background and border).
     *     "ghost": "Ghost buttons are the least prominent variant. Ghost buttons are
     * useful for performing low-priority tasks, such as manipulating the UI.",
     *     "borderless"': "Borderless buttons are a more prominent variant. Borderless
     * buttons are useful for supplemental actions that require minimal emphasis.",
     *     "outlined"': "Outlined buttons are salient, but lighter weight than
     * solid buttons. Outlined buttons are useful for secondary actions.",
     *     "solid"': "Solid buttons stand out, and direct the user's attention to the
     *  most important actions in the UI.",
     */
    variant?: 'ghost' | 'borderless' | 'outlined' | 'solid';
    /**
     * The size indicates how large the button is rendered.
     */
    size?: 'xs' | 'sm' | 'md' | 'lg';
    /**
     * Property that triggers a callback immediately when toggle happens and value of expanded property should be updated
     */
    onToggleMenu?: (details: MenuToggleDetail) => void;
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
 * A IconMenuButton is a combined action and menu button.
 */
export declare const IconMenuButton: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<WidthInterpolationProps & {
    /**
     * children - One or more MenuItems, dividers, or Menu groups
     */
    children?: ComponentChildren;
    /**
     * The icon is the button's icon.  Note that this is not the menu
     * expand icon shown on the right (or to the left in right to left mode).
     */
    icon?: ComponentChild;
    /**
     * Specifies that the button element should be disabled.
     */
    isDisabled?: boolean | undefined;
    /**
     * Specifies if only the icon is shown, and no down chevron.
     */
    isIconOnly?: boolean | undefined;
    /**
     * Specifes the button type
     */
    type?: "button" | "submit" | undefined;
    /**
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the button.
     */
    'aria-describedby'?: string | undefined;
    /**
     * Specifies if the menu is open
     */
    isMenuOpen?: boolean | undefined;
    /**
     * Indicates in what states the button has chrome (background and border).
     *     "ghost": "Ghost buttons are the least prominent variant. Ghost buttons are
     * useful for performing low-priority tasks, such as manipulating the UI.",
     *     "borderless"': "Borderless buttons are a more prominent variant. Borderless
     * buttons are useful for supplemental actions that require minimal emphasis.",
     *     "outlined"': "Outlined buttons are salient, but lighter weight than
     * solid buttons. Outlined buttons are useful for secondary actions.",
     *     "solid"': "Solid buttons stand out, and direct the user's attention to the
     *  most important actions in the UI.",
     */
    variant?: "solid" | "ghost" | "borderless" | "outlined" | undefined;
    /**
     * The size indicates how large the button is rendered.
     */
    size?: "xs" | "sm" | "md" | "lg" | undefined;
    /**
     * Property that triggers a callback immediately when toggle happens and value of expanded property should be updated
     */
    onToggleMenu?: ((details: MenuToggleDetail) => void) | undefined;
} & (VariationAccessibleLabelProps & TestIdProps)> & {
    ref?: import("preact").Ref<HTMLButtonElement> | undefined;
}>;
export {};
