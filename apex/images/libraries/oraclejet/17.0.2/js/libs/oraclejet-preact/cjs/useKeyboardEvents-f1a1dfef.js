/* @oracle/oraclejet-preact: undefined */
'use strict';

var useUser = require('./useUser-a6d15333.js');

const handleInput = (inputValue, currentInput, onInput) => {
    onInput?.({ value: inputValue });
    currentInput.current = inputValue;
};
const cancelEvent = (event) => {
    event.preventDefault();
    event.stopPropagation();
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
function useKeyboardEvents(value, min, max, step, currentInputRef, onCommit, onInput) {
    const { direction } = useUser.useUser();
    const isRtl = direction === 'rtl';
    const keyDownHandler = (event) => {
        const key = event.key;
        switch (key) {
            case 'Tab':
                return;
            case 'ArrowDown':
                handleInput(Math.max(min, value - step), currentInputRef, onInput);
                cancelEvent(event);
                break;
            case 'ArrowUp':
                handleInput(Math.min(max, value + step), currentInputRef, onInput);
                cancelEvent(event);
                break;
            case 'ArrowLeft': {
                const inputValue = isRtl ? Math.min(max, value + step) : Math.max(min, value - step);
                handleInput(inputValue, currentInputRef, onInput);
                cancelEvent(event);
                break;
            }
            case 'ArrowRight': {
                const inputValue = isRtl ? Math.max(min, value - step) : Math.min(max, value + step);
                handleInput(inputValue, currentInputRef, onInput);
                cancelEvent(event);
                break;
            }
        }
    };
    const keyUpHandler = (event) => {
        const key = event.key;
        switch (key) {
            case 'Enter':
                onCommit?.({ value: value });
                cancelEvent(event);
                break;
            case 'Tab':
                handleInput(value, currentInputRef, onInput);
                cancelEvent(event);
                break;
            case 'Home':
                handleInput(min, currentInputRef, onInput);
                cancelEvent(event);
                break;
            case 'End':
                handleInput(max, currentInputRef, onInput);
                cancelEvent(event);
                break;
        }
    };
    return {
        onKeyUp: keyUpHandler,
        onKeyDown: keyDownHandler
    };
}

exports.handleInput = handleInput;
exports.useKeyboardEvents = useKeyboardEvents;
//# sourceMappingURL=useKeyboardEvents-f1a1dfef.js.map
