/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
import { FormContextProps } from '../hooks/UNSAFE_useFormContext';
import { LayoutColumns, LayoutColumnSpan } from '../utils/UNSAFE_styles/Layout';
import { type TestIdProps } from "../hooks/UNSAFE_useTestId";
type Props = TestIdProps & {
    /**
     * Specifies if the FormLayout will dynamically adjust its columns to match the container size based on
     * defined container breakpoints.
     */
    columnBehavior?: 'responsive' | 'fixed';
    /**
     * The number of columns to display. In a 'responsive' layout, you will have the specified number of
     * columns or fewer, depending on the defined container breakpoints.
     */
    columns?: LayoutColumns;
    /**
     * Specifies how many columns to span in a FormLayout with direction === 'row'.
     */
    columnSpan?: LayoutColumnSpan;
    /**
     * The direction the children should be laid out, row first or column first.
     */
    direction?: 'row' | 'column';
    /**
     * Indicates if the form layout will use 100% of the container's width, and will ignore the theme's max column width.
     */
    isFullWidth?: boolean;
    /**
     * Indicates whether the form layout is readonly.
     */
    isReadonly?: FormContextProps['isReadonly'];
    /**
     * Specifies the label position.
     */
    labelEdge?: FormContextProps['labelEdge'];
    /**
     * Specifies the width of the start aligned label, ignored for top & inside aligned.
     */
    labelStartWidth?: FormContextProps['labelStartWidth'];
    /**
     * Specifies if start or top label text should wrap or truncate.
     */
    labelWrapping?: FormContextProps['labelWrapping'];
    /**
     * Specifies the density of the user assistance presentation.
     */
    userAssistanceDensity?: FormContextProps['userAssistanceDensity'];
    children?: ComponentChildren;
};
export declare const FormLayout: ({ columns, columnBehavior, columnSpan, direction, isFullWidth, isReadonly: propIsReadonly, labelEdge: propLabelEdge, labelStartWidth: propLabelStartWidth, labelWrapping: propLabelWrapping, userAssistanceDensity: propUserAssistanceDensity, children, testId }: Props) => import("preact").JSX.Element;
export {};
