/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
import { Placement } from '../../UNSAFE_Floating';
import { Ref } from 'preact/hooks';
import { Property } from 'csstype';
export type Dimension = {
    x: number;
    width: number;
    y: number;
    height: number;
};
type DatatipProps = {
    /**
     * The datatip content.
     */
    content?: ComponentChildren;
    /**
     * Whether the datatip is anchored to pointer or element.
     *
     */
    anchor: 'element' | 'pointer';
    /**
     * The offset from the anchor element or pointer.
     */
    offset?: {
        mainAxis?: number;
        crossAxis?: number;
    };
    /**
     * The border color of the datatip.
     */
    borderColor?: Property.BorderColor;
    /**
     * The placement of datatip from anchor point.
     */
    placement?: Placement;
    targetFocusRef: Ref<HTMLElement>;
};
/**
 * The hook to support custom datatip in visualization components.
 * TODO: THIS IS A TEMPORARY FORK OF PRIVATE_useDatatip until Gantt moves state up.
 */
export declare function useDatatip({ content, placement, offset, borderColor, anchor, targetFocusRef }: DatatipProps): {
    datatipContent: import("preact").JSX.Element | null;
    datatipProps: {
        'aria-describedby': string;
        onPointerEnter: (event: PointerEvent) => void;
        onPointerLeave: () => void;
        onPointerMove: (event: PointerEvent) => void;
        onFocus: (event: FocusEvent) => void;
        onShowFocusDatatip: () => void;
    };
};
export {};
