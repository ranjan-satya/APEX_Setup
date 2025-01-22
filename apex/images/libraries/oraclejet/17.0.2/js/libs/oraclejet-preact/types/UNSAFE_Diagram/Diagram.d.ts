/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { DiagramProps, DiagramNodeData, DiagramLinkData } from './diagram.types';
/**
 * Diagrams are used to display a set of nodes and the links between them.
 */
export declare function Diagram<K1 extends string | number, K2 extends string | number, D1 extends DiagramNodeData<K1> = DiagramNodeData<K1>, D2 extends DiagramLinkData<K2, K1> = DiagramLinkData<K2, K1>>({ width, height, ...otherProps }: DiagramProps<K1, K2, D1, D2>): import("preact").JSX.Element | null;
