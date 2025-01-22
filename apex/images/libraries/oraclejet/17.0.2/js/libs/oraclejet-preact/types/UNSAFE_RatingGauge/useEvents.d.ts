/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { Ref, MutableRef } from 'preact/hooks';
import { CommitDetail, InputDetail } from '../utils/UNSAFE_meterUtils/meterTypes';
export declare const useEvents: (max: number, step: number, value: number, rootRef: Ref<HTMLElement>, dimensionsRef: MutableRef<{
    width: number;
    x: number;
}>, isInteractive: boolean, onCommit?: (detail: CommitDetail) => void, onInput?: (detail: InputDetail) => void) => {
    onPointerUp: (event: PointerEvent) => void;
    onBlur: () => void;
    onPointerMove: (event: PointerEvent) => void;
    onKeyUp: (event: KeyboardEvent) => void;
    onKeyDown: (event: KeyboardEvent) => void;
    onPointerLeave: () => void;
    onPointerEnter: () => void;
} | {
    onPointerUp?: undefined;
    onBlur?: undefined;
    onPointerMove?: undefined;
    onKeyUp?: undefined;
    onKeyDown?: undefined;
    onPointerLeave?: undefined;
    onPointerEnter?: undefined;
};
