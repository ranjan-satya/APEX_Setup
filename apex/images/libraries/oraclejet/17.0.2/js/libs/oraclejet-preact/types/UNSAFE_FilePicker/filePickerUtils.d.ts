import { ComponentMessageItem } from '../UNSAFE_ComponentMessage';
import { BundleType } from '../resources/nls/bundle';
import { FilePicker } from './FilePicker';
import { JSX, ComponentProps } from 'preact';
type FilePickerProps = ComponentProps<typeof FilePicker>;
/**
 * Returns the aria label
 */
type AriaLabelProps = {
    ariaLabel: FilePickerProps['aria-label'];
    isDisabled: FilePickerProps['isDisabled'];
    translations: BundleType;
    primaryText?: FilePickerProps['primaryText'];
    secondaryText?: FilePickerProps['secondaryText'];
    selectionMode?: FilePickerProps['selectionMode'];
};
export declare const getAriaLabel: ({ ariaLabel, isDisabled, translations, primaryText, secondaryText, selectionMode }: AriaLabelProps) => string;
/**
 * Returns the styles of the file picker
 */
export declare const getStyles: (width: FilePickerProps['width'], height: FilePickerProps['height']) => JSX.CSSProperties;
/**
 * Returns the primary text
 */
export declare const getPrimaryText: (primaryText: FilePickerProps['primaryText'], translations: BundleType) => string;
/**
 * Returns the secondary text text
 */
export declare const getSecondaryText: (secondaryText: FilePickerProps['secondaryText'], translations: BundleType, selectionMode: FilePickerProps['selectionMode']) => string;
/**
 * Takes in a list of files and returns a list of accepted files and
 * a list of rejected files based on file type
 */
export declare const validateTypes: (files: FileList, accept: FilePickerProps['accept'], translations: BundleType) => {
    accepted: string[];
    rejected: string[];
};
/**
 * Creates a file list
 */
export declare const createFileList: (origList: FileList | DataTransferItemList) => any;
/**
 * Returns false if selected multiple files when in single file selection mode
 */
export declare const validateSelectionMode: (files: FileList, selectionMode: FilePickerProps['selectionMode']) => boolean;
/**
 * Returns the correct message if mime type validation has failed
 */
export declare const getMimeTypeValidationMessages: (rejected: Array<string>, translations: BundleType) => ComponentMessageItem[];
export {};
