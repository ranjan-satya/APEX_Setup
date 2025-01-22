/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
import { OnTimeComponentViewportChange, TimeComponentScale, TimeComponentZoomParameters } from '../../PRIVATE_TimeComponent/timeComponent.types';
import { GanttRowData, GanttTaskData, OnGanttScrollPositionChange } from '../gantt.types';
import type { ViewportLayout } from '../utils/dataLayoutUtils';
type UsePanZoomGestureOptions<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>> = {
    captureTargetRef: Ref<HTMLDivElement>;
    width: number;
    height: number;
    viewportStartTime: number;
    viewportEndTime: number;
    majorAxisScale?: TimeComponentScale;
    minorAxisScale: TimeComponentScale;
    startTime: number;
    endTime: number;
    zoomParameters: TimeComponentZoomParameters;
    scrollPosition: number;
    dataBodyHeight: number;
    totalRowsHeight: number;
    viewportLayout: ViewportLayout<K1, K2, D1, D2>;
    onViewportChange?: OnTimeComponentViewportChange;
    onScrollPositionChange?: OnGanttScrollPositionChange;
    onCursorChange?: (detail: {
        cursor: 'grabbing' | 'grabbingUnset';
    }) => void;
    isPanDisabled?: boolean;
    isZoomDisabled?: boolean;
};
/**
 * Hook that handles pan/zoom related gestures on a Gantt.
 */
declare const useGanttPanZoomGestures: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>({ captureTargetRef, width, height, viewportStartTime, viewportEndTime, majorAxisScale, minorAxisScale, startTime, endTime, zoomParameters, scrollPosition, dataBodyHeight, totalRowsHeight, viewportLayout, onViewportChange, onScrollPositionChange, onCursorChange, isPanDisabled, isZoomDisabled }: UsePanZoomGestureOptions<K1, K2, D1, D2>) => {
    gestureProps: {};
};
export { useGanttPanZoomGestures };
