import { TestIdProps } from '../hooks/UNSAFE_useTestId';
import { TabBarProps } from '../UNSAFE_TabBar';
import { ReorderProps } from '../UNSAFE_Collection/Reorderable.types';
export type ReorderableTabBarProps<K extends string | number> = Omit<TabBarProps<K>, 'aria-describedby'> & ReorderProps<K> & TestIdProps;
/**
 * A component that allows reordering of tabs within a TabBar.
 */
export declare function ReorderableTabBar<K extends string | number>({ 'aria-label': ariaLabel, 'aria-labelledby': ariaLabelledby, children, layout, display, size, edge, selection, onSelect, onRemove, onReorder, testId }: ReorderableTabBarProps<K>): import("preact").JSX.Element;
