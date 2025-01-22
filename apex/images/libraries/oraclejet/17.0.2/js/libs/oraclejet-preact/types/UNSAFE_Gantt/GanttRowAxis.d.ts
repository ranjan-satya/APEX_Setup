/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
import type { GanttCurrentRowLabel, GanttRowData, GanttRowAxisProps as GanttRowAxisObject, GanttRowLabelHover, GanttTaskData } from './gantt.types';
import type { getRowDataLayout } from './utils/dataLayoutUtils';
type RowDataLayout<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>> = ReturnType<typeof getRowDataLayout<K1, K2, D1, D2>>;
type GanttRowAxisLabel<D1> = NonNullable<GanttRowAxisObject<D1>['labelRenderer']>;
type Props<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>> = {
    innerRef: Ref<HTMLDivElement>;
    scrollPosition: number;
    resolvedWidth: number;
    resolvedMaxWidth: number;
    currentRowLabel: GanttCurrentRowLabel<K1>['currentRowLabel'];
    currentRowLabelInteraction: 'hover' | 'focus' | 'none';
    layoutObj: {
        labelPaddingInlineStart: number;
        labelPaddingInlineEnd: number;
        rowData: RowDataLayout<K1, K2, D1, D2>['rowData'];
        rowObjs: RowDataLayout<K1, K2, D1, D2>['rowObjs'];
        idRowObjMap: RowDataLayout<K1, K2, D1, D2>['idRowObjMap'];
        isHorizontalGridlinesVisible: boolean;
    };
    ariaActive?: {
        dataId: K1;
        ariaId: string;
        type: 'rowLabel';
    };
    children: GanttRowAxisLabel<D1>;
} & GanttRowLabelHover<K1>;
export declare function GanttRowAxis<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>({ innerRef, scrollPosition, resolvedWidth, resolvedMaxWidth, currentRowLabel, currentRowLabelInteraction, hoveredRowLabelId, onRowLabelHoverChange, layoutObj: { labelPaddingInlineStart, labelPaddingInlineEnd, rowData, rowObjs, idRowObjMap, isHorizontalGridlinesVisible }, ariaActive, children }: Props<K1, K2, D1, D2>): import("preact").JSX.Element;
export {};
