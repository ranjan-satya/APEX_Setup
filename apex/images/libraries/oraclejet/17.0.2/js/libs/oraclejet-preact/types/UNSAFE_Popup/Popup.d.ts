import { JSX, RefObject } from 'preact';
import { Offset, Placement, Coords, FlipOptions, ShiftOptions } from '../UNSAFE_Floating';
import { WindowOverlayPlacement } from '../UNSAFE_WindowOverlay';
import { HTMLAttributesSignalExcluded } from '../utils/UNSAFE_attributeUtils';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
import { DimensionProps } from '../utils/UNSAFE_interpolations/dimensions';
type IntrinsicProps = Pick<JSX.HTMLAttributes<HTMLDivElement>, 'children'>;
export type PopupPlacement = Placement | WindowOverlayPlacement;
export type OnCloseDetail = {
    reason: 'escapeKey';
};
export type InitialFocus = 'auto' | 'none' | 'popup' | 'firstFocusable';
export type Tail = 'none' | 'simple';
export type Modality = 'modal' | 'modeless';
type Props = IntrinsicProps & DimensionProps & TestIdProps & {
    /**
     * Specifies whether the Popup is open.
     */
    isOpen: boolean;
    /**
     * Specifies Popup's anchor. Popup is placed relatively to its anchor.
     */
    anchorRef?: RefObject<Element | Coords>;
    /**
     * Specifies Popup's launcher. After Popup closes, it returns focus to the launcher.
     */
    launcherRef?: RefObject<HTMLElement>;
    /**
     * Specifies placement of the Popup relative to the anchor.
     */
    placement?: PopupPlacement;
    /**
     * Specifies displacement of the Popup from the anchor element placement along the specified axes.
     * The offset object consists of mainAxis and crossAxis properties. The direction in which these properties
     * are applied depends on the current value of the position property.
     *
     * The <code>mainAxis</code> property represents the distance between the Popup and the anchor.
     * The <code>crossAxis</code> property represents the deviation in the opposite axis to the main axis - the skidding between the Popup and the anchor.
     */
    offset?: Offset;
    /**
     * Specifies modality of the Popup.
     */
    modality?: Modality;
    /**
     * Specifies whether a floating Popup changes placement to the opposite side to be kept in view when a collision is detected.
     *
     * The flipOptions object consists of mainAxis and crossAxis properties.
     * The <code>mainAxis</code> runs along the side of the Popup element.
     * The <code>crossAxis</code> runs along the alignment of the Popup element.
     */
    flipOptions?: FlipOptions;
    /**
     * Specifies whether a floating Popup shifts along axis to be kept in view when a collision is detected.
     * Note that if both 'flip' and 'shift' are enabled on respective axis, the flip will take precedence.
     *
     * The shiftOptions object consists of mainAxis and crossAxis properties.
     * The <code>mainAxis</code> runs along the side of the Popup element.
     * The <code>crossAxis</code> runs along the alignment of the Popup element.
     */
    shiftOptions?: ShiftOptions;
    /**
     * Specifies if the Popup sets focus to its content when initially open.
     * A value of none prevents the popup from setting focus when open.
     *
     * <code>auto</code> in modeless mode resolves to none.
     * <code>none</code> prevents the popup from setting focus when open.
     * <code>popup</code> sets focus to the root popup container (good choice for touch platforms).
     * <code>firstFocusable</code> defines that a popup should set focus to the first focusable element within the popup's content.
     */
    initialFocus?: InitialFocus;
    /**
     * Specifies callback triggered when a user clicks outside Popup.
     */
    onClickOutside?: (event: MouseEvent) => void;
    /**
     * Specifies callback triggered when a user tries to close a Popup through UI interaction.
     * The parent should listen to this event and close the Popup. If the parent fails to remove
     * the Popup, then no change will be done in the UI by the component.
     */
    onClose?: (detail: OnCloseDetail) => void;
    /**
     * Specifies callback triggered when initial focus is set or when Popup receives it via F6 key.
     */
    onFocusSet?: () => void;
    /**
     * Specifies Popup's tail. Simple tail is an arrow pointing to Popup's anchor.
     */
    tail?: Tail;
    /**
     * Specifies callback triggered after the animation ends.
     */
    onTransitionEnd?: (value: boolean) => void;
    /**
     * Specifies the ARIA role type. Depending on how the popup is used in the page, the page developer should choose from the following:
     * <code>tooltip</code> defines contextual popup that displays a description for an element. This is added automatically if not already specified.
     * <code>dialog</code> defines an application window that is designed to interrupt the current processing of an application in order to prompt the user to enter information or require a response.
     * <code>alertdialog</code> defines type of dialog that contains an alert message, where initial focus goes to an element within the dialog.
     */
    role?: HTMLAttributesSignalExcluded['role'];
    /**
     * Specifies guidance for screen readers.
     */
    'aria-label'?: string;
    /**
     * Specifies ID of an element used for guidance for screen readers.
     */
    'aria-labelledby'?: string;
    /**
     * Specifies ID of an element (or space separated IDs of multiple elements) that
     * describes the Drawer.
     */
    'aria-describedby'?: string;
};
/**
 * A popup temporarily 'pops up' content in the foreground.
 */
export declare const Popup: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    /**
     * Specifies the ARIA role type. Depending on how the popup is used in the page, the page developer should choose from the following:
     * <code>tooltip</code> defines contextual popup that displays a description for an element. This is added automatically if not already specified.
     * <code>dialog</code> defines an application window that is designed to interrupt the current processing of an application in order to prompt the user to enter information or require a response.
     * <code>alertdialog</code> defines type of dialog that contains an alert message, where initial focus goes to an element within the dialog.
     */
    ref?: import("preact").Ref<HTMLElement | null> | undefined;
}>;
export {};
