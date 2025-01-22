/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { GanttCurrentTask, GanttProps, GanttRowData, GanttSelection as GanttSelectionProps, GanttTaskData, GanttTaskHover } from '../gantt.types';
import { Property } from 'csstype';
import { getResolvedRowVars, getResolvedTaskVars } from './ganttStyleUtils';
type GanttRowLayoutObj<K1, K2> = {
    id: K1;
    y: number;
    height: number;
    depth?: number;
    expanded?: boolean;
    index: number;
    parentIndex?: number;
    isSelected: boolean;
    taskObjs: GanttTaskLayoutObj<K2>[];
};
type GanttTaskLayoutObj<K2> = {
    id: K2;
    renderIndex: number;
    index: number;
    rowIndex: number;
    y: number;
    height: number;
    borderRadius: string;
    fill: string;
    stroke: string;
    strokeWidth: number;
    isSelectable: boolean;
    isSelected: boolean;
    selectionEffect: {
        stroke: string;
        strokeWidth: number;
        padding: number;
    };
    hoverEffect: {
        stroke: string;
        strokeWidth: number;
        padding: number;
        shadow: {
            shadowColor: string;
            shadowOffsetX: number;
            shadowOffsetY: number;
            shadowBlur: number;
        };
    };
    focusEffect: {
        stroke: string;
        strokeWidth: number;
        padding: number;
    };
    startTime: number;
    endTime: number;
    overallStartTime: number;
    overallEndTime: number;
    rowLevel: number;
    previousAdjacentTaskObj?: GanttTaskLayoutObj<K2>;
    nextAdjacentTaskObj?: GanttTaskLayoutObj<K2>;
    labelObj?: {
        startTime: number;
        endTime: number;
        label: string;
        isInner: boolean;
        position: 'start' | 'center' | 'end';
    };
};
type GanttViewportRowLayoutObj<K1, K2> = Omit<GanttRowLayoutObj<K1, K2>, 'taskObjs'> & {
    taskObjs: GanttViewportTaskLayoutObj<K2>[];
};
type GanttViewportTaskLayoutObj<K2> = GanttTaskLayoutObj<K2> & {
    x: number;
    width: number;
};
type GanttViewPortTaskLabelLayoutObj = {
    x: number;
    y: number;
    width: number;
    height: number;
    label: string;
    isInner: boolean;
    textAlign: 'left' | 'center' | 'right';
    labelStyle?: {
        color?: Property.Color;
        fontFamily?: Property.FontFamily;
        fontSize?: Property.FontSize;
        fontStyle?: Property.FontStyle;
        fontWeight?: Property.FontWeight;
        textDecoration?: Property.TextDecoration;
    };
};
type ViewportLayout<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>> = ReturnType<typeof getResolvedViewportLayout<K1, K2, D1, D2>>;
/**
 * Gets normalized start and end date strings from props,
 * e.g. one of them may be undefined in the props, but that really means both
 * start and end are the same.
 * @param task The task data containing the start and end date strings.
 * @returns Normalized start and end date strings.
 */
declare const getNormalizedStartEnd: (task: {
    start?: string;
    end?: string;
}) => {
    start: string;
    end: string;
};
/**
 * Returns whether selection is supported given the selection mode.
 * @param selectionMode The selection mode from props.
 * @returns Whether selection is supported.
 */
declare const supportsSelection: (selectionMode?: 'none' | 'single' | 'multiple') => boolean;
/**
 * Gets the (unresolved) rows data layout. Note that this is done for all rows in the data.
 * @param rowData The rows data.
 * @param resolvedVars The resolved CSS vars.
 * @param gridlines The gridlines prop value.
 * @param selectionProps The selection related props.
 * @returns The (unresolved) rows data layout.
 */
declare const getRowDataLayout: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(rowData: GanttProps<K2, D1, D2>['rows'], resolvedVars: ReturnType<typeof getResolvedRowVars> & ReturnType<typeof getResolvedTaskVars>, gridlines: {
    horizontal: 'on' | 'off';
    vertical: 'on' | 'off';
}, selectionProps: Omit<GanttSelectionProps<K2, D2>, 'onSelectionChange'>) => {
    rowData: D1[];
    rowObjs: GanttRowLayoutObj<K1, K2>[];
    rowPadding: number;
    totalRowsHeight: number;
    gridlines: {
        horizontal: 'on' | 'off';
        vertical: 'on' | 'off';
    };
    spatialIndex: {
        tasks: import("flatbush").default;
    };
    idRowObjMap: Map<K1, GanttRowLayoutObj<K1, K2>>;
    idTaskObjMap: Map<K2, GanttTaskLayoutObj<K2>>;
    getTaskDataById: (id: K2) => D2 | undefined;
};
/**
 * Gets the corresponding task layout object given the id of the tasks, for each effect.
 * @param effectProps The task ids associated with each effect.
 * @param idTaskObjMap A Map between task ids and task layout objects.
 * @returns The task layout objects for each effect.
 */
