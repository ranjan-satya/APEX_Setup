/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var useTestId = require('./useTestId-8234ec1e.js');
var classNames = require('./classNames-c14c6ef3.js');
var boxalignment = require('./boxalignment-5ef612ee.js');
var dimensions = require('./dimensions-b48bf1ab.js');
var flexbox = require('./flexbox-2cae9a01.js');
var flexitem = require('./flexitem-fee13e26.js');
var mergeInterpolations = require('./mergeInterpolations-6727b536.js');


var baseStyles = 'FlexStyles_baseStyles__10p93f60';
var marginZeroStyles = 'FlexStyles_marginZeroStyles__10p93f61';

const interpolations = [
    ...Object.values(dimensions.dimensionInterpolations),
    ...Object.values(flexbox.flexboxInterpolations),
    ...Object.values(flexitem.flexitemInterpolations),
    ...Object.values(boxalignment.boxAlignmentInterpolations)
];
const styleInterpolations = mergeInterpolations.mergeInterpolations(interpolations);
const Flex = ({ children, hasZeroMargins = true, testId, ...props }) => {
    const flexComponentClasses = classNames.classNames([baseStyles, hasZeroMargins && marginZeroStyles]);
    const { class: cls, ...styles } = styleInterpolations(props);
    const testIdProps = useTestId.useTestId(testId);
    return (jsxRuntime.jsx("div", { class: `${flexComponentClasses} ${cls}`, style: styles, ...testIdProps, children: children }));
};

exports.Flex = Flex;
exports.marginZeroStyles = marginZeroStyles;
//# sourceMappingURL=Flex-fbba4ad6.js.map
