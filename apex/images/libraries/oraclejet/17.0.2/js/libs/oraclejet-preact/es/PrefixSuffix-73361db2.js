/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { multiVariantStyles } from './UNSAFE_PrefixSuffix/themes/PrefixSuffixStyles.css.js';

function PrefixSuffix({ hasEndContent, hasInsideLabel, hasStartContent, id, isDisabled, isFocused, text, variant }) {
    const variantClasses = multiVariantStyles({
        variant,
        isFocused: isFocused ? 'yes' : 'no',
        isDisabled: isDisabled ? 'yes' : 'no',
        hasInsideLabel: hasInsideLabel ? 'yes' : 'no',
        hasStartContent: hasStartContent ? 'yes' : 'no',
        hasEndContent: hasEndContent ? 'yes' : 'no'
    });
    return (jsx("div", { class: variantClasses, id: id, children: jsx("span", { children: text }) }));
}

export { PrefixSuffix as P };
//# sourceMappingURL=PrefixSuffix-73361db2.js.map
