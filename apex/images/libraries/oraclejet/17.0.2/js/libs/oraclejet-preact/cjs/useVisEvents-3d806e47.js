/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var useUser = require('./useUser-a6d15333.js');
var layoutUtils = require('./layoutUtils-56b6111c.js');
var eventsUtils = require('./eventsUtils-8680c9d7.js');
var useVisHover = require('./useVisHover-ad36112d.js');
var mergeProps = require('./mergeProps-e3da7237.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
function useVisEvent(touchResponse, isInteractive, isItemActionable, getKeyUpHandler, getDetailFromInfo, getPrevItemInfo, getNextItemInfo, onItemAction, onItemHover, onItemFocus, isEqualItem, getItemInfo, initItemInfo, isHideShow) {
    const activeIdRef = hooks.useRef();
    const [focusedItemInfo, setfocusedItemInfo] = hooks.useState(initItemInfo);
    const [hoveredItemInfo, sethoveredItemInfo] = hooks.useState();
    const onHover = (event) => {
        const itemInfo = getItemInfo(event.target);
        if (!isEqualItem(itemInfo, hoveredItemInfo)) {
            sethoveredItemInfo(itemInfo && { ...itemInfo, isCurrent: true });
            activeIdRef.current = layoutUtils.getRandomId();
            if (isInteractive) {
                focusedItemInfo ? setfocusedItemInfo({ ...focusedItemInfo, isCurrent: false }) : '';
                onItemHover?.(getDetailFromInfo(itemInfo));
            }
        }
    };
    const onHoverLeave = () => {
        sethoveredItemInfo(undefined);
        activeIdRef.current = undefined;
        if (isInteractive) {
            onItemHover?.(getDetailFromInfo());
        }
    };
    const hoverHandlers = useVisHover.useVisHover(onHover, undefined, onHoverLeave, touchResponse);
    const { direction } = useUser.useUser();
    const isRtl = direction === 'rtl';
    if (!isInteractive) {
        return {
            isInteractive: false,
            focusedItemInfo,
            hoveredItemInfo,
            // include relevant hover handlers for datatip
            eventsProps: hoverHandlers
        };
    }
    const updatefocusedItemInfo = (itemInfo) => {
        onItemFocus?.(getDetailFromInfo(itemInfo));
        activeIdRef.current = layoutUtils.getRandomId();
        setfocusedItemInfo(itemInfo);
    };
    const handleKeyboardInput = (item) => {
        if (!isEqualItem(item, focusedItemInfo)) {
            item.isCurrent = true;
            item.isFocusVisible = true;
            if (hoveredItemInfo) {
                sethoveredItemInfo({ ...hoveredItemInfo, isCurrent: false });
            }
            updatefocusedItemInfo(item);
        }
    };
    const triggerOnAction = () => {
        const detail = getDetailFromInfo(focusedItemInfo);
        if (detail && detail.data && isItemActionable(focusedItemInfo)) {
            onItemAction?.(detail);
            activeIdRef.current = layoutUtils.getRandomId();
        }
    };
    const onPointerUp = (event) => {
        const itemInfo = getItemInfo(event.target);
        if (itemInfo != null && isItemActionable(itemInfo)) {
            setfocusedItemInfo(itemInfo);
            const detail = getDetailFromInfo(itemInfo);
            if (detail && isItemActionable(itemInfo)) {
                onItemAction?.(detail);
                activeIdRef.current = layoutUtils.getRandomId();
            }
        }
    };
    const onKeyDown = (event) => {
        const key = event.key;
        switch (key) {
            case 'Tab':
                return;
            case 'ArrowDown': {
                const nextItemInfo = getNextItemInfo(focusedItemInfo);
                handleKeyboardInput(nextItemInfo);
                eventsUtils.cancelEvent(event);
                break;
            }
            case 'ArrowUp': {
                const nextItemInfo = getPrevItemInfo(focusedItemInfo);
                handleKeyboardInput(nextItemInfo);
                eventsUtils.cancelEvent(event);
                break;
            }
            case 'ArrowRight': {
                const nextItemInfo = isRtl
                    ? getPrevItemInfo(focusedItemInfo)
                    : getNextItemInfo(focusedItemInfo);
                handleKeyboardInput(nextItemInfo);
                eventsUtils.cancelEvent(event);
                break;
            }
            case 'ArrowLeft': {
                const nextItemInfo = isRtl
                    ? getNextItemInfo(focusedItemInfo)
                    : getPrevItemInfo(focusedItemInfo);
                handleKeyboardInput(nextItemInfo);
                eventsUtils.cancelEvent(event);
                break;
            }
        }
    };
    const onKeyUp = getKeyUpHandler(triggerOnAction, updatefocusedItemInfo, focusedItemInfo, isHideShow);
    const onContextMenuDismissed = (gesture) => {
        if (gesture === 'keyboard') {
            updatefocusedItemInfo({
                ...focusedItemInfo,
                isCurrent: true,
                isFocusVisible: true
            });
        }
    };
    const onBlur = () => {
        const itemInfo = { ...focusedItemInfo, isCurrent: false, isFocusVisible: false };
        if (hoveredItemInfo != null || focusedItemInfo.isCurrent) {
            onItemFocus?.(getDetailFromInfo(undefined));
        }
        setfocusedItemInfo(itemInfo);
    };
    return {
        isInteractive: true,
        focusedItemInfo,
        hoveredItemInfo,
        activeId: activeIdRef.current,
        triggerOnAction,
        updatefocusedItemInfo,
        onContextMenuDismissed,
        eventsProps: mergeProps.mergeProps(hoverHandlers, {
            onPointerUp,
            onKeyUp,
            onKeyDown,
            onBlur
        })
    };
}

exports.useVisEvent = useVisEvent;
//# sourceMappingURL=useVisEvents-3d806e47.js.map
