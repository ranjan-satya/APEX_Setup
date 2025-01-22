import { ComponentChildren, Ref } from 'preact';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
export { TabBarItem, RemovableTabBarItem, OverflowTabBarItem, TabBarContext, useTabBarContext, TabBarLayout } from '../UNSAFE_TabBarCommon';
export type FocusableHandle = {
    focus: () => void;
    blur: () => void;
};
/**
 * type for payload of current key change event handler
 */
export type CurrentKeyDetail<K> = {
    value: K;
};
/**
 * type for payload of selection change event handler
 */
type SelectionDetail<K> = {
    value: K;
};
/**
 * type for payload of remove event handler
 */
type RemoveDetail<K> = {
    value: K;
};
type DisplayProps = {
    /**
     * Controls the content layout of the TabBarItem: 'standard' lays out the contents horizontally,
     *'icons' hides the label,
     */
    display?: 'standard' | 'icons';
    /**
     *  The size indicates how tall the TabBarItem is rendered.
     *  Note: It is not possible to specify 'size' when 'display="stacked".
     */
    size?: 'md' | 'lg';
} | {
    /**
     *'stacked' stacks the icon on top of the label.
     * Note: It is not possible to specify 'size' when 'display="stacked".
     */
    display?: 'stacked';
    size?: 'never';
};
export type TabBarProps<K extends string | number> = DisplayProps & {
    /**
     * A set of TabBarItem(s) that TabBar will hold
     */
    children: ComponentChildren;
    /**
     * Whether to stretch the tab bar items to occupy available space or to condense items
     */
    layout?: 'stretch' | 'condense';
    /**
     * The position of the TabBar. Valid Values: top and bottom.
     * 'top' is used when TabBar is placed on top of content section and the selection
     *  indicator would be placed below the TabBarItem.
     * 'bottom' is used when TabBar is placed on bottom of content section and the selection
     *  indicator would be placed above the TabBarItem.
     */
    edge?: 'top' | 'bottom';
    /**
     * Key of the selected item.
     */
    selection?: K;
    /**
     * Callback function to handle when user selects a tab.
     * The callback is also invoked when a user selects a tab that is already selected.
     */
    onSelect?: <K extends string | number>(detail: SelectionDetail<K>) => void;
    /**
     * Callback function to handle remove
     */
    onRemove?: <K extends string | number>(detail: RemoveDetail<K>) => void;
    /**
     * Accepts the ID of an element that provides instructions for interaction with the TabBar.
     */
    'aria-describedby'?: string;
    /**
     * An aria-label which defines a string value that labels this TabBar.
     * Either aria-label or aria-labelledby should be specified in order to make TabBar accessible.
     */
    'aria-label'?: string;
    /**
     * An aria-labelledby which identifies the element(s) that labels this TabBar.
     * Either aria-label or aria-labelledby should be specified in order to make TabBar accessible.
     */
    'aria-labelledby'?: string;
};
/**
 * A tab bar allows navigation between different content sections.
 */
export declare const TabBar: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<TabBarProps<string | number> & TestIdProps> & {
    ref?: Ref<FocusableHandle> | undefined;
}>;
