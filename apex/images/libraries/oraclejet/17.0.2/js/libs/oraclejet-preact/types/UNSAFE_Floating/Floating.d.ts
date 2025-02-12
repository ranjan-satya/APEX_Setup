import { RefObject } from 'preact';
import { Offset, Placement, Coords, PositionData } from './Floating.types';
import { HTMLAttributesSignalExcluded } from '../utils/UNSAFE_attributeUtils';
import type { ColorProps } from '../utils/UNSAFE_interpolations/colors';
type IntrinsicProps = Pick<HTMLAttributesSignalExcluded<HTMLDivElement>, 'children' | 'class'>;
/**
 * Specifies the flipping behavior along the respective axis.
 */
export type FlipOptions = {
    /**
     * If set to true, enables collision detection on the main axis,
     * which runs along the floating placement side.
     */
    mainAxis?: boolean;
    /**
     * If set to true, enables collision detection on the cross axis,
     * which runs along the floating placement side.
     */
    crossAxis?: boolean;
    /**
     * Specifies an array of placements to try
     * if the preferred initial placement doesn’t fit on the axes
     * in which collision is detected.
     */
    fallbackPlacements?: Array<Placement>;
};
/**
 * Specifies the shift behavior along the respective axis.
 * When true, the floating element will shift to prevent overflow.
 */
export type ShiftOptions = {
    /**
     * main axis in which shifting is applied. Default <code>true</code>.
     */
    mainAxis?: boolean;
    /**
     * cross axis in which shifting is applied. Default <code>false</code>.
     */
    crossAxis?: boolean;
};
/**
 * This describes the virtual padding around the collision boundary (currently the view port).
 * This could be extended in the future,
 * i.e. property to define what is a boundary ( a view port, a document, some other html element)
 */
export type BoundaryOptions = {
    padding?: number | {
        top: number;
        right: number;
        bottom: number;
        left: number;
    };
};
/**
 * Specifies the resizing behaviour for max-height and max-width of the floating component.
 * The floating element will change the size depending on the available space.
 * isMaxHeightAdjusted/isMaxWidthAdjusted - sets the max-height/max-width of the floating to the available space till the collision.
 * maxHeightCeiling/maxWidthCeiling - this is the limit for max-height/max-width that should not be exceeded, even if there is more available space till the collision.
 */
