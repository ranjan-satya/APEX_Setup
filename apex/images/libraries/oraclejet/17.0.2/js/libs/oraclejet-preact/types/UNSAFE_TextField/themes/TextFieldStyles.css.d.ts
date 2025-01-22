import { Property } from 'csstype';
import { ComponentThemeType, CompoundVariantStyles, VariantOptions } from "../../UNSAFE_Theme";
type TextFieldVariants = typeof variants;
type TextFieldVariantOptions = VariantOptions<TextFieldVariants>;
type TextFieldStyles = typeof styles;
type TextFieldTheme = ComponentThemeType<TextFieldVariants, TextFieldStyles>;
declare const placeholderAnimation: string;
declare const variants: {
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
            resize: Property.Resize;
        };
        vertical: {
            resize: Property.Resize;
        };
        both: {
            resize: Property.Resize;
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
            position: Property.Position;
            display: string;
            flex: number;
            width: string;
            height: string;
            boxSizing: Property.BoxSizing;
            overflow: string;
        };
        textarea: {
            paddingInlineEnd: string;
            flexDirection: Property.FlexDirection;
            overflow: string;
            position: Property.Position;
            display: string;
            flex: number;
            width: string;
            height: string;
            boxSizing: Property.BoxSizing;
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
};
declare const compoundVariants: CompoundVariantStyles<TextFieldVariantOptions>;
declare const styles: {
    textFieldBase: string;
    textFieldEndContent: string;
    textFieldContainerBase: string;
    textFieldEmbedded: string;
    formControlBase: string;
};
export type { TextFieldVariantOptions, TextFieldStyles, TextFieldTheme };
export { styles, variants, compoundVariants, placeholderAnimation };
