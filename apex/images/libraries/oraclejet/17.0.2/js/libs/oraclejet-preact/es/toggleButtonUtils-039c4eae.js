/* @oracle/oraclejet-preact: undefined */
/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Maps a position to the required button styling classes.
 * @param position the toggle location in the buttonSetItem
 * @return an array of styling classes
 */
function positionStyling(position) {
    let positionStyling = [];
    switch (position) {
        case 'start':
            positionStyling = ['noBorderRadiusEnd', 'noBorderEnd'];
            break;
        case 'end':
            positionStyling = ['noBorderRadiusStart', 'noBorderStart'];
            break;
        case 'middle':
            positionStyling = [
                'noBorderRadiusEnd',
                'noBorderEnd',
                'noBorderRadiusStart',
                'noBorderStart'
            ];
            break;
    }
    return positionStyling;
}
/**
 * Convert a child index to a position
 * ie, [start, middle, middle, end]
 */
function indexToPosition(index, length) {
    if (length === 1) {
        return 'single';
    }
    if (!index) {
        return 'start';
    }
    if (index === length - 1) {
        return 'end';
    }
    return 'middle';
}
/**
 * Convert width styling to styling classes
 * @param layoutWidth
 * @returns an array of styling classes
 */
function layoutWidthStyling(layoutWidth) {
    return layoutWidth === 'equal' ? ['widthEqual'] : ['widthAuto'];
}
/**
 * Returns the styling classes for a toggle button based on state
 * @param layoutWidth
 * @param isSelected
 * @param isSwitch
 * @param isInput
 * @param position
 * @param hasLabel
 * @param isIconOnly
 * @returns
 */
function toggleStyling(layoutWidth = 'auto', isSelected, isSwitch, isInput, isAdjacent, position, hasLabel, isIconOnly) {
    const selectedStyling = isSelected && !isSwitch ? ['selected'] : [];
    const iconStyling = isIconOnly ? ['min'] : [];
    const inputStyling = isInput ? ['embedded', 'min'] : [];
    const labelOnlyStyling = !isIconOnly ? (hasLabel ? ['default'] : ['min']) : ['min'];
    const positionStyles = isAdjacent ? positionStyling(position) : [];
    const buttonSetItemStyles = position === 'single'
        ? []
        : position === 'middle' || position === 'end'
            ? ['buttonSetItem', 'trailingItem']
            : ['buttonSetItem'];
    const styling = [
        ...inputStyling,
        ...selectedStyling,
        ...iconStyling,
        ...positionStyles,
        ...buttonSetItemStyles,
        ...layoutWidthStyling(layoutWidth),
        ...labelOnlyStyling
    ];
    return styling;
}
/**
 * Used to toggle the value in a ButtonSetItem.
 * A checkbox can have 0 or many selected.
 * @param value
 * @param buttonSetValue
 * @returns
 */
function toggleButtonSetItem(value, buttonSetValue) {
    // create a new set from the previous and add or remove the changed value
    if (!buttonSetValue) {
        return [value];
    }
    return buttonSetValue.includes(value)
        ? buttonSetValue.filter((i) => i !== value)
        : [...buttonSetValue, value];
}

export { toggleStyling as a, indexToPosition as i, toggleButtonSetItem as t };
//# sourceMappingURL=toggleButtonUtils-039c4eae.js.map
