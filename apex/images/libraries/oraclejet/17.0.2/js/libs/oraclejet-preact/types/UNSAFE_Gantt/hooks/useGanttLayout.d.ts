/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { GanttProps, GanttRowData, GanttTaskData } from '../gantt.types';
/**
 * Hook that computes layout related information for the Gantt.
 */
declare const useGanttLayout: <K1, K2, D1 extends GanttRowData<K1, D1, D2>, D2 extends GanttTaskData<K2>>({ rowAxis: rowAxisProps, gridlines: { horizontal: gridlinesHorizontal, vertical: gridlinesVertical }, axisPosition, minorAxis, majorAxis, start, end, viewportStart, viewportEnd, onViewportChange, scrollPosition: { y: scrollPosition }, onScrollPositionChange, rows, selectedIds, selectionMode }: Omit<GanttProps<K2, D1, D2>, 'width' | 'height'>) => {
    isRTL: boolean;
    layoutContent: import("preact").JSX.Element;
    isValidConfig: boolean;
    isReady: boolean;
    scrollPosition?: undefined;
    panZoomLayout?: undefined;
    withRowAxisLayout?: undefined;
    getTimeAxesLayout?: undefined;
    zoomParameters?: undefined;
    rowDataLayout?: undefined;
    rowAxisLayout?: undefined;
    getResolvedViewportLayout?: undefined;
    getHorizontalScrollbarLayout?: undefined;
    onHorizontalScrollChange?: undefined;
    getVerticalScrollbarLayout?: undefined;
    onVerticalScrollChange?: undefined;
} | {
    scrollPosition: number;
    panZoomLayout: {
        overlayControlsPosition: "topEnd";
        verticalControlTopGap: string;
        verticalControlBottomGap: string;
    } | {
        overlayControlsPosition: "bottomEnd";
        verticalControlTopGap: string;
        verticalControlBottomGap: string;
    };
    withRowAxisLayout: {
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
    } | undefined;
    getTimeAxesLayout: (width: number) => {
        position: "bottom" | "top";
        startTime: number;
        endTime: number;
        viewportStartTime: number;
        viewportEndTime: number;
        width: number;
        majorAxis: {
            font: import("../../hooks/PRIVATE_useTextDimensions").Font;
            labelPosition: "center" | "start";
            labels: string[];
            labelTicks: number[];
            labelPositions: number[];
            isLabelTruncated: boolean[];
            isIntervalStartTruncated: boolean;
            intervalWidths: number[];
            gridTicksPos: number[];
            isRTL: boolean;
            majorGridTicksPos: number[];
            minorGridTicksPos: undefined;
            variant: "major";
            height: number;
            zoomOrder: import("../../PRIVATE_TimeComponent/timeComponent.types").TimeComponentScale[];
            zoomOrderIndex: number;
            width: number;
        } | undefined;
        minorAxis: {
            font: import("../../hooks/PRIVATE_useTextDimensions").Font;
            labelPosition: "center" | "start";
            labels: string[];
            labelTicks: number[];
            labelPositions: number[];
            isLabelTruncated: boolean[];
            isIntervalStartTruncated: boolean;
            intervalWidths: number[];
            gridTicksPos: number[];
            isRTL: boolean;
            majorGridTicksPos: number[] | undefined;
            minorGridTicksPos: number[];
            variant: "minor";
            height: number;
            zoomOrder: import("../../PRIVATE_TimeComponent/timeComponent.types").TimeComponentScale[];
            zoomOrderIndex: number;
            width: number;
        };
    };
    zoomParameters: {
        getZoomOrderViewDurationThresholds: (width: number) => number[];
        minorAxisZoomOrder: import("../../PRIVATE_TimeComponent/timeComponent.types").TimeComponentScale[];
        minZoomViewportDuration: number;
        maxZoomViewportDuration: number;
        startTime: number;
        endTime: number;
        viewportStartTime: number;
        viewportEndTime: number;
        minorAxisZoomOrderIndex: number;
        majorAxisZoomOrder: import("../../PRIVATE_TimeComponent/timeComponent.types").TimeComponentScale[] | undefined;
        majorAxisZoomOrderIndex: number | undefined;
    } | undefined;
    rowDataLayout: {
        rowData: D1[];
        rowObjs: import("../utils/dataLayoutUtils").GanttRowLayoutObj<K1, K2>[];
        rowPadding: number;
        totalRowsHeight: number;
        gridlines: {
            horizontal: "off" | "on";
            vertical: "off" | "on";
        };
        spatialIndex: {
            tasks: import("flatbush").default;
        };
        idRowObjMap: Map<K1, import("../utils/dataLayoutUtils").GanttRowLayoutObj<K1, K2>>;
        idTaskObjMap: Map<K2, import("../utils/dataLayoutUtils").GanttTaskLayoutObj<K2>>;
        getTaskDataById: (id: K2) => D2 | undefined;
    };
    rowAxisLayout: {
        labelPaddingInlineStart: number;
        labelPaddingInlineEnd: number;
        rowData: D1[];
        rowObjs: import("../utils/dataLayoutUtils").GanttRowLayoutObj<K1, K2>[];
        idRowObjMap: Map<K1, import("../utils/dataLayoutUtils").GanttRowLayoutObj<K1, K2>>;
        isHorizontalGridlinesVisible: boolean;
    };
    getResolvedViewportLayout: <K1_1, K2_1, D1_1 extends GanttRowData<K1_1, D1_1, D2_1>, D2_1 extends GanttTaskData<K2_1>>(rowDataLayout: {
        rowData: D1_1[];
        rowObjs: import("../utils/dataLayoutUtils").GanttRowLayoutObj<K1_1, K2_1>[];
        rowPadding: number;
        totalRowsHeight: number;
        gridlines: {
            horizontal: "off" | "on";
            vertical: "off" | "on";
        };
        spatialIndex: {
            tasks: import("flatbush").default;
        };
        idRowObjMap: Map<K1_1, import("../utils/dataLayoutUtils").GanttRowLayoutObj<K1_1, K2_1>>;
        idTaskObjMap: Map<K2_1, import("../utils/dataLayoutUtils").GanttTaskLayoutObj<K2_1>>;
        getTaskDataById: (id: K2_1) => D2_1 | undefined;
    }, viewportStartTime: number, viewportEndTime: number, scrollPosition: number, viewportWidth: number, viewportHeight: number, isRTL: boolean) => {
        spatialIndex: {
            tasks: import("flatbush").default;
        };
        gridlines: {
            horizontal: "off" | "on";
            vertical: "off" | "on";
        };
        horizontalGridlinesPos: number[] | undefined;
        rowData: D1_1[];
        allRowObjs: import("../utils/dataLayoutUtils").GanttRowLayoutObj<K1_1, K2_1>[];
        allIdTaskObjMap: Map<K2_1, import("../utils/dataLayoutUtils").GanttTaskLayoutObj<K2_1>>;
        allIdRowObjMap: Map<K1_1, import("../utils/dataLayoutUtils").GanttRowLayoutObj<K1_1, K2_1>>;
        rowPadding: number;
        rowObjs: import("../utils/dataLayoutUtils").GanttViewportRowLayoutObj<K1_1, K2_1>[];
        taskLabelObjs: {
            x: number;
            y: number;
            width: number;
            height: number;
            label: string;
            isInner: boolean;
            textAlign: "left" | "right" | "center";
            labelStyle?: {
                color?: import("csstype").Property.Color | undefined;
                fontFamily?: import("csstype").Property.FontFamily | undefined;
                fontSize?: import("csstype").Property.FontSize<0 | (string & {})> | undefined;
                fontStyle?: import("csstype").Property.FontStyle | undefined;
                fontWeight?: import("csstype").Property.FontWeight | undefined;
                textDecoration?: import("csstype").Property.TextDecoration<0 | (string & {})> | undefined;
            } | undefined;
        }[];
        idTaskObjMap: Map<K2_1, import("../utils/dataLayoutUtils").GanttViewportTaskLayoutObj<K2_1>>;
        getTaskDataById: (id: K2_1) => D2_1 | undefined;
    };
    getHorizontalScrollbarLayout: (width: number) => {
        thumbWidth: number;
        thumbLeft: number | undefined;
        thumbRight: number | undefined;
        draggableRegion: {
            xMin: number;
            xMax: number;
            yMin: number;
            yMax: number;
        };
        getNewRange: (newThumbLeft: number) => {
            newMin: number;
            newMax: number;
        };
    };
    onHorizontalScrollChange: (newViewStartTime: number, newViewEndTime: number) => void;
    getVerticalScrollbarLayout: (height: number) => {
        thumbHeight: number;
        thumbTop: number;
        draggableRegion: {
            xMin: number;
            xMax: number;
            yMin: number;
            yMax: number;
        };
        getNewRange: (newThumbTop: number) => {
            newMin: number;
            newMax: number;
        };
    };
    onVerticalScrollChange: (newScrollPosition: number) => void;
    isRTL: boolean;
    layoutContent: import("preact").JSX.Element;
    isValidConfig: true;
    isReady: boolean;
};
export { useGanttLayout };
