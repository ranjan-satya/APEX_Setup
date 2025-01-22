import type { ItemInfo } from '../diagram.types';
import { Ref } from 'preact/hooks';
type SelectionProps<K1, K2, D1, D2> = {
    selectedIds: {
        nodes?: K1[];
        links?: K2[];
    };
    selectionMode: 'none' | 'single' | 'multiple';
    nodeMap: {
        itemIdToDataMap: Map<K1, D1>;
        itemIdToIndexMap: Map<K1, number>;
        itemIndexToIdMap: Map<number, K1>;
    };
    linkMap: {
        itemIdToDataMap: Map<K2, D2>;
        itemIdToIndexMap: Map<K2, number>;
        itemIndexToIdMap: Map<number, K2>;
    };
    focusedItemInfo: ItemInfo<K1, K2>;
    onSelectionChange?: (detail: {
        nodes: K1[];
        links: K2[];
        nodeData: (D1 | undefined)[];
        linkData: (D2 | undefined)[];
    }) => void;
    rootRef: Ref<HTMLDivElement>;
};
export declare function useDiagramSelection<K1, K2, D1, D2>({ selectedIds, selectionMode, nodeMap, linkMap, focusedItemInfo, onSelectionChange, rootRef }: SelectionProps<K1, K2, D1, D2>): {
    selectionContent: import("preact").JSX.Element | null;
    selectionProps: {
        onKeyUp?: undefined;
        onContextMenu?: undefined;
        onPointerUp?: undefined;
    } | {
        onKeyUp: (event: KeyboardEvent) => void;
        onContextMenu: (event: MouseEvent) => void;
        onPointerUp: (event: PointerEvent) => void;
    };
};
export {};
