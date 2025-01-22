/*******************
 * Variants Utility
 *******************/
declare const multiVariantStyles: import("@vanilla-extract/recipes").RuntimeFn<{
    readonly disabled: {
        readonly isDisabled: {
            color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        readonly notDisabled: {
            color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    readonly focused: {
        readonly isFocused: {
            '@supports': {
                'selector(:has(*))': {
                    selectors: {
                        '&:has(input:focus-visible)': {
                            outlineStyle: string;
                            outlineWidth: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                            outlineColor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                        };
                    };
                };
                'not selector(:has(*))': {
                    outlineStyle: string;
                    outlineWidth: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                    outlineColor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                };
            };
        };
        readonly notFocused: "";
    };
}>;
/*******************
 * Exports
 *******************/
export { multiVariantStyles };
