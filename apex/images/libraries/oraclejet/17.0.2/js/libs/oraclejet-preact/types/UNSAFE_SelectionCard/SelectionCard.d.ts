/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
import { DimensionProps } from '../utils/UNSAFE_interpolations/dimensions';
import { PaddingProps } from '../utils/UNSAFE_interpolations/padding';
import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
import { AriaProps } from '../utils/UNSAFE_interpolations/aria';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
type StyleProps = DimensionProps & PaddingProps & ColorProps & AriaProps;
type Props = StyleProps & TestIdProps & {
    children?: ComponentChildren;
    /**
     * This flag marks this card as selected within a collection.
     */
    isSelected?: boolean;
};
/**
 * A selection card is a container element that is a part of a collection of elements, and renders a group of related information in a styled rectangular area.
 * Width, height, and backgroundColor are set through props.
 */
export declare const SelectionCard: ({ children, isSelected, testId, ...rest }: Props) => import("preact").JSX.Element;
export {};
