/* @oracle/oraclejet-preact: undefined */
import { jsxs, Fragment, jsx } from 'preact/jsx-runtime';
import { m as mergeProps } from './mergeProps-88ea8306.js';
import { c as classNames } from './classNames-4e12b00d.js';
import { u as useTranslationBundle } from './useTranslationBundle-cd815e10.js';
import { s as sizeToCSS } from './size-782ed57a.js';
import { t as trim } from './stringUtils-16f617bc.js';
import { p as pickFiles } from './filePickerUtils-d4fe2795.js';
import { g as getClientHints } from './clientHints-c76a913b.js';
import { u as usePress } from './usePress-97fc1cf1.js';
import { useRef, useState, useImperativeHandle } from 'preact/hooks';
import './TabbableModeContext-7d8ad946.js';
import { u as useTabbableMode } from './useTabbableMode-a3a351d0.js';
import { u as useTestId } from './useTestId-adde554c.js';
import { u as useComponentTheme } from './useComponentTheme-d2f9e47f.js';
import { u as useInteractionStyle } from './useInteractionStyle-d65c72b6.js';
import { FilePickerRedwoodTheme } from './UNSAFE_FilePicker/themes/redwood/FilePickerTheme.js';

const getAriaLabel = ({ ariaLabel, isDisabled, translations, primaryText, secondaryText, selectionMode }) => {
    return ariaLabel
        ? ariaLabel
        : `${isDisabled ? '' : translations.filePicker_addFiles() + '. '}${getPrimaryText(primaryText, translations)}. ${getSecondaryText(secondaryText, translations, selectionMode)}`;
};
/**
 * Returns the styles of the file picker
 */
const getStyles = (width, height) => {
    const dimStyles = {
        width: width ? sizeToCSS(width) : undefined,
        height: height ? sizeToCSS(height) : undefined
    };
    return dimStyles;
};
/**
 * Returns the primary text
 */
const getPrimaryText = (primaryText, translations) => {
    return primaryText ? primaryText : translations.filePicker_dropzonePrimaryText();
};
/**
 * Returns the secondary text text
 */
const getSecondaryText = (secondaryText, translations, selectionMode) => {
    const defaultSecondaryText = selectionMode === 'multiple'
        ? translations.filePicker_dropzoneSecondaryTextMultiple()
        : translations.filePicker_dropzoneSecondaryText();
    return secondaryText ? secondaryText : defaultSecondaryText;
};
/**
 * Takes in a list of files and returns a list of accepted files and
 * a list of rejected files based on file type
 */
const validateTypes = (files, accept, translations) => {
    const accepted = [];
    const rejected = [];
    let file;
    let type;
    if (files) {
        for (let i = 0; i < files.length; i++) {
            file = files[i];
            const name = file.name;
            type = translations.filePicker_unknownFileTypeUploadError();
            if (name) {
                const nameSplit = name.split('.');
                type = nameSplit.length > 1 ? '.' + nameSplit.pop() : type;
            }
            type = file.type ? file.type : type;
            // If type isn't already in one of the lists, add it
            if (accepted.indexOf(type) === -1 && rejected.indexOf(type) === -1) {
                if (_acceptFile(file, accept)) {
                    accepted.push(type);
                }
                else {
                    rejected.push(type);
                }
            }
        }
    }
    return { accepted, rejected };
};
/**
 * Creates a file list
 */
const createFileList = (origList) => {
    const descriptor = {
        length: { value: origList.length },
        item: {
            value(index) {
                return this[index];
            }
        }
    };
    for (let i = 0; i < origList.length; i++) {
        descriptor[i] = { value: origList[i], enumerable: true };
    }
    return Object.create(FileList.prototype, descriptor);
};
/**
 * Returns false if selected multiple files when in single file selection mode
 */
const validateSelectionMode = (files, selectionMode) => {
    return selectionMode !== 'single' || files.length === 1;
};
/**
 * Returns the correct message if mime type validation has failed
 */
const getMimeTypeValidationMessages = (rejected, translations) => {
    const messages = [];
    if (rejected.length === 1) {
        messages.push({
            severity: 'error',
            summary: translations.filePicker_singleTypeUploadError({
                fileType: rejected[0]
            })
        });
    }
    else {
        messages.push({
            severity: 'error',
            summary: translations.filePicker_multipleFileTypeUploadError({
                fileTypes: rejected.join(translations.plural_separator())
            })
        });
    }
    return messages;
};
/**
 * Returns true if file passes mimetype validation
 */
