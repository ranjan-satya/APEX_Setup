/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { g as gridInterpolations } from './grid-65aa641c.js';
import { b as boxAlignmentInterpolations } from './boxalignment-486c5ac9.js';
import { m as mergeInterpolations } from './mergeInterpolations-e2db2a66.js';
import './GridStyles.styles.css';
import { u as useTestId } from './useTestId-adde554c.js';

var baseStyles = 'GridStyles_baseStyles__11rn47i0';

const interpolations = [
    ...Object.values(gridInterpolations),
    ...Object.values(boxAlignmentInterpolations)
];
const styleInterpolations = mergeInterpolations(interpolations);
/**
 * An implicit grid. Resize your browser to see how items reflow.
 */
const Grid = ({ 'aria-label': ariaLabel, 'aria-hidden': ariaHidden, children, testId, role, ...props }) => {
    const { class: cls, ...styles } = styleInterpolations(props);
    const testIdProps = useTestId(testId);
    const allStyles = { ...styles };
    return (jsx("div", { class: `${baseStyles} ${cls ? cls : ''}`, style: allStyles, role: role, "aria-label": ariaLabel, "aria-hidden": ariaHidden, ...testIdProps, children: children }));
};

export { Grid as G };
//# sourceMappingURL=Grid-cfeac922.js.map
