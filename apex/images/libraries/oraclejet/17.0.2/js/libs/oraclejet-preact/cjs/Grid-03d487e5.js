/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var grid = require('./grid-7c06084e.js');
var boxalignment = require('./boxalignment-5ef612ee.js');
var mergeInterpolations = require('./mergeInterpolations-6727b536.js');

var useTestId = require('./useTestId-8234ec1e.js');

var baseStyles = 'GridStyles_baseStyles__11rn47i0';

const interpolations = [
    ...Object.values(grid.gridInterpolations),
    ...Object.values(boxalignment.boxAlignmentInterpolations)
];
const styleInterpolations = mergeInterpolations.mergeInterpolations(interpolations);
/**
 * An implicit grid. Resize your browser to see how items reflow.
 */
const Grid = ({ 'aria-label': ariaLabel, 'aria-hidden': ariaHidden, children, testId, role, ...props }) => {
    const { class: cls, ...styles } = styleInterpolations(props);
    const testIdProps = useTestId.useTestId(testId);
    const allStyles = { ...styles };
    return (jsxRuntime.jsx("div", { class: `${baseStyles} ${cls ? cls : ''}`, style: allStyles, role: role, "aria-label": ariaLabel, "aria-hidden": ariaHidden, ...testIdProps, children: children }));
};

exports.Grid = Grid;
//# sourceMappingURL=Grid-03d487e5.js.map
