import { BaseTabBarItemProps } from './BaseTabBarItem';
type RemovableTabBarItemProps<K extends string | number> = Pick<BaseTabBarItemProps<K>, 'itemKey' | 'label' | 'icon' | 'badge' | 'metadata' | 'severity' | 'aria-controls'>;
export declare function RemovableTabBarItem<K extends string | number>({ itemKey, label, icon, badge, metadata, severity, 'aria-controls': ariaControls }: RemovableTabBarItemProps<K>): import("preact").JSX.Element;
export {};
