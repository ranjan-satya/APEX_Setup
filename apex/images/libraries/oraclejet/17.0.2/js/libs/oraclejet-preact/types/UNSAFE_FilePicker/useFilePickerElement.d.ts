import { BundleType } from '../resources/nls/bundle';
import { FilePicker } from './FilePicker';
import { ComponentProps } from 'preact';
import { Ref, StateUpdater, Dispatch } from 'preact/hooks';
type FilePickerProps = ComponentProps<typeof FilePicker>;
type FilePickerElementProps = FilePickerProps & {
    translations: BundleType;
};
/**
 * The file picker helper method for non-disabled filepickers.
 */
export declare const useFilepickerElementHelper: (props: FilePickerElementProps, rootRef: Ref<HTMLDivElement>, setValidity?: Dispatch<StateUpdater<'NA' | 'valid' | 'invalid'>>) => {
    validation: (files: FileList) => void;
    dragAndDropProps: {
        onDragEnter: (event: Event) => void;
        onDragOver: (event: DragEvent) => void;
        onDragLeave: (event: DragEvent, mimeTypeDropFail?: boolean) => void;
        onDrop: (event: DragEvent) => void;
    };
    pressProps: Record<string, any>;
};
export {};
