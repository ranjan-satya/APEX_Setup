import { BaseTabBarItemProps } from './BaseTabBarItem';
export type TabBarItemProps<K extends string | number> = Pick<BaseTabBarItemProps<K>, 'itemKey' | 'label' | 'icon' | 'badge' | 'metadata' | 'severity' | 'aria-controls'>;
/**
 * TabBarItem content can be created by using labels or icons or both.
 */
export declare function TabBarItem<K extends string | number>({ itemKey, label, icon, badge, metadata, severity, 'aria-controls': ariaControls }: TabBarItemProps<K>): import("preact").JSX.Element;
