/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
import type { ItemInfo } from './pictoChart.type';
import { ComponentChildren } from 'preact';
import { Property } from 'csstype';
type Props = {
    touchResponse: 'touchStart' | 'touchHold';
    content?: ComponentChildren;
    borderColor?: Property.BorderColor;
    focusedItemInfo: ItemInfo;
    width: number;
    focusedItemRef: Ref<HTMLDivElement>;
};
/**
 * Returns the datatip.
 * @param content The text string for the picto chart item.
 * @param focusedItemRef The ref for focused item node.
 * @param focusedItemInfo The ItemInfo for focused item node.
 * @returns
 */
export declare const usePictoChartDatatip: ({ touchResponse, content, borderColor, width, focusedItemRef, focusedItemInfo }: Props) => {
    datatipContent: import("preact").JSX.Element | null;
    datatipProps: {
        'aria-describedby': string | undefined;
    };
};
export {};
