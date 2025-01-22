import type { HTMLAttributesSignalExcluded } from '../utils/UNSAFE_attributeUtils';
import type { Size } from '../utils/UNSAFE_size';
import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
import type { TextDimensions, Font } from '../hooks/PRIVATE_useTextDimensions';
import { ComponentChildren } from 'preact';
import { Property } from 'csstype';
/**
 * Props for Diagram
 */
export type DiagramProps<K1, K2, D1, D2> = {
    /**
     * Defines the width of the diagram. Supports CSS lengths. The default value for this is theme driven.
     */
    width?: Size;
    /**
     * Defines the height of the diagram. Supports CSS lengths. The default value for this is theme driven.
     */
    height?: Size;
    /**
     * Defines the node data of the diagram. Each row corresponds to a single diagram node.
     */
    nodes?: D1[];
    /**
     * Defines the link data of the diagram.  Each row corresponds to a single diagram link.
     */
    links?: D2[];
    /**
     * An object containing an array of node and and an array of link ids to be selected.
     */
    selectedIds?: {
        nodes?: Array<K1>;
        links?: Array<K2>;
    };
    /**
     * The type of selection behavior that is enabled on the diagram.
     * This attribute controls the number of selections that can be made via selection gestures at any given time.
     */
    selectionMode?: 'none' | 'single' | 'multiple';
    /**
     * A custom JavaScript client layout method - a custom code developed by a customer used to position Diagram nodes
     * and links. The layout function takes in a context object that contains 3 methods: a method that returns the dimensions
     * of the specified node, a method that returns the dimensions of a label, and a method that returns the diagram component
     * size.  This function will return an object that contains the node positions and node/link label position properties.
     */
    layout: (context: DiagramLayoutContext<D1, D2>) => DiagramLayoutOutput;
    /**
     * A callback that returns the custom node content.  This callback will take in a context that includes the node data,
     * current and previous state of the node and will return the custom node content.
     */
    nodeRenderer: (context: NodeRendererContext<D1>) => ComponentChildren;
    /**
     * A callback that returns the custom link content.  This callback will take in a context that includes the link data,
     * current and previous state of the link and will return the custom link content.
     */
    linkRenderer?: (context: LinkRendererContext<D2>) => ComponentChildren;
    /**
     * The callback to be triggered when the selection changes. This function should
     * update the selectedIds prop.
     */
    onSelectionChange?: (detail: SelectedItemDetail<K1, K2, D1, D2>) => void;
    /**
     * The callback invoked when a diagram node or link is hovered or looses hover.
     * This function can update the highlightedIds.
     */
    onItemHover?: (detail: ItemHoverDetail<K1, K2, D1, D2>) => void;
    /**
     * The callback invoked when a diagram node or link is keyboard focused or looses focus.
     * This function can update the highlightedIds.
     */
    onItemFocus?: (detail: ItemFocusDetail<K1, K2, D1, D2>) => void;
    /**
     * An object containing an array of node and and an array of link ids to be highlighted.
     * All nodes or links will be highlighted if array is undefined.
     */
    highlightedIds?: {
        nodes?: Array<K1>;
        links?: Array<K2>;
    };
    /**
     * A callback that returns datatip for the diagram node or link.  If undefined, the accessibleLabel
     * for the node or link will be used.
     */
    datatip?: (context: DatatipContext<D1, D2>) => {
        content: ComponentChildren;
        borderColor?: Property.BorderColor;
    };
} & Aria & Pan & Zoom;
type Aria = {
    /**
     * The aria-label of the diagram.
     */
    'aria-label'?: HTMLAttributesSignalExcluded['aria-label'];
    /**
     * One or more ids (separated by spaces) of elements that describe the diagram.
     * The aria-describedby of the diagram.
     */
    'aria-describedby'?: HTMLAttributesSignalExcluded['aria-describedby'];
    /**
     * One or more ids (separated by spaces) of elements that label the diagram.
     * The aria-labelledby of the diagram.
     */
    'aria-labelledby'?: HTMLAttributesSignalExcluded['aria-labelledby'];
};
export type Zoom = {
    /**
     * Specifies whether zooming is allowed in Diagram.
     */
    zooming?: 'on' | 'off';
    /**
     * Specifies the minimum zoom level for this diagram.  Value of 0.0 indicate min-zoom
     * will be the zoom level of zoom-to-fit.  A value of 0.1 implies that Diagram can be zoomed
     * out until nodes appear at one-tenth of their natural size.  MinZoom cannot be a negative number.
     */
    minZoom?: number;
    /**
     * Specifies the maximum zoom level for this diagram. This can be any number greater than zero which
     * indicates the maximum point to which Diagram objects can be scaled. A value of 2.0 implies that the
     * Diagram can be zoomed in until Nodes appear at twice their natural size. By default, maxZoom is 1.0.
     */
    maxZoom?: number;
    /**
     * Zoom value for the diagram
     */
    zoomValue?: number;
    /**
     * The callback triggered when zooming has occurred.  This function
     * should update the zoomValue prop.
     */
    onZoom?: (detail: {
        zoomValue: number;
    }) => void;
};
export type Pan = {
    /**
     * Specifies whether panning is allowed in Diagram.
     * If panning equals 'centerContent', panning is restricted based on the current zoom level to allow any area
     * of the content to be centered.
     * If panning equals 'fixed', panning is restricted to the visible region when the diagram is rendered an minZoom.
     * If panning equals 'off, panning is not allowed.
     */
    panning?: 'centerContent' | 'fixed' | 'off';
    /**
     * Specifies if panning is allowed in horizontal and vertical directions.
     */
    panDirection?: 'x' | 'y' | 'any';
    /**
     * The x coordinate of the center of the viewport in the layout coordinate space that was set up in the layout function.
     * By default content will be centered horizontally.
     */
    centerX?: number;
    /**
     * The y coordinate of the center of the viewport in the layout coordinate space that was set up in the layout function.
     * By default content will be centered vertically.
     */
    centerY?: number;
    /**
     * The callback triggered when panning has occurred.  This function should update the
     * centerX and centerY props.
     */
    onPan?: (detail: PanState) => void;
};
/**
 * Props for Diagram Node
 */