export type SizeOptions = {
    isMaxWidthAdjusted?: boolean;
    isMaxHeightAdjusted?: boolean;
    maxHeightCeiling?: number;
    maxWidthCeiling?: number;
};
type Props = IntrinsicProps & Pick<ColorProps, 'backgroundColor'> & {
    /**
     * <p>Placement of the floating element relative to its reference element.</p>
     * <p>Placement consists of two parts, the first part is the side, the second is the alignment.</p>
     * <p>Possible values are:</p>
     * <p> <code>'top' </code> <code>'top-start' </code> <code> 'top-end' </code> <code> 'top-start-corner' </code> <code> 'top-end-corner' </code>
     * <code> 'end' </code> <code> 'end-top'  </code> <code> 'end-bottom' </code> <code> 'end-top-corner' </code> <code> 'end-bottom-corner' </code>
     * <code> 'bottom'  </code> <code> 'bottom-start'  </code> <code> 'bottom-end' </code> <code> 'bottom-start-corner' </code> <code> 'bottom-end-corner' </code>
     * <code> 'start' </code> <code> 'start-top'  </code> <code> 'start-bottom' </code> <code> 'start-top-corner' </code> <code> 'start-bottom-corner' </code>
     * </p>
     */
    placement?: Placement;
    /**
     * Trigger element reference.
     */
    anchorRef: RefObject<Element | Coords>;
    /**
     * Placement offset.
     * Offset displaces the floating element from its core placement along the specified axes.
     * Offset could be a number or an object
     * A number represents the distance (gutter or margin) between the floating element and the reference element.
     * This is shorthand for mainAxis.
     * <pre>
     *   {
     *     mainAxis?: number;
     *     crossAxis?: number;
     *   }
     * </pre>
     * <p><code>mainAxis</code> - represents the distance (gutter or margin) between the floating element and the reference element.</p>
     * <p><code>crossAxis</code> - represents the shifting between the floating element and the reference element.<p>
     */
    offsetValue?: Offset;
    /**
     * Click outside callback.
     */
    onClickOutside?: (event: MouseEvent) => void;
    /**
     * FlipOptions object
     * <pre>
     * type FlipOptions = {
     *     mainAxis?: boolean;
     *     crossAxis?: boolean;
     *     fallbackPlacements?: Array<Placement>;
     *   }
     * </pre>
     * <p>Specifies the flipping behavior along the respective axis.<p>
     * <p><code>mainAxis</code> - If set to true, enables collision detection on the main axis, which runs along the floating placement side.
     * Default is <code>true</code>.
     * </p>
     * <p><code>crossAxis</code> - If set to true, enables collision detection on the cross axis, which runs along the floating placement alignment.
     * Default is <code>false</code>.
     * </p>
     * <p><code>fallbackPlacements</code> - specifies an array of placements to try if the preferred initial placement doesn’t fit on the axes in which collision is detected.
     * The fallback placements will be tried in the order they are specified in the array.
     * The following placements are allowed as values of the array:
     * <code>'top'</code>, <code>'top-start'</code>, <code>'top-end'</code>, <code>'start'</code>, <code>'start-top'</code>, <code>'start-bottom'</code>, <code>'bottom'</code>,
     * <code>'bottom-start'</code>, <code>'bottom-end'</code>, <code>'end'</code>, <code>'end-top'</code>, <code>'end-bottom'</code>.
     * <p>
     * If not specified, the default behaviour is to flip to the side <code>opposite</code> to the one in which collision is detected
     * </p>
     * </p>
     */
    flipOptions?: FlipOptions;
    /**
     * Specifies the shift behavior along the respective axis. When true, the floating element will shift to prevent overflow.
     * <pre>
     * type ShiftOptions = {
     *  mainAxis?: boolean;
     *  crossAxis?: boolean;
     * };
     * </pre>
     * <p><code>mainAxis</code> - main axis in which shifting is applied. Default <code>true</code>.</p>
     * <p><code>crossAxis</code> - cross axis in which shifting is applied. Default <code>false</code>.</p>
     */
    shiftOptions?: ShiftOptions;
    /**
     *  Triggered when placement or coordinates are changed after collision is detected
     */
    onPosition?: (data: PositionData) => void;
    /**
     * Tail
     */
    tail?: 'none' | 'simple';
    /**
     * Specifies the resizing behaviour for max-height and max-width of the floating component.
     * <pre>
     * type SizeOptions = {
     *    isMaxWidthAdjusted?: boolean;
     *    isMaxHeightAdjusted?: boolean;
     *    maxHeightCeiling?: number;
     *    maxWidthCeiling?: number;
     *  }
     * </pre>
     * <p><code>isMaxHeightAdjusted</code> and <code>isMaxWidthAdjusted</code> - sets the max-height/max-width of the floating to the available space till the collision.
     * When either of the options isMaxHeightAdjusted, isMaxWidthAdjusted is true, the floating element will change the size depending on the available space.
     * Default values are <code>'false'</code>.</p>
     * <p><code>maxHeightCeiling</code> and <code>maxWidthCeiling</code> - are maximal values that could not be exceeded.
     * Defaults are undefined and it means to use full available width/height.</p>
     */
    sizeOptions?: SizeOptions;
    /**
     * <p>This describes the virtual padding around the collision boundary (currently the view port).</p>
     * <p>This could be extended in the future,
     * i.e. property to define what is a boundary
     * ( a view port, a document, some other html element)</p>
     * <pre>
     * type BoundaryOptions = {
     *  padding?: number | {
     *    top: number;
     *    right: number;
     *    bottom: number;
     *    left: number;
     *  };
     * }
     * </pre>
     * Default value for padding is 0.
     */
    boundaryOptions?: BoundaryOptions;
};
/**
 * A floating component allows the user to create a floating element that is displayed relative to an anchor element or pointer coordinates
 * and at the same time on the "top layer" of all other elements.
 * The Floating component is a base component and is often used by such components as Popup, Tooltip, SelectMultiple, Menu and other components.
 */
export declare const Floating: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: import("preact").Ref<HTMLElement | null> | undefined;
}>;
export {};
