/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { MeterProps } from './meterCircle.types';
type SizedMeterProps = MeterProps & {
    size?: 'sm' | 'md' | 'lg';
};
/**
 * A Meter circle displays information graphically in a circular bar, highlighting a specific metric value's progress in relation to its min, max, or thresholds.
 */
export declare function SizedMeterCircle({ max, min, value, step, size, startAngle, angleExtent, isTrackRendered, thresholdDisplay, indicatorSize, testId, ...props }: SizedMeterProps): import("preact").JSX.Element;
export {};
