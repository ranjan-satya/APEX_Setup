import { HTMLAttributesSignalExcluded } from '../utils/UNSAFE_attributeUtils';
import type { Offset } from '../UNSAFE_Floating';
export type { Offset };
type IntrinsicProps = Pick<HTMLAttributesSignalExcluded<HTMLDivElement>, 'children'>;
export type WindowOverlayPlacement = 'center' | 'top' | 'top-start' | 'top-end' | 'start' | 'start-top' | 'start-bottom' | 'bottom' | 'bottom-start' | 'bottom-end' | 'end' | 'end-top' | 'end-bottom';
type WindowOverlayProps = IntrinsicProps & {
    /**
     * Offset displaces the child element of the WindowOverlay component from its core placement along the specified axes.
     *
     * Offset could be a number or an object
     *
     * An object has the following type:
     * <pre>
     *   {
     *     mainAxis?: number;
     *     crossAxis?: number;
     *   }
     * </pre>
     * <p><code>mainAxis</code> - represents the distance (gutter or margin) between the child element and the viewport along the mainAxis.</p>
     * <p><code>crossAxis</code> - represents the distance (gutter or margin) between the child element and the viewport along the crossAxis.</p>
     *
     * where,
     * <p>The <code>mainAxis</code> is an axis that runs along the side of the placement, i.e. the part before the hyphen (top-*, bottom-*, start-*, end-*).</p>
     * <p>The <code>crossAxis</code> is an axis that runs along the alignment of the placement, i.e. the part after the hyphen (*-start, *-end, *-top, *-bottom).</p>
     *
     * For the placement value 'center' the convention for the offset type is that mainAxis defines offset from the top, crossAxis defines offset from the left side of the view port.
     *
     * A number is a shortcut for setting the mainAxis.
     */
    offset?: Offset;
    /**
     * Placement of the WindowOverlay element relative to the viewport.
     * Possible values are:
     * <p> <code>'center' </code> <code>'top' </code> <code>'top-start' </code> <code> 'top-end' </code>
     * <code> 'end' </code> <code> 'end-top'  </code> <code> 'end-bottom' </code>
     * <code> 'bottom'  </code> <code> 'bottom-start'  </code> <code> 'bottom-end' </code>
     * <code> 'start' </code> <code> 'start-top'  </code> <code> 'start-bottom' </code>
     * </p>
     */
    placement?: WindowOverlayPlacement;
};
/**
 * A WindowOverlay component allows the user to place a child component relative to the viewport
 */
export declare const WindowOverlay: ({ children, ...props }: WindowOverlayProps) => import("preact").JSX.Element;
