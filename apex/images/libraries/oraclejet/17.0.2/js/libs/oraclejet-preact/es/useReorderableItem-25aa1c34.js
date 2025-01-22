/* @oracle/oraclejet-preact: undefined */
import { useRef, useState, useCallback, useContext, useEffect } from 'preact/hooks';
import { u as useId } from './useId-03dbfdf0.js';
import { u as useUser } from './useUser-99920e02.js';
import { u as useTranslationBundle } from './useTranslationBundle-cd815e10.js';
import { g as getClientHints } from './clientHints-c76a913b.js';
import { a as getItemKeysArray, b as getKey } from './collectionUtils-d72c7c40.js';
import { c as classNames } from './classNames-4e12b00d.js';
import { m as mergeProps } from './mergeProps-88ea8306.js';
import { c as createDragImage } from './dndUtils-deb68797.js';
import { createContext } from 'preact';
import { styles } from './hooks/PRIVATE_useReorderable/themes/ReorderableItemStyles.css.js';

/**
 * Implements keyboard reorder behavior for list-like components, e.g. TabBar, ListView, CardView
 */
function useReorderable(options) {
    const { onReorder, rootRef, itemSelector, isDisabled, columns } = options;
    const currentItemKey = useRef();
    const { direction } = useUser();
    const isRtl = direction === 'rtl';
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const reorderInstructionsId = 'reorderable_' + useId();
    const { deviceType, platform } = getClientHints();
    const keyPressed = platform === 'windows' ? translations.accControlKey() : translations.accCommandKey();
    const reorderInstructions = deviceType === 'phone' || deviceType === 'tablet'
        ? ''
        : translations.accReorderInstructions({
            keyPressed: keyPressed
        });
    const [reorderStatus, setReorderStatus] = useState('');
    const onKeyDown = useCallback((e) => {
        const keyHandlers = ['ArrowLeft', 'ArrowRight', 'ArrowUp', 'ArrowDown'];
        if ((e.metaKey || e.ctrlKey) &&
            e.shiftKey &&
            keyHandlers.includes(e.key) &&
            onReorder &&
            rootRef.current) {
            if (e.metaKey) {
                e.preventDefault();
            }
            const itemKeysArray = getItemKeysArray(rootRef.current, itemSelector);
            const newArray = [...itemKeysArray];
            const lastIndex = newArray.length - 1;
            const currentItemIndex = newArray.indexOf(currentItemKey.current);
            // get reference item index and reordered keys
            const referenceItemIndex = getReferenceItemIndex(e.key, isRtl, currentItemIndex, lastIndex, columns);
            if (referenceItemIndex !== undefined && currentItemIndex !== referenceItemIndex) {
                const referenceKey = newArray[referenceItemIndex]?.toString();
                newArray.splice(currentItemIndex, 1);
                newArray.splice(referenceItemIndex, 0, currentItemKey.current);
                onReorder?.({
                    reorderedKeys: newArray,
                    itemKeys: [currentItemKey.current],
                    // If the dragged items were dropped at the very beginning, the referenceKey will be null.
                    referenceKey: referenceItemIndex === 0 ? null : newArray[referenceItemIndex - 1]
                });
                // set acc status
                const isPrev = e.key === 'ArrowLeft' || e.key === 'ArrowUp' ? true : false;
                const position = isPrev
                    ? translations.accPositionBefore()
                    : translations.accPositionAfter();
                const itemKeyString = currentItemKey?.current?.toString();
                if (referenceKey && position && itemKeyString) {
                    setReorderStatus(translations.accAnnounceMovedKey({
                        itemKey: itemKeyString,
                        position: position,
                        referenceKey: referenceKey
                    }));
                }
            }
        }
    }, [currentItemKey, onReorder, columns, isRtl, itemSelector, rootRef, translations]);
    const eventProps = isDisabled ? {} : { onKeyDown };
    return {
        reorderProps: eventProps,
        reorderContext: {
            currentItemKey
        },
        reorderInstructionsId,
        reorderInstructions,
        reorderStatus
    };
}
/**
 * A helper function to get referenceItemIndex during keyboard reordering
 *
 * @param eventKey the arrow event keys
 * @param isRtl whether RTL is enabled
 * @param currentItemIndex the index of current item
 * @param lastIndex the last index
 * @param columns optional param to specify the number of columns, for keyboard reordering by arrow up/down keys.
 */