const _acceptFile = (file, accept) => {
    const acceptProp = accept;
    if (!acceptProp || acceptProp.length === 0 || !file) {
        return true;
    }
    let fileAccept;
    for (let i = 0; i < acceptProp.length; i++) {
        fileAccept = trim(acceptProp[i]);
        if (!fileAccept) {
            return true;
        }
        else if (fileAccept.startsWith('.', 0)) {
            // when dragover, only MIME type is available, file name is undefined
            // to lowerCase is to make the string comparison case insensitive
            if (!file.name || (file.name && file.name.toLowerCase().endsWith(fileAccept.toLowerCase()))) {
                return true;
            }
        }
        else if (!file.type) {
            return false;
        }
        else if (fileAccept === 'image/*') {
            if (file.type.startsWith('image/', 0)) {
                return true;
            }
        }
        else if (fileAccept === 'video/*') {
            if (file.type.startsWith('video/', 0)) {
                return true;
            }
        }
        else if (fileAccept === 'audio/*') {
            if (file.type.startsWith('audio/', 0)) {
                return true;
            }
        }
        else if (file.type === fileAccept) {
            return true;
        }
    }
    return false;
};

/**
 * Calls the onReject callback when invalid files are selected.
 * For invalid dragged files, this function will return a promise resolver that
 * should be called when the invalid files are no longer dragged over the filepicker.
 */
const fireRejectAction = (messages, isDrag, onReject) => {
    let resolver;
    const dragPromise = isDrag
        ? new Promise((resolve) => {
            resolver = resolve;
        })
        : null;
    onReject?.({
        messages,
        until: dragPromise
    });
    return resolver;
};
/**
 * Calls the onCommit callback when all files are valid.
 */
const handleFilesAdded = (files, onCommit) => {
    // Bug 28503874 - filepicker: filelist cleared after the handler returns
    // Note: the parameter "files" is a direct reference to the embedded Input element's property
    // which could be reset or changed.
    // we need to return a copy of FileList just in case apps hold on to a reference to FileList
    const list = createFileList(files);
    onCommit?.({
        files: list
    });
};

/**
 * The file picker helper method for non-disabled filepickers.
 */
const useFilepickerElementHelper = (props, rootRef, setValidity) => {
    const { callback, validation } = clickCallbackUtils(props);
    const { pressProps } = usePress(callback);
    const dragAndDropProps = useDragAndDropEvents(props.accept, props.selectionMode, fireRejectAction, handleFilesAdded, rootRef, props.translations, props.onCommit, props.onReject, setValidity);
    return {
        validation,
        dragAndDropProps,
        pressProps
    };
};
const clickCallbackUtils = (props) => {
    /**
     * Callback function when the filepicker is clicked.
     */
    const handleSelectingFiles = (event) => {
        // Bug 27775173 - within firefox browser cannot tab past filepicker without file selector
        // window opening
        // only launching the file picker if click or 'Enter' was pressed
        if (event.type === 'click' ||
            (event.type === 'keyup' && event.code === 'Enter')) {
            // Bug 26907138 - form submit event is triggered when the file upload button is clicked
            event.preventDefault();
            pickFiles(_handleClickValidation, {
                accept: props.accept,
                selectionMode: props.selectionMode ?? 'multiple',
                capture: props.capture ?? 'none'
            });
        }
    };
    /**
     * Handles file validation from selecting files through the file dialog
     */
    const _handleClickValidation = (files) => {
        if (files.length > 0) {
            const rejected = validateTypes(files, props.accept, props.translations).rejected;
            if (rejected.length > 0) {
                fireRejectAction(getMimeTypeValidationMessages(rejected, props.translations), false, props.onReject);
            }
            else {
                handleFilesAdded(files, props.onCommit);
            }
        }
    };
    return {
        callback: handleSelectingFiles,
        validation: _handleClickValidation
    };
};
const useDragAndDropEvents = (accept, selectionMode, fireRejectAction, handleFilesAdded, rootRef, translations, onCommit, onReject, 
// setValidity not set for custom filepicker
setValidity) => {
    const inDropZone = useRef(false);
    const isDroppable = useRef(false);
    const dragPromiseResolver = useRef();
    /**
     * Drag Enter handler called when a dragged file enter the filepicker dropzone
     */
    const _handleDragEnter = (event) => {
        event.preventDefault();
        event.stopPropagation();
    };
    /**
     * Drag over handler called when a file is dragged over the filepicker
     */
    const _handleDragOver = (event) => {
        event.preventDefault();
        event.stopPropagation();
        if (inDropZone.current) {
            return;
        }
        const browser = getClientHints().browser;
        inDropZone.current = true;
        isDroppable.current = true;
        // Safari doesn't provide the data for the files on drag over so validation cannot be done until drop
        if (browser !== 'safari') {
            if (!event.dataTransfer) {
                return;
            }
            const files = createFileList(event.dataTransfer.items);
            let messages = [];
            const selectionModeValid = validateSelectionMode(files, selectionMode);
            const droppable = validateTypes(files, accept, translations);
            if (selectionModeValid && droppable.rejected.length === 0) {
                // validation passes
                setValidity?.('valid');
            }
            else {
                isDroppable.current = false;
                if (selectionModeValid) {
                    // mimetype Validation fails
                    messages = getMimeTypeValidationMessages(droppable.rejected, translations);
                }
                else {
                    // selected multiple files in single selection mode
                    messages.push({
                        severity: 'error',
                        summary: translations.filePicker_singleFileUploadError()
                    });
                }
                setValidity?.('invalid');
                dragPromiseResolver.current = fireRejectAction(messages, true, onReject);
            }
        }
        else {
            setValidity?.('valid');
        }
    };
    /**
     * Drag leave handler is called when the dragged file leaves the filepicker dropzone
     */
    const _handleDragLeave = (event, mimeTypeDropFail = false) => {
        if (!inDropZone.current) {
            return;
        }
        event.preventDefault();
        event.stopPropagation();
        if (!rootRef.current?.contains(event.relatedTarget)) {
            inDropZone.current = false;
            setValidity?.('NA');
            // There's only a promise if validation failed on dragover
            if (!isDroppable.current && !mimeTypeDropFail) {
                dragPromiseResolver.current?.();
            }
        }
    };
    /**
     * Drop file handler is called when a file is dropped on the filepicker dropzone
     */
    const _handleFileDrop = (event) => {
        if (inDropZone.current) {
            event.preventDefault();
            event.stopPropagation();
            if (!event.dataTransfer) {
                inDropZone.current = false;
                return;
            }
            const files = createFileList(event.dataTransfer.files);
            let mimeTypeDropFail = false;
            if (isDroppable.current) {
                let messages = [];
                if (validateSelectionMode(files, selectionMode)) {
                    const droppable = validateTypes(files, accept, translations);
                    if (droppable.rejected.length > 0) {
                        // mimetype Validation fails
                        messages = getMimeTypeValidationMessages(droppable.rejected, translations);
                        mimeTypeDropFail = true;
                    }
                }
                else {
                    messages.push({
                        severity: 'error',
                        summary: translations.filePicker_singleFileUploadError()
                    });
                }
                if (messages.length > 0) {
                    isDroppable.current = false;
                    fireRejectAction(messages, false, onReject);
                }
                if (isDroppable.current) {
                    handleFilesAdded(files, onCommit);
                }
            }
            _handleDragLeave(event, mimeTypeDropFail);
        }
    };
    return {
        onDragEnter: _handleDragEnter,
        onDragOver: _handleDragOver,
        onDragLeave: _handleDragLeave,
        onDrop: _handleFileDrop
    };
};

