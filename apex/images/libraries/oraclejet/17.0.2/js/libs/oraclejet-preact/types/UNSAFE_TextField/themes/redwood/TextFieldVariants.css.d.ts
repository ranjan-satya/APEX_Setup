declare const multiVariantStyles: import("@vanilla-extract/recipes").RuntimeFn<{
    styleVariant: {
        default: {
            borderStyle: string;
            borderWidth: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            backgroundColor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            borderColor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            borderRadius: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            height: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        embedded: {
            backgroundColor: string;
            height: string;
            width: string;
        };
    };
    statusVariant: {
        error: string;
        none: string;
        warning: string;
    };
    contentVariant: {
        input: string;
        textarea: string;
    };
    startContent: {
        hasInsideLabel: {
            fontSize: string;
        };
        noInsideLabel: string;
    };
    insideLabel: {
        hasInsideLabel: string;
        noInsideLabel: string;
    };
    resize: {
        horizontal: {
            resize: import("csstype").Property.Resize;
        };
        vertical: {
            resize: import("csstype").Property.Resize;
        };
        both: {
            resize: import("csstype").Property.Resize;
        };
        none: string;
    };
    disabled: {
        isDisabled: {
            backgroundColor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            borderColor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        notDisabled: string;
    };
    focused: {
        isFocused: string;
        notFocused: string;
    };
    loading: {
        isLoading: string;
        notLoading: string;
    };
    readonly: {
        isReadonly: string;
        notReadonly: {
            fontWeight: string;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    formControlInsideLabel: {
        hasInsideLabel: {
            maxWidth: string;
        };
        noInsideLabel: string;
    };
    inputGroupPosition: {
        groupLeft: string;
        groupRight: string;
        groupMiddle: string;
    };
    withinGroup: {
        isWithinGroup: string;
    };
    startContentMargin: {
        hasStartMargin: {
            marginInlineStart: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: string;
        };
        noStartMargin: {
            marginInlineStart: string;
            fontSize: string;
        };
    };
    startContentDisabled: {
        isDisabled: {
            color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        notDisabled: string;
    };
    middleContent: {
        input: {
            position: import("csstype").Property.Position;
            display: string;
            flex: number;
            width: string;
            height: string;
            boxSizing: import("csstype").Property.BoxSizing;
            overflow: string;
        };
        textarea: {
            paddingInlineEnd: string;
            flexDirection: import("csstype").Property.FlexDirection;
            overflow: string;
            position: import("csstype").Property.Position;
            display: string;
            flex: number;
            width: string;
            height: string;
            boxSizing: import("csstype").Property.BoxSizing;
        };
    };
    textAreaResizeDirection: {
        ltr: {
            clipPath: string;
        };
        rtl: {
            clipPath: string;
        };
    };
}>;
/*******************
 * Exports
 *******************/
export { multiVariantStyles };
