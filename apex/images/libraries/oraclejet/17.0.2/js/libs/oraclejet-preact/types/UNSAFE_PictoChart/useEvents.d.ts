import type { ItemHoverDetail, ItemFocusDetail, ItemInfo, PictoChartItemData, ItemDrillDetail } from './pictoChart.type';
export declare function useEvents<K, D extends PictoChartItemData<K>>(touchResponse: 'touchStart' | 'touchHold', isInteractive: boolean, selectionMode: 'none' | 'single' | 'multiple', getDetailFromInfo: (info?: ItemInfo) => ItemHoverDetail<K, D> | ItemFocusDetail<K, D>, getPrevItemInfo: (info: ItemInfo) => ItemInfo, getNextItemInfo: (info: ItemInfo) => ItemInfo, drilling?: 'on' | 'off', onItemDrill?: (detail: ItemDrillDetail<K, D>) => void, onItemHover?: (detail: ItemHoverDetail<K, D>) => void, onItemFocus?: (detail: ItemFocusDetail<K, D>) => void): {
    focusedItemInfo: ItemInfo;
    hoveredItemInfo: ItemInfo | undefined;
    eventsProps: {
        onTouchMove?: undefined;
        onPointerDown?: undefined;
        onPointerUp?: undefined;
        onPointerMove?: undefined;
        onPointerEnter?: undefined;
        onPointerLeave?: undefined;
        onPointerCancel?: undefined;
    } | {
        onTouchMove: (event: TouchEvent) => void;
        onPointerDown: (event: PointerEvent) => void;
        onPointerUp: (event: PointerEvent) => void;
        onPointerMove: (event: PointerEvent) => void;
        onPointerEnter: (event: PointerEvent) => void;
        onPointerLeave: (event: PointerEvent) => void;
        onPointerCancel: (event: PointerEvent) => void;
    };
    activeId?: undefined;
} | {
    focusedItemInfo: ItemInfo;
    hoveredItemInfo: ItemInfo | undefined;
    activeId: string | undefined;
    eventsProps: {};
};
