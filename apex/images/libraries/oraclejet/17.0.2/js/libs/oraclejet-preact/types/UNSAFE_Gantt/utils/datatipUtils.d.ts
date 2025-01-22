import type { BundleType } from '../../resources/nls/bundle';
import type { GanttDatatipContext, GanttProps, GanttRowData, GanttTaskData } from '../gantt.types';
/**
 * Gets the default datatip renderer.
 * @param options Relevant information.
 * @returns The default datatip renderer.
 */
declare const getDefaultDatatipRenderer: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(options: {
    translations: BundleType;
    dateFormatter: (date: string) => string;
    isRTL: boolean;
}) => NonNullable<GanttProps<K2, D1, D2>['datatip']>;
/**
 * Gets the datatip renderer context.
 * @param rows The rows data.
 * @param layoutObj The task layout object.
 * @returns
 */
declare const getRenderContext: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(rows: GanttProps<K2, D1, D2>['rows'], layoutObj: {
    index: number;
    rowIndex: number;
}) => GanttDatatipContext<D1, D2>;
export { getDefaultDatatipRenderer, getRenderContext };
