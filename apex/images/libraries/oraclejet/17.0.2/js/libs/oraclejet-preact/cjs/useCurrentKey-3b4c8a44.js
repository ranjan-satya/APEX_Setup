/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var keys = require('./keys-a4b54295.js');
var useUser = require('./useUser-a6d15333.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook for handling current key update due to user interaction including keyboard navigation.
 * This can be reuse by all Collection components.
 *
 * @param keyExtractor function to extract the key based on the provided element
 * @param allowShiftKey if set to false, then pressing arrow key while shift key is down will not change the current key
 * @param getVerticalPrevKey function to get the previous key in the vertical direction based on the current key
 * @param getVerticalNextKey function to get the next key in the vertical direction based on the current key
 * @param getHorizontalPrevKey function to get the previous key in the horizontal direction based on the current key
 * @param getHorizontalNextKey function to get the next key based on the current key
 * @param currentKey the current key
 * @param onCurrentChange function to invoke if the current key has changed
 * @param keyComparator an optional function to compare keys, otherwise === is used
 * @returns
 */
function useCurrentKey(keyExtractor, allowShiftKey, getVerticalPrevKey, getVerticalNextKey, getHorizontalPrevKey, getHorizontalNextKey, currentKey, onChange, keyComparator) {
    const { direction } = useUser.useUser();
    const keyEquals = hooks.useCallback((key1, key2) => {
        if (keyComparator) {
            return keyComparator(key1, key2);
        }
        return key1 === key2;
    }, [keyComparator]);
    const onKeyDown = hooks.useCallback((event) => {
        if (onChange && keys.isKeyDefined(currentKey)) {
            const isRtl = direction === 'rtl';
            const keyHandlers = {
                ArrowUp: getVerticalPrevKey,
                ArrowDown: getVerticalNextKey,
                ArrowLeft: isRtl ? getHorizontalNextKey : getHorizontalPrevKey,
                ArrowRight: isRtl ? getHorizontalPrevKey : getHorizontalNextKey
            };
            // should not update currentKey during keyboard reordering
            if (Object.keys(keyHandlers).includes(event.key) &&
                (allowShiftKey || !event.shiftKey) &&
                !event.metaKey &&
                !event.ctrlKey) {
                const newKey = keyHandlers[event.key]?.();
                if (keys.isKeyDefined(newKey) && !keyEquals(currentKey, newKey)) {
                    onChange({ value: newKey });
                }
                event.preventDefault();
            }
        }
    }, [
        currentKey,
        onChange,
        getVerticalPrevKey,
        getVerticalNextKey,
        getHorizontalPrevKey,
        getHorizontalNextKey,
        keyEquals,
        allowShiftKey,
        direction
    ]);
    const onClickCapture = hooks.useCallback((event) => {
        if (onChange && !event.shiftKey) {
            const nextKey = keyExtractor(event.target);
            if (keys.isKeyDefined(nextKey) && !keyEquals(currentKey, nextKey)) {
                onChange({ value: nextKey });
            }
        }
    }, [currentKey, keyExtractor, onChange, keyEquals]);
    const currentKeyProps = onChange == null ? {} : { onClickCapture, onKeyDown };
    return { currentKeyProps };
}

exports.useCurrentKey = useCurrentKey;
//# sourceMappingURL=useCurrentKey-3b4c8a44.js.map
