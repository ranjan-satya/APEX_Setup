/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ColorProps } from '../../UNSAFE_interpolations/colors';
export type VisTextStyle = {
    /**
     * The color of the text.
     */
    color?: ColorProps['color'];
    /**
     * The font size of the text.
     */
    fontSize?: string;
    /**
     * The font weight of the text.
     */
    fontWeight?: string;
    /**
     * The font style of the text.
     */
    fontStyle?: string;
    /**
     * Whether the text wrap is enabled or not.
     */
    whiteSpace?: 'normal' | 'nowrap';
};
