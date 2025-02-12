/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var clientHints = require('./clientHints-9e411b6e.js');

function useTextFieldInputHandlers({ currentCommitValue, isCommitOnEnter = true, value, onInput, onCommit, onKeyDown, selectionRef }) {
    const isComposing = hooks.useRef(false);
    // preactjs/preact #1899 - https://github.com/preactjs/preact/issues/1899
    // Preact does not force the native input to be controlled, so we need to
    // trigger a rerender in order to keep it fully controlled.
    // Force update hack is from https://reactjs.org/docs/hooks-faq.html#is-there-something-like-forceupdate
    const [, forceUpdate] = hooks.useReducer((x) => x + 1, 0);
    // TODO: Currently, this assumes that the input field is a text field
    // so that the change event can be simulated by capturing blur and enter keydown
    // event. We might have to make this generic to handle other input types
    // as well like radio, select, checkbox.
    const handleChange = hooks.useCallback((event) => {
        const currentValue = event.target.value;
        // When do we *not* want to call onCommit?
        // When the input's value
        // is the same as the currentCommitValue (like if the user hits Enter over and over,
        // or if the user focuses and blurs over and over).
        // Or when the component's value is programmatically changed.
        // (currentCommitValue is updated whenever we commit or get a programmatic change.
        // See component code and useCurrentValueReducer hook)
        // We only need to trigger an onCommit for user interacted changes, not programmatic changes
        if (currentCommitValue !== currentValue) {
            onCommit?.({ previousValue: currentCommitValue, value: currentValue });
        }
    }, [onCommit, currentCommitValue]);
    const handleKeyDown = hooks.useCallback((event) => {
        onKeyDown?.(event);
        if (event.key === 'Enter' && isCommitOnEnter) {
            handleChange(event);
        }
    }, [isCommitOnEnter, handleChange, onKeyDown]);
    const handleInput = hooks.useCallback((event) => {
        // In android device we need to update input value even for composition events
        // See JET-39086 for more details.
        if (isComposing.current && clientHints.getClientHints().platform !== 'android')
            return;
        const eventTarget = event.target;
        const newValue = eventTarget.value;
        if (value === newValue)
            return;
        // Save the selection so that we can restore it after the value changes.
        // This helps avoid the cursor jumping to the end because the browser thinks that
        // the value has been updated programmatically. See JET-62763 for more info.
        if (selectionRef) {
            selectionRef.current = {
                start: eventTarget.selectionStart,
                end: eventTarget.selectionEnd
            };
        }
        onInput?.({ previousValue: value, value: newValue });
        // preactjs/preact #1899 - https://github.com/preactjs/preact/issues/1899
        // Preact does not force the native input to be controlled, so we need to
        // trigger a rerender in order to keep it fully controlled.
        // Force a rerender here, so if the value was not pushed back, the input
        // will be reset to the old value mimicking a controlled input.
        // One minor issue here is that the cursor position will also be reverted
        // back to the end due to the forced value update. But this behavior should
        // be fine as it happens in our oj-input-text as well.
        forceUpdate(null);
    }, [value, onInput, selectionRef]);
    const handleCompositionStart = hooks.useCallback(() => {
        isComposing.current = true;
    }, []);
    const handleCompositionEnd = hooks.useCallback((event) => {
        isComposing.current = false;
        // On some browsers, compositionend event is fired before the final input event,
        // while it's the other way around on other browsers. Just call handleInput here
        // anyway since handleInput will compare the value before actually calling it.
        // When all browsers support the input event's isComposing property, we can use that.
        // https://w3c.github.io/uievents/#dom-inputevent-iscomposing
        handleInput(event);
    }, [handleInput]);
    return {
        // With preact/compat, we will not have an onChange event.
        // "If you're using preact/compat, most onChange events are internally converted to onInput
        // to emulate React's behavior. This is one of the tricks we use to ensure maximum
        // compatibility with the React ecosystem."
        // Since we need the onChange event, we will be simulating this to match the native event
        // as best as we can. To do this, we will be capturing `blur` event and Enter `keydown` event.
        // https://developer.mozilla.org/en-US/docs/Web/API/HTMLElement/change_event
        onBlur: handleChange,
        onKeyDown: handleKeyDown,
        // Since, preact does not support onCompositionStart and onCompositionEnd events
        // we need to use all lowercase event name to use the native DOM events. Also,
        // currently we do not have any need for the event object in these two handlers
        // so ignored the arguments here.
        oncompositionstart: handleCompositionStart,
        oncompositionend: handleCompositionEnd,
        onInput: handleInput
    };
}

exports.useTextFieldInputHandlers = useTextFieldInputHandlers;
//# sourceMappingURL=useTextFieldInputHandlers-7d653f39.js.map
