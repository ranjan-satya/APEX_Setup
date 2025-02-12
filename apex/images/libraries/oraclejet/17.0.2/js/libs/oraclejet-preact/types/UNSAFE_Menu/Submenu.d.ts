/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
export type SubmenuProps = {
    /**
     * Set of menu groups or menu items that submenumenu will hold.Even though you could pass other type of children,
     * is strongly recommended to use MenuItem, menu groups or components that return this type of components
     * since passing other type of components children produces not desirable behaviors.
     */
    children?: ComponentChildren;
    /**
     *  Determines submenu text.
     */
    label: string;
    /**
     *  Submenu item startIcon
     */
    startIcon?: ComponentChildren;
};
export declare const Submenu: (props: SubmenuProps) => import("preact").JSX.Element;
