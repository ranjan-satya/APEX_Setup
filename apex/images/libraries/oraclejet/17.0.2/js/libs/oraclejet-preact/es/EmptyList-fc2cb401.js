/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';

/**
 * An empty list.
 */
const EmptyList = ({ 'aria-label': ariaLabel, 'aria-labelledby': ariaLabelledby, children }) => {
    return (jsx("div", { role: "grid", "aria-rowcount": 0, tabIndex: 0, "aria-label": ariaLabel, "aria-labelledby": ariaLabelledby, children: jsx("div", { role: "row", children: jsx("div", { role: "gridcell", children: children }) }) }));
};

export { EmptyList as E };
//# sourceMappingURL=EmptyList-fc2cb401.js.map
