/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren, Ref } from 'preact';
import { DimensionProps } from '../utils/UNSAFE_interpolations/dimensions';
import { PaddingProps } from '../utils/UNSAFE_interpolations/padding';
import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
import { AriaProps } from '../utils/UNSAFE_interpolations/aria';
import { ActionDetail } from '../UNSAFE_BaseButton';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
type StyleProps = DimensionProps & PaddingProps & ColorProps & AriaProps;
type Props = StyleProps & TestIdProps & {
    children?: ComponentChildren;
    /**
     * Triggered when a button is clicked, whether by keyboard, mouse, or touch events.
     */
    onAction?: (details: ActionDetail) => void;
};
/**
 * An action card is a container that renders a group of related information in a styled rectangular area, provides enhanced styling for hover and focus states, and invokes an action event when clicked.
 * Width, height, padding, and background color are set through props.
 */
export declare const ActionCard: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: Ref<HTMLDivElement> | undefined;
}>;
export {};
