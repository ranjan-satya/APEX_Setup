import type { Pan, Zoom, DiagramNodeData, DiagramLinkData, DiagramLayoutOutput, ItemInfo, Bounds, Position, Dimensions, DatatipContext, DiagramLabelPosition } from '../diagram.types';
import type { Ref } from 'preact/hooks';
import type { BundleType } from '../../resources/nls/bundle';
import type { GetTextDimensionsType, TextDimensions } from '../../hooks/PRIVATE_useTextDimensions';
import { ComponentChildren } from 'preact';
import { Property } from 'csstype';
/**
 * Returns the pan properties for the diagram.
 */
export declare function getPanProps(props: Pan, contentBounds: Bounds): {
    panning: "fixed" | "off" | "centerContent";
    panDirection: "x" | "y" | "any";
    centerX: number;
    centerY: number;
    onPan: ((detail: import("../diagram.types").PanState) => void) | undefined;
};
/**
 * Returns the zoom properties for the diagram.
 */
export declare function getZoomProps(props: Zoom, width: number, height: number, contentBounds: Bounds): {
    zooming: "off" | "on";
    minZoom: number;
    maxZoom: number;
    zoomValue: number;
    onZoom: ((detail: {
        zoomValue: number;
    }) => void) | undefined;
};
/**
 * Constructs the json object to be passed into the layout function
 */
export declare function constructLayoutJSON<K1, K2, D1 extends DiagramNodeData<K1>, D2 extends DiagramLinkData<K2, K1>>(nodes: D1[], nodeItems: Map<K1, D1>, linkItems: Map<K2, D2>, dimensions: Dimensions[], width: number, height: number, getTextDimensions?: GetTextDimensionsType): {
    layoutJSON: {
        getNodeDimensions: (data: D1) => Dimensions;
        getLabelDimensions: (data: D1 | D2) => TextDimensions | undefined;
        componentSize: {
            width: number;
            height: number;
        };
    };
    labelDims: Map<K1 | K2, TextDimensions>;
};
/**
 * Deconstructs the output of the layout function
 */
export declare function deconstructLayoutJSON<K1, K2, D1 extends DiagramNodeData<K1>, D2 extends DiagramLinkData<K2, K1>>(layoutJSON: DiagramLayoutOutput, nodeData: D1[], linkData: D2[]): {
    nodePoints: Position[];
    nodeLabelPos: (DiagramLabelPosition | undefined)[] | undefined;
    linkLabelPos: DiagramLabelPosition[] | undefined;
};
/**
 * Merges the node points into the dimensions
 */
export declare function mergeDimensions(dimensions: Dimensions[], nodePoints: Position[]): Bounds[];
/**
 * Returns the text for the diagram datatip.
 */
export declare function getDatatipContent<K1, K2, D1 extends DiagramNodeData<K1>, D2 extends DiagramLinkData<K2, K1>>(nodesMap: Map<K1, D1>, linksMap: Map<K2, D2>, focusedItem?: ItemInfo<K1, K2>, hoveredItem?: ItemInfo<K1, K2>, datatip?: (detail: DatatipContext<D1, D2>) => {
    content: ComponentChildren;
    borderColor?: Property.BorderColor;
}): {
    content: ComponentChildren;
    borderColor?: Property.BorderColor | undefined;
} | undefined;
/**
 * Creates a map with key id and value node or link data
 */
export declare function createItemMap<K1, K2, D1 extends DiagramNodeData<K1>, D2 extends DiagramLinkData<K2, K1>>(items: (D1 | D2)[]): {
    itemIdToDataMap: Map<any, any>;
    itemIdToIndexMap: Map<any, any>;
    itemIndexToIdMap: Map<any, any>;
};
/**
 * Filter out links with no start or end nodes
 */
export declare function filterLinksWithNoEndNodes<K2, K1, D1, D2 extends DiagramLinkData<K2, K1>>(links: D2[], nodesMap: Map<K1, D1>): D2[];
/**
 * Pulls out the dimensions from an array of bounds
 */
