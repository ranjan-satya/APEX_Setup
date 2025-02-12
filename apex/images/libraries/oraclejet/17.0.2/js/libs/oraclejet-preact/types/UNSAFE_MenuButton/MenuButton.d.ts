import { MenuToggleDetail } from '../hooks/UNSAFE_useMenuAction';
import { HTMLAttributesSignalExcluded } from '../utils/UNSAFE_attributeUtils';
import type { DimensionProps } from '../utils/UNSAFE_interpolations/dimensions';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
import { ComponentChildren, ComponentChild } from 'preact';
type IntrinsicProps = Pick<HTMLAttributesSignalExcluded<HTMLElement>, 'autofocus' | 'onBlur' | 'onFocus' | 'onMouseEnter' | 'onMouseLeave' | 'onTouchEnd' | 'onTouchStart'>;
type WidthInterpolationProps = Pick<DimensionProps, 'width'>;
export type Props = IntrinsicProps & WidthInterpolationProps & TestIdProps & {
    /**
     * children - One or more MenuItems, dividers, or Menu groups
     */
    children?: ComponentChildren;
    /**
     * The icon shown to the left of the label (or to the right of the
     * label in right to left mode). Note that this is not the menu
     * expand icon shown to the right of the label (or to the left of
     * the label in right to left mode).
     */
    icon?: ComponentChild;
    /**
     * Specifies that the button element should be disabled.
     */
    isDisabled?: boolean;
    /**
     * Specifes the button type
     */
    type?: 'button' | 'submit';
    /**
     * The button label
     */
    label?: string;
    /**
     * Specifies if the menu is open
     */
    isMenuOpen?: boolean;
    /**
     * Property that triggers a callback immediately when toggle happens and value of expanded property should be updated
     */
    onToggleMenu?: (details: MenuToggleDetail) => void;
    /**
     * A suffix to the label that can be rendered differently.  Used to identify
     * which child MenuItem is invoked.
     */
    suffix?: string;
    /**
     * Indicates in what states the button has chrome (background and border).
     *     "ghost": "Ghost buttons are the least prominent variant. Ghost buttons are
     * useful for performing low-priority tasks, such as manipulating the UI.",
     *     "borderless"': "Borderless buttons are a more prominent variation. Borderless
     * buttons are useful for supplemental actions that require minimal emphasis.",
     *     "outlined"': "Outlined buttons are salient, but lighter weight than
     * solid buttons. Outlined buttons are useful for secondary actions.",
     *     "solid"': "Solid buttons stand out, and direct the user's attention to the
     *  most important actions in the UI."
     */
    variant?: 'ghost' | 'borderless' | 'outlined' | 'solid';
    /**
     * The size indicates how large the button is rendered: "sm", "md" (default), "lg".
     */
    size?: 'xs' | 'sm' | 'md' | 'lg';
    /**
     * The ID of an element (or space separated IDs of multiple elements) that
     * describes the button.
     */
    'aria-describedby'?: string;
};
/**
 * A MenuButton is a combined action and menu button.
 */
export declare const MenuButton: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: import("preact").Ref<HTMLButtonElement> | undefined;
}>;
export {};
