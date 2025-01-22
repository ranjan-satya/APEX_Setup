/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentThemeType } from '../../UNSAFE_Theme';
type PieChartStyles = typeof styles;
type PieChartTheme = ComponentThemeType<PieChartStyles>;
declare const dimensionStyle: string;
declare const styles: {
    svg: string;
    chart: string;
    selectedBorder: string;
    contrastBorder: string;
    innerShapes: string;
};
export type { PieChartStyles, PieChartTheme };
export { styles, dimensionStyle };
