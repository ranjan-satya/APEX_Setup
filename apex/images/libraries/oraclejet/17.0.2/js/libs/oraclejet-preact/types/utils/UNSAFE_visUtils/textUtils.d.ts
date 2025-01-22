/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { Dimension } from '../UNSAFE_visTypes/common';
/**
 * Checks if the two dimensions are overlapping horizontally.
 * @param dimsA
 * @param dimsB
 * @returns
 */
export declare function isWidthOverlap(dimsA: Dimension, dimsB: Dimension): boolean;
/**
 * Checks if the two dimensions are overlapping vertically.
 * @param dimsA
 * @param dimsB
 * @returns
 */
export declare function isHeightOverlap(dimsA: Dimension, dimsB: Dimension): boolean;
