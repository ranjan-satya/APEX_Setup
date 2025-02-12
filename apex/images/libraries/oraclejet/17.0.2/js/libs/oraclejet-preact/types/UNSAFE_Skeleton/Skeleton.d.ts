import type { DimensionProps } from '../utils/UNSAFE_interpolations/dimensions';
import type { BorderProps } from '../utils/UNSAFE_interpolations/borders';
import { WithRequired } from '../utils/UNSAFE_typeUtils';
declare const dimensions: readonly ["height", "width"];
type Dimension = (typeof dimensions)[number];
declare const border: readonly ["borderRadius"];
type BorderRadius = (typeof border)[number];
type StyleInterpolationProps = Pick<DimensionProps, Dimension>;
type BorderRadiusProps = Pick<BorderProps, BorderRadius>;
type SkeletonProps = WithRequired<StyleInterpolationProps, 'height'> & BorderRadiusProps;
/**
 * Skeleton component allows the appropriate skeleton to be rendered based on the
 * property values
 **/
export declare function Skeleton({ ...props }: SkeletonProps): import("preact").JSX.Element;
export {};
