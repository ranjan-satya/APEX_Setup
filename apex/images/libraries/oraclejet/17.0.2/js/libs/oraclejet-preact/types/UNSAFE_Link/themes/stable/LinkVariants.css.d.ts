/*******************
 * Variants Utility
 *******************/
declare const multiVariantStyles: import("@vanilla-extract/recipes").RuntimeFn<{
    readonly variant: {
        readonly standard: {};
        readonly primary: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        readonly secondary: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
    };
    readonly placement: {
        readonly standalone: {
            readonly textDecorationLine: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly selectors: {
                readonly '&:active': {
                    readonly textDecorationLine: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                };
            };
        };
        readonly embedded: {
            readonly textDecorationLine: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            readonly selectors: {
                readonly '&:active': {
                    readonly textDecorationLine: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                };
            };
        };
    };
    readonly needsEventsHover: {
        readonly isNeedsEventsHover: "";
        readonly notNeedsEventsHover: "";
    };
    readonly pseudoHover: {
        readonly isPseudoHover: "";
        readonly notPseudoHover: "";
    };
    readonly disabled: {
        readonly notDisabled: {};
        readonly isDisabled: {
            readonly vars: {
                readonly [x: string]: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            readonly selectors: {
                readonly '&:active': {
                    readonly textDecorationLine: "none";
                };
            };
        };
    };
}>;
/*******************
 * Exports
 *******************/
export { multiVariantStyles };
