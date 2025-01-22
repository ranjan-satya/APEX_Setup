/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { LineAreaChartProps, LineAreaItem } from './lineAreaChart.types';
/**
 * The LineAreaChart displays information graphically using lines and filled areas, making relationships among the data easier to understand.
 */
export declare function LineAreaChart<K extends string | number, D extends LineAreaItem<K>>({ width, height, selectedIds, hiddenIds, highlightedIds, hideAndShowBehavior, orientation, yAxis, series, groups, isStacked, getDataItem, selectionMode, drilling, type, ...props }: LineAreaChartProps<K, D>): import("preact").JSX.Element;
