/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
import { Property } from 'csstype';
import type { TimeComponentTimeAxis, OnTimeComponentViewportChange } from '../PRIVATE_TimeComponent/timeComponent.types';
import { Size } from '../utils/UNSAFE_size';
import { HTMLAttributesSignalExcluded } from 'src/utils/UNSAFE_attributeUtils';
import type { TestIdProps } from '../hooks/UNSAFE_useTestId';
import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
type GanttProps<K2, D1, D2> = TestIdProps & {
    /**
     * The data for the gantt rows.
     */
    rows: D1[];
    /**
     * An object that defines the row labels region.
     */
    rowAxis?: 'on' | GanttRowAxisProps<D1>;
    /**
     * The position of the major and minor axis.
     */
    axisPosition?: 'top' | 'bottom';
    /**
     * An object that describes the visibility of the horizontal and vertical gridlines.
     */
    gridlines?: {
        /**
         * The horizontal gridlines visibility.
         */
        horizontal: 'on' | 'off';
        /**
         * The vertical gridlines visibility.
         */
        vertical: 'on' | 'off';
    };
    /**
     * An object that defines the major time axis.
     */
    majorAxis?: TimeComponentTimeAxis;
    /**
     * An object that defines the minor time axis.
     */
    minorAxis: TimeComponentTimeAxis;
    /**
     * The start time of the Gantt.
     */
    start: string;
    /**
     * The end time of the Gantt.
     */
    end: string;
    /**
     * The start time of the Gantt's viewport.
     * If not specified, this will default to a value determined by the initial 'scale' of the minor axis and the width of the Gantt.
     */
    viewportStart?: string;
    /**
     * The end time of the Gantt's viewport.
     * If not specified, this will default to a value determined by the initial 'scale' of the minor axis and the width of the Gantt.
     */
    viewportEnd?: string;
    /**
     * The viewport change callback.
     */
    onViewportChange?: OnTimeComponentViewportChange;
    scrollPosition?: {
        /**
         * The vertical scroll position in pixels.
         */
        y?: number;
    };
    /**
     * The scroll position change callback.
     */
    onScrollPositionChange?: OnGanttScrollPositionChange;
    /**
     * Specifies whether zooming is allowed. When 'off', gestures that perform zooming are disabled, and zoom controls are not rendered.
     */
    zooming?: 'on' | 'off';
    /**
     * Datatip renderer. If undefined, a default datatip will be used.
     */
    datatip?: (context: GanttDatatipContext<D1, D2>) => {
        content?: ComponentChildren;
        borderColor?: Property.BorderColor;
    };
    /**
     * The width of the gantt. The default value for this is theme driven.
     */
    width?: Size;
    /**
     * The height of the gantt. The default value for this is theme driven.
     */
    height?: Size;
} & GanttAriaProps & GanttSelection<K2, D2>;
type GanttAriaProps = {
    /**
     * The aria-label of the gantt.
     * This will be used for the aria-label of the DOM element.
     */
    'aria-label'?: HTMLAttributesSignalExcluded['aria-label'];
    /**
     * One or more ids (separated by spaces) of elements that describe the gantt.
     * This will be used for the aria-describedby of the DOM element.
     */
    'aria-describedby'?: HTMLAttributesSignalExcluded['aria-describedby'];
    /**
     * One or more ids (separated by spaces) of elements that label the gantt.
     * This will be used for the aria-labelledby of the DOM element.
     */
    'aria-labelledby'?: HTMLAttributesSignalExcluded['aria-labelledby'];
};
type GanttLabelStyle = {
    /**
     * The label color.
     */
    color?: ColorProps['color'];
    /**
     * The label font family.
     */
    fontFamily?: Property.FontFamily;
    /**
     * The label font size.
     */
    fontSize?: Property.FontSize;
    /**
     * The label font style.
     */
    fontStyle?: Property.FontStyle;
    /**
     * The label font weight.
     */
    fontWeight?: Property.FontWeight;
    /**
     * The label text decoration.
     */
    textDecoration?: Property.TextDecoration;
};
type GanttSelection<K2, D2> = {
    /**
     * An array of selected task ids.
     */
    selectedIds?: K2[];
    /**
     * The selection mode of the gantt.
     */
    selectionMode?: 'single' | 'multiple' | 'none';
    /**
     * The callback to be fired when gantt selection is changed.
     */
    onSelectionChange?: (detail: {
        ids: K2[];
        data: (D2 | undefined)[];
    }) => void;
};
type GanttRowData<K1, D1, D2> = {
    /**
     * The id of the row.
     */
    id: K1;
    /**
     * The label of the row.
     */
    label?: string;
    /**
     * The label style.
     */
    labelStyle?: GanttLabelStyle;
    /**
     * The label to be used for accessibility purposes.
     */
    accessibleLabel?: string;
    /**
     * The height of the row in pixels.
     * If specified, tasks are vertically middle aligned within the row.
     * If not specified, a default height is calculated based on the height of the tasks within the row.
     */
    height?: number;
    /**
     * The tasks associated with the row.
     */
    tasks: D2[];
    /**
     * The data for child rows.
     */
    rows?: D1[];
};
type GanttTaskData<K2> = {
    /**
     * The id of the task.
     */
    id: K2;
    /**
     * The height of the task in pixels.
     */
    height?: number;
    /**
     * The border radius of the task.
     */
    borderRadius?: Property.BorderRadius;
    /**
     * The fill color of the task.
     */
    color?: ColorProps['color'];
    /**
     * The label of the task.
     */
    label?: string;
    /**
     * The label style.
     */
    labelStyle?: GanttLabelStyle;
    /**
     * The label to be used for accessibility purposes.
     */
    accessibleLabel?: string;
} & ({
    /**
     * The start time of the task.
     */
    start: string;
    /**
     * The end time of the task.
     * Optional if task is a single date event and start time is specified.
     */
    end?: string;
} | {
    /**
     * The start time of the task.
     * Optional if task is a single date event and end time is specified.
     */
    start?: string;
    /**
     * The end time of the task.
     */
    end: string;
});
type GanttRowAxisProps<D1> = {
    /**
     * A function that returns the label content.
     */
    labelRenderer?: (context: GanttRowAxisLabelContext<D1>) => ComponentChildren;
    /**
     * Defines the width of the region in pixels (e.g. '50px') or percent (e.g. '15%') of the component width.
     * If 'max-content' is specified, then the intrinsic width of the widest label content is used.
     * Default labels will truncate to fit.
     */
    width?: `${number}%` | `${number}px` | 'max-content';
    /**
     * Defines the maximum width of the region in pixels (e.g. '50px') or percent (e.g. '15%') of the component width.
     * If 'none' is specified, then the width has no maximum value.
     * Default labels will truncate to fit.
     */
    maxWidth?: `${number}%` | `${number}px` | 'none';
};
type GanttRowAxisLabelContext<D1> = {
    /**
     * The maximum available width in pixels, as constrained by the rowAxis.width and rowAxis.maxWidth values.
     * If rowAxis.width is 'max-content' and rowAxis.maxWidth is 'none', then this is -1.
     */
    maxWidth: number;
    /**
     * The maximum available height in pixels.
     */
    maxHeight: number;
    /**
     * The data of the row.
     */
    data: D1;
};
type GanttDatatipContext<D1, D2> = {
    /**
     * The data of the target task.
     */
    data: D2;
    /**
     * The data of the row the target task belongs to.
     */
    rowData: D1;
};
type OnGanttScrollPositionChange = (detail: {
    y: number;
}) => void;
type GanttTaskHover<K2> = {
    /**
     * The hovered task id.
     */
    hoveredTaskId?: K2;
    /**
     * The callback to be fired when hover target changed.
     */
    onTaskHoverChange: (detail: {
        id?: K2;
    }) => void;
};
type GanttCurrentTask<K2> = {
    /**
     * The current task.
     */
    currentTask?: {
        id: K2;
        isFocused: boolean;
    };
    /**
     * The callback to be fired when current task changed.
     */
    onCurrentTaskChange: (detail: {
        id: K2;
        isFocused: boolean;
    }) => void;
};
type GanttRowLabelHover<K1> = {
    /**
     * The hovered row label id.
     */
    hoveredRowLabelId?: K1;
    /**
     * The callback to be fired when hover target changed.
     */
    onRowLabelHoverChange: (detail: {
        id?: K1;
    }) => void;
};
type GanttCurrentRowLabel<K1> = {
    /**
     * The current row label.
     */
    currentRowLabel?: {
        id: K1;
        isFocused: boolean;
    };
    /**
     * The callback to be fired when current row label changed.
     */
    onCurrentRowLabelChange: (detail: {
        id: K1;
        isFocused: boolean;
    }) => void;
};
export type { GanttProps, GanttSelection, GanttLabelStyle, GanttRowData, GanttTaskData, GanttRowAxisProps, GanttDatatipContext, OnGanttScrollPositionChange, GanttTaskHover, GanttCurrentTask, GanttRowLabelHover, GanttCurrentRowLabel, GanttRowAxisLabelContext };
