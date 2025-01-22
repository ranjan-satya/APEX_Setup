/* @oracle/oraclejet-preact: undefined */
'use strict';

var stringUtils = require('./stringUtils-4e4a6b2b.js');
var useUser = require('./useUser-a6d15333.js');

// returns the prefix and/or suffix components
// if the condition in which they should be shown is met.
const usePrefixSuffix = ({ baseId, hasEndContent, hasInsideLabel, hasStartContent, hasValue, isDisabled, isFocused, labelId, prefix, suffix, value }) => {
    const { direction } = useUser.useUser();
    // for accessibility, if you have a prefix, then you must have a prefixId
    const prefixId = `${baseId}-prefix`;
    const suffixId = `${baseId}-suffix`;
    const hasPrefixText = prefix !== undefined && prefix !== '';
    const hasSuffixText = suffix !== undefined && suffix !== '';
    const shouldRenderPrefix = hasPrefixText && !isDisabled && (hasValue || isFocused);
    const shouldRenderSuffix = hasSuffixText && !isDisabled && (hasValue || isFocused);
    // get value and prefix/suffix if available and return as plain text.
    const valuePrefixSuffix = hasPrefixText || hasSuffixText ? getText(direction, hasValue, prefix, suffix, value) : value;
    // get aria-labelledby if there is a prefix or suffix text
    const ariaLabelledBy = hasPrefixText || hasSuffixText
        ? stringUtils.merge([labelId, hasPrefixText ? prefixId : undefined, hasSuffixText ? suffixId : undefined])
        : undefined;
    const prefixProps = {
        id: prefixId,
        hasEndContent,
        hasInsideLabel,
        hasStartContent,
        isDisabled,
        isFocused,
        text: prefix ?? '',
        variant: 'prefix'
    };
    const suffixProps = {
        id: suffixId,
        hasInsideLabel,
        isDisabled,
        isFocused,
        text: suffix ?? '',
        variant: 'suffix'
    };
    return {
        shouldRenderPrefix,
        shouldRenderSuffix,
        prefixProps,
        suffixProps,
        valuePrefixSuffix,
        ariaLabelledBy
    };
};
/**
 * Returns the value to render in plain text, taking into account the prefix and suffix
 * and reading direction. Do not add a prefix/suffix if the component doesn't have a value.
 * @returns string | undefined
 */
function getText(direction, hasValue, prefix, suffix, value) {
    // Do not add a prefix/suffix if the component doesn't have a value.
    if (!hasValue) {
        return value;
    }
    // TODO: direction is 'ltr' even though the storybook is rtl.
    // Test this when the storybook bug is fixed. ?src=confmacro
    const isLTR = direction === 'ltr';
    const plainPrefix = prefix === undefined ? `` : isLTR ? `${prefix} ` : ` ${prefix}`;
    const plainSuffix = suffix === undefined ? `` : isLTR ? ` ${suffix}` : `${suffix} `;
    const ltrPlainText = `${plainPrefix}${value}${plainSuffix}`;
    const rtlPlainText = `${plainSuffix}${value}${plainPrefix}`;
    return isLTR ? ltrPlainText : rtlPlainText;
}

exports.usePrefixSuffix = usePrefixSuffix;
//# sourceMappingURL=usePrefixSuffix-edb21dad.js.map
