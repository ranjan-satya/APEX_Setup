/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import Flatbush from 'flatbush';
type RowObj = {
    taskObjs: {
        overallStartTime: number;
        overallEndTime: number;
        y: number;
        height: number;
    }[];
};
type TimePoint = {
    time: number;
    y: number;
};
type SpatialIndex = {
    tasks: Flatbush;
};
/**
 * Gets all spatial indices of the component.
 * @param rowObjs The row layout objects (for the entier dataset).
 * @returns The spatial indices.
 */
declare const getSpatialIndex: (rowObjs: RowObj[]) => SpatialIndex;
/**
 * Returns the target task that overlaps with the given point.
 * @param rowObjs The row layout objects (for the entier dataset).
 * @param index The spatial index to query.
 * @param param2 The point.
 * @returns The target task.
 */
declare const queryTasksSpatialIndex: (rowObjs: RowObj[], index: SpatialIndex['tasks'], { time, y }: TimePoint) => {
    rowIndex: number;
    taskIndex: number;
} | undefined;
export { getSpatialIndex, queryTasksSpatialIndex };
