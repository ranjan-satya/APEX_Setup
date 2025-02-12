import { HTMLAttributesSignalExcluded } from '../utils/UNSAFE_attributeUtils';
import type { DimensionProps } from '../utils/UNSAFE_interpolations/dimensions';
import { ComponentChildren } from 'preact';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
type IntrinsicProps = Pick<HTMLAttributesSignalExcluded<HTMLElement>, 'autofocus' | 'onBlur' | 'onFocus' | 'onMouseEnter' | 'onMouseLeave' | 'onTouchEnd' | 'onTouchStart' | 'aria-describedby'>;
type WidthInterpolationProps = Pick<DimensionProps, 'width'>;
export type Props = IntrinsicProps & WidthInterpolationProps & TestIdProps & {
    /**
     * children - One or more MenuItems
     */
    children?: ComponentChildren;
    /**
     * Specifies that the button element should be disabled.
     */
    isDisabled?: boolean;
    /**
     * The label rendered on the action side of the button.  Used
     * to identify which child MenuItem action is invoked.
     */
    label?: string;
    /**
     * Indicates in what states the button has chrome (background and border).
     *     "outlined"': "Outlined buttons are salient, but lighter weight than
     * solid buttons. Outlined buttons are useful for secondary actions.",
     *     "solid"': "Solid buttons stand out, and direct the user's attention to the
     *  most important actions in the UI.",
     *     "callToAction"': "A Call To Action (CTA) button guides the user to take or
     * complete the action that is the main goal of the page or page section. There
     * should only be one CTA button on a page at any given time.",
     
     */
    variant?: 'outlined' | 'solid' | 'callToAction';
    /**
     * The size indicates how large the button is rendered: "sm", "md" (default), "lg".
     */
    size?: 'sm' | 'md' | 'lg';
    /**
     * Triggered when a button is clicked, whether by keyboard, mouse, or touch events.
     */
    onAction?: () => void;
};
/**
 * A SplitMenuButton is a combined action and menu button.
 */
export declare const SplitMenuButton: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: import("preact").Ref<HTMLSpanElement> | undefined;
}>;
export {};
