import type { DiagramLabelPosition, DiagramNodeData, DiagramLinkData } from './diagram.types';
import type { TextDimensions } from '../hooks/PRIVATE_useTextDimensions';
type Props<K1, K2, D1, D2> = {
    labelPosition: (DiagramLabelPosition | undefined)[];
    itemProps: (D1 | D2)[];
    labelDimensions: Map<K1 | K2, TextDimensions>;
};
export declare function DiagramLabelLayer<K1, K2, D1 extends DiagramNodeData<K1>, D2 extends DiagramLinkData<K2, K1>>({ labelPosition, itemProps, labelDimensions }: Props<K1, K2, D1, D2>): import("preact").JSX.Element;
export {};
