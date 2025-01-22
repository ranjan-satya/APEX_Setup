/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { GanttRowAxisProps } from '../gantt.types';
import { getUnresolvedTimeAxesLayout } from '../../PRIVATE_TimeComponent/utils/timeAxisLayoutUtils';
type RowAxisWidth<D1> = NonNullable<GanttRowAxisProps<D1>['width']>;
type RowAxisMaxWidth<D1> = NonNullable<GanttRowAxisProps<D1>['maxWidth']>;
type RowAxisLabel<D1> = NonNullable<GanttRowAxisProps<D1>['labelRenderer']>;
/**
 * Gets the row axis layout.
 * @param timeAxesLayout The time axes layout.
 * @param rowAxisProps The row axis props.
 * @returns
 */
declare const getWithRowAxisLayout: <D1>(timeAxesLayout: ReturnType<typeof getUnresolvedTimeAxesLayout>, rowAxisProps: {
    width: RowAxisWidth<D1>;
    maxWidth: RowAxisMaxWidth<D1>;
    label: RowAxisLabel<D1>;
}) => {
    resolvedRowAxisWidth: {
        value: number;
        suffix: "px";
    } | {
        value: number;
        suffix: "%";
    } | {
        value: number;
        suffix: undefined;
    };
    resolvedRowAxisMaxWidth: {
        value: number;
        suffix: "px";
    } | {
        value: number;
        suffix: "%";
    } | {
        value: number;
        suffix: undefined;
    };
    label: (context: import("../gantt.types").GanttRowAxisLabelContext<D1>) => import("preact").ComponentChildren;
    rowAxisTopGap: string;
    rowAxisBottomGap: string;
} | {
    resolvedRowAxisWidth: {
        value: number;
        suffix: "px";
    } | {
        value: number;
        suffix: "%";
    } | {
        value: number;
        suffix: undefined;
    };
    resolvedRowAxisMaxWidth: {
        value: number;
        suffix: "px";
    } | {
        value: number;
        suffix: "%";
    } | {
        value: number;
        suffix: undefined;
    };
    label: (context: import("../gantt.types").GanttRowAxisLabelContext<D1>) => import("preact").ComponentChildren;
    rowAxisTopGap: string;
    rowAxisBottomGap: string;
};
export { getWithRowAxisLayout };
