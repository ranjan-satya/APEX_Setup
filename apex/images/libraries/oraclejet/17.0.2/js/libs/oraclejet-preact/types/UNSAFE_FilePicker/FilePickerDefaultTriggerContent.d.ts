/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { BundleType } from '../resources/nls/bundle';
import { FilePicker } from './FilePicker';
import { ComponentProps } from 'preact';
type FilePickerProps = ComponentProps<typeof FilePicker>;
/**
 * Default content of the file picker
 */
export declare const FilePickerDefaultTriggerContent: ({ isDisabled, primaryText, secondaryText, translations, selectionMode }: Pick<FilePickerProps, 'isDisabled' | 'primaryText' | 'secondaryText' | 'selectionMode'> & {
    translations: BundleType;
}) => import("preact").JSX.Element;
export {};
