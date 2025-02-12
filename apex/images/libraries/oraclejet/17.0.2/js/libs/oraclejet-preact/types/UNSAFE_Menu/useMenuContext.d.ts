/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Utility hook for consuming the MenuContext
 *
 * @returns The value of MenuContext provider
 */
declare function useMenuContext(): {
    isMobile: boolean;
    onClose: ((detail: {
        reason: "dismissed" | "itemAction";
    } | {
        reason: "outsideClick";
        target: Element;
    }) => void) | undefined;
    testId: string | undefined;
};
export { useMenuContext };
