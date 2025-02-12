import { Ref } from 'preact';
import type { TextProps } from "../utils/UNSAFE_interpolations/text";
import { ValueUpdateDetail } from "../utils/UNSAFE_valueUpdateDetail";
import { AriaAttributesSignalExcluded, HTMLAttributesSignalExcluded } from "../utils/UNSAFE_attributeUtils";
type Autocomplete = 'off' | 'on' | string;
type OrigPickedPropsFromInput = Pick<HTMLAttributesSignalExcluded<HTMLInputElement>, 'autofocus' | 'id' | 'placeholder' | 'required' | 'role' | 'spellcheck' | 'type'>;
type RenamedPropsFromInput = Omit<OrigPickedPropsFromInput, 'autofocus' | 'readonly' | 'required'> & {
    autoFocus?: OrigPickedPropsFromInput['autofocus'];
    isRequired?: OrigPickedPropsFromInput['required'];
};
type InputProps = {
    as?: 'input';
    type?: Pick<HTMLAttributesSignalExcluded<HTMLInputElement>, 'type'>['type'];
    rows?: never;
    inputRef?: Ref<HTMLInputElement>;
    hasPrefix?: boolean;
    hasSuffix?: boolean;
};
type TextAreaProps = {
    as: 'textarea';
    type?: never;
    rows?: number;
    inputRef?: Ref<HTMLTextAreaElement>;
    hasPrefix?: never;
    hasSuffix?: never;
};
type FocusProps = Pick<HTMLAttributesSignalExcluded<HTMLElement>, 'onBlur' | 'onFocus'>;
type UniqueProps = InputProps | TextAreaProps;
type AriaProps = Pick<AriaAttributesSignalExcluded, 'aria-autocomplete' | 'aria-controls' | 'aria-describedby' | 'aria-expanded' | 'aria-invalid' | 'aria-label' | 'aria-labelledby' | 'aria-valuemax' | 'aria-valuemin' | 'aria-valuenow' | 'aria-valuetext'>;
type Props = UniqueProps & TextProps & RenamedPropsFromInput & AriaProps & FocusProps & {
    autoComplete?: Autocomplete;
    currentCommitValue?: string;
    hasEmptyLabel?: boolean;
    hasEndContent?: boolean;
    hasInsideLabel?: boolean;
    hasStartContent?: boolean;
    value?: string;
    variant?: 'default' | 'embedded';
    onInput?: (detail: ValueUpdateDetail<string>) => void;
    onCommit?: (detail: ValueUpdateDetail<string>) => void;
    onKeyDown?: (event: KeyboardEvent) => void;
    onKeyUp?: (event: KeyboardEvent) => void;
};
export declare const TextFieldInput: ({ as, "aria-autocomplete": ariaAutoComplete, "aria-controls": ariaControls, "aria-describedby": ariaDescribedBy, "aria-expanded": ariaExpanded, "aria-invalid": ariaInvalid, "aria-label": ariaLabel, "aria-labelledby": inputLabelledBy, "aria-valuemax": ariaValueMax, "aria-valuemin": ariaValueMin, "aria-valuenow": ariaValueNow, "aria-valuetext": ariaValueText, autoComplete, autoFocus, currentCommitValue, hasEmptyLabel, hasEndContent, hasInsideLabel, hasPrefix, hasStartContent, hasSuffix, id, inputRef, placeholder, isRequired, role, rows, spellcheck, type, value, variant, onInput, onCommit, onKeyDown, onKeyUp, onBlur, onFocus, ...props }: Props) => import("preact").JSX.Element;
export {};
