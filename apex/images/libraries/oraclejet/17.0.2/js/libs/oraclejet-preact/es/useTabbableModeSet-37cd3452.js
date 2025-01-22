/* @oracle/oraclejet-preact: undefined */
import { useState, useCallback } from 'preact/hooks';
import { i as isKeyDefined } from './keys-df361af9.js';
import { g as getElementContainsFunc } from './collectionUtils-d72c7c40.js';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook for handling Tabbable mode set provider components.
 *
 * @param rootRef - a Ref to the root element of the consuming component
 * @param keyExtractor - function to extract the key based on provided element
 * @param currentKey - current key navigation "cursor" is on
 * @param onCurrentKeyChange - optional callback to notify when the currentKey should change
 * @param keySupportsTabbable - optional callback to prevent tabbable mode from being entered on non-tabbable keys
 * @param keyComparator - optional callback to compare the equality of two keys
 * @returns isCurrentTabbableKey - callback for parent to check if key is in interactive mode
 * @returns tabbableSetProps - event handlers mode relies on
 * @returns getCurrentTabbableKey - callback to get the current tabbable key
 * @returns setCurrentTabbableKey - callback to set the current tabbable key
 */
function useTabbableModeSet(rootRef, keyExtractor, currentKey, onCurrentKeyChange, keySupportsTabbable, keyComparator) {
    // Track which row is in actionable in state
    const [currentTabbableKey, setCurrentTabbableKey] = useState();
    const keyEquals = useCallback((key1, key2) => {
        if (keyComparator) {
            return keyComparator(key1, key2);
        }
        return key1 === key2;
    }, [keyComparator]);
    const disableTabbableMode = useCallback((target, isKeyboardEvent = false) => {
        setCurrentTabbableKey(undefined);
        // handle clean-up on disabling of the mode
        if (getElementContainsFunc(rootRef.current, true)(target) && isKeyboardEvent) {
            rootRef.current?.focus();
        }
    }, [rootRef, setCurrentTabbableKey]);
    const enableTabbableMode = useCallback((key) => {
        setCurrentTabbableKey(key);
        if (onCurrentKeyChange && !keyEquals(key, currentKey)) {
            onCurrentKeyChange({ value: key });
        }
    }, [currentKey, keyEquals, onCurrentKeyChange, setCurrentTabbableKey]);
    const isCurrentTabbableKey = useCallback((key) => {
        return keyEquals(key, currentTabbableKey);
    }, [currentTabbableKey, keyEquals]);
    const getCurrentTabbableKey = useCallback(() => {
        return currentTabbableKey;
    }, [currentTabbableKey]);
    const onFocus = (event) => {
        // if the root is focused while tabbable, exit tabbable mode
        if (event.target === rootRef.current) {
            if (!isCurrentTabbableKey(undefined)) {
                disableTabbableMode(event.target);
            }
        }
        else {
            const key = keyExtractor(event.target);
            if (isKeyDefined(key) && !isCurrentTabbableKey(key)) {
                enableTabbableMode(key);
            }
        }
    };
    const onBlur = (event) => {
        if (!event.relatedTarget ||
            !getElementContainsFunc(rootRef.current, true)(event.relatedTarget)) {
            disableTabbableMode(event.relatedTarget);
        }
    };
    const onKeyDown = useCallback((event) => {
        if (currentKey != null && (keySupportsTabbable == null || keySupportsTabbable(currentKey))) {
            if (event.key === 'F2') {
                isCurrentTabbableKey(currentKey)
                    ? disableTabbableMode(event.target, true)
                    : enableTabbableMode(currentKey);
            }
            else if (event.key === 'Esc' || event.key === 'Escape') {
                disableTabbableMode(event.target, true);
            }
        }
    }, [currentKey, disableTabbableMode, enableTabbableMode, keySupportsTabbable, isCurrentTabbableKey]);
    const tabbableSetProps = {
        onFocus,
        onBlur,
        onKeyDown
    };
    return [isCurrentTabbableKey, tabbableSetProps, getCurrentTabbableKey, setCurrentTabbableKey];
}

export { useTabbableModeSet as u };
//# sourceMappingURL=useTabbableModeSet-37cd3452.js.map
