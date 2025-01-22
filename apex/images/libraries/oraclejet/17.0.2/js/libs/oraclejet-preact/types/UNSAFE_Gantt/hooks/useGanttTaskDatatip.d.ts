/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
import type { GanttViewportTaskLayoutObj } from '../utils/dataLayoutUtils';
import type { GanttProps, GanttRowData, GanttTaskData } from '../gantt.types';
type UseGanttTaskDatatipOptions<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>> = {
    targetRef: Ref<HTMLElement>;
    datatip?: GanttProps<K2, D1, D2>['datatip'];
    rowData: GanttProps<K2, D1, D2>['rows'];
    dateFormatter: (date: string) => string;
    hoveredTaskObj?: GanttViewportTaskLayoutObj<K2>;
    focusedTaskObj?: GanttViewportTaskLayoutObj<K2>;
    currentTaskInteraction: 'hover' | 'focus' | 'none';
    dataBodyRegion: {
        x: number;
        y: number;
        w: number;
        h: number;
    };
};
/**
 * Hook that handles task datatip.
 */
declare const useGanttTaskDatatip: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>({ targetRef, datatip, rowData, dateFormatter, hoveredTaskObj, focusedTaskObj, currentTaskInteraction, dataBodyRegion }: UseGanttTaskDatatipOptions<K1, K2, D1, D2>) => {
    datatipContent: import("preact").JSX.Element | null;
    datatipProps: {
        'aria-describedby': string;
        onPointerEnter: (event: PointerEvent) => void;
        onPointerLeave: () => void;
        onPointerMove: (event: PointerEvent) => void;
        onFocus: (event: FocusEvent) => void;
        onShowFocusDatatip: () => void;
    };
};
export { useGanttTaskDatatip };
