import { ComponentMessageItem } from '../UNSAFE_ComponentMessage';
import { RejectDetail, CommitDetail } from './FilePicker';
/**
 * Calls the onReject callback when invalid files are selected.
 * For invalid dragged files, this function will return a promise resolver that
 * should be called when the invalid files are no longer dragged over the filepicker.
 */
export declare const fireRejectAction: (messages: ComponentMessageItem[], isDrag: boolean, onReject?: (detail: RejectDetail) => void) => undefined;
/**
 * Calls the onCommit callback when all files are valid.
 */
export declare const handleFilesAdded: (files: FileList, onCommit?: (detail: CommitDetail) => void) => void;
