import { BundleType } from '../../resources/nls/bundle';
import type { GanttProps, GanttRowData, GanttTaskData } from '../gantt.types';
import { GanttRowLayoutObj, GanttTaskLayoutObj } from './dataLayoutUtils';
/**
 * Gets the aria label for the task.
 * @param taskObj The task layout object.
 * @param rowData The rows data.
 * @param dateFormatter The date formatter.
 * @param translations The translations bundle.
 * @returns The aria label for the task.
 */
declare const getTaskAriaLabel: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(taskObj: GanttTaskLayoutObj<K2>, rowData: GanttProps<K2, D1, D2>['rows'], dateFormatter: (date: string) => string, translations: BundleType) => string;
/**
 * Gets the aria label for the row label
 * @param rowObj The row layout object.
 * @param rowData The rows data.
 * @returns The aria label for the row label.
 */
declare const getRowLabelAriaLabel: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(rowObj: GanttRowLayoutObj<K1, K2>, rowData: GanttProps<K2, D1, D2>['rows']) => string | undefined;
export { getTaskAriaLabel, getRowLabelAriaLabel };
