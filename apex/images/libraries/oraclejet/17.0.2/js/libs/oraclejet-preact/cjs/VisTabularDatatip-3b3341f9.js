/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var classNames = require('./classNames-c14c6ef3.js');
var PRIVATE_VisTabularDatatip_themes_VisTabularDatatipStyles_css = require('./PRIVATE_VisTabularDatatip/themes/VisTabularDatatipStyles.css.js');
var useUser = require('./useUser-a6d15333.js');

function VisTabularDatatip({ tableData }) {
    const { direction } = useUser.useUser();
    const isRtl = direction === 'rtl';
    const datatipLabelStyle = classNames.classNames([
        PRIVATE_VisTabularDatatip_themes_VisTabularDatatipStyles_css.styles.VisTabularDatatipLabel,
        isRtl ? PRIVATE_VisTabularDatatip_themes_VisTabularDatatipStyles_css.styles.leftAlign : PRIVATE_VisTabularDatatip_themes_VisTabularDatatipStyles_css.styles.rightAlign
    ]);
    const datatipValueStyle = classNames.classNames([
        PRIVATE_VisTabularDatatip_themes_VisTabularDatatipStyles_css.styles.VisTabularDatatipValue,
        isRtl ? PRIVATE_VisTabularDatatip_themes_VisTabularDatatipStyles_css.styles.rightAlign : PRIVATE_VisTabularDatatip_themes_VisTabularDatatipStyles_css.styles.leftAlign
    ]);
    return (jsxRuntime.jsx("table", { class: PRIVATE_VisTabularDatatip_themes_VisTabularDatatipStyles_css.styles.VisTabularDatatipTable, children: jsxRuntime.jsx("tbody", { children: tableData.map(({ key, value }) => {
                return (jsxRuntime.jsxs("tr", { children: [jsxRuntime.jsx("td", { class: datatipLabelStyle, children: key }), jsxRuntime.jsx("td", { class: datatipValueStyle, children: value })] }));
            }) }) }));
}

exports.VisTabularDatatip = VisTabularDatatip;
//# sourceMappingURL=VisTabularDatatip-3b3341f9.js.map
