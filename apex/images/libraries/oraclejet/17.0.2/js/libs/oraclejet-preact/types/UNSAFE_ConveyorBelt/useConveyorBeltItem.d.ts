import { RefObject } from 'preact';
type ConveyorBeltItemOptions = {
    /**
     * Specifies the current item which should be scrolled into view
     */
    isCurrent?: boolean;
    /**
     * Conevyor belt item reference, if not provided is created in the hook
     */
    itemRef?: RefObject<HTMLDivElement>;
};
/**
 * It is a convenience hook for interacting with ConveyorBeltContext.
 * Marks ConveyorBelt item and specifies current item to be scrolled into view.
 * The hook returns the necessary props: ref for ConveyorBelt child component
 * and 'data-oj-conveyorbelt-item' data attribute to mark conveyorbelt item.
 * If the item is set as current, then it is scrolled into the view.
 * If the hook detects ConveyorBeltContext then it should apply the methods of the ConveyorBeltContext.
 * @param options ConveyorBeltItemOptions: isCurrent boolean,
 * specifies whether the item is current and should be scrolled into the view and
 * itemRef Conevyor belt item reference which if not provided is created in the hook
 * @returns ref for ConveyorBelt child component
 * and 'data-oj-conveyorbelt-item' data attribute to mark conveyorbelt item.
 */
export declare function useConveyorBeltItem(options: ConveyorBeltItemOptions): {
    'data-oj-conveyorbelt-item': string;
    ref: import("preact/hooks").Ref<HTMLDivElement>;
};
export {};
