/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { u as useEffectEvent } from './useEffectEvent-e320381e.js';
import { g as getClientHints } from './clientHints-c76a913b.js';
import { m as mergeRefs } from './refUtils-b9d8d91a.js';
import { useMemo, useRef, useEffect, useLayoutEffect, useCallback } from 'preact/compat';
import { T as TextFieldInput } from './TextFieldInput-3c39cb7b.js';
import { containerStyles } from './UNSAFE_TextField/themes/ObfuscatedTextFieldInputStyles.css.js';

const DEFAULT_MAX_HISTORY = 100;
/**
 * This class creates an instance that can be used to manage history.
 * One can use the push method to store any history state and can call
 * undo/redo method to get a previous/next state in the history.
 * @template State The type of the state stored in the history
 */
class HistoryManager {
    constructor({ maxHistory = DEFAULT_MAX_HISTORY }) {
        this.currentIndex = 0;
        this.maxHistory = maxHistory;
        this.states = [];
    }
    get currentState() {
        return this.states[this.currentIndex];
    }
    get isEmpty() {
        return this.states.length === 0;
    }
    get hasUndo() {
        return !this.isEmpty && this.currentIndex > 0;
    }
    get hasRedo() {
        return !this.isEmpty && this.currentIndex < this.states.length - 1;
    }
    /**
     * Pushes a state to the history
     * @param state the state to be pushed into the history
     */
    push(state) {
        // if the current position is not the end of the array, clear all the
        // items after the current position
        if (this.currentIndex < this.states.length - 1)
            this.states.length = this.currentIndex + 1;
        // add the new state
        this.states.push(state);
        // if the states' size exceeded the allowed limit, remove the oldest state
        if (this.states.length > this.maxHistory)
            this.states.shift();
        this.currentIndex = this.states.length - 1;
    }
    /**
     * Retrieves the state from the history after walking the provided steps.
     * @param steps number of steps to travel in the history
     * @returns the state after walking the steps in the history
     */
    go(steps) {
        this.currentIndex = Math.min(Math.max(this.currentIndex + steps, 0), this.states.length - 1);
        return this.currentState;
    }
    /**
     * Go back in history by 1 step
     * @returns The previous state
     */
    undo() {
        return this.go(-1);
    }
    /**
     * Go forward in history by 1 step
     * @returns The previous state
     */
    redo() {
        return this.go(1);
    }
    /**
     * Clears the history
     */
    clear() {
        this.states.length = 0;
        this.currentIndex = 0;
    }
}

/**
 * A custom hook that provides history management. Using this hook, one can push
 * consecutive states to the stack. Then they can go to any point in the history
 * by performing undo/redo operations.
 * @param param0 The hook's props
 * @returns The history manager controller that can be used to manage the history.
 *
 * @template State A Generic representing the shape of the state.
 *
 * @example
 * function MyComponent(props) {
 *   const historyManager = useHistoryManager<MyValue>({
 *     state: props.value,
 *     comparator: (value1, value2) => value1 === value2
 *   });
 *
 *   return (
 *     <SomeComponent
 *       value={props.value}
 *       onValueChange={props.onValueChange}
 *       onUndo={() => {
 *         const undoValue = historyManager.undo();
 *         props.onValueChange(historyManager.undo());
 *       }}
 *       onRedo={() => {
 *         const redoValue = historyManager.redo();
 *         props.onValueChange(redoValue);
 *       }}  />
 *   );
 * }
 */
function useHistoryManager({ state, comparator, isDisabled, maxHistory }) {
    // We do not want to recreate history manager and only have a single version.
    const initialMaxHistoryRef = useRef(maxHistory);
    const historyManager = useMemo(() => new HistoryManager({ maxHistory: initialMaxHistoryRef.current }), []);
    // We use a ref for determining if we should ignore state updates. This is needed
    // as we may not want to update the history when we are undoing/redoing.
    const isIgnoredRef = useRef(false);
    // We want to add the state to the history if it changes. But, we should not cause
    // a rerender as pushing a state to the history does not cause any UI changes. So we
    // will use refs instead of states.
    const previousStateRef = useRef();
    // we only push the new state if
    // 1. it is different from the old state
    // 2. the history management is not disabled
    // 3. the states are not ignored
    if (!comparator(previousStateRef.current, state) && !isDisabled && !isIgnoredRef.current) {
        previousStateRef.current = state;
        historyManager.push(state);
    }
    // when the history management becomes disabled, we clear the history created so far
    if (isDisabled) {
        historyManager.clear();
    }
    // clear the history when the component is unmounted
    // we only want to clear history on unmount.
    // TODO: Disable eslint exhaustive-deps rule when it is enabled
    // doing it now results in eslint error, saying the rule is not found.
    useEffect(() => () => historyManager.clear(), [historyManager]);
    return useMemo(() => ({
        get hasRedo() {
            return historyManager.hasRedo;
        },
        get hasUndo() {
            return historyManager.hasUndo;
        },
        redo: () => historyManager.redo(),
        undo: () => historyManager.undo(),
        ignore(doIgnore = true) {
            isIgnoredRef.current = !!doIgnore;
        }
    }), [historyManager]);
}

