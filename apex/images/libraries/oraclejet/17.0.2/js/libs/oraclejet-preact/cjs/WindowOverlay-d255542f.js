/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var mergeInterpolations = require('./mergeInterpolations-6727b536.js');
var vanillaExtractDynamic_esm = require('./vanilla-extract-dynamic.esm-d5dffce7.js');
var classNames = require('./classNames-c14c6ef3.js');
var UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css = require('./UNSAFE_WindowOverlay/themes/WindowOverlayStyles.css.js');
var UNSAFE_WindowOverlay_themes_WindowOverlayContract_css = require('./UNSAFE_WindowOverlay/themes/WindowOverlayContract.css.js');
var useUser = require('./useUser-a6d15333.js');
var useComponentTheme = require('./useComponentTheme-082fc8e4.js');
var UNSAFE_WindowOverlay_themes_redwood_WindowOverlayTheme = require('./UNSAFE_WindowOverlay/themes/redwood/WindowOverlayTheme.js');

const offsetStyle = (offset) => {
    return typeof offset === 'number'
        ? vanillaExtractDynamic_esm.assignInlineVars({
            [UNSAFE_WindowOverlay_themes_WindowOverlayContract_css.windowOverlayVars.notificationMainAxisOffset]: `${offset}px`,
            [UNSAFE_WindowOverlay_themes_WindowOverlayContract_css.windowOverlayVars.notificationCrossAxisOffset]: `0px`
        })
        : vanillaExtractDynamic_esm.assignInlineVars({
            [UNSAFE_WindowOverlay_themes_WindowOverlayContract_css.windowOverlayVars.notificationMainAxisOffset]: `${offset?.mainAxis ?? 0}px`,
            [UNSAFE_WindowOverlay_themes_WindowOverlayContract_css.windowOverlayVars.notificationCrossAxisOffset]: `${offset?.crossAxis ?? 0}px`
        });
};
/**
 * A WindowOverlay component allows the user to place a child component relative to the viewport
 */
const WindowOverlay = ({ children, ...props }) => {
    const { direction } = useUser.useUser();
    const isLtr = direction === 'ltr';
    if (props.placement == null) {
        props.placement = 'center';
    }
    const { styles, baseTheme: windowOverlayTheme } = useComponentTheme.useComponentTheme(UNSAFE_WindowOverlay_themes_redwood_WindowOverlayTheme.WindowOverlayRedwoodTheme);
    const { baseStyle, gridStyles, placementStyles } = styles;
    const placementInterpolations = [
        ({ placement = 'center' }) => ({
            class: placementStyles[placement]
        })
    ];
    const interpolations = [...Object.values(placementInterpolations)];
    const styleInterpolations = mergeInterpolations.mergeInterpolations(interpolations);
    const { class: cls, ...allStyles } = styleInterpolations(props);
    const offsetClasses = (position, isLtr, theme) => {
        if (position == null) {
            return;
        }
        let logicalPosition;
        switch (position) {
            case 'top-start':
            case 'center':
                logicalPosition = isLtr
                    ? UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['top-left']
                    : UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['top-right'];
                break;
            case 'top-end':
                logicalPosition = isLtr
                    ? UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['top-right']
                    : UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['top-left'];
                break;
            case 'bottom-start':
                logicalPosition = isLtr
                    ? UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['bottom-left']
                    : UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['bottom-right'];
                break;
            case 'bottom-end':
                logicalPosition = isLtr
                    ? UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['bottom-right']
                    : UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['bottom-left'];
                break;
            case 'start-top':
                logicalPosition = isLtr
                    ? UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['left-top']
                    : UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['right-top'];
                break;
            case 'end-top':
                logicalPosition = isLtr
                    ? UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['right-top']
                    : UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['left-top'];
                break;
            case 'start-bottom':
                logicalPosition = isLtr
                    ? UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['left-bottom']
                    : UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['right-bottom'];
                break;
            case 'end-bottom':
                logicalPosition = isLtr
                    ? UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['right-bottom']
                    : UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['left-bottom'];
                break;
            case 'start':
                logicalPosition = isLtr ? UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['left'] : UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['right'];
                break;
            case 'end':
                logicalPosition = isLtr ? UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['right'] : UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['left'];
                break;
            case 'top':
                logicalPosition = UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['top'];
                break;
            case 'bottom':
                logicalPosition = UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles['bottom'];
                break;
        }
        return classNames.classNames([UNSAFE_WindowOverlay_themes_WindowOverlayStyles_css.windowOverlayStyles.notificationPosition, logicalPosition, theme]);
    };
    const classes = offsetClasses(props.placement, isLtr, windowOverlayTheme);
    const windowOverlayOffsetStyle = offsetStyle(props.offset);
    return (jsxRuntime.jsx("div", { class: classNames.classNames([baseStyle, gridStyles, cls]), style: allStyles, children: jsxRuntime.jsx("div", { class: classes, style: windowOverlayOffsetStyle !== undefined ? windowOverlayOffsetStyle : undefined, children: children }) }));
};

exports.WindowOverlay = WindowOverlay;
//# sourceMappingURL=WindowOverlay-d255542f.js.map
