import { ColorProps } from '../utils/UNSAFE_interpolations/colors';
import { VisThresholdsColors } from '../utils/UNSAFE_meterUtils';
import type { Ref } from 'preact/hooks';
export type RatingStarColorType = 'neutral' | 'gold' | ColorProps['color'] | VisThresholdsColors;
export declare function getValue(pageX: number, max: number, step: number, dimensionsRef: Ref<{
    width: number;
    x: number;
}>, isRtl: boolean): number;
export declare function getDimensions(element: HTMLElement | null): {
    width: number;
    x: number;
};
/**
 * Returns The color in rating gauge, if the color enum is supported. undefined otherwise.
 * @param color The color in rating gauge.
 * @returns The color in rating gauge, if the color enum is supported. undefined otherwise.
 */
export declare function getColorEnum(color: string | undefined): "gold" | "danger" | "warning" | "neutral" | "success" | undefined;
