type SupportedKeyBindings = 'ArrowLeft' | 'ArrowRight' | 'ArrowUp' | 'ArrowDown' | 'End' | 'Home' | 'PageUp' | 'PageDown' | 'ShiftPageUp' | 'ShiftPageDown' | 'CtrlAltT';
type NavigationValue<T extends string> = T | {
    ltr: T;
    rtl: T;
};
type NavigationMap<T extends string> = Partial<Record<SupportedKeyBindings, NavigationValue<T>>>;
type UseCellNavigationProps<Payload extends object, Navigation extends string> = {
    /**
     * Payload for the callbacks from this cell.
     */
    payload: Payload;
    /**
     * An object that maps the key codes to the direction of navigation. The onNavigation
     * callback will be invoked only for the key codes provided in the map and specifies the
     * direction as provided in the value.
     */
    navigationMap: NavigationMap<Navigation>;
    /**
     * A callback that will be invoked when a selection action is performed on the DatePicker cell.
     * @param payload The provided payload.
     */
    onAction: (payload: Payload) => void;
    /**
     * A callback that will be invoked when a navigation action is performed on the DatePicker cell.
     * @param details The object specifying the direction of the navigation performed and the payload.
     */
    onNavigation: (details: {
        direction: Navigation;
    } & Payload) => void;
};
/**
 * A custom hook that handles navigation for a DatePicker cell.
 */
export declare const useCellNavigation: <T extends object, U extends string>({ navigationMap, payload, onAction, onNavigation }: UseCellNavigationProps<T, U>) => {
    onClick: () => void;
    onKeyDown: (this: GlobalEventHandlers, ev: KeyboardEvent) => any;
};
export {};
