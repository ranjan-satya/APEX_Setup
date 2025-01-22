/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { StylingOptions } from '../../UNSAFE_BaseButton';
import { ButtonSetPosition, LayoutWidths, InputTypes } from './toggle.types';
import type { ToggleButtonTypes } from './toggle.types';
/**
 * Convert a child index to a position
 * ie, [start, middle, middle, end]
 */
export declare function indexToPosition(index: number, length: number): ButtonSetPosition;
/**
 * Returns the styling classes for a toggle button based on state
 * @param layoutWidth
 * @param isSelected
 * @param isSwitch
 * @param isInput
 * @param position
 * @param hasLabel
 * @param isIconOnly
 * @returns
 */
export declare function toggleStyling(layoutWidth: LayoutWidths | undefined, isSelected: boolean, isSwitch: boolean, isInput: boolean, isAdjacent?: boolean, position?: ButtonSetPosition, hasLabel?: boolean, isIconOnly?: boolean): StylingOptions[];
/**
 * Merge buttonset input type choices with prop toggle type
 * @param inputType
 * @param buttonSetInputType
 * @returns
 */
export declare function isMergedInputs(inputType: ToggleButtonTypes, buttonSetInputType?: InputTypes): boolean;
/**
 * Used to toggle the value in a ButtonSetItem.
 * A checkbox can have 0 or many selected.
 * @param value
 * @param buttonSetValue
 * @returns
 */
export declare function toggleButtonSetItem(value: string, buttonSetValue?: Array<string>): Array<string>;
