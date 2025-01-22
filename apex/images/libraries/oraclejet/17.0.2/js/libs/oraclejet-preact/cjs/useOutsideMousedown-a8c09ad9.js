/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');
var arrayUtils = require('./arrayUtils-7d8dcfc3.js');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const isPointOutside = (event, ref) => {
    const target = event.target;
    if (target) {
        const doc = getDocument(target);
        if (!doc.contains(target))
            return false;
    }
    return ref.every((elRef) => !elRef.current?.contains(target));
};
const getDocument = (node) => node?.ownerDocument ?? document;
const useOutsideMousedown = ({ isDisabled: disabled = false, ref, handler }) => {
    hooks.useEffect(() => {
        const refs = arrayUtils.coerceArray(ref);
        if (!handler ||
            disabled ||
            (refs.length > 0 && refs.findIndex((elRef) => elRef.current === null) > -1))
            return;
        const onMouseDown = (event) => {
            if (isPointOutside(event, refs)) {
                handler?.(event);
            }
        };
        const firstElRef = refs[0];
        const doc = getDocument(firstElRef.current);
        if (doc) {
            doc.addEventListener('mousedown', onMouseDown, true);
            return () => {
                doc.removeEventListener('mousedown', onMouseDown, true);
            };
        }
        return undefined;
    }, [disabled, handler, ref]);
};

exports.useOutsideMousedown = useOutsideMousedown;
//# sourceMappingURL=useOutsideMousedown-a8c09ad9.js.map
