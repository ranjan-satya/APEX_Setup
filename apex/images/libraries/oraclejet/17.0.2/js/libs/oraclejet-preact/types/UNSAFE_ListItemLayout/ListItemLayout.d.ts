/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren, JSX } from 'preact';
type IntrinsicProps = Pick<JSX.HTMLAttributes<HTMLDivElement>, 'children'>;
type Props = {
    children?: ComponentChildren;
    /**
     * The centermost element that should display more important data.
     */
    primary?: ComponentChildren;
    /**
     * Render Selector component in the leftmost column of the grid.
     */
    selector?: ComponentChildren;
    /**
     * Visual element to the left of the primary section.
     * Supports image, avatar, badge, initials, or icon.
     */
    leading?: ComponentChildren;
    /**
     * A section that is rendered above the primary line.
     */
    overline?: ComponentChildren;
    /**
     * A section below the primary line.
     */
    secondary?: ComponentChildren;
    /**
     * Another section below secondary.
     */
    tertiary?: ComponentChildren;
    /**
     * Provides information about other data.
     * Some examples of basic metadata are author, date created, date modified, file size, abbreviations, etc.
     */
    metadata?: ComponentChildren;
    /**
     * Visual element to the right of the primary section and metadata.
     * Example components are image, avatar, badge, initials, or icon.
     */
    trailing?: ComponentChildren;
    /**
     * The action prop displays either one primary action or one or more secondary actions.
     * A common example is using Toolbar.
     */
    action?: ComponentChildren;
    /**
     * Additional section separated with a space between itself and tertiary.
     */
    quaternary?: ComponentChildren;
    /**
     * Navigation should normally be used for linking away from the layout.
     */
    navigation?: ComponentChildren;
} & IntrinsicProps;
/**
 * A ListItemLayout component represents a layout used for list view item elements.
 */
export declare function ListItemLayout({ children, selector, leading, primary, secondary, tertiary, overline, metadata, trailing, action, quaternary, navigation }: Props): JSX.Element;
export {};
