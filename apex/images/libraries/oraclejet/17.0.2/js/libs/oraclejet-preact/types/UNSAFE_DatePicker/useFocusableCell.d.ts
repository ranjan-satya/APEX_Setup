type UseFocusableCellProps = {
    /**
     * Specifies if this cell is the one that will be focused when
     * one tabs into the grid view.
     */
    isFocusable: boolean;
    /**
     * Specifies whether or not the cell is currently focused.
     */
    isFocused: boolean;
};
/**
 * A custom hook that handles focus for a month or year cell.
 */
export declare const useFocusableCell: <T extends HTMLElement = HTMLElement>({ isFocusable, isFocused }: UseFocusableCellProps) => {
    ref: import("preact/hooks").Ref<T>;
    tabIndex: number;
};
export {};
