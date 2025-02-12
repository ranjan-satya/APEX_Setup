import { ComponentChildren } from 'preact';
import { HierarchicalItemRendererContext, FlattenedDataState } from '../UNSAFE_Collection';
import { PublicListProps } from '../UNSAFE_ListView/List.types';
type OverrideTypes<K, D> = {
    /**
     * A function to render an item or a group header.
     */
    children: (context: HierarchicalItemRendererContext<K, D>) => ComponentChildren;
    /**
     * A FlattenedDataState object that provides information including data and metadata to this GroupedList.
     * If the value is null, then GroupedList will show loading indicator until a FlattenedDataState is set.
     */
    data: FlattenedDataState<K, D> | null;
};
/**
 * Props for the GroupedList Component.
 */
type Props<K, D> = Omit<PublicListProps<K, D>, 'data' | 'children'> & OverrideTypes<K, D>;
/**
 * A GroupedList shows a two-level group of items where group header sticks to the top of the viewport when scroll.
 */
export declare function GroupedList<K extends string | number, D>({ children, currentKey, data, onSelectionChange, viewportConfig, ...props }: Props<K, D>): import("preact").JSX.Element;
export {};
