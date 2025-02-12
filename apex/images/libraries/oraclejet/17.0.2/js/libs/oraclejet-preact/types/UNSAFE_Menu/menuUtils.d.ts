/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentProps } from 'preact';
import { Menu } from './Menu';
/**
 * Returns the key from the item element
 */
export declare const getKey: (item: HTMLElement) => string | undefined;
/**
 * A helper function that return the key of the n available item.
 */
export declare const getNVisible: (root: HTMLElement | null, positionIndex: number) => string | null;
/**
 * A helper function that return the key of the last available item.
 */
export declare const getLastVisible: (root: HTMLElement | null) => string | null;
/**
 * A helper function that returns the key of the previous or the next item
 * given the specified current key
 */
export declare const getPrevNext: (root: HTMLElement | null, isPrev: boolean, currentKey?: string) => () => string | null;
/**
 * A helper function to get the key from an element
 */
export declare const keyElemExtractor: (element: HTMLElement) => {
    key: string;
    elem: HTMLElement;
} | null;
/**
 * Function to get the corresponding keyboard behavior to close the menu.
 */
export declare const getKeyboardCloseProps: (onClose: ComponentProps<typeof Menu>['onClose'], menuLevel: 'main' | 'sub') => {
    onKeyDown: (event: KeyboardEvent) => void;
};
/**
 * Function to get the corresponding specific behavior for closing submenu via keyboard
 */
export declare const getCloseSubmenuEvent: (direction: 'ltr' | 'rtl', closeSubmenu?: () => void) => {
    onKeyDown?: undefined;
} | {
    onKeyDown: (e: KeyboardEvent) => void;
};
/**
 * Function to get the corresponding specific behavior for opening submenu via keyboard
 */
export declare const getOpenSubmenuEvent: (direction: 'ltr' | 'rtl', openSubmenu?: () => void) => {
    onKeyDown?: undefined;
} | {
    onKeyDown: (e: KeyboardEvent) => void;
};
/**
 * Function to get type of device
 */
export declare const getIsMobile: () => boolean;
/**
 * Get blur and focus events
 */
export declare const getMenuContainerFocusMethods: (blurFunction: () => void, focusFunction: () => void) => {
    onBlur: () => void;
    onFocus: () => void;
};
/**
 * Set currentKey based on clicking menuItem
 */
export declare const getMenuItemClickChangeKey: (key: string, changeKeyMethod: (payload: {
    key: string;
    reason: 'click' | 'mouseEnter' | 'keyboard';
}) => void) => {
    onClick: () => void;
};
export declare const getMenuContainerMouseLeave: (mouseLeaveFunction: (e: MouseEvent) => void) => {
    onMouseLeave: (e: MouseEvent) => void;
};
/**
 * Function to get the corresponding specific behavior for clicking/touching down menuContainer
 */
export declare const getMenuPointerDown: () => {
    onPointerDown: (event: PointerEvent) => void;
};
export type MenuValueUpdateDetail<T> = {
    previousValue?: T;
    value: T;
};
export type MenuCollectionItem = {
    key?: string;
    reason: 'mouseEnter' | 'click' | 'keyboard';
};