declare const getEffectTaskObjs: <K2, D2>(effectProps: {
    selectionProps: Omit<GanttSelectionProps<K2, D2>, 'onSelectionChange'>;
    hoverProps: Omit<GanttTaskHover<K2>, 'onTaskHoverChange'>;
    currentProps: Omit<GanttCurrentTask<K2>, 'onCurrentTaskChange'>;
}, idTaskObjMap: Map<K2, GanttViewportTaskLayoutObj<K2>>) => {
    selectedTaskObjs: GanttViewportTaskLayoutObj<K2>[];
    hoveredTaskObj: GanttViewportTaskLayoutObj<K2> | undefined;
    focusedTaskObj: GanttViewportTaskLayoutObj<K2> | undefined;
};
/**
 * Gets the resolved task layout object for the given viewport, given the unresolved task layout object.
 * @param taskObj The unresolved task layout object.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param viewportWidth The viewport width.
 * @param scrollPosition The scroll position.
 * @param isRTL Whether the reading direction is rtl.
 * @returns The resolved task layout object.
 */
declare const getResolvedTaskObj: <K2>(taskObj: GanttTaskLayoutObj<K2>, viewportStartTime: number, viewportEndTime: number, viewportWidth: number, scrollPosition: number, isRTL: boolean) => {
    x: number;
    y: number;
    width: number;
    id: K2;
    renderIndex: number;
    index: number;
    rowIndex: number;
    height: number;
    borderRadius: string;
    fill: string;
    stroke: string;
    strokeWidth: number;
    isSelectable: boolean;
    isSelected: boolean;
    selectionEffect: {
        stroke: string;
        strokeWidth: number;
        padding: number;
    };
    hoverEffect: {
        stroke: string;
        strokeWidth: number;
        padding: number;
        shadow: {
            shadowColor: string;
            shadowOffsetX: number;
            shadowOffsetY: number;
            shadowBlur: number;
        };
    };
    focusEffect: {
        stroke: string;
        strokeWidth: number;
        padding: number;
    };
    startTime: number;
    endTime: number;
    overallStartTime: number;
    overallEndTime: number;
    rowLevel: number;
    previousAdjacentTaskObj?: GanttTaskLayoutObj<K2> | undefined;
    nextAdjacentTaskObj?: GanttTaskLayoutObj<K2> | undefined;
    labelObj?: {
        startTime: number;
        endTime: number;
        label: string;
        isInner: boolean;
        position: 'start' | 'center' | 'end';
    } | undefined;
};
/**
 * Gets the resolved rows data layout for the given viewport.
 * @param rowDataLayout The unresolved rows data layout object for all data.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param scrollPosition The scroll position.
 * @param viewportWidth The viewport width.
 * @param viewportHeight The viewport height.
 * @param isRTL Whether the reading direction is rtl.
 * @returns The resolved rows data layout for the given viewport.
 */
declare const getResolvedViewportLayout: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(rowDataLayout: ReturnType<typeof getRowDataLayout<K1, K2, D1, D2>>, viewportStartTime: number, viewportEndTime: number, scrollPosition: number, viewportWidth: number, viewportHeight: number, isRTL: boolean) => {
    spatialIndex: {
        tasks: import("flatbush").default;
    };
    gridlines: {
        horizontal: 'on' | 'off';
        vertical: 'on' | 'off';
    };
    horizontalGridlinesPos: number[] | undefined;
    rowData: D1[];
    allRowObjs: GanttRowLayoutObj<K1, K2>[];
    allIdTaskObjMap: Map<K2, GanttTaskLayoutObj<K2>>;
    allIdRowObjMap: Map<K1, GanttRowLayoutObj<K1, K2>>;
    rowPadding: number;
    rowObjs: GanttViewportRowLayoutObj<K1, K2>[];
    taskLabelObjs: GanttViewPortTaskLabelLayoutObj[];
    idTaskObjMap: Map<K2, GanttViewportTaskLayoutObj<K2>>;
    getTaskDataById: (id: K2) => D2 | undefined;
};
export { getRowDataLayout, getResolvedViewportLayout, getEffectTaskObjs, getNormalizedStartEnd, supportsSelection, getResolvedTaskObj };
export type { GanttRowLayoutObj, GanttTaskLayoutObj, GanttViewportRowLayoutObj, GanttViewportTaskLayoutObj, ViewportLayout };
