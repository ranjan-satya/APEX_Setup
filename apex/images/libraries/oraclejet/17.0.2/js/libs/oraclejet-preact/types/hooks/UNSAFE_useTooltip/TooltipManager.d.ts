/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
export type TooltipManagerCallback = () => void;
/**
 * A global tooltip manager that
 * - ensures that only one tooltip is shown at a time
 * - detects a Tab key press and allows tooltips to check if their target was focused via keyboard
 */
export declare class TooltipManager {
    private activeCallback;
    private tabKeyActive;
    private keyDownHandler;
    constructor();
    /**
     * notifies the previously registered active tooltip callback and registers a new one
     */
    register: (callback: TooltipManagerCallback) => void;
    /**
     * resets the registered active callback
     */
    unregister: (callback: TooltipManagerCallback) => void;
    /**
     * returns the active Tab key status ('active' means a Tab key press within the last 100ms)
     */
    isTabKeyActive: () => boolean;
}
