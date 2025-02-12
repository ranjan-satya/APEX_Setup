/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren, RefCallback, RefObject } from 'preact';
import type { BorderProps } from '../utils/UNSAFE_interpolations/borders';
import type { DimensionProps } from '../utils/UNSAFE_interpolations/dimensions';
import type { FlexitemProps } from '../utils/UNSAFE_interpolations/flexitem';
import type { ColorProps } from '../utils/UNSAFE_interpolations/colors';
import type { PaddingProps } from '../utils/UNSAFE_interpolations/padding';
import type { AriaProps } from '../utils/UNSAFE_interpolations/aria';
import type { ThemeProps } from '../utils/UNSAFE_interpolations/theme';
import type { Role } from '../utils/UNSAFE_roles';
import { TestIdProps } from "../hooks/UNSAFE_useTestId";
declare const elementTypes: readonly ["div", "main", "article", "section", "aside"];
type ElementType = (typeof elementTypes)[number];
type StyleProps = BorderProps & DimensionProps & FlexitemProps & ColorProps & PaddingProps & AriaProps & ThemeProps;
type Props = StyleProps & TestIdProps & {
    as?: ElementType;
    role?: Role;
    children?: ComponentChildren;
};
type RefType = (RefObject<HTMLDivElement> | RefCallback<HTMLDivElement>) & (RefObject<HTMLElement> | RefCallback<HTMLElement>);
declare const View: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: import("preact").Ref<RefType> | undefined;
}>;
export { elementTypes, View };
