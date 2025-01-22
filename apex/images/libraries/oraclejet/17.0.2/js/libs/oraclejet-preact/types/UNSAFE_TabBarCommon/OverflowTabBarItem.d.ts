import { ComponentChild, ComponentProps } from 'preact';
import { TabBarItem } from './TabBarItem';
export type OverflowSelectionDetail<K> = {
    value: K;
};
export type CloseDetail = {
    /**
     * dismissed represents dismissing the DropDown
     */
    reason: 'dismissed' | 'itemAction' | 'outsideMousedown';
};
export type Item<K extends string | number> = Omit<ComponentProps<typeof TabBarItem<K>>, 'testId' | 'aria-controls'> & {
    isRemovable?: boolean;
    /**
     * Accepts the tabpanel element's ID associated with the tab item
     **/
    tabPanelId?: string;
};
export type OverflowTabBarItemProps<K extends string | number> = {
    /**
     * Key of the TabBarItem
     */
    overflowItemKey: K;
    /**
     * Whether to open the popup
     */
    isOpen: boolean;
    /**
     * Property that triggers a callback when DropDown is supposed to be closed.
     */
    onClose?: (detail: CloseDetail) => void;
    /**
     * The icon of the OverflowTabBarItem
     */
    icon?: ComponentChild;
    /**
     * The content to be rendered inside the Badge component.
     */
    badge?: string;
    /**
     * An array of data used by NavigationList to render individual overflow items.
     */
    overflowItems?: Item<K>[];
};
/**
 * An OverflowTabBarItem renders TabBarItems in a device appropriate popup. OverflowTabBarItem is used internally in an OverflowTabBar.
 */
export declare function OverflowTabBarItem<K extends string | number>({ overflowItemKey, icon, badge, overflowItems, isOpen, onClose }: OverflowTabBarItemProps<K>): import("preact").JSX.Element;