export type DiagramNodeData<K1> = {
    /**
     * Defines the id of the node.
     */
    id: K1;
    /**
     * Defines the label of the node.
     */
    label?: string;
    /**
     * Label used for accessibility purposes
     */
    accessibleLabel?: string;
    /**
     * Label styles
     */
    labelStyle?: DiagramLabelStyles;
};
/**
 * Props for Diagram Link
 */
export type DiagramLinkData<K2, K1> = {
    /**
     * Defines the id of the link.
     */
    id: K2;
    /**
     * Defines the label of the link.
     */
    label?: string;
    /**
     * Start node of the link.
     */
    startNode: K1;
    /**
     * End node of the link.
     */
    endNode: K1;
    /**
     * Label used for accessibility purposes
     */
    accessibleLabel?: string;
    /**
     * Label styles
     */
    labelStyle?: DiagramLabelStyles;
};
/**
 * Label Props
 */
export type DiagramLabelStyles = {
    /**
     * Background Color of the label
     */
    backgroundColor?: ColorProps['backgroundColor'];
    /**
     * Border Color of the label
     */
    borderColor?: Property.BorderColor;
    /**
     * Border Width of the label
     */
    borderWidth?: Size;
    /**
     * Border Radius of the label
     */
    borderRadius?: Size;
    /**
     * Color of the label
     */
    color?: ColorProps['color'];
    /**
     * Cursor of the label
     */
    cursor?: Property.Cursor;
    /**
     * Font family of the label
     */
    fontFamily?: Font['fontFamily'];
    /**
     * Font size of the label
     */
    fontSize?: Font['fontSize'];
    /**
     * Font style of the label
     */
    fontStyle?: Font['fontStyle'];
    /**
     * Font weight of the label
     */
    fontWeight?: Font['fontWeight'];
    /**
     * Max width of the label
     */
    maxWidth?: Size;
    /**
     * Text decoration of the label
     */
    textDecoration?: Property.TextDecoration;
};
export type NodeRendererContext<D1> = {
    /**
     * Node Data
     */
    data: D1;
    /**
     * Current state of the node
     */
    state: State;
    /**
     * Previous state of the node
     */
    previousState: State;
};
export type LinkRendererContext<D2> = {
    /**
     * Link Data
     */
    data: D2;
    /**
     * Current state of the link
     */
    state: State;
    /**
     * Previous state of the link
     */
    previousState: State;
};
export type DiagramLayoutContext<D1, D2> = {
    /**
     * Returns the dimensions of the specified node
     */
    getNodeDimensions: (data: D1) => Dimensions;
    /**
     * Returns the label dimensions for the node or link if it contains a label.
     * Returns undefined if that node or link does not have a label
     */
    getLabelDimensions: (data: D1 | D2) => TextDimensions | undefined;
    /**
     * Diagram component size
     */
    componentSize: {
        width: number;
        height: number;
    };
};
/**
 * The output of the layout function
 */
