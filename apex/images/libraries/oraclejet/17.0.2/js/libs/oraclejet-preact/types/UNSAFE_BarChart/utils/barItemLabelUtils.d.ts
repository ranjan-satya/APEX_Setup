/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Dimension } from '../../utils/UNSAFE_visTypes/common';
export declare function getLabelProps(isHoriz: boolean, isRtl: boolean, isNegative: boolean, barDims: Dimension, dataLabelPosition: 'insideBarEdge' | 'outsideBarEdge' | 'center', labelDims?: Dimension): {
    y?: undefined;
    x?: undefined;
} | {
    y: number;
    x: number;
};
export declare function canFitLabel(isHoriz: boolean, labelDims: Dimension, barDims: Dimension, labelPos: 'insideBarEdge' | 'outsideBarEdge' | 'center'): boolean;
export declare const getStackLabelProps: (groupCenterCoord: number, valueCoord: number, isNegative: boolean, isHoriz: boolean, isRtl: boolean, labelDims: Dimension) => {
    y: number;
    x: number;
};
