/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import type { useCssVars } from '../../hooks/PRIVATE_useCssVars';
declare const ganttUnresolvedVars: Parameters<typeof useCssVars>[0];
/**
 * Gets the resolved row axis related CSS vars.
 * @param resolvedVars The resolved CSS vars.
 * @returns The resolved values.
 */
declare const getResolvedRowAxisVars: (resolvedVars: ReturnType<typeof useCssVars>['resolvedVars']) => {
    rowLabelPaddingInlineStart: number;
    rowLabelPaddingInlineEnd: number;
};
/**
 * Gets the resolved row related CSS vars.
 * @param resolvedVars The resolved CSS vars.
 * @returns The resolved values.
 */
declare const getResolvedRowVars: (resolvedVars: ReturnType<typeof useCssVars>['resolvedVars']) => {
    rowPaddingTop: number;
    rowPaddingBottom: number;
};
/**
 * Gets the resolved task related CSS vars.
 * @param resolvedVars The resolved CSS vars.
 * @returns The resolved values.
 */
declare const getResolvedTaskVars: (resolvedVars: ReturnType<typeof useCssVars>['resolvedVars']) => {
    taskHeight: number;
    taskBorderRadius: string;
    taskBgColor: string;
    taskBorderColor: string;
    taskEffectBorderColor: string;
    taskEffectBoxShadow: {
        shadowColor: string;
        shadowOffsetX: number;
        shadowOffsetY: number;
        shadowBlur: number;
    };
};
export { ganttUnresolvedVars, getResolvedRowAxisVars, getResolvedRowVars, getResolvedTaskVars };