export type DiagramLayoutOutput = {
    nodes: {
        [key: string | number]: DiagramLayoutNodePosition;
    };
    links?: {
        [key: string | number]: DiagramLayoutLinkPosition;
    };
};
/**
 * The node position output of the layout function
 */
export type DiagramLayoutNodePosition = {
    position: Position;
    label?: DiagramLabelPosition;
};
/**
 * The link position output of the layout function
 */
export type DiagramLayoutLinkPosition = {
    label: DiagramLabelPosition;
};
/**
 * The label positioning props
 */
export type DiagramLabelPosition = {
    position: Position;
    /**
     * Default is left for ltr and right for rtl
     */
    hAlign?: 'left' | 'center' | 'right';
    /**
     * Angle the label is rotated
     */
    rotationAngle?: number;
    /**
     * Default rotation point is the middle of the label
     */
    rotationPoint?: Position;
    /**
     * Default is top
     */
    vAlign?: 'top' | 'middle' | 'bottom' | 'baseline';
};
/**
 * The state of the node or link that is passed to the custom renderer
 */
export type State = {
    /**
     * if node or link is selected
     */
    selected?: boolean;
    /**
     * if node or link is focused
     */
    focused?: boolean;
    /**
     * if node or link is hovered
     */
    hovered?: boolean;
};
/**
 * Props for the ItemInfo.
 */
export type ItemInfo<K1, K2> = {
    /**
     * Defines the id of the item.
     */
    id: K1 | K2;
    /**
     * Defines whether the item is current.
     */
    isCurrent?: boolean;
    /**
     * Defines whether the item is focused.
     */
    isFocusVisible?: boolean;
    /**
     * True if item is a node, otherwise it is a link
     */
    isNode?: boolean;
};
/**
 * Position type
 */
export type Position = {
    x: number;
    y: number;
};
/**
 * Dimensions type
 */
export type Dimensions = {
    w: number;
    h: number;
};
/**
 * Bounds type
 */
export type Bounds = Dimensions & Position;
/**
 * Detail for the onItemFocus callback.
 */
export type ItemFocusDetail<K1, K2, D1, D2> = {
    id?: K1 | K2;
    type?: 'node' | 'link';
    data?: D1 | D2;
};
/**
 * Detail for the onItemHover callback.
 */
export type ItemHoverDetail<K1, K2, D1, D2> = {
    id?: K1 | K2;
    type?: 'node' | 'link';
    data?: D1 | D2;
};
/**
 * Detail for the onSelection callback.
 */
export type SelectedItemDetail<K1, K2, D1, D2> = {
    nodes: K1[];
    links: K2[];
    nodeData: (D1 | undefined)[];
    linkData: (D2 | undefined)[];
};
/**
 * States of the diagram nodes and links
 */
export type States<K1, K2> = {
    /**
     * An array of node ids that are selected.
     */
    selectedNodeIds: Array<K1>;
    /**
     * An array of link ids that are selected.
     */
    selectedLinkIds: Array<K1 | K2>;
    /**
     * Id of the focused node or link.
     */
    focusedId?: K1 | K2;
    /**
     * Id of the hovered node or link.
     */
    hoveredId?: K1 | K2;
    /**
     *
     */
    highlightedIds: Array<K1 | K2>;
    /**
     * Zoom of the diagram
     */
    zoom: number;
    /**
     * active id for accessibility
     */
    activeId?: string;
};
/**
 * Detail for the datatip function.
 */
export type DatatipContext<D1, D2> = {
    data: D1;
    type: 'node';
} | {
    data: D2;
    type: 'link';
};
/**
 * The pan state that describes the center point
 * of the diagram content
 */
export type PanState = {
    centerX: number;
    centerY: number;
};
export {};
