/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
export type CategoriesItem = {
    id: string | number;
    categories: string[];
};
/**
 * Returns the flex order of the legend and chart in the flex container.
 * @param legendPos The legend position.
 * @returns
 */
export declare function getFlexOrder(legendPos: 'start' | 'top' | 'bottom' | 'end'): {
    chartOrder: number;
    legendOrder: number;
};
/**
 * Returns the legend flex align and justify prop.
 */
export declare function getLegendFlexProps(legendPos: 'start' | 'end' | 'top' | 'bottom'): {
    justifyContent: "center" | "end" | "start";
    alignItem: "center" | "end" | "start";
};
