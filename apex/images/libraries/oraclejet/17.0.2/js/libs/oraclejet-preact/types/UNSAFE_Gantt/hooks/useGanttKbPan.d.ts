import { useKbPan } from '../../PRIVATE_TimeComponent/hooks/useKbPan';
import { type ViewportLayout } from '../utils/dataLayoutUtils';
import type { GanttRowData, GanttTaskData } from '../gantt.types';
type UseGanttKbPan<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>> = Parameters<typeof useKbPan>[0] & {
    viewportLayout: ViewportLayout<K1, K2, D1, D2>;
    dataBodyWidth: number;
    dataBodyHeight: number;
    viewportStartTime: number;
    viewportEndTime: number;
    scrollPosition: number;
};
/**
 * Hook that handles keyboard panning related gestures on a Gantt.
 */
declare const useGanttKbPan: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>({ viewportLayout, dataBodyWidth, dataBodyHeight, viewportStartTime, viewportEndTime, scrollPosition, ...panOptions }: UseGanttKbPan<K1, K2, D1, D2>) => {};
export { useGanttKbPan };
