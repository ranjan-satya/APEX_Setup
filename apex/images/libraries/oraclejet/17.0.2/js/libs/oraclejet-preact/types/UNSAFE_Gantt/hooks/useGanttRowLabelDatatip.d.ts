/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
import type { GanttRowLayoutObj } from '../utils/dataLayoutUtils';
import type { GanttProps, GanttRowData, GanttTaskData } from '../gantt.types';
type UseGanttRowLabelDatatipOptions<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>> = {
    targetRef: Ref<HTMLElement>;
    rowData: GanttProps<K2, D1, D2>['rows'];
    hoveredRowObj?: GanttRowLayoutObj<K1, K2>;
    focusedRowObj?: GanttRowLayoutObj<K1, K2>;
    currentRowLabelInteraction: 'hover' | 'focus' | 'none';
    rowAxisRegion: {
        x: number;
        y: number;
        w: number;
        h: number;
    };
};
/**
 * Hook that handles row label datatip.
 */
declare const useGanttRowLabelDatatip: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>({ targetRef, rowData, hoveredRowObj, focusedRowObj, currentRowLabelInteraction, rowAxisRegion }: UseGanttRowLabelDatatipOptions<K1, K2, D1, D2>) => {
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
export { useGanttRowLabelDatatip };
