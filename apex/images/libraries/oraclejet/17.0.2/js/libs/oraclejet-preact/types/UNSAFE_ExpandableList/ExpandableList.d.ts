import { ComponentChildren } from 'preact';
import { ToggleDetail, FlattenedDataState, HierarchicalItemRendererContext } from '../UNSAFE_Collection';
import { PublicListProps } from '../UNSAFE_ListView/List.types';
type SpecificTypes<K, D> = {
    /**
     * A function to render an item or a group header.
     */
    children: (context: HierarchicalItemRendererContext<K, D>) => ComponentChildren;
    /**
     * A FlattenedDataState object that provides information including data and metadata to this ExpandableList.
     * If the value is null, then ExpandableList will show loading indicator until a FlattenedDataState is set.
     */
    data: FlattenedDataState<K, D> | null;
    /**
     * A function to handle when user performs a gesture that toggles the expansion state of a group header
     */
    onToggle?: (detail: ToggleDetail<K>) => void;
};
/**
 * Props for the ExpandableList Component, which consist of all props from ListView
 * except some which have different signatures.
 */
type ExpandableListProps<K, D> = Omit<PublicListProps<K, D>, 'children' | 'data'> & SpecificTypes<K, D>;
/**
 * An ExpandableList shows a two-level group of items where each group header can be expand or collapse.
 */
export declare function ExpandableList<K extends string | number, D>({ children, currentKey, data, onSelectionChange, onToggle, ...props }: ExpandableListProps<K, D>): import("preact").JSX.Element;
export {};
