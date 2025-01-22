import { type TestIdProps } from "../hooks/UNSAFE_useTestId";
import { LayoutColumnSpan } from "../utils/UNSAFE_styles/Layout";
import { StyledComponentProps } from "../utils/UNSAFE_typeUtils";
import { ComponentChildren, ComponentProps, Ref } from 'preact';
import { ReadonlyTextFieldContent, VariantProps } from './ReadonlyTextFieldContent';
type UAProps = {
    compactUserAssistance?: ComponentChildren;
    inlineUserAssistance?: ComponentChildren;
};
type PickedPropsFromReadonlyTextFieldContent = Pick<ComponentProps<typeof ReadonlyTextFieldContent>, 'mainContent' | 'endContent'>;
export type StyleProps = UAProps & VariantProps & PickedPropsFromReadonlyTextFieldContent & {
    columnSpan?: LayoutColumnSpan;
    label?: ComponentChildren;
    labelEdge?: 'inside' | 'start' | 'top';
    variant?: 'textarea';
    mainFieldRef?: Ref<HTMLDivElement>;
};
type Props = TestIdProps & StyledComponentProps<'div', StyleProps>;
export declare const ReadonlyTextField: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: Ref<HTMLElement> | undefined;
}>;
export {};
