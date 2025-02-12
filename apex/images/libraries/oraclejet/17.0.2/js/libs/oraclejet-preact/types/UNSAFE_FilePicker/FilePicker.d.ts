import { Size } from '../utils/UNSAFE_size';
import { ComponentMessageItem } from '../UNSAFE_ComponentMessage';
import { ComponentChildren } from 'preact';
import { ForwardedRef } from 'preact/compat';
import { type TestIdProps } from '../hooks/UNSAFE_useTestId';
type Props = TestIdProps & {
    /**
     * An array of strings of allowed MIME types or file extensions that can be uploaded; this is unlike the accept attribute of the html &lt;input> element that accepts a simple comma-delimited string. If not specified, all file types will be accepted.
     * <p>Note: If accept is specified, files with empty string type will be rejected if no match found in the "accept" value.   */
    accept?: string[];
    /**
     * Specifies the preferred facing mode for the device's
     * <a href="https://www.w3.org/TR/html-media-capture/#dom-htmlinputelement-capture">media capture</a> mechanism;
     * This is most often used to provide direct camera access on mobile devices.  Note that the accept attribute must
     * be specified and have an associated capture control type (e.g.["image/*"]) for the capture attribute to take effect.  Support may vary by browser.
     *
     */
    capture?: 'user' | 'environment' | 'implementation' | 'none';
    /**
     * Disables the filepicker if set to <code class="prettyprint">true</code>.
     */
    isDisabled?: boolean;
    /**
     * The primary text for the default file picker.
     */
    primaryText?: string;
    /**
     * The secondary text for the default file picker.
     */
    secondaryText?: string;
    /**
     * Whether to allow single or multiple file selection.
     */
    selectionMode?: 'multiple' | 'single';
    /**
     * A label to be used for accessibility purposes. This will be used for the aria-label of the DOM element.
     */
    'aria-label'?: string;
    /**
     * Property that triggers a callback immediately when a set of files have been committed
     */
    onCommit?: (detail: CommitDetail) => void;
    /**
     * Property that triggers a callback immediately when a set of files have been rejected
     */
    onReject?: (detail: RejectDetail) => void;
    /**
     * Width of the File Picker
     */
    width?: Size;
    /**
     * Height of the File Picker
     */
    height?: Size;
    /**
     * If the children is provided, its contents replace the default filepicker.  Filepicker will still set role and aria-label, but
     * the application is responsible for setting the tabindex.
     */
    children?: ComponentChildren;
};
export type CommitDetail = {
    files: FileList;
};
export type RejectDetail = {
    /**
     * Messages that should be displayed to the user (e.g. in an oj-messages component) describing rejected files.
     */
    messages: ComponentMessageItem[];
    /**
     * This property may be populated with a Promise to provide short-term feedback during a user interaction (typically drag and drop); the feedback should be cleared upon the resolution of this Promise.
     */
    until: Promise<void> | null;
};
/**
 * A file picker displays a clickable dropzone for selecting files from the device storage.
 */
export declare function FilePicker({ capture, isDisabled, selectionMode, children, ...otherProps }: Props): import("preact").JSX.Element;
type DndProps = {
    onDragEnter: (event: Event) => void;
    onDragOver: (event: DragEvent) => void;
    onDragLeave: (event: DragEvent, mimeTypeDropFail: boolean) => void;
    onDrop: (event: DragEvent) => void;
};
export type TestHandlersRef = ForwardedRef<DndProps & {
    onClickSelected: (files: FileList) => void;
}>;
export {};
