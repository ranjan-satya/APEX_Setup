/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { BaseMenuProps } from './Menu';
type MenuContainerProps = Omit<BaseMenuProps, 'isOpen' | 'defaultPlacement' | 'offsetValue' | 'anchorRef'> & Partial<Pick<BaseMenuProps, 'anchorRef'>> & {
    display: 'sheet' | 'dropdown';
};
export declare const MenuContainer: ({ children, "aria-label": ariaLabel, currentFocus, display, closeSubmenu, menuId, menuLevel, anchorRef }: MenuContainerProps) => import("preact").JSX.Element;
export {};
