/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ColorProps } from '../../UNSAFE_interpolations/colors';
export type DataCursorPosition = {
    x?: number;
    y?: number;
};
export type OnDataCursorPositionChange = (position: DataCursorPosition) => void;
export type DataCursorStyle = {
    /**
     * The behavior of the data cursor.
     */
    behavior?: 'smooth' | 'snap';
    /**
     * The color of the data cursor line.
     */
    lineColor?: ColorProps['color'];
    /**
     * The style of the data cursor line.
     */
    lineStyle?: 'solid' | 'dotted' | 'dashed';
    /**
     * The width of the data cursor in pixel.
     */
    lineWidth?: number;
    /**
     * Whether or not the marker is displayed for the data cursor.
     */
    isMarkerDisplayed?: boolean;
};
export type DataCursorProps = {
    /**
     * Object type that specifies the position of the data cursor. Used for synchronizing data cursors across multiple charts.
     */
    dataCursorPosition?: DataCursorPosition;
    /**
     *
     * The callback to be invoked when the data cursor position changes. This function
     * should update the data cursor position.
     */
    onDataCursorPositionChange?: OnDataCursorPositionChange;
    /**
     * Defines whether the data cursor is enabled
     */
    isDataCursorEnabled?: boolean;
    /**
     * Object type that specifies default styles for data cursor.
     */
    dataCursorStyle?: DataCursorStyle;
};
