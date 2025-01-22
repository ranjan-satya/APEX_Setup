/* @oracle/oraclejet-preact: undefined */
import { a as rgb } from './utils-6eab3a64.js';
import { dvtVars, colorSchemeVars } from './Common/themes/themeContract.css.js';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
function getChartVars() {
    return [
        {
            tokenVar: dvtVars.label.sm.fontSize,
            key: 'labelFontSize',
            cssProp: 'font-size'
        },
        {
            tokenVar: rgb(colorSchemeVars.dvt.paletteQualitative[1]),
            key: 'color1',
            cssProp: 'color'
        },
        {
            tokenVar: rgb(colorSchemeVars.dvt.paletteQualitative[2]),
            key: 'color2',
            cssProp: 'outline-color'
        },
        {
            tokenVar: rgb(colorSchemeVars.dvt.paletteQualitative[3]),
            key: 'color3',
            cssProp: 'background-color'
        },
        {
            tokenVar: rgb(colorSchemeVars.dvt.paletteQualitative[4]),
            key: 'color4',
            cssProp: 'border-bottom-color'
        },
        {
            tokenVar: rgb(colorSchemeVars.dvt.paletteQualitative[5]),
            key: 'color5',
            cssProp: 'border-left-color'
        },
        {
            tokenVar: rgb(colorSchemeVars.dvt.paletteQualitative[6]),
            key: 'color6',
            cssProp: 'border-right-color'
        },
        {
            tokenVar: rgb(colorSchemeVars.dvt.paletteQualitative[7]),
            key: 'color7',
            cssProp: 'border-top-color'
        },
        {
            tokenVar: rgb(colorSchemeVars.dvt.paletteQualitative[8]),
            key: 'color8',
            cssProp: 'stroke'
        },
        {
            tokenVar: rgb(colorSchemeVars.dvt.paletteQualitative[9]),
            key: 'color9',
            cssProp: 'caret-color'
        },
        {
            tokenVar: rgb(colorSchemeVars.dvt.paletteQualitative[10]),
            key: 'color10',
            cssProp: 'text-decoration-color'
        },
        {
            tokenVar: rgb(colorSchemeVars.dvt.paletteQualitative[11]),
            key: 'color11',
            cssProp: 'accent-color'
        },
        {
            tokenVar: rgb(colorSchemeVars.dvt.paletteQualitative[12]),
            key: 'color12',
            cssProp: 'fill'
        }
    ];
}

export { getChartVars as g };
//# sourceMappingURL=cssUtils-5492d949.js.map
