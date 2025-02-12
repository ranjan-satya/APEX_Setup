/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Collection of helper functions for writing your component styles in our theming system.
 * Pass in your style and it will return an object with the appropriate CSS selector wrapping it.
 */
declare const wrapWithActiveSelector: (style: object) => {
    '&:active': object;
};
declare const wrapWithHoverSelector: (style: object) => {
    '&:hover': object;
};
declare const wrapWithFocusSelector: (style: object) => {
    '&:focus': object;
};
declare const wrapWithFocusVisibleSelector: (style: object) => {
    '&:focus-visible': object;
};
declare const wrapWithVisitedSelector: (style: object) => {
    '&:visited': object;
};
declare const wrapWithNotActiveSelector: (style: object) => {
    '&:not(:active)': object;
};
declare const wrapWithParentNotActiveSelector: (style: object, parent: string) => {
    [x: string]: object;
};
declare const wrapWithPseudoHoverSelector: (style: object) => {
    '@media': {
        '(hover: hover)': {
            selectors: {
                '&:hover:not(:active)': object;
            };
        };
    };
};
declare const wrapWithParentPseudoHoverSelector: (style: object, parent: string) => {
    '@media': {
        '(hover: hover)': {
            selectors: {
                [x: string]: object;
            };
        };
    };
};
declare const wrapWithNextElementPseudoHoverSelector: (style: object, prevSiblingSelector: string) => {
    '@media': {
        '(hover: hover)': {
            selectors: {
                [x: string]: object;
            };
        };
    };
};
export { wrapWithActiveSelector, wrapWithHoverSelector, wrapWithFocusSelector, wrapWithFocusVisibleSelector, wrapWithVisitedSelector, wrapWithNotActiveSelector, wrapWithParentNotActiveSelector, wrapWithPseudoHoverSelector, wrapWithParentPseudoHoverSelector, wrapWithNextElementPseudoHoverSelector };
