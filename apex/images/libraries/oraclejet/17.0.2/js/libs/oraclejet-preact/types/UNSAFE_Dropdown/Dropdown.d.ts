/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentProps, JSX } from 'preact';
import { Floating } from '../UNSAFE_Floating';
type FloatingProps = ComponentProps<typeof Floating>;
export type CloseDetail = {
    reason: 'dismissed';
} | {
    reason: 'outsideMousedown';
    target: Element;
};
type IntrinsicProps = Pick<JSX.HTMLAttributes<HTMLDivElement>, 'children'>;
type Props = IntrinsicProps & {
    /**
     *Specifies whether Dropdown is open.
     */
    isOpen?: boolean;
    /**
     * Trigger element reference.
     */
    anchorRef: FloatingProps['anchorRef'];
    /**
     * Id of the dropdown container.
     * Used usually for accesibility reasons.
     */
    id?: string;
    /**
     * Called when dropdown is supposed to be closed.
     * Called when user tab/esc or mouseDown outside the dropdown.
     */
    onClose?: (detail: CloseDetail) => void;
    /**
     *Min width represented in pixels of the dropdown container.
     */
    minWidth?: number;
    /**
     * Placement of the floating element relative to its reference element.
     */
    placement?: FloatingProps['placement'];
    /**
     * Offset displaces the floating element from its core placement along the specified axes.
     */
    offset?: FloatingProps['offsetValue'];
    /**
     * Triggered when placement or coordinates are changed after collision is detected.
     */
    onPosition?: FloatingProps['onPosition'];
    /**
     * Specifies the flipping behavior along the respective axis.
     */
    flipOptions?: FloatingProps['flipOptions'];
    /**
     * Specifies the resizing behaviour for max-height and max-width of the floating component.
     */
    sizeOptions?: FloatingProps['sizeOptions'];
    /**
     *  Specifies the shift behavior along the respective axis
     */
    shiftOptions?: FloatingProps['shiftOptions'];
    /**
     * Specifies initial focus.
     */
    initialFocus?: 'none' | 'firstFocusable';
};
export declare function Dropdown({ isOpen, anchorRef, children, id, onClose, minWidth, placement, offset, onPosition, flipOptions, sizeOptions, shiftOptions, initialFocus }: Props): JSX.Element;
export {};
