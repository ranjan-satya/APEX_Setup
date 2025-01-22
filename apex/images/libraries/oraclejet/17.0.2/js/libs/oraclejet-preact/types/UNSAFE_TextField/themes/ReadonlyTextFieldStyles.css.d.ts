import { Property } from 'csstype';
import { ComponentThemeType, CompoundVariantStyles, VariantOptions } from "../../UNSAFE_Theme";
type ReadonlyTextFieldVariants = typeof variants;
type ReadonlyTextFieldVariantOptions = VariantOptions<ReadonlyTextFieldVariants>;
type ReadonlyTextFieldStyles = typeof styles;
type ReadonlyTextFieldTheme = ComponentThemeType<ReadonlyTextFieldVariants, ReadonlyTextFieldStyles>;
declare const styles: {
    readOnlyBase: string;
    readonlyTextFieldMiddleBase: string;
    readonlyTextFieldMiddleNotInEnabledForm: string;
    readonlyTextFieldMiddleInEnabledForm: string;
    readonlyTextFieldMiddleInEnabledFormNotTextarea: string;
};
/*******************
 * Component Variants
 *******************/
declare const variants: {
    insideNonReadonlyForm: {
        isInsideNonReadonlyForm: {
            borderWidth: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            borderColor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            backgroundColor: string;
            height: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            minWidth: string;
            flex: string;
        };
        notInsideNonReadonlyForm: {
            borderWidth: string;
            backgroundColor: string;
            height: string;
            verticalAlign: string;
        };
    };
    insideLabel: {
        hasInsideLabel: string;
        noInsideLabel: string;
    };
    textarea: {
        isTextArea: {
            height: string;
        };
        notTextArea: string;
    };
    loading: {
        isLoading: string;
        notLoading: string;
    };
    inputGroupPosition: {
        groupLeft: string;
        groupRight: string;
        groupMiddle: string;
    };
    withinGroup: {
        isWithinGroup: string;
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
        none: {
            maxWidth: string;
            overflow: Property.Overflow;
        };
    };
};
declare const compoundVariants: CompoundVariantStyles<ReadonlyTextFieldVariantOptions>;
export type { ReadonlyTextFieldVariantOptions, ReadonlyTextFieldStyles, ReadonlyTextFieldTheme };
export { variants, compoundVariants, styles };
