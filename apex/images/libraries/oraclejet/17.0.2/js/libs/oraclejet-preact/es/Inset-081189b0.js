/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { c as classNames } from './classNames-4e12b00d.js';
import { multiVariantStyles, styles } from './UNSAFE_Inset/themes/InsetStyles.css.js';

function Inset({ children, variant }) {
    const variantClasses = multiVariantStyles({
        variantGroup: variant
    });
    const classes = classNames([variantClasses, styles.insetBase]);
    return jsx("div", { class: classes, children: children });
}

export { Inset as I };
//# sourceMappingURL=Inset-081189b0.js.map
