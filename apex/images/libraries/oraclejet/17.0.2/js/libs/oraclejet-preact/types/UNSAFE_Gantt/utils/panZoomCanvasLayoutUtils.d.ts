/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { getUnresolvedTimeAxesLayout } from '../../PRIVATE_TimeComponent/utils/timeAxisLayoutUtils';
/**
 * Gets the pan zoom canvas layout given the time axes layout.
 * @param timeAxesLayout The time axes layout.
 * @returns The pan zoom canvas layout.
 */
declare const getPanZoomCanvasLayout: (timeAxesLayout: ReturnType<typeof getUnresolvedTimeAxesLayout>) => {
    overlayControlsPosition: "topEnd";
    verticalControlTopGap: string;
    verticalControlBottomGap: string;
} | {
    overlayControlsPosition: "bottomEnd";
    verticalControlTopGap: string;
    verticalControlBottomGap: string;
};
export { getPanZoomCanvasLayout };
