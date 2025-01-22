/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { GanttRowData, GanttTaskData } from "../gantt.types";
import type { getRowDataLayout } from './dataLayoutUtils';
type RowDataLayout<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>> = ReturnType<typeof getRowDataLayout<K1, K2, D1, D2>>;
/**
 * Gets the default task to initially receive logical focus upon component focus.
 * @param param0 The (unresolved) row data layout.
 * @returns The task (if there are any) to receive focus.
 */
declare const getDefaultInitialFocusTask: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>({ rowObjs }: RowDataLayout<K1, K2, D1, D2>) => {
    id: K2;
    isFocused: boolean;
} | undefined;
/**
 * Gets the next navigable task from the current task.
 * @param currentTask The current task.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The next navigable task.
 */
declare const getNextTaskNavigable: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(currentTask: K2, rowDataLayout: RowDataLayout<K1, K2, D1, D2>) => K2 | undefined;
/**
 * Gets the previous navigable task from the current task.
 * @param currentTask The current task.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The previous navigable task.
 */
declare const getPrevTaskNavigable: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(currentTask: K2, rowDataLayout: RowDataLayout<K1, K2, D1, D2>) => K2 | undefined;
/**
 * Gets the navigable task above the current task.
 * @param currentTask The current task.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The navigable task above.
 */
declare const getAboveTaskNavigable: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(currentTask: K2, rowDataLayout: RowDataLayout<K1, K2, D1, D2>) => K2 | undefined;
/**
 * Gets the navigable task below the current task.
 * @param currentTask The current task.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The navigable task below.
 */
declare const getBelowTaskNavigable: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(currentTask: K2, rowDataLayout: RowDataLayout<K1, K2, D1, D2>) => K2 | undefined;
/**
 * Gets the navigable row label above the current row label.
 * @param currentRowLabel The current row label.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The navigable row label above.
 */
declare const getAboveRowLabelNavigable: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(currentRowLabel: K1, rowDataLayout: RowDataLayout<K1, K2, D1, D2>) => K1 | undefined;
/**
 * Gets the navigable row label below the current row label.
 * @param currentRowLabel The current row label.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The navigable row label below.
 */
declare const getBelowRowLabelNavigable: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(currentRowLabel: K1, rowDataLayout: RowDataLayout<K1, K2, D1, D2>) => K1 | undefined;
/**
 * Gets the row label navigable from the current task.
 * @param currentTask The current task.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The row label navigable from the current task.
 */
declare const getRowLabelNavigableFromTask: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(currentTask: K2, rowDataLayout: RowDataLayout<K1, K2, D1, D2>) => K1;
/**
 * Gets the task navigable from the current row label.
 * @param currentRowLabel The current row label.
 * @param rowDataLayout The (unresolved) row data layout.
 * @param currentTask If any, the last current task (e.g. the last focused task).
 * @returns The task navigable from the current row label.
 */
declare const getTaskNavigableFromRowLabel: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(currentRowLabel: K1, rowDataLayout: RowDataLayout<K1, K2, D1, D2>, currentTask?: K2) => K2 | undefined;
/**
 * Gets the dx and dy necessary to pan the given region into view.
 * @param region The target region to pan into view.
 * @param viewportRegion The viewport region.
 * @param isRTL Whether the reading direction is rtl.
 * @param xPriority The side in the x direction to prioritize scroll into view.
 * @param yPriority The side in the y direction to prioritize scroll into view.
 * @param overShoot The extra amount of space to pan by.
 * @returns The dx and dy values.
 */
declare const getPanIntoViewValues: (region: {
    x: number;
    y: number;
    w: number;
    h: number;
}, viewportRegion: {
    x: number;
    y: number;
    w: number;
    h: number;
}, isRTL: boolean, xPriority?: 'start' | 'end' | 'auto', yPriority?: 'top' | 'bottom' | 'auto', overShoot?: number) => {
    dx: number;
    dy: number;
};
export { getDefaultInitialFocusTask, getNextTaskNavigable, getPrevTaskNavigable, getAboveTaskNavigable, getBelowTaskNavigable, getPanIntoViewValues, getAboveRowLabelNavigable, getBelowRowLabelNavigable, getRowLabelNavigableFromTask, getTaskNavigableFromRowLabel };
