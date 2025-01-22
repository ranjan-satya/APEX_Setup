/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var layoutUtils = require('./layoutUtils-56b6111c.js');
var eventsUtils = require('./eventsUtils-8680c9d7.js');
require('./accUtils-50f26093.js');
var useVisHover = require('./useVisHover-ad36112d.js');
var mergeProps = require('./mergeProps-e3da7237.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Returns whether the two groups are same.
 * @param g1 GroupInfo
 * @param g2 GroupInfo
 * @returns
 */
function isGroupEqual(g1, g2) {
    return (g1?.groupIndex === g2?.groupIndex &&
        g1?.isCurrent === g2?.isCurrent &&
        g1?.isFocusVisible === g2?.isFocusVisible);
}
/**
 * Returns whether the two item info are same.
 * @param i1 ItemInfo
 * @param i2 ItemInfo
 * @returns
 */
function isItemEqual(i1, i2) {
    return i1?.seriesIndex === i2?.seriesIndex && isGroupEqual(i1, i2);
}
/**
 * Returns whether the two item info are same.
 * @param i1 ItemInfo
 * @param i2 ItemInfo
 * @returns
 */
function isItemInfoEqual(i1, i2) {
    return i1?.seriesIndex === i2?.seriesIndex && i2?.groupIndex === i1?.groupIndex;
}
/**
 * Hook to handle chart navigation.
 */
function useChartNav({ rootRef, getNextChartItem, getDefaultNavGroup, getNextNavGroup, xIndexExtent, touchResponse, onItemHover, onItemFocus, drilling }) {
    const [focusedItemInfo, setfocusedItemInfo] = hooks.useState({
        groupIndex: xIndexExtent.startIndex,
        seriesIndex: 0
    });
    const isGroupDrillEnabled = drilling === 'on' || drilling === 'groupsOnly';
    const [hoveredItemInfo, setHoveredItemInfo] = hooks.useState();
    const [focusedGroupInfo, setFocusedGroupInfo] = hooks.useState({ groupIndex: 0 });
    const activeId = hooks.useRef();
    const previousHoveredItemRef = hooks.useRef();
    const previousFocusedItemRef = hooks.useRef();
    const isItemFocused = focusedItemInfo.isCurrent;
    const isGroupFocused = focusedGroupInfo.isCurrent;
    const updateGroupInfo = (groupInfo) => {
        if (!isGroupEqual(groupInfo, focusedGroupInfo)) {
            setFocusedGroupInfo(groupInfo);
        }
    };
    const update = (type, info) => {
        const prevInfoRef = type === 'hover' ? previousHoveredItemRef : previousFocusedItemRef;
        const callback = type === 'hover' ? onItemHover : onItemFocus;
        if (!isItemEqual(info, prevInfoRef.current)) {
            const input = { groupIndex: info?.groupIndex, seriesIndex: info?.seriesIndex };
            callback?.(input);
            prevInfoRef.current = info;
            activeId.current = layoutUtils.getRandomId();
        }
    };
    const updateFocusedItemInfo = (itemInfo) => {
        if (!isItemEqual(itemInfo, focusedItemInfo)) {
            setfocusedItemInfo(itemInfo);
            // preserve hovered effect if same item is focused
            if (hoveredItemInfo && !isItemInfoEqual(hoveredItemInfo, itemInfo)) {
                setHoveredItemInfo({ ...hoveredItemInfo, isCurrent: false });
            }
            if (itemInfo.isCurrent) {
                update('focus', itemInfo);
            }
        }
    };
    const updateHoveredItemInfo = (itemInfo) => {
        if (!hoveredItemInfo || !isItemEqual(itemInfo, hoveredItemInfo)) {
            setHoveredItemInfo(itemInfo);
            setfocusedItemInfo({ ...focusedItemInfo, isCurrent: false });
            update('hover', itemInfo);
        }
    };
    const handleTab = (event) => {
        const defaultGroup = getDefaultNavGroup(focusedGroupInfo);
        const validItemInfoIndex = Math.max(xIndexExtent.startIndex, Math.min(xIndexExtent.endIndex, focusedItemInfo.groupIndex));
        if (event.shiftKey) {
            if (isItemFocused) {
                updateFocusedItemInfo({
                    ...focusedItemInfo,
                    groupIndex: validItemInfoIndex,
                    isCurrent: false,
                    isFocusVisible: false
                });
                update('focus', undefined);
            }
            else if (isGroupFocused) {
                updateFocusedItemInfo({
                    ...focusedItemInfo,
                    groupIndex: validItemInfoIndex,
                    isCurrent: true,
                    isFocusVisible: true
                });
                if (isGroupDrillEnabled) {
                    updateGroupInfo({
                        ...focusedGroupInfo,
                        ...defaultGroup,
                        isCurrent: false,
                        isFocusVisible: false
                    });
                    eventsUtils.cancelEvent(event);
                }
            }
            else if (isGroupDrillEnabled) {
                updateGroupInfo({
                    ...focusedGroupInfo,
                    ...defaultGroup,
                    isCurrent: true,
                    isFocusVisible: true
                });
            }
        }
        else {
            if (isItemFocused) {
                updateFocusedItemInfo({
                    ...focusedItemInfo,
                    groupIndex: validItemInfoIndex,
                    isCurrent: false,
                    isFocusVisible: false
                });
                if (isGroupDrillEnabled) {
                    updateGroupInfo({
                        ...focusedGroupInfo,
                        ...defaultGroup,
                        isCurrent: true,
                        isFocusVisible: true
                    });
                    eventsUtils.cancelEvent(event);
                }
                update('focus', undefined);
            }
            else if (isGroupFocused && isGroupDrillEnabled) {
                updateGroupInfo({
                    ...focusedGroupInfo,
                    ...defaultGroup,
                    isCurrent: false,
                    isFocusVisible: false
                });
            }
            else {
                updateFocusedItemInfo({
                    ...focusedItemInfo,
                    groupIndex: validItemInfoIndex,
                    isCurrent: true,
                    isFocusVisible: true
                });
            }
        }
        activeId.current = layoutUtils.getRandomId();
    };
    const onKeyUp = (event) => {
        const key = event.key;
        switch (key) {
            case 'Tab': {
                if (!isItemFocused && !isGroupFocused) {
                    handleTab(event);
                }
                break;
            }
        }
    };
    const onKeyDown = (event) => {
        const key = event.key;
        switch (key) {
            case 'Tab': {
                handleTab(event);
                break;
            }
            case 'ArrowRight': {
                if (isGroupFocused) {
                    const info = getNextNavGroup(focusedGroupInfo, key);
                    updateGroupInfo({
                        ...info,
                        isCurrent: true,
                        isFocusVisible: true
                    });
                }
                else {
                    const info = getNextChartItem(focusedItemInfo, key);
                    updateFocusedItemInfo({
                        ...info,
                        isCurrent: true,
                        isFocusVisible: true
                    });
                }
                setHoveredItemInfo(undefined);
                eventsUtils.cancelEvent(event);
                break;
            }
            case 'ArrowLeft': {
                if (isGroupFocused) {
                    const info = getNextNavGroup(focusedGroupInfo, key);
                    updateGroupInfo({
                        ...info,
                        isCurrent: true,
                        isFocusVisible: true
                    });
                }
                else {
                    const info = getNextChartItem(focusedItemInfo, key);
                    updateFocusedItemInfo({
                        ...info,
                        isCurrent: true,
                        isFocusVisible: true
                    });
                }
                setHoveredItemInfo(undefined);
                eventsUtils.cancelEvent(event);
                break;
            }
            case 'ArrowUp': {
                if (isItemFocused) {
                    const info = getNextChartItem(focusedItemInfo, key);
                    updateFocusedItemInfo({
                        ...info,
                        isCurrent: true,
                        isFocusVisible: true
                    });
                }
                setHoveredItemInfo(undefined);
                eventsUtils.cancelEvent(event);
                break;
            }
            case 'ArrowDown': {
                if (isItemFocused) {
                    const info = getNextChartItem(focusedItemInfo, key);
                    updateFocusedItemInfo({
                        ...info,
                        isCurrent: true,
                        isFocusVisible: true
                    });
                }
                setHoveredItemInfo(undefined);
                eventsUtils.cancelEvent(event);
                break;
            }
        }
    };
    const onPointerUp = (event) => {
        const info = eventsUtils.getInfo(rootRef, event.target);
        if (!info) {
            return;
        }
        const { seriesIndex, groupIndex } = info;
        if (seriesIndex != undefined && groupIndex != undefined) {
            updateFocusedItemInfo({
                seriesIndex,
                groupIndex,
                isCurrent: false,
                isFocusVisible: false
            });
            updateGroupInfo({
                ...focusedGroupInfo,
                isCurrent: false,
                isFocusVisible: false
            });
        }
        else if (groupIndex !== undefined && seriesIndex === undefined) {
            updateGroupInfo({
                groupIndex,
                isCurrent: true,
                isFocusVisible: false
            });
            updateFocusedItemInfo({
                ...focusedItemInfo,
                isCurrent: false,
                isFocusVisible: false
            });
        }
    };
    const onHover = (event) => {
        const info = eventsUtils.getInfo(rootRef, event.target);
        if (!info) {
            updateHoveredItemInfo(undefined);
            return;
        }
        const { seriesIndex, groupIndex } = info;
        if (seriesIndex != undefined) {
            updateHoveredItemInfo({
                seriesIndex,
                groupIndex,
                isCurrent: true
            });
            updateFocusedItemInfo({
                ...focusedItemInfo,
                isCurrent: false
            });
        }
    };
    const onHoverLeave = () => {
        updateHoveredItemInfo(undefined);
    };
    const hoverHandlers = useVisHover.useVisHover(onHover, undefined, onHoverLeave, touchResponse);
    const onFocusUpdate = () => {
        const validItemInfoIndex = Math.max(xIndexExtent.startIndex, Math.min(xIndexExtent.endIndex, focusedItemInfo.groupIndex));
        updateFocusedItemInfo({
            ...focusedItemInfo,
            groupIndex: validItemInfoIndex,
            isCurrent: true,
            isFocusVisible: true
        });
    };
    const onBlur = () => {
        updateFocusedItemInfo({
            ...focusedItemInfo,
            isCurrent: false,
            isFocusVisible: false
        });
    };
    return {
        focusedItemInfo,
        focusedGroupInfo,
        hoveredItemInfo,
        activeId: activeId.current,
        navProps: mergeProps.mergeProps(hoverHandlers, {
            onKeyDown,
            onKeyUp,
            onPointerUp,
            onBlur
        }),
        onFocusUpdate
    };
}

exports.useChartNav = useChartNav;
//# sourceMappingURL=useChartNav-e850e19e.js.map
