import { JSX, RefObject } from 'preact';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
type IntrinsicProps = Pick<JSX.HTMLAttributes<HTMLDivElement>, 'children'>;
type Placement = 'start' | 'end' | 'bottom';
type OnCloseDetail = {
    reason: 'outsideClick' | 'escapeKey' | 'swipe';
};
type Props = IntrinsicProps & Pick<ColorProps, 'backgroundColor'> & {
    /**
     * Specifies whether the Drawer is open.
     */
    isOpen: boolean;
    /**
     * Specifies at what edge the Drawer opens.
     * Supported values are:
     * <p><code>start</code>, <code>end</code>, <code>bottom</code></p>
     * Default is <code>start</code>.
     */
    placement?: Placement;
    /**
     * Specifies modality of the Darwer.
     * Supported values are:
     * <p><code>modal</code>, <code>modeless</code></p>
     * Default is <code>modal</code>.
     */
    modality?: 'modal' | 'modeless';
    /**
     * Specifies callback triggered when a user tries to close a Drawer through UI interaction.
     * The parent should listen to this event and close the Drawer. If the parent fails to remove
     * the Popup, then no change will be done in the UI by the component.
     * Supported detail values are:
     * <p><code>outsideClick</code>, <code>escapeKey</code></p>, <code>swipe</code>
     */
    onClose?: (detail: OnCloseDetail) => void;
    /**
     * Specifies callback triggered after the animation ends.
     */
    onTransitionEnd?: (value: boolean) => void;
    /**
     * Optional ref for an element to focus on when component mounts.
     */
    autoFocusRef?: RefObject<HTMLElement>;
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
} & TestIdProps;
/**
 * A drawer popup adds a single slide-in side content alongside some primary content to an application window.
 *
 * This drawer always overlays the page and can be placed at the 'start', 'end' or 'bottom' edge.
 */
export declare const DrawerPopup: ({ children, isOpen, autoFocusRef, placement, modality, onClose, onTransitionEnd, "aria-label": ariaLabel, "aria-labelledby": ariaLabelledBy, "aria-describedby": ariaDescribedBy, testId, ...props }: Props) => JSX.Element | null;
export {};
