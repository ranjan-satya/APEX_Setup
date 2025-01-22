/* @oracle/oraclejet-preact: undefined */
'use strict';

var size = require('./size-4e606ce4.js');
var colorUtils = require('./colorUtils-fe6f2fbf.js');

/**
 * This file contains a style interpolation for dimension css properties.
 * It contains prop => style functions related to a UI elements
 * dimensions.
 * Style interpolations are functions that transform props to UI styling.
 * This technique is often used in Styled Components to provide consistent,
 * reusable styled props API.
 *
 * This file contains dimension properties like width, height,
 * maxHeight, etc. The intent of this dimension interpolation file
 * is that all component apis that need dimension properties
 * will use these dimensions interpolations so that the properties, in whatever component they are used,
 * will type the properties the same way and will also interpolate the
 * property values the same way. This gives us consistent apis and behavior.
 * I.e., The dimension properties are all typed with Size, and the user's values all run through the same sizeToCSS() function.
 */
// The typed dimensions array can be exported to show options in a test or storybook.
const dimensions = ['height', 'maxHeight', 'maxWidth', 'minHeight', 'minWidth', 'width'];
// Pick<DimensionProps, Key> Constructs a type by picking the set of properties Keys (string literal or union
// of string literals ) from DimensionProps.
// This is the *dimension interpolation function*. All dimension properties run through this function;
// it runs the dimension's value through the sizeToCSS() function to return the css that can be used
// in the html style property.
// e.g., it maps 50x to calc(50 * var(--oj-c-EXPERIMENTAL-DO-NOT-USE-size-units, 0.25rem));
const propToSize = (key) => (props) => {
    // Storing a local copy of the prop for proper type guarding in the ternary (conditional) below.
    const val = props[key];
    // casting val as Size because we know it can't be undefined
    return colorUtils.isNil(props[key]) ? {} : { [key]: size.sizeToCSS(val) };
};
// A map of dimension style props to size style interpolation functions.
// Since TS infers the return type of `reduce` from the `initialValue`,
// we need to manually write the type so is isn't cast as `{}` which is effectively `any`.
// Our initial object {} is cast to Interpolations type.
// This will reduce the dimensions array to an Object that has the dimension keys, like
// width, height, etc., and an interpolation function.
// In component code that uses dimensionInterpolations, we run the dimension
// props through this interpolation function to get the value, a class, else a style
// (dimensions return styles, not style classes.). Other interpolations, like flexitem,
// may return classes for properties that have distinct prop values, like start, center, end
// or sm, md, lg.
// Search component .tsx files for a dimensionInterpolations usage example.
const dimensionInterpolations = dimensions.reduce((acc, key) => Object.assign(acc, { [key]: propToSize(key) }), {});

exports.dimensionInterpolations = dimensionInterpolations;
exports.dimensions = dimensions;
//# sourceMappingURL=dimensions-b48bf1ab.js.map
