type DisabledFormFieldContext = {
    /**
     * Indicates whether the component has value
     */
    hasValue?: boolean;
    /**
     * Indicates whether the component is in disabled state
     */
    isDisabled: true;
    /**
     * A disabled field can never have focus
     */
    isFocused?: false;
    /**
     * A disabled field can never have focus
     */
    isInputFocused?: false;
    /**
     * Indicates whether the component is in a loading state
     */
    isLoading?: boolean;
    /**
     * A disabled field can never be readonly
     */
    isReadonly?: false;
};
type EnabledFormFieldContext = {
    /**
     * Indicates whether the component has value
     */
    hasValue?: boolean;
    /**
     * Enabled field can never be disabled
     */
    isDisabled?: false;
    /**
     * Indicates whether the text field is in focused state
     */
    isFocused?: boolean;
    /**
     * Indicates whether the input element is in focused state
     */
    isInputFocused?: boolean;
    /**
     * Indicates whether the component is in a loading state
     */
    isLoading?: boolean;
    /**
     * Enabled field will not be readonly
     */
    isReadonly?: false;
};
type ReadonlyFormFieldContext = {
    /**
     * Indicates whether the component has value
     */
    hasValue?: boolean;
    /**
     * Readonly field can never be disabled
     */
    isDisabled?: false;
    /**
     * Indicates whether the text field is in focused state
     */
    isFocused?: boolean;
    /**
     * Indicates whether the input element is in focused state
     */
    isInputFocused?: boolean;
    /**
     * Indicates whether the component is in a loading state
     */
    isLoading?: boolean;
    /**
     * Indicates whether the component is in readonly state
     */
    isReadonly: true;
};
type FormFieldContextProps = DisabledFormFieldContext | EnabledFormFieldContext | ReadonlyFormFieldContext;
/**
 * Context which the parent component can use to provide various FormControl related
 * information
 */
declare const FormFieldContext: import("preact").Context<FormFieldContextProps>;
export { FormFieldContext };
export type { FormFieldContextProps };
