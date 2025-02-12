/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { MutableRef } from 'preact/hooks';
import { ComponentChildren } from 'preact';
type MenuItemProps = BaseBaseMenuItemProps;
type BaseBaseMenuItemProps = {
    label: string;
    onAction?: () => void;
    startIcon?: ComponentChildren;
    endIcon?: ComponentChildren;
    isDisabled?: boolean;
    variant?: 'standard' | 'destructive';
};
export declare function MenuItem(props: MenuItemProps): import("preact").JSX.Element;
type BaseMenuItemProps = (SimpleBaseMenuItem | SelectBaseMenuItem | SubmenuBaseMenuItem) & Omit<BaseBaseMenuItemProps, 'onAction'> & {
    id: string;
    menuItemLabelWeight?: 'normal' | 'bold';
    onAction?: (e: Event) => void;
};
type SimpleBaseMenuItem = {
    type: 'simple';
    role: 'menuitem';
} & ExcludedSubmenuProps & ExcludedSelectProps;
type SelectBaseMenuItem = {
    type: 'select';
    role: 'menuitemcheckbox' | 'menuitemradio';
    isChecked?: boolean;
} & ExcludedSubmenuProps;
type SubmenuBaseMenuItem = {
    type: 'submenu';
    role: 'menuitem';
} & IncludedSubmenuProps & ExcludedSelectProps;
type ExcludedSubmenuProps = {
    hoverInfo?: never;
    openSubmenu?: never;
    isSubmenuOpen?: never;
    submenuId?: never;
    submenuRef?: never;
};
type IncludedSubmenuProps = {
    hoverInfo?: {
        hoverProps: Record<string, any>;
        hoverStatus: MutableRef<{
            recentClose: boolean;
            pendingUnhover: boolean;
        }>;
    };
    openSubmenu?: () => void;
    isSubmenuOpen?: boolean;
    submenuId?: string;
    submenuRef?: MutableRef<HTMLDivElement | null>;
};
type ExcludedSelectProps = {
    isChecked?: never;
};
export declare const BaseMenuItem: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<BaseMenuItemProps> & {
    ref?: import("preact").Ref<HTMLAnchorElement> | undefined;
}>;
export {};
