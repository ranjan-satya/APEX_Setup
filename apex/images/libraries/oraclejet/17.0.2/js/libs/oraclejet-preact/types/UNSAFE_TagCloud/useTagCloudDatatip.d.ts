/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
import { ItemInfo } from './tagCloud.type';
import { TagItemProps } from './TagCloudItem';
import { ComponentChildren } from 'preact';
import { Property } from 'csstype';
type props<K> = {
    touchResponse: 'touchStart' | 'touchHold';
    datatip?: {
        content?: ComponentChildren;
        borderColor?: Property.BorderColor;
    };
    borderColor?: Property.BorderColor;
    rootRef: Ref<HTMLDivElement>;
    focusedItemInfo: ItemInfo;
    focusedItemRef: Ref<TagItemProps<K> | null>;
};
/**
 * Returns the datatip.
 * @param text The text string for the tag cloud item.
 * @param rootRef The ref for root of the tag cloud.
 * @param focusedItemRef The ref for focused item node.
 * @param focusedItemInfo The ItemInfo for focused item node.
 * @returns
 */
export declare const useTagCloudDatatip: <K>({ touchResponse, datatip, rootRef, focusedItemRef, focusedItemInfo }: props<K>) => {
    datatipContent: import("preact").JSX.Element | null;
    datatipProps: {
        'aria-describedby': string | undefined;
    };
};
export {};
