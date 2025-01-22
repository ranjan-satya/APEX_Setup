/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { MeterBarProps } from './meterBar.types';
type MeterBarWithDimensionsProps = Omit<MeterBarProps, 'width' | 'height'> & {
    width?: number;
    height?: number;
};
export declare function MeterBarWithDimensions({ max, min, value, step, length, width, height, size, orientation, isTrackRendered, thresholdDisplay, indicatorSize, testId, ...props }: MeterBarWithDimensionsProps): import("preact").JSX.Element;
export {};