////////////////////////////////////////////////////////////////////////////////
// Various delete interactions. While this covers all platforms, the examples //
// are only provided for MacOS. This will work the same for similar behavior  //
// from other platforms achieved from platform specific keystrokes.           //
////////////////////////////////////////////////////////////////////////////////
// Some of the deletion types exist in the spec, but unable to trigger for input:
// 1. deleteSoftLineForward
// 2. deleteEntireSoftLine
// 3. deleteHardLineBackward (triggered only in Safari instead of deleteSoftLineBackward)
// 4. deleteHardLineForward
// 5. deleteByDrag
// 6. deleteContent
//
// Some we do not want to support:
// 1. deleteByCut - we want to disable cutting/copying value when obfuscated
/**
 * Deletes the whole selection.
 * @param content the current content
 * @param selectionStart the selection start index
 * @param selectionEnd the selection end index
 * @returns the content with deletion performed and the new cursor position
 */
const deleteSelection = (content, selectionStart, selectionEnd) => ({
    content: content.slice(0, selectionStart) + content.slice(selectionEnd),
    // when a selection is deleted, the new cursor position will always be the
    //  selectionStart
    selectionStart,
    selectionEnd: selectionStart
});
/**
 * Deletes the whole content before the cursor.
 * @param content the current content
 * @param selectionStart the selection start index
 * @param selectionEnd the selection end index
 * @returns the content with deletion performed and the new cursor position
 */
const deleteEverythingBackward = (content, selectionStart, selectionEnd) => 
// if there is a selection, remove the selection to form the new word
selectionEnd > selectionStart
    ? deleteSelection(content, selectionStart, selectionEnd)
    : // if the cursor is at the start, then noop
        selectionStart === 0
            ? { content, selectionStart, selectionEnd }
            : // if there is no selection, then delete everything before the cursor
                // we don't delete word by word when we are showing obfuscated text
                {
                    content: content.slice(selectionEnd),
                    // the new selection range will be at the beginning of the text
                    selectionStart: 0,
                    selectionEnd: 0
                };
/**
 * Deletes the whole content after the cursor.
 * @param content the current content
 * @param selectionStart the selection start index
 * @param selectionEnd the selection end index
 * @returns the content with deletion performed and the new cursor position
 */
const deleteEverythingForward = (content, selectionStart, selectionEnd) => 
// if there is a selection, remove the selection to form the new word
selectionEnd > selectionStart
    ? deleteSelection(content, selectionStart, selectionEnd)
    : // if the cursor is at the end, then noop
        selectionStart === content.length
            ? { content, selectionStart, selectionEnd }
            : // if there is no selection, then delete everything after the cursor and the selection range
                // stays the same
                // we don't delete word by word when we are showing obfuscated text
                { content: content.slice(0, selectionStart), selectionStart, selectionEnd };
