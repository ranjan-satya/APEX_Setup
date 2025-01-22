import { ItemInfo, ItemHoverDetail, ItemFocusDetail, Bounds, DiagramNodeData, DiagramLinkData } from '../diagram.types';
export declare function useEvents<K1, K2, D1 extends DiagramNodeData<K1>, D2 extends DiagramLinkData<K2, K1>>(touchResponse: 'touchStart' | 'touchHold', initNode: D1, nodes: D1[], links: D2[], nodeBounds: Bounds[], linkIdToDataMap: Map<K2, D2>, nodeIdToDataMap: Map<K1, D1>, nodeIdToIndexMap: Map<K1, number>, width: number, height: number, maxZoom: number, onItemHover?: (detail: ItemHoverDetail<K1, K2, D1, D2>) => void, onItemFocus?: (detail: ItemFocusDetail<K1, K2, D1, D2>) => void, kbPanCallback?: (props: {
    dPan?: {
        dx: number;
        dy: number;
    };
    nPan?: {
        cx: number;
        cy: number;
    };
    center?: boolean;
}) => void, kbZoomCallback?: (props: {
    dZoom?: number;
    nZoom?: number;
}) => void): {
    focusedItemInfo: ItemInfo<K1, K2>;
    hoveredItemInfo: ItemInfo<K1, K2> | undefined;
    activeId: string | undefined;
    eventsProps: {};
};
