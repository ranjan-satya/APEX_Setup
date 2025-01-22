/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var FormFieldContext = require('./FormFieldContext-8418dc68.js');

/**
 * Utility hook for consuming the FormFieldContext
 *
 * @returns The value of closest FormControl provider
 */
function useFormFieldContext() {
    return hooks.useContext(FormFieldContext.FormFieldContext);
}

exports.useFormFieldContext = useFormFieldContext;
//# sourceMappingURL=useFormFieldContext-20f419ef.js.map
