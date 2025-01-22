/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { m as mergeInterpolations } from './mergeInterpolations-e2db2a66.js';
import { a as assignInlineVars } from './vanilla-extract-dynamic.esm-2955d60a.js';
import { c as classNames } from './classNames-4e12b00d.js';
import { windowOverlayStyles } from './UNSAFE_WindowOverlay/themes/WindowOverlayStyles.css.js';
import { windowOverlayVars } from './UNSAFE_WindowOverlay/themes/WindowOverlayContract.css.js';
import { u as useUser } from './useUser-99920e02.js';
import { u as useComponentTheme } from './useComponentTheme-d2f9e47f.js';
import { WindowOverlayRedwoodTheme } from './UNSAFE_WindowOverlay/themes/redwood/WindowOverlayTheme.js';

const offsetStyle = (offset) => {
    return typeof offset === 'number'
        ? assignInlineVars({
            [windowOverlayVars.notificationMainAxisOffset]: `${offset}px`,
            [windowOverlayVars.notificationCrossAxisOffset]: `0px`
        })
        : assignInlineVars({
            [windowOverlayVars.notificationMainAxisOffset]: `${offset?.mainAxis ?? 0}px`,
            [windowOverlayVars.notificationCrossAxisOffset]: `${offset?.crossAxis ?? 0}px`
        });
};
/**
 * A WindowOverlay component allows the user to place a child component relative to the viewport
 */
const WindowOverlay = ({ children, ...props }) => {
    const { direction } = useUser();
    const isLtr = direction === 'ltr';
    if (props.placement == null) {
        props.placement = 'center';
    }
    const { styles, baseTheme: windowOverlayTheme } = useComponentTheme(WindowOverlayRedwoodTheme);
    const { baseStyle, gridStyles, placementStyles } = styles;
    const placementInterpolations = [
        ({ placement = 'center' }) => ({
            class: placementStyles[placement]
        })
    ];
    const interpolations = [...Object.values(placementInterpolations)];
    const styleInterpolations = mergeInterpolations(interpolations);
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
                    ? windowOverlayStyles['top-left']
                    : windowOverlayStyles['top-right'];
                break;
            case 'top-end':
                logicalPosition = isLtr
                    ? windowOverlayStyles['top-right']
                    : windowOverlayStyles['top-left'];
                break;
            case 'bottom-start':
                logicalPosition = isLtr
                    ? windowOverlayStyles['bottom-left']
                    : windowOverlayStyles['bottom-right'];
                break;
            case 'bottom-end':
                logicalPosition = isLtr
                    ? windowOverlayStyles['bottom-right']
                    : windowOverlayStyles['bottom-left'];
                break;
            case 'start-top':
                logicalPosition = isLtr
                    ? windowOverlayStyles['left-top']
                    : windowOverlayStyles['right-top'];
                break;
            case 'end-top':
                logicalPosition = isLtr
                    ? windowOverlayStyles['right-top']
                    : windowOverlayStyles['left-top'];
                break;
            case 'start-bottom':
                logicalPosition = isLtr
                    ? windowOverlayStyles['left-bottom']
                    : windowOverlayStyles['right-bottom'];
                break;
            case 'end-bottom':
                logicalPosition = isLtr
                    ? windowOverlayStyles['right-bottom']
                    : windowOverlayStyles['left-bottom'];
                break;
            case 'start':
                logicalPosition = isLtr ? windowOverlayStyles['left'] : windowOverlayStyles['right'];
                break;
            case 'end':
                logicalPosition = isLtr ? windowOverlayStyles['right'] : windowOverlayStyles['left'];
                break;
            case 'top':
                logicalPosition = windowOverlayStyles['top'];
                break;
            case 'bottom':
                logicalPosition = windowOverlayStyles['bottom'];
                break;
        }
        return classNames([windowOverlayStyles.notificationPosition, logicalPosition, theme]);
    };
    const classes = offsetClasses(props.placement, isLtr, windowOverlayTheme);
    const windowOverlayOffsetStyle = offsetStyle(props.offset);
    return (jsx("div", { class: classNames([baseStyle, gridStyles, cls]), style: allStyles, children: jsx("div", { class: classes, style: windowOverlayOffsetStyle !== undefined ? windowOverlayOffsetStyle : undefined, children: children }) }));
};

export { WindowOverlay as W };
//# sourceMappingURL=WindowOverlay-e14f8324.js.map