const deletionOperations = {
    /**
     * Deletes the current selection or a character before the cursor if there is no selection.
     * Key Combinations (MacOS) - delete
     * @param content the current content
     * @param selectionStart the selection start index
     * @param selectionEnd the selection end index
     * @returns the content with deletion performed and the new cursor position
     */
    deleteContentBackward(content, selectionStart, selectionEnd) {
        // if there is a selection, remove the selection to form the new word
        if (selectionEnd > selectionStart) {
            return deleteSelection(content, selectionStart, selectionEnd);
        }
        // if the cursor is at the start, then noop
        if (selectionStart === 0) {
            return { content, selectionStart, selectionEnd };
        }
        // if no selection, then remove one char before the cursor
        return {
            content: content.slice(0, selectionStart - 1) + content.slice(selectionEnd),
            // new selectionStart & selectionEnd will be one position before
            selectionStart: selectionStart - 1,
            selectionEnd: selectionStart - 1
        };
    },
    /**
     * Deletes the current selection or a character after the cursor if there is no selection.
     * Key Combinations (MacOS) - fn + delete
     * @param content the current content
     * @param selectionStart the selection start index
     * @param selectionEnd the selection end index
     * @returns the content with deletion performed
     */
    deleteContentForward(content, selectionStart, selectionEnd) {
        // if there is a selection, remove the selection to form the new word
        if (selectionEnd > selectionStart) {
            return deleteSelection(content, selectionStart, selectionEnd);
        }
        // if the cursor is at the end, then noop
        if (selectionStart === content.length) {
            return { content, selectionStart, selectionEnd };
        }
        // if no selection, then remove one char after the cursor
        return {
            content: content.slice(0, selectionStart) + content.slice(selectionEnd + 1),
            // the new selection range will stay the same
            selectionStart,
            selectionEnd
        };
    },
    /**
     * Deletes the current selection or a word before the cursor if there is no selection.
     * Key Combinations (MacOS) - option + delete
     * @param content the current content
     * @param selectionStart the selection start index
     * @param selectionEnd the selection end index
     * @returns the content with deletion performed
     */
    deleteWordBackward(content, selectionStart, selectionEnd) {
        // In input's case, when obfuscated there will not be any spaces
        // So, we delete everything before the cursor
        return deleteEverythingBackward(content, selectionStart, selectionEnd);
    },
    /**
     * Deletes the current selection or a word after the cursor if there is no selection.
     * Key Combinations (MacOS) - option + fn + delete
     * @param content the current content
     * @param selectionStart the selection start index
     * @param selectionEnd the selection end index
     * @returns the content with deletion performed
     */
    deleteWordForward(content, selectionStart, selectionEnd) {
        // In input's case, when obfuscated there will not be any spaces
        // So, we delete everything after the cursor
        return deleteEverythingForward(content, selectionStart, selectionEnd);
    },
    /**
     * Deletes the current selection or everything before the cursor if there is no selection.
     * Key Combinations (MacOS) - command + delete
     * @param content the current content
     * @param selectionStart the selection start index
     * @param selectionEnd the selection end index
     * @returns the content with deletion performed
     */
    deleteSoftLineBackward(content, selectionStart, selectionEnd) {
        // delete everything before the cursor
        return deleteEverythingBackward(content, selectionStart, selectionEnd);
    },
    /**
     * Deletes the current selection or everything after the cursor if there is no selection.
     * Key Combinations (MacOS) - unable to trigger
     * @param content the current content
     * @param selectionStart the selection start index
     * @param selectionEnd the selection end index
     * @returns the content with deletion performed
     */
    deleteSoftLineForward(content, selectionStart, selectionEnd) {
        // delete everything after the cursor
        return deleteEverythingForward(content, selectionStart, selectionEnd);
    },
    /**
     * Deletes the current selection or everything before the cursor if there is no selection.
     * Key Combinations (MacOS) - command + delete in Safari only
     * @param content the current content
     * @param selectionStart the selection start index
     * @param selectionEnd the selection end index
     * @returns the content with deletion performed
     */
    deleteHardLineBackward(content, selectionStart, selectionEnd) {
        // in input, everything is single line. So, this is similar to soft line
        // delete everything before the cursor
        return deleteEverythingBackward(content, selectionStart, selectionEnd);
    },
    /**
     * Deletes the current selection or everything after the cursor if there is no selection.
     * Key Combinations (MacOS) - unable to trigger
     * @param content the current content
     * @param selectionStart the selection start index
     * @param selectionEnd the selection end index
     * @returns the content with deletion performed
     */
    deleteHardLineForward(content, selectionStart, selectionEnd) {
        // in input, everything is single line. So, this is similar to soft line
        // delete everything after the cursor
        return deleteEverythingForward(content, selectionStart, selectionEnd);
    },
    /**
     * Deletes the current selection without any direction. Noop if there is no
     * selection.
     * @param content the current content
     * @param selectionStart the selection start index
     * @param selectionEnd the selection end index
     */
    deleteContent(content, selectionStart, selectionEnd) {
        // this should always have a selection
        if (selectionEnd > selectionStart) {
            return deleteSelection(content, selectionStart, selectionEnd);
        }
        // return the original content if there is no selection.
        return { content, selectionStart, selectionEnd };
    }
};
/**
 * Checks if the provided deletion operation is supported
 * @param op The operation name
 * @returns whether the deletion operation is supported
 */
