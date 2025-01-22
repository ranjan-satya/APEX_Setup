/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs } from 'preact/jsx-runtime';
import { c as classNames } from './classNames-4e12b00d.js';
import { styles } from './PRIVATE_VisTabularDatatip/themes/VisTabularDatatipStyles.css.js';
import { u as useUser } from './useUser-99920e02.js';

function VisTabularDatatip({ tableData }) {
    const { direction } = useUser();
    const isRtl = direction === 'rtl';
    const datatipLabelStyle = classNames([
        styles.VisTabularDatatipLabel,
        isRtl ? styles.leftAlign : styles.rightAlign
    ]);
    const datatipValueStyle = classNames([
        styles.VisTabularDatatipValue,
        isRtl ? styles.rightAlign : styles.leftAlign
    ]);
    return (jsx("table", { class: styles.VisTabularDatatipTable, children: jsx("tbody", { children: tableData.map(({ key, value }) => {
                return (jsxs("tr", { children: [jsx("td", { class: datatipLabelStyle, children: key }), jsx("td", { class: datatipValueStyle, children: value })] }));
            }) }) }));
}

export { VisTabularDatatip as V };
//# sourceMappingURL=VisTabularDatatip-1f16ca1f.js.map
