/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
import { Ref } from 'preact/hooks';
import { getResolvedTimeAxesLayout } from '../PRIVATE_TimeComponent/utils/timeAxisLayoutUtils';
import { OnTimeComponentViewportChange, TimeComponentZoomParameters } from '../PRIVATE_TimeComponent/timeComponent.types';
import { getEffectTaskObjs, getResolvedViewportLayout, type ViewportLayout, type getRowDataLayout } from './utils/dataLayoutUtils';
import type { GanttCurrentTask, GanttProps, GanttRowData, GanttSelection as GanttSelectionProps, GanttTaskData, GanttTaskHover, OnGanttScrollPositionChange } from './gantt.types';
type GetTimeAxesLayout = ReturnType<typeof getResolvedTimeAxesLayout>;
type MajorAxisLayout = Omit<NonNullable<ReturnType<GetTimeAxesLayout>['majorAxis']>, 'gridTicksPos'>;
type MinorAxisLayout = Omit<ReturnType<GetTimeAxesLayout>['minorAxis'], 'gridTicksPos'>;
type Props<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>> = {
    innerRef: Ref<HTMLDivElement>;
    isRTL: boolean;
    scrollPosition: number;
    onScrollPositionChange?: OnGanttScrollPositionChange;
    isViewportDefined: boolean;
    onViewportChange?: OnTimeComponentViewportChange;
    zoomParameters?: TimeComponentZoomParameters;
    zooming: 'on' | 'off';
    getTimeAxesLayout: ReturnType<typeof getResolvedTimeAxesLayout>;
    getResolvedViewportLayout: typeof getResolvedViewportLayout<K1, K2, D1, D2>;
    rowDataLayout: ReturnType<typeof getRowDataLayout<K1, K2, D1, D2>>;
    rowAxisSeparator: boolean;
    datatip?: GanttProps<K2, D1, D2>['datatip'];
    majorAxis: (layout: MajorAxisLayout) => ComponentChildren;
    minorAxis: (layout: MinorAxisLayout) => ComponentChildren;
    dataBody: (layout: {
        width: number;
        height: number;
        viewportLayout: ViewportLayout<K1, K2, D1, D2>;
        minorAxisLayout: MinorAxisLayout;
        effectsLayout: ReturnType<typeof getEffectTaskObjs<K2, D2>>;
        dateFormatter: (date: string) => string;
        ariaActiveTask?: {
            dataId: K2;
            ariaId: string;
            type: 'task';
        };
    }) => ComponentChildren;
    currentTaskInteraction: 'hover' | 'focus' | 'none';
    ariaActive?: {
        dataId: K2;
        ariaId: string;
        type: 'task';
    };
} & GanttSelectionProps<K2, D2> & GanttTaskHover<K2> & GanttCurrentTask<K2>;
export declare function GanttTimeAxisDataBody<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>({ innerRef, isRTL, scrollPosition, onScrollPositionChange, isViewportDefined, onViewportChange, zoomParameters, zooming, selectedIds, selectionMode, onSelectionChange, hoveredTaskId, onTaskHoverChange, currentTask, onCurrentTaskChange, currentTaskInteraction, ariaActive, getTimeAxesLayout, getResolvedViewportLayout, rowDataLayout, rowAxisSeparator, datatip, majorAxis, minorAxis, dataBody }: Props<K1, K2, D1, D2>): import("preact").JSX.Element;
export {};
