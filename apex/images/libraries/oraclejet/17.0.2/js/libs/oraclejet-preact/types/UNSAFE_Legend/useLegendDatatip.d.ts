/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { MutableRef, Ref } from 'preact/hooks';
import { ItemInfo } from '../utils/UNSAFE_visTypes/legend';
type props = {
    text?: string;
    rootDimsRef: MutableRef<DOMRect | undefined>;
    focusedItemRef: Ref<HTMLDivElement>;
    focusedItemInfo: ItemInfo;
    touchResponse: 'touchStart' | 'touchHold';
};
export declare const useLegendDatatip: ({ text, rootDimsRef, focusedItemRef, focusedItemInfo, touchResponse }: props) => {
    datatipContent: import("preact").JSX.Element | null;
    datatipProps: {
        'aria-describedby': string | undefined;
    };
};
export {};
