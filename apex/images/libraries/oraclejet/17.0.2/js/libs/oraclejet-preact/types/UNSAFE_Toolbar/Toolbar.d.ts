/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
import { AriaAttributesSignalExcluded } from '../utils/UNSAFE_attributeUtils';
type AriaProps = Pick<AriaAttributesSignalExcluded, 'aria-controls' | 'aria-label'>;
type ToolbarProps = AriaProps & {
    /**
     * Specifies the children.
     */
    children: ComponentChildren;
    /**
     * Specifies the spacing between content.
     * 'sm' spacing is recommended for button variants that don't have a background or border, for example borderless buttons
     * 'lg' spacing is recommended for button variants that have a background or border, for example outlined or solid buttons
     */
    spacing?: 'sm' | 'lg';
};
/**
 * A toolbar groups a set of controls, such as buttons and menu buttons, into a single tab stop.
 */
export declare const Toolbar: ({ "aria-controls": ariaControls, "aria-label": ariaLabel, children, spacing }: ToolbarProps) => import("preact").JSX.Element;
export {};
