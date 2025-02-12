/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren, ComponentProps } from 'preact';
import { Floating } from '../UNSAFE_Floating';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
type MenuProps = {
    /**
     * Trigger element reference
     */
    anchorRef: FloatingProps['anchorRef'];
    /**
     * Placement of the floating element relative to its reference element.
     */
    placement?: FloatingProps['placement'];
    /**
     Placement offset.
     Offset displaces the floating element from its core placement along the specified axes.
     */
    offsetValue?: FloatingProps['offsetValue'];
    /**
     * Set of menu groups or menu items that menu will hold.Even though you could pass other type of children,
     * is strongly recommended to use MenuItem, menu groups or components that return this type of components
     * since passing other type of components children produces not desirable behaviors.
     */
    children: ComponentChildren;
    /**
     * Specifies if menu is opened.
     */
    isOpen?: boolean;
    /**
     * Property that triggers a callback when menu is supposed to be closed.
     */
    onClose?: (detail: CloseDetail) => void;
    /**
     * Specifies some screen reader text. Set it to create an accesible menu.
     */
    'aria-label'?: string;
    /**
     *  Determines focus behavior when the menu is opened.
     */
    initialFocus?: 'menu' | 'firstItem';
};
type FloatingProps = ComponentProps<typeof Floating>;
type CloseDetail = {
    reason: 'dismissed' | 'itemAction';
} | {
    reason: 'outsideClick';
    target: Element;
};
export type BaseMenuProps = (MainMenu | SubMenu) & Omit<MenuProps, 'onClose' | 'initialFocus'> & {
    currentFocus?: 'menu' | 'firstItem' | 'secondItem' | 'none';
};
type MainMenu = {
    menuLevel: 'main';
    menuId?: never;
    closeSubmenu?: never;
};
type SubMenu = {
    menuLevel: 'sub';
    menuId?: string;
    closeSubmenu?: () => void;
};
export declare const Menu: ({ onClose, isOpen, testId, initialFocus, placement, offsetValue, ...menuProps }: MenuProps & TestIdProps) => import("preact").JSX.Element;
export {};
