import { RefObject } from 'preact';
import { PositionData, Coords } from './Floating.types';
import type { ColorProps } from '../utils/UNSAFE_interpolations/colors';
type Props = Pick<ColorProps, 'backgroundColor'> & {
    data?: PositionData;
    anchorRef: RefObject<Element | Coords>;
    tail: 'none' | 'simple';
    isRtl: boolean;
};
declare const FloatingTail: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<Props> & {
    ref?: import("preact").Ref<HTMLDivElement | null> | undefined;
}>;
export { FloatingTail };