const isSupportedDeletionOperation = (op) => Object.keys(deletionOperations).includes(op);
//////////////////////////////////////////////////////////////////////////////
// Various insertions interactions. Insertions are those interactions which //
// include text to the field one way or another (like pasting and such).    //
//////////////////////////////////////////////////////////////////////////////
// Since we will be using input element and not contenteditable div or textarea
// we will only support a few and rest we will simply not handle.
// 1. insertText - when one normally types
// 2. insertFromPaste - when one pastes content or autofill
// The way we handle the event is same for these supported types.
// See other inputTypes and what they do here -
// https://w3c.github.io/input-events/#interface-InputEvent-Attributes
const supportedInputOperations = ['insertText', 'insertFromPaste'];
/**
 * Checks if the provided insertion operation is supported
 * @param op The operation name
 * @returns whether the insertion operation is supported
 */
const isSupportedInsertionOperation = (op) => supportedInputOperations.includes(op);
/**
 * Checks if the keyboard event is an undo action
 * @param event the keyboard event
 * @returns true if this is an undo action
 */
const isUndoEvent = (event) => {
    const { platform } = getClientHints();
    return ((platform === 'mac' && event.metaKey && !event.shiftKey && event.key === 'z') ||
        (platform === 'windows' && event.ctrlKey && event.key === 'z'));
};
/**
 * Checks if the keyboard event is a redo action
 * @param event the keyboard event
 * @returns true if this is a redo action
 */
const isRedoEvent = (event) => {
    const { platform } = getClientHints();
    return ((platform === 'mac' && event.metaKey && event.shiftKey && event.key === 'z') ||
        (platform === 'windows' && event.ctrlKey && event.key === 'y'));
};
/**
 * Compares two states to see if they are equal.
 * @param a a state to be compared
 * @param b another state to be compared
 * @returns result of equality
 */
const compareInputHistoryState = (a, b) => {
    if (a === b)
        return true;
    if (!a || !b)
        return false;
    return (a.value === b.value &&
        a.selection.start === b.selection.start &&
        a.selection.end === b.selection.end);
};
/**
 * Renders an input field (similar to TextFieldInput) that obfuscates the text
 * entered in it.
 */
