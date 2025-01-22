import { ComponentThemeType } from '../../UNSAFE_Theme';
type GanttStyles = typeof styles;
type GanttTheme = ComponentThemeType<GanttStyles>;
declare const bridgeValues: {
    rowLabelPaddingInlineStart: string;
    rowLabelPaddingInlineEnd: string;
    taskBgColor: string;
    taskBorderColor: `rgba(var(--${string}), ${number})` | `rgba(var(--${string}, ${string}), ${number})` | `rgba(var(--${string}, ${number}), ${number})`;
    taskEffectBorderColor: `rgb(var(--${string}))` | `rgb(var(--${string}, ${string}))` | `rgb(var(--${string}, ${number}))`;
};
declare const rowAxisLayoutStyles: {
    base: string;
    rowAxis: string;
    ganttView: string;
};
declare const rowAxisStyles: {
    base: string;
    withSeparatorTop: string;
    contentContainer: string;
    labelContainer: string;
    labelContainerFocused: string;
    withLabelSeparatorBottom: string;
};
declare const horizontalGridlinesStyles: {
    base: string;
};
declare const timeAxisDataBodyStyles: {
    base: string;
    pannable: string;
    withRowAxisSeparatorLeft: string;
    withRowAxisSeparatorRight: string;
};
declare const rowBackgroundStyles: {
    selected: string;
};
declare const taskLabelLayerStyles: {
    base: string;
    label: string;
    innerLabel: string;
};
declare const taskMobileAccStyles: {
    base: string;
    content: string;
};
declare const styles: {
    baseStyle: string;
};
export type { GanttStyles, GanttTheme };
export { rowAxisLayoutStyles, rowAxisStyles, rowBackgroundStyles, horizontalGridlinesStyles, timeAxisDataBodyStyles, taskLabelLayerStyles, taskMobileAccStyles, styles, bridgeValues };
