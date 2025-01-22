/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { HTMLAttributesSignalExcluded } from "../UNSAFE_attributeUtils";
export type ButtonIntrinsicProps = Pick<HTMLAttributesSignalExcluded<HTMLElement>, 'autofocus' | 'onBlur' | 'onFocus' | 'onMouseEnter' | 'onMouseLeave' | 'onTouchEnd' | 'onTouchStart'>;
export type ButtonSetPosition = 'start' | 'middle' | 'end' | 'single';
export type LayoutWidths = 'auto' | 'equal';
export type InputTypes = 'radio' | 'checkbox';
export type ToggleButtonTypes = InputTypes | 'button' | 'switch';
export type ButtonSetButtonDetails = {
    type: 'button';
} | {
    type: 'radio' | 'checkbox';
    inputName: string;
};
export type ToggleDetails = ButtonSetButtonDetails | {
    type: 'switch';
};
