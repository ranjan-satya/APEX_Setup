import { StateUpdater, Dispatch } from 'preact/hooks';
import { ComponentChildren, RefObject } from 'preact';
export type ReorderDetail<K> = {
    /**
     * An array of keys matching the new order of items
     */
    reorderedKeys: K[];
    /**
     * An array of keys of the items that are moved
     */
    itemKeys: K[];
    /**
     * The key of the item where the moved items will be dropped after. If the moved items were dropped at the very beginning, the referenceKey will be null.
     */
    referenceKey: K | null;
};
export type ReorderProps<K> = {
    /**
     * Callback function to handle when an item is reordered.
     */
    onReorder?: (detail: ReorderDetail<K>) => void;
};
export type ReorderableItemProps<K> = ReorderProps<K> & {
    children: ComponentChildren;
    dragKey: K | undefined;
    setDragKey: Dispatch<StateUpdater<K | undefined>>;
    rootRef: RefObject<HTMLDivElement>;
};
