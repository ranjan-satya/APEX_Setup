/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
import type { OnTimeComponentViewportChange, TimeComponentZoomParameters } from '../PRIVATE_TimeComponent/timeComponent.types';
import type { getPanZoomCanvasLayout } from './utils/panZoomCanvasLayoutUtils';
import type { getResolvedTimeAxesLayout } from '../PRIVATE_TimeComponent/utils/timeAxisLayoutUtils';
import type { getResolvedHorizontalScrollbarLayout, getResolvedVerticalScrollbarLayout } from '../PRIVATE_TimeComponent/utils/scrollbarLayoutUtils';
import { getResolvedViewportLayout, type getRowDataLayout } from './utils/dataLayoutUtils';
import type { GanttCurrentTask, GanttProps, GanttRowData, GanttSelection as GanttSelectionProps, GanttTaskData, GanttTaskHover, OnGanttScrollPositionChange } from './gantt.types';
import { Size } from '../utils/UNSAFE_size';
type Props<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>> = {
    visRef: Ref<HTMLDivElement>;
    overlayControlsContainerRef: Ref<HTMLDivElement>;
    panZoomLayout: ReturnType<typeof getPanZoomCanvasLayout>;
    getTimeAxesLayout: ReturnType<typeof getResolvedTimeAxesLayout>;
    getHorizontalScrollbarLayout: ReturnType<typeof getResolvedHorizontalScrollbarLayout>;
    onHorizontalScrollChange: (newViewStartTime: number, newViewEndTime: number) => void;
    getVerticalScrollbarLayout: ReturnType<typeof getResolvedVerticalScrollbarLayout>;
    onVerticalScrollChange: (newScrollPosition: number) => void;
    rowAxisSeparator?: boolean;
    zoomParameters?: TimeComponentZoomParameters;
    zooming?: 'on' | 'off';
    isViewportDefined: boolean;
    onViewportChange?: OnTimeComponentViewportChange;
    getResolvedViewportLayout: typeof getResolvedViewportLayout;
    datatip?: GanttProps<K2, D1, D2>['datatip'];
    rowDataLayout: ReturnType<typeof getRowDataLayout<K1, K2, D1, D2>>;
    isRTL: boolean;
    scrollPosition: number;
    onScrollPositionChange?: OnGanttScrollPositionChange;
    width?: Size;
    height?: Size;
    currentTaskInteraction: 'hover' | 'focus' | 'none';
    ariaActive?: {
        dataId: K2;
        ariaId: string;
        type: 'task';
    };
} & GanttSelectionProps<K2, D2> & GanttTaskHover<K2> & GanttCurrentTask<K2>;
export declare function GanttView<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>({ visRef, overlayControlsContainerRef, panZoomLayout, getTimeAxesLayout, getHorizontalScrollbarLayout, onHorizontalScrollChange, getVerticalScrollbarLayout, onVerticalScrollChange, rowAxisSeparator, zoomParameters, zooming, isViewportDefined, onViewportChange, getResolvedViewportLayout, datatip, rowDataLayout, isRTL, scrollPosition, onScrollPositionChange, selectedIds, selectionMode, onSelectionChange, hoveredTaskId, onTaskHoverChange, currentTask, onCurrentTaskChange, currentTaskInteraction, ariaActive, width, height }: Props<K1, K2, D1, D2>): import("preact").JSX.Element;
export {};
