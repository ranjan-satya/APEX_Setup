/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
import { BundleType } from '../resources/nls/bundle';
import { Ref } from 'preact/hooks';
import { PictoChartItemData } from './pictoChart.type';
export type PictoElementProps<K, D extends PictoChartItemData<K>> = {
    item: D;
    children: ComponentChildren;
    row: number;
    column: number;
    totalCount: number;
    class?: string;
    activeId?: string;
    isHighlighted?: boolean;
    isSelected?: boolean;
    hasSelection?: boolean;
    itemIdx?: number;
    countIdx?: number;
    supportsSelection?: boolean;
    supportsDrill?: boolean;
    translations?: BundleType;
    focusedItemRef?: Ref<HTMLDivElement>;
};
declare const PictoChartElement: <K, D extends PictoChartItemData<K>>(props: PictoElementProps<K, D>) => import("preact").JSX.Element;
export { PictoChartElement };