/**
 * Default content of the file picker
 */
const FilePickerDefaultTriggerContent = ({ isDisabled, primaryText, secondaryText, translations, selectionMode }) => {
    const { styles: { disabledPrimaryTextStyle, primaryTextStyle, disabledSecondaryTextStyle, secondaryTextStyle } } = useComponentTheme(FilePickerRedwoodTheme);
    return (jsxs(Fragment, { children: [jsx("div", { class: isDisabled ? disabledPrimaryTextStyle : primaryTextStyle, children: getPrimaryText(primaryText, translations) }), jsx("div", { class: isDisabled ? disabledSecondaryTextStyle : secondaryTextStyle, children: getSecondaryText(secondaryText, translations, selectionMode) })] }));
};

/**
 * A file picker displays a clickable dropzone for selecting files from the device storage.
 */
function FilePicker({ capture = 'none', isDisabled = false, selectionMode = 'multiple', children, ...otherProps }) {
    // this ref is added only for testing purposes.  Allows the test to directly
    // call certain functions that should be tested
    const testHandlersRef = otherProps.__testHandlerSymbol;
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const props = { capture, selectionMode, translations, ...otherProps };
    if (isDisabled) {
        return jsx(DisabledFilePicker, { ...props, children: children });
    }
    return children ? (jsx(CustomFilePicker, { testHandlersRef: testHandlersRef, ...props, children: children })) : (jsx(DefaultFilePicker, { testHandlersRef: testHandlersRef, ...props }));
}
/**
 * The default file picker element.
 */
