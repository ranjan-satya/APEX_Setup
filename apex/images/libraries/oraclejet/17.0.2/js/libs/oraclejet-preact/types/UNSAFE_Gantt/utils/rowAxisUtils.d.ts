/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { GanttRowData, GanttRowAxisProps, GanttTaskData } from '../gantt.types';
import type { getRowDataLayout } from './dataLayoutUtils';
type RowDataLayout<K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>> = ReturnType<typeof getRowDataLayout<K1, K2, D1, D2>>;
type RowAxisLabelRenderContext<D1> = Parameters<NonNullable<GanttRowAxisProps<D1>['labelRenderer']>>[0];
/**
 * Gets the default row axis label renderer.
 * @param param0
 * @returns The default renderer.
 */
declare const defaultRowAxisLabelRender: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>({ maxWidth, maxHeight, data: { label, labelStyle } }: RowAxisLabelRenderContext<D1>) => import("preact").JSX.Element;
/**
 * Gets the row label renderer context.
 * @param layoutObj The row layout object.
 * @param rowData The rows data.
 * @param maxWidth The max width of the row axis.
 * @returns The renderer context.
 */
declare const getRenderContext: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>(layoutObj: RowDataLayout<K1, K2, D1, D2>['rowObjs'][0], rowData: RowDataLayout<K1, K2, D1, D2>['rowData'], maxWidth: number) => RowAxisLabelRenderContext<D1>;
export { defaultRowAxisLabelRender, getRenderContext };
