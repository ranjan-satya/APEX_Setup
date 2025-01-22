/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
import type { GridProps } from '../utils/UNSAFE_interpolations/grid';
import type { BoxAlignmentProps } from '../utils/UNSAFE_interpolations/boxalignment';
import { TestIdProps } from "../hooks/UNSAFE_useTestId";
import { HTMLAttributesSignalExcluded } from "../utils/UNSAFE_attributeUtils";
type Props = GridProps & BoxAlignmentProps & TestIdProps & {
    /**
     * The aria role for the Grid
     */
    role?: HTMLAttributesSignalExcluded['role'];
    /**
     * aria-label for this Grid
     */
    'aria-label'?: HTMLAttributesSignalExcluded['aria-label'];
    /**
     * aria-hidden for this Grid
     */
    'aria-hidden'?: HTMLAttributesSignalExcluded['aria-hidden'];
    /**
     * The children to put in the grid.
     */
    children?: ComponentChildren;
};
/**
 * An implicit grid. Resize your browser to see how items reflow.
 */
export declare const Grid: ({ "aria-label": ariaLabel, "aria-hidden": ariaHidden, children, testId, role, ...props }: Props) => import("preact").JSX.Element;
export {};