const ObfuscatedTextFieldInput = ({ character = '•', currentCommitValue, inputRef, isRevealed = false, onCommit, onInput, type = 'text', value, ...passThroughProps }) => {
    // Even though TextFieldInput handles retaining the cursor position on rerender
    // it will not work for us here as we preventDefault in the onbeforeinput event
    // which will prevent the input event from getting called. Since TextFieldInput
    // component relies on the input event to be called for restoring cursor position
    // things will not work as expected. So, we have to reimplement this logic here
    // again.
    const selectionRangeRef = useRef({
        selectionStart: value?.length ?? 0,
        selectionEnd: value?.length ?? 0
    });
    const internalInputRef = useRef(null);
    const mergedInputRef = useMemo(() => mergeRefs(inputRef, internalInputRef), [inputRef, internalInputRef]);
    // this component manually handles history when it is obfuscated, so we will be
    // using the history manager
    const historyManager = useHistoryManager({
        comparator: compareInputHistoryState,
        // We do not want to maintain history when we are revealing the text.
        // Disabling will reset the history.
        isDisabled: isRevealed,
        // We push the new value along with the current selectionRange to the history.
        // Notice that we memoize the state based on the value. This is because a new
        // state should be created only when the value changes and not when the selection
        // changes.
        state: useMemo(() => ({
            value: value ?? '',
            selection: {
                start: selectionRangeRef.current.selectionStart,
                end: selectionRangeRef.current.selectionEnd
            }
        }), [value])
    });
    const onInputPayloadRef = useRef();
    /**
     * Restores selection range using the ref.
     * @param _ we don't need this param, but this is just for making the
     *            useLayoutEffect hook and its dependency array to match.
     */
    const STABLE_restoreSelectionRange = useEffectEvent((_) => {
        // only update the selectionRange of the component if it is focused
        if (internalInputRef.current !== document.activeElement)
            return;
        const { selectionStart, selectionEnd } = selectionRangeRef.current;
        internalInputRef.current?.setSelectionRange(selectionStart, selectionEnd);
    });
    // when the value changes, we need to update the selection range
    useLayoutEffect(() => {
        // restore selection on value change
        STABLE_restoreSelectionRange(value);
    }, [STABLE_restoreSelectionRange, value]);
    const computeNextInput = useCallback((event) => {
        // if the component is revealing the current value, then let it
        // go through the onInput event
        if (isRevealed)
            return;
        // otherwise handle it here
        const target = event.target;
        const { selectionStart, selectionEnd } = target;
        const previousValue = value ?? '';
        const operation = event.inputType;
        // stop ignoring history state updates as user initiated an action
        historyManager.ignore(false);
        // reset the next input state
        onInputPayloadRef.current = undefined;
        // There are different insertion inputTypes, but we only care about some
        // see isSupportedInsertionOperation for what we support and
        // https://w3c.github.io/input-events/#interface-InputEvent-Attributes
        // for all the available inputTypes.
        // And per spec, event.data will exist for insertion events, but we check for
        // it anyway.
        if (isSupportedInsertionOperation(operation) && event.data) {
            // now, we determine what is the current value based on the
            // current position of the cursor, previous value and the current
            // entered key
            const newValue = previousValue.slice(0, selectionStart ?? previousValue.length) +
                event.data +
                previousValue.slice(selectionEnd ?? previousValue.length);
            // new cursor position will be number of chars in event.data from
            // the selectionStart
            const cursorPosition = (selectionStart ?? previousValue.length) + event.data.length;
            selectionRangeRef.current = {
                selectionStart: cursorPosition,
                selectionEnd: cursorPosition
            };
            // store the next input state which will be used to trigger onInput
            // during the input event
            onInputPayloadRef.current = { previousValue, value: newValue };
            return;
        }
        // there are various different types of deletion events (e.g., delete vs backspace)
        // and we need to handle it accordingly
        // See https://w3c.github.io/input-events/#interface-InputEvent-Attributes
        if (isSupportedDeletionOperation(operation)) {
            const deletionOperation = deletionOperations[operation];
            const { content: newValue, selectionStart: newSelectionStart, selectionEnd: newSelectionEnd } = deletionOperation(previousValue, selectionStart ?? previousValue.length, selectionEnd ?? previousValue.length);
            // new cursor position will always be the selection start
            selectionRangeRef.current = {
                selectionStart: newSelectionStart,
                selectionEnd: newSelectionEnd
            };
            // with this, trigger the onInput (only if the data is changed)
            if (previousValue !== newValue) {
                // store the next input state which will be used to trigger onInput
                // during the input event
                onInputPayloadRef.current = { previousValue, value: newValue };
            }
            return;
        }
        // handling history actions - undo/redo
        if (['historyUndo', 'historyRedo'].includes(event.inputType)) {
            const isUndo = event.inputType === 'historyUndo';
            // if we don't have an undo/redo state, do nothing and return
            if ((isUndo && !historyManager.hasUndo) || (!isUndo && !historyManager.hasRedo))
                return;
            // since we are restoring from history, we do not want to push this state back to history
            // so we ignore the history updates until the next normal input happens
            historyManager.ignore();
            const { value: newValue, selection } = isUndo
                ? historyManager.undo()
                : historyManager.redo();
            // with this trigger the onInput and the selection range
            selectionRangeRef.current = {
                selectionStart: selection.start,
                selectionEnd: selection.end
            };
            // store the next input state which will be used to trigger onInput
            // during the input event
            onInputPayloadRef.current = { previousValue, value: newValue };
            return;
        }
        // Unsupported action, so we prevent the input event from triggering
        event.preventDefault();
    }, [historyManager, isRevealed, value]);
    const triggerOnInputCallback = useCallback(() => {
        // if the component is revealing the current value, then let it
        // go through the onInput event from the TextFieldInput component.
        if (isRevealed)
            return;
        // if there is a stored next input state, then call the
        // onInput callback
        if (onInputPayloadRef.current) {
            onInput?.(onInputPayloadRef.current);
        }
    }, [isRevealed, onInput]);
    const selectAllWhenObfuscated = useCallback(() => {
        // do not do anything when the value is revealed
        if (isRevealed)
            return;
        // Since we are using special char, double clicking will not select all the text
        // and so we do it manually.
        internalInputRef.current?.select();
    }, [isRevealed]);
    const killEventWhenObfuscated = useCallback((event) => {
        if (isRevealed)
            return;
        // prevent the default action when we are obfuscating the text.
        // usually for events like cut and copy as we do not want to allow that.
        event.preventDefault();
    }, [isRevealed]);
    // the onInputHandler, onCommitHandler, onKeyDown are wired to TextFieldInput component
    const onInputHandler = useCallback((details) => {
        // do not handle the onInput events, if the component is not in
        // revealed state as we are handling things in onBeforeInput
        if (!isRevealed)
            return;
        // otherwise simply pass through to the onInput handler from the
        // props and update the selectionRange
        selectionRangeRef.current = {
            selectionStart: internalInputRef.current?.selectionStart ?? details.value?.length ?? 0,
            selectionEnd: internalInputRef.current?.selectionEnd ?? details.value?.length ?? 0
        };
        onInput?.(details);
    }, [isRevealed, onInput]);
    const onCommitHandler = useCallback(() => {
        // trigger onCommit only if the current value is different from the previous commit value
        if (currentCommitValue === value)
            return;
        onCommit?.({ previousValue: currentCommitValue, value });
    }, [currentCommitValue, value, onCommit]);
    const onKeyDownHandler = useCallback((event) => {
        // if the component is revealing the current value, then let it naturally
        // go through the onInput event
        if (isRevealed)
            return;
        // We handle undo/redo in both beforeinput and keydown as firefox does not
        // seem to trigger beforeinput for undo/redo in our implementation. So, we handle it
        // using keydown event.
        const _isUndoEvent = isUndoEvent(event);
        const _isRedoEvent = isRedoEvent(event);
        if (_isUndoEvent || _isRedoEvent) {
            // if we don't have an undo/redo state, do nothing and return
            if ((_isUndoEvent && !historyManager.hasUndo) || (_isRedoEvent && !historyManager.hasRedo))
                return;
            // prevent the default here
            event.preventDefault();
            // since we are restoring from history, we do not want to push this state back to history
            // so we ignore the history updates until the next normal input happens
            historyManager.ignore();
            const { value: newValue, selection } = _isUndoEvent
                ? historyManager.undo()
                : historyManager.redo();
            // with this trigger the onInput and the selection range
            selectionRangeRef.current = {
                selectionStart: selection.start,
                selectionEnd: selection.end
            };
            onInput?.({ previousValue: value, value: newValue });
            return;
        }
    }, [historyManager, isRevealed, onInput, value]);
    return (jsx("div", { class: containerStyles, 
        // Note: We are capturing events bubbling from the input element in the bubbling phase
        // We are doing this approach because we do not want to add APIs to the TextFieldInput
        // component exposing these event callbacks.
        // This is for obfuscating the characters typed in the input
        // Note: onBeforeInput is typed as a GenericEventHandler in preact
        // so the event argument is of generic Event type. But as per the mdn
        // docs (https://developer.mozilla.org/en-US/docs/Web/API/Element/beforeinput_event#event_type)
        // it will receive an InputEvent. Hence, the explicit any casting here.
        onBeforeInput: computeNextInput, onInput: triggerOnInputCallback, 
        // This is for preventing cut action when obfuscated
        onCut: killEventWhenObfuscated, 
        // This is for preventing copy action when obfuscated
        onCopy: killEventWhenObfuscated, 
        // This is for selecting all the chars when double-clicked
        onDblClick: selectAllWhenObfuscated, 
        // This is for selecting all the chars when right-clicked
        onContextMenu: selectAllWhenObfuscated, children: jsx(TextFieldInput, { ...passThroughProps, 
            // override properties
            as: "input", autoComplete: "off", 
            // this is not really needed as we don't rely on the information from
            // onCommit callback
            currentCommitValue: currentCommitValue, type: type, spellcheck: false, inputRef: mergedInputRef, 
            // We handle our own Input and Commit events and may not
            // be relying on the data that the TextFieldInput provides us
            onInput: onInputHandler, onCommit: onCommitHandler, onKeyDown: onKeyDownHandler, value: isRevealed ? value : character.repeat(value?.length ?? 0) }) }));
};

export { ObfuscatedTextFieldInput as O };
//# sourceMappingURL=ObfuscatedTextFieldInput-48b8c60e.js.map
