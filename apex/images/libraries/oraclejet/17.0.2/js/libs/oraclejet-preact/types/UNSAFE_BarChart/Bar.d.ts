/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
type BarProps = {
    x: number;
    y: number;
    width: number;
    height: number;
    isSelected: boolean;
    isFocused: boolean;
    isDimmed: boolean;
    activeId?: string;
    isPointerEnabled: boolean;
    fill: ColorProps['color'];
    stroke?: ColorProps['color'];
    strokeWidth?: number;
    seriesIndex: number;
    groupIndex: number;
    'aria-label'?: string;
};
/**
 * The rect representing the bar item.
 * @param props
 * @returns
 */
export declare function Bar(props: BarProps): import("preact").JSX.Element;
/**
 * The selected or hovered selected bar.
 */
export declare function InteractiveBar(props: BarProps): import("preact").JSX.Element;
export {};