const DefaultFilePicker = (props) => {
    const testIdProps = useTestId(props.testId);
    const { interactionProps, applyActiveStyle, applyHoverStyle, applyPseudoHoverStyle } = useInteractionStyle(false);
    const { classes, styles: { maxWidth, inner, activeStyle, innerNeedsEventsHoverStyle, innerPseudoHoverStyle, invalidDrop, validDrop } } = useComponentTheme(FilePickerRedwoodTheme, {
        hoveredState: applyHoverStyle ? 'isHover' : undefined,
        pseudoHoveredState: applyPseudoHoverStyle ? 'isPseudoHover' : undefined
    });
    const innerInteractiveClasses = [
        applyActiveStyle ? activeStyle : '',
        applyHoverStyle ? innerNeedsEventsHoverStyle : '',
        applyPseudoHoverStyle ? innerPseudoHoverStyle : ''
    ];
    const [validity, setValidity] = useState('NA');
    // class added to change bg/border color based on if file is valid on drag and drop
    const validityClass = validity === 'valid' ? validDrop : validity === 'invalid' ? invalidDrop : undefined;
    const rootRef = useRef(null);
    const { validation, dragAndDropProps, pressProps } = useFilepickerElementHelper(props, rootRef, setValidity);
    const mergedEventProps = mergeProps(pressProps, interactionProps);
    // These are backdoor handles that are used for testing purposes only
    useSetupTestRef(dragAndDropProps, validation, props.testHandlersRef || null);
    const wrapperClasses = classNames([classes, props.width === undefined && maxWidth]);
    const { isTabbable } = useTabbableMode();
    const { primaryText, secondaryText, translations, selectionMode, width, height } = props;
    return (jsx("div", { ...testIdProps, ...mergedEventProps, class: wrapperClasses, tabIndex: isTabbable ? 0 : -1, role: "button", "aria-label": getAriaLabel({
            ariaLabel: props['aria-label'],
            isDisabled: false,
            translations,
            primaryText,
            secondaryText,
            selectionMode
        }), ref: rootRef, style: getStyles(width, height), children: jsx("div", { class: classNames([inner, validityClass, ...innerInteractiveClasses]), ...dragAndDropProps, children: jsx(FilePickerDefaultTriggerContent, { ...props, isDisabled: false }) }) }));
};
/**
 * The disabled file picker element.
 */
const DisabledFilePicker = ({ children, primaryText, secondaryText, translations, selectionMode, width, height, testId, ...props }) => {
    const testIdProps = useTestId(testId);
    const { classes, styles: { maxWidth, inner, noChildrenMargin } } = useComponentTheme(FilePickerRedwoodTheme, {
        disabledState: 'isDisabled'
    });
    return (jsx("div", { class: classNames([classes, inner, noChildrenMargin, width === undefined && maxWidth]), role: "button", "aria-label": getAriaLabel({
            ariaLabel: props['aria-label'],
            isDisabled: true,
            translations,
            primaryText,
            secondaryText
        }), "aria-hidden": "true", ...testIdProps, style: getStyles(width, height), children: children || (jsx(FilePickerDefaultTriggerContent, { ...props, isDisabled: true, translations: translations })) }));
};
/**
 * The custom file picker element.
 */
const CustomFilePicker = (props) => {
    const testIdProps = useTestId(props.testId);
    const { interactionProps, applyHoverStyle, applyPseudoHoverStyle } = useInteractionStyle(false);
    const { classes, styles: { maxWidth, noChildrenMargin } } = useComponentTheme(FilePickerRedwoodTheme, {
        hoveredState: applyHoverStyle ? 'isHover' : undefined,
        pseudoHoveredState: applyPseudoHoverStyle ? 'isPseudoHover' : undefined
    });
    const rootRef = useRef(null);
    const { validation, dragAndDropProps, pressProps } = useFilepickerElementHelper(props, rootRef);
    const mergedEventProps = mergeProps(pressProps, dragAndDropProps, interactionProps);
    // These are backdoor handles that are used for testing purposes only
    useSetupTestRef(dragAndDropProps, validation, props.testHandlersRef || null);
    const wrapperClasses = classNames([
        classes,
        noChildrenMargin,
        props.width === undefined && maxWidth
    ]);
    const { translations, selectionMode } = props;
    const { isTabbable } = useTabbableMode();
    return (jsx("div", { class: classNames([wrapperClasses]), tabIndex: isTabbable ? undefined : -1, role: "button", "aria-label": getAriaLabel({
            ariaLabel: props['aria-label'],
            isDisabled: false,
            translations,
            selectionMode
        }), ref: rootRef, style: getStyles(props.width, props.height), ...testIdProps, ...mergedEventProps, children: props.children }));
};
/**
 * Only called for testing purposes, sets up the test ref that
 * allows for backdoor access to certain methods
 */
const useSetupTestRef = (dragAndDropProps, validation, testHandlersRef) => {
    useImperativeHandle(testHandlersRef, () => ({
        onDragEnter: dragAndDropProps.onDragEnter,
        onDragOver: dragAndDropProps.onDragOver,
        onDrop: dragAndDropProps.onDrop,
        onDragLeave: dragAndDropProps.onDragLeave,
        onClickSelected: validation
    }));
};

export { FilePicker as F };
//# sourceMappingURL=FilePicker-d8a0ad3a.js.map
