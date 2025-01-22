/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Ref } from 'preact/hooks';
import type { GanttCurrentRowLabel, GanttCurrentTask, GanttRowData, GanttSelection as GanttSelectionProps, GanttTaskData } from '../gantt.types';
import type { getRowDataLayout } from '../utils/dataLayoutUtils';
/**
 * Hook that handles keyboard gestures on a Gantt.
 */
type UseGanttKeyboardOptions<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>> = {
    visRef: Ref<HTMLDivElement>;
    rowAxisRef: Ref<HTMLDivElement>;
    rowDataLayout: ReturnType<typeof getRowDataLayout<K1, K2, D1, D2>>;
    navigationModes: {
        tasks: {
            currentItem: GanttCurrentTask<K2>['currentTask'];
            onCurrentItemChange: GanttCurrentTask<K2>['onCurrentTaskChange'];
        };
        rowLabels: {
            currentItem: GanttCurrentRowLabel<K1>['currentRowLabel'];
            onCurrentItemChange: GanttCurrentRowLabel<K1>['onCurrentRowLabelChange'];
        };
    };
    selectionProps: GanttSelectionProps<K2, D2>;
    isRTL: boolean;
    isDisabled?: boolean;
};
declare const useGanttKeyboard: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>({ visRef, rowAxisRef, rowDataLayout, navigationModes, selectionProps, isRTL, isDisabled }: UseGanttKeyboardOptions<K1, K2, D1, D2>) => {};
export { useGanttKeyboard };
