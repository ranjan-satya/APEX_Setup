import { GanttViewportTaskLayoutObj } from './dataLayoutUtils';
/**
 * Draws a given task onto a given Canvas.
 * @param ctx The Canvas's 2D context.
 * @param taskLayoutObj The task layout object.
 * @param state The task's state.
 */
declare const drawTask: <K2>(ctx: CanvasRenderingContext2D, taskLayoutObj: GanttViewportTaskLayoutObj<K2>, state?: 'selected' | 'hovered' | 'focused') => undefined;
export { drawTask };
