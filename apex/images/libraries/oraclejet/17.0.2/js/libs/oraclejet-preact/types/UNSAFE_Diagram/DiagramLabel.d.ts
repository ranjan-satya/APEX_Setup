import type { DiagramLabelPosition, DiagramLabelStyles } from './diagram.types';
import type { TextDimensions } from '../hooks/PRIVATE_useTextDimensions';
import { Property } from 'csstype';
/**
 * Props for the label component
 */
type LabelProps = {
    styles?: LabelStyles;
    text: string;
    position: DiagramLabelPosition;
    dimensions: TextDimensions;
    isRTL: boolean;
};
/**
 * Label styles
 */
type LabelStyles = DiagramLabelStyles & {
    borderStyle?: Property.BorderStyle;
};
export declare const DiagramLabel: ({ text, position, styles, dimensions, isRTL }: LabelProps) => import("preact").JSX.Element;
export {};
