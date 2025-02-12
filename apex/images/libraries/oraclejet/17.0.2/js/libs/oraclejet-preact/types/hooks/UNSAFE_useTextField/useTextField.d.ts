import { ComponentProps } from 'preact';
import { TextField } from '../../UNSAFE_TextField';
import { InlineUserAssistance, UserAssistanceDensityType } from '../../UNSAFE_UserAssistance';
type InlineUserAssistanceProps = ComponentProps<typeof InlineUserAssistance>;
type PickedUserAssistanceProps = Pick<InlineUserAssistanceProps, 'messages'>;
type UseTextFieldProps<V> = PickedUserAssistanceProps & {
    ariaDescribedBy?: string;
    contentVariant?: 'input' | 'textarea';
    helpSourceLink?: string;
    helpSourceText?: string;
    isDisabled?: boolean;
    isFocused?: boolean;
    isLoading?: boolean;
    isReadonly?: boolean;
    isRequiredShown?: boolean;
    labelEdge?: ComponentProps<typeof TextField>['labelEdge'] | 'none';
    styleVariant?: 'default' | 'embedded';
    userAssistanceDensity?: UserAssistanceDensityType;
    value?: V;
};
/**
 * A custom hook to determine the props for a component that renders
 * a text field
 */
export declare function useTextField<V>({ ariaDescribedBy, contentVariant, helpSourceLink, helpSourceText, isDisabled, isFocused, isLoading, isReadonly, isRequiredShown, labelEdge, messages, styleVariant, userAssistanceDensity, value }: UseTextFieldProps<V>): {
    baseId: string;
    formFieldContext: import("../UNSAFE_useFormFieldContext").FormFieldContextProps;
    inputProps: {
        id: string | undefined;
        'aria-describedby': string | undefined;
        'aria-invalid': import("preact/src/jsx").Booleanish | "grammar" | "spelling" | undefined;
        variant: "default" | "embedded" | undefined;
        onBlur: ((event: FocusEvent) => void) | undefined;
        onFocus: ((event: FocusEvent) => void) | undefined;
    };
    labelProps: {
        forId: string | undefined;
        helpIconId: string | undefined;
        helpSourceLink: string | undefined;
        helpSourceText: string | undefined;
        id: string | undefined;
        isRequiredShown: boolean | undefined;
        userAssistanceDensity: UserAssistanceDensityType | undefined;
        variant: "top" | "start" | "inside" | undefined;
    };
    textFieldProps: {
        contentVariant: "textarea" | "input" | undefined;
        statusVariant: "warning" | "error" | undefined;
        styleVariant: "default" | "embedded" | undefined;
    };
    userAssistanceProps: {
        id: string | undefined;
    };
};
export {};
