/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { ItemInfo, Bounds, DatatipContext, DiagramNodeData, DiagramLinkData } from '../diagram.types';
import type { Ref } from 'preact/hooks';
import type { Pan } from '../utils/panUtils';
import { ComponentChildren } from 'preact';
import { Property } from 'csstype';
type props<K1, K2, D1, D2> = {
    touchResponse: 'touchStart' | 'touchHold';
    datatip?: (context: DatatipContext<D1, D2>) => {
        content: ComponentChildren;
        borderColor?: Property.BorderColor;
    };
    text?: string;
    focusedItemInfo: ItemInfo<K1, K2>;
    focusedItemBoundsRef: Ref<Bounds | null>;
    panState: Pan;
    zoom: number;
    width: number;
    nodesMap: Map<K1, D1>;
    linksMap: Map<K2, D2>;
    hoveredItem?: ItemInfo<K1, K2>;
};
/**
 * Returns the datatip.
 * @param text The text string for the diagram item.
 * @param rootRef The ref for root of the diagram.
 * @param focusedItemBoundsRef The ref for focused item bounds.
 * @param focusedItemInfo The ItemInfo for focused item.
 * @returns
 */
export declare const useDiagramDatatip: <K1, K2, D1 extends DiagramNodeData<K1>, D2 extends DiagramLinkData<K2, K1>>({ touchResponse, datatip, focusedItemBoundsRef, focusedItemInfo, panState, zoom, width, nodesMap, linksMap, hoveredItem }: props<K1, K2, D1, D2>) => {
    datatipContent: import("preact").JSX.Element | null;
    datatipProps: {
        'aria-describedby': string | undefined;
    };
};
export {};