const getReferenceItemIndex = (eventKey, isRtl, currentItemIndex, lastIndex, columns) => {
    const leftDropIndex = currentItemIndex > 0 ? currentItemIndex - 1 : 0;
    const rightDropIndex = currentItemIndex < lastIndex ? currentItemIndex + 1 : lastIndex;
    switch (eventKey) {
        case 'ArrowLeft':
            return isRtl ? rightDropIndex : leftDropIndex;
        case 'ArrowRight':
            return isRtl ? leftDropIndex : rightDropIndex;
        case 'ArrowUp':
            if (columns) {
                // if the current item is at the top row, arrow up should not move anywhere
                return currentItemIndex < columns ? currentItemIndex : currentItemIndex - columns;
            }
        case 'ArrowDown':
            if (columns) {
                // if the current item is at the bottom row, arrow down should not move anywhere
                return currentItemIndex > lastIndex - columns
                    ? currentItemIndex
                    : currentItemIndex + columns;
            }
        default:
            return undefined;
    }
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const ReorderableContext = createContext(null);

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Utility hook for consuming the ReorderableContext
 *
 * @returns The value of ReorderableContext provider
 */
function useReorderableContext() {
    return useContext(ReorderableContext);
}

/**
 * Implements mouse reorder behavior for list-like components, e.g. TabBar, ListView, CardView
 */
function useReorderableItem(options) {
    const { isDisabled, draggable, dragKey, setDragKey, onReorder, ref, rootRef, currentKey, itemStyles, getItem, setTransferData, itemSelector, isVertical } = options;
    const item = getItem();
    const itemKey = item != null ? getKey(item) : undefined;
    const [position, setPosition] = useState();
    const pendingPositionRef = useRef();
    const dragImgRef = useRef(undefined);
    const itemDraggerClasses = classNames([styles.itemDragger, itemStyles.itemDragger]);
    const { direction } = useUser();
    const isRtl = direction === 'rtl';
    const handleDragStart = useCallback((e) => {
        const item = getItem();
        const currentDragKey = item != null ? getKey(item) : undefined;
        //create drag image clone of the item and show it
        if (ref?.current && setDragKey) {
            dragImgRef.current = createDragImage(ref.current, itemDraggerClasses);
            //if there is drag icon, set the drag image at the drag icon position
            const dragIcon = ref.current.querySelector('[draggable=true]');
            if (dragIcon != null) {
                e?.dataTransfer?.setDragImage(dragImgRef.current, dragIcon.offsetLeft + dragIcon.offsetWidth / 2, dragIcon.offsetTop + dragIcon.offsetHeight / 2);
            }
            else {
                e?.dataTransfer?.setDragImage(dragImgRef.current, 0, 0);
            }
            setTransferData(e);
            setDragKey(currentDragKey);
        }
    }, [getItem, setTransferData, itemDraggerClasses, ref, setDragKey]);
    const handleDragOver = useCallback((e) => {
        if (dragKey) {
            e.preventDefault();
        }
    }, [dragKey]);
    //Once drag is over, reset styling of dragged item to it's original styling
    const handleDragEnd = useCallback(() => {
        setDragKey?.(undefined);
        document.body.removeChild(dragImgRef.current);
    }, [setDragKey]);
    // detect drop target position on the overlay divs and render drop target
    const handleDragEnterBeforeZone = () => {
        setPosition('before');
        pendingPositionRef.current = 'before';
    };
    const handleDragLeaveBeforeZone = () => {
        if (pendingPositionRef.current === 'before') {
            setPosition(undefined);
        }
    };
    const handleDragEnterAfterZone = () => {
        setPosition('after');
        pendingPositionRef.current = 'after';
    };
    const handleDragLeaveAfterZone = () => {
        if (pendingPositionRef.current === 'after') {
            setPosition(undefined);
        }
    };
    const handleDrop = useCallback(() => {
        if (rootRef?.current) {
            const item = getItem();
            const currentDropKey = item != null ? getKey(item) : undefined;
            const reference = currentDropKey;
            const itemKeys = getItemKeysArray(rootRef.current, itemSelector);
            let insertPos;
            const newArray = [...itemKeys];
            const dragIndex = newArray.indexOf(dragKey);
            if (reference != null) {
                const dropIndex = newArray.indexOf(reference);
                if (dragIndex != null && dropIndex != null && dragIndex != dropIndex) {
                    if (!isRtl) {
                        if (dragIndex < dropIndex) {
                            insertPos = position === 'before' ? dropIndex - 1 : dropIndex;
                        }
                        else {
                            insertPos = position === 'before' ? dropIndex : dropIndex + 1;
                        }
                    }
                    else {
                        if (dragIndex < dropIndex) {
                            insertPos = position === 'before' ? dropIndex : dropIndex - 1;
                        }
                        else {
                            insertPos = position === 'before' ? dropIndex + 1 : dropIndex;
                        }
                    }
                }
            }
            if (insertPos !== undefined && dragIndex !== insertPos) {
                const sourceData = itemKeys[dragIndex];
                newArray.splice(dragIndex, 1);
                newArray.splice(insertPos, 0, sourceData);
                onReorder?.({
                    reorderedKeys: newArray,
                    itemKeys: [dragKey],
                    // If the dragged items were dropped at the very beginning, the referenceKey will be null.
                    referenceKey: insertPos === 0 ? null : newArray[insertPos - 1]
                });
                setPosition(undefined);
                setDragKey(undefined);
            }
        }
    }, [dragKey, position, getItem, isRtl, itemSelector, onReorder, rootRef, setDragKey]);
    const { currentItemKey } = useReorderableContext();
    useEffect(() => {
        if (currentKey === itemKey) {
            currentItemKey.current = currentKey;
        }
    }, [currentKey, itemKey, currentItemKey]);
    if (isDisabled) {
        return {};
    }
    //change dragged item visual to appear disable
    const isDragged = itemKey != null && itemKey === dragKey;
    const dndItemClasses = classNames([styles.itemDnd, isDragged && styles.itemDragged]);
    const itemOverlayClassesBefore = classNames([
        itemStyles.itemOverlayFront,
        isVertical ? styles.itemOverlayVertical : styles.itemOverlay,
        position === 'before' && styles.itemOverlayBefore,
        position === 'before' && isRtl && styles.itemOverlayBeforeRtl
    ]);
    const itemOverlayClassesAfter = classNames([
        itemStyles.itemOverlayFront,
        itemStyles.itemOverlayRear,
        isVertical ? styles.itemOverlayVertical : styles.itemOverlay,
        position === 'after' && styles.itemOverlayAfter,
        position === 'after' && isRtl && styles.itemOverlayAfterRtl
    ]);
    return {
        rootProps: mergeProps({
            ref: ref,
            draggable: draggable,
            onDragStart: handleDragStart,
            onDragEnd: handleDragEnd,
            onDragOver: handleDragOver,
            onDrop: handleDrop,
            isDisabled: isDisabled,
            class: dndItemClasses
        }),
        isDragged: isDragged,
        overlayZoneBeforeProps: mergeProps({
            onDragEnter: handleDragEnterBeforeZone,
            onDragLeave: handleDragLeaveBeforeZone,
            class: itemOverlayClassesBefore
        }),
        overlayZoneAfterProps: mergeProps({
            onDragEnter: handleDragEnterAfterZone,
            onDragLeave: handleDragLeaveAfterZone,
            class: itemOverlayClassesAfter
        })
    };
}

export { ReorderableContext as R, useReorderableItem as a, useReorderable as u };
//# sourceMappingURL=useReorderableItem-25aa1c34.js.map
