/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ButtonIntrinsicProps } from './toggle.types';
import { useButtonSetContext } from "../../hooks/UNSAFE_useButtonSetContext";
import { ButtonSetButton } from "../../UNSAFE_ButtonSetButton";
import { ButtonSetIconButton } from "../../UNSAFE_ButtonSetIconButton";
import { ComponentProps } from 'preact';
import { ToggleButtonLabel } from "../../UNSAFE_ToggleButtonLabel";
type ButtonSetContextProps = ReturnType<typeof useButtonSetContext>;
type ButtonSetButtonProps = ComponentProps<typeof ButtonSetButton>;
type ButtonSetIconButtonProps = ComponentProps<typeof ButtonSetIconButton>;
/**
 *
 * @param buttonProps
 * @returns globalEventProps that can be spread onto target element
 */
export declare function processGlobals(buttonProps: ButtonIntrinsicProps): {
    globalEventProps: ButtonIntrinsicProps;
};
/**
 * Merge buttonset props with toggle props for spreadable properties and flags
 * @param toggleProps
 * @param buttonSetProps
 * @returns
 */
export declare function processSetButtonProps(toggleProps: (ButtonSetButtonProps | ButtonSetIconButtonProps) & ButtonIntrinsicProps, buttonSetProps: ButtonSetContextProps): {
    isDisabled: boolean | undefined;
    buttonSetButtonProps: ButtonSetButtonProps | ButtonSetIconButtonProps;
    inputProps: ComponentProps<typeof ToggleButtonLabel>;
    globalEventProps: ButtonIntrinsicProps;
};
export {};
