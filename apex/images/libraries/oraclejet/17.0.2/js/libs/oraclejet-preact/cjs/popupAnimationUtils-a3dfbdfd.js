/* @oracle/oraclejet-preact: undefined */
'use strict';

var positionUtils = require('./positionUtils-ae9279d7.js');

const _ANIMATION_TRANSFORM_ORIGIN_RULES = {
    top: 'center bottom',
    'top-right': 'right bottom',
    'top-left': 'left bottom',
    'top-right-corner': 'left bottom',
    'top-left-corner': 'right bottom',
    right: 'left center',
    'right-top': 'left top',
    'right-bottom': 'left bottom',
    'right-top-corner': 'left bottom',
    'right-bottom-corner': 'left top',
    bottom: 'center top',
    'bottom-right': 'right top',
    'bottom-left': 'left top',
    'bottom-right-corner': 'left top',
    'bottom-left-corner': 'right top',
    left: 'right center',
    'left-top': 'right top',
    'left-bottom': 'right bottom',
    'left-top-corner': 'right bottom',
    'left-bottom-corner': 'right top'
};
const logicalSide = (placement, direction) => {
    if (placement == null || direction == null)
        return 'bottom';
    const side = placement.split('-')[0];
    const alignment = placement.split('-')[1];
    const corner = placement.split('-')[2];
    const physicalSide = positionUtils.normalizePosition(side, direction);
    const placements = [
        'top',
        'top-right',
        'top-left',
        'top-right-corner',
        'top-left-corner',
        'right',
        'right-top',
        'right-bottom',
        'right-top-corner',
        'right-bottom-corner',
        'bottom',
        'bottom-right',
        'bottom-left',
        'bottom-right-corner',
        'bottom-left-corner',
        'left',
        'left-top',
        'left-bottom',
        'left-top-corner',
        'left-bottom-corner'
    ];
    const newPlacement = placements.filter((placement) => (alignment &&
        corner &&
        placement === `${physicalSide}-${positionUtils.normalizePosition(alignment, direction)}-${corner}`) ||
        (alignment &&
            !corner &&
            placement === `${physicalSide}-${positionUtils.normalizePosition(alignment, direction)}`) ||
        (!alignment && placement === `${physicalSide}`))[0];
    if (!newPlacement) {
        return 'bottom';
    }
    return newPlacement;
};
const getTransformOrigin = (placement, direction) => {
    const realPlacement = logicalSide(placement, direction);
    return _ANIMATION_TRANSFORM_ORIGIN_RULES[realPlacement];
};

exports.getTransformOrigin = getTransformOrigin;
//# sourceMappingURL=popupAnimationUtils-a3dfbdfd.js.map