export declare function getDimensionsFromBounds(bounds: Bounds[]): Dimensions[];
/**
 * Returns true if event is a selection event
 */
export declare function isSelectionEvent(event: KeyboardEvent): boolean;
/**
 * Returns the center position of the node or link
 * For links, draws a straight line between the centers of the start/end node
 * and returns the center of that line
 */
export declare function getFocusedItemBounds<K1, K2, D2 extends DiagramLinkData<K2, K1>>(focusedItemInfo: ItemInfo<K1, K2>, bounds: Bounds[], links: D2[], nodeIdToIndexMap: Map<K1, number>, linkIdToIndexMap: Map<K2, number>): Bounds;
/**
 * Combines the node and link ids into one array
 */
export declare function combineIds<K1, K2>(nodeIds?: K1[], linkIds?: K2[]): (K1 | K2)[];
/**
 * Returns the bounds of the diagram content
 */
export declare function getContentBounds(nodeBounds: Bounds[], labelBounds?: Bounds): Bounds;
/**
 * Returns the label bounds
 */
export declare function getAllLabelBounds<K1, K2, D1 extends DiagramNodeData<K1>, D2 extends DiagramLinkData<K2, K1>>(labelDims: Map<K1 | K2, TextDimensions>, nodes: D1[], links: D2[], nodeLabelPos: (DiagramLabelPosition | undefined)[] | undefined, linkLabelPos: DiagramLabelPosition[] | undefined, isRTL: boolean): {
    x: number;
    w: number;
    y: number;
    h: number;
} | undefined;
/**
 * Returns the position of the label
 * @param dimensions
 * @param positionProps
 * @returns position of the label
 */
export declare function getLabelPosition(dimensions: TextDimensions, positionProps: DiagramLabelPosition, isRTL: boolean): {
    x: number;
    y: number;
};
/**
 * Converts centerX,Y coordinates to panX,Y coordinates
 */
export declare function centerXYToPanXY(centerX: number, centerY: number, zoom: number, width: number, height: number): {
    panX: number;
    panY: number;
};
/**
 * Converts panX,Y coordinates to centerX,Y coordinates
 */
export declare function panXYToCenterXY(panX: number, panY: number, zoom: number, width: number, height: number): {
    centerX: number;
    centerY: number;
};
/**
 * Compares if two ItemInfo are equal
 */
export declare function isEqualItem<K1, K2>(item1?: ItemInfo<K1, K2>, item2?: ItemInfo<K1, K2>): boolean;
/**
 * Returns the item info of the data-oj-node or data-oj-link attribute for a given element.
 */
export declare function getNavigableInfo<K1, K2>(element: HTMLElement, rootElementRef?: Ref<HTMLDivElement>): ItemInfo<K1, K2>;
/**
 * Returns the id of the focused item.
 */
export declare function getFocusedItem<K1, K2>(focusedItemInfo: ItemInfo<K1, K2>, hoveredItemInfo?: ItemInfo<K1, K2>): K1 | K2 | undefined;
/**
 * Returns the aria label
 */
export declare function getItemAriaLabel(translations: BundleType, supportsSelection: boolean, isSelected?: boolean, accessibleLabel?: string): string;
/**
 * Returns the zoom to fit zoom level
 */
export declare function getZoomToFitZoom(width: number, height: number, contentBounds: Bounds): number;
/**
 * Returns the panX, panY, and zoom when zooming and centering an item
 */
export declare function zoomAndCenterItemFromInfo<K1, K2, D2 extends DiagramLinkData<K2, K1>>(info: ItemInfo<K1, K2>, linkIdToDataMap: Map<K2, D2>, bounds: Bounds[], nodeIdToIndex: Map<K1, number>, width: number, height: number, maxZoom: number): {
    centerX: number;
    centerY: number;
    zoom: number;
};
