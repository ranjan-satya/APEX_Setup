/* @oracle/oraclejet-preact: undefined */
import { useState, useEffect } from 'preact/hooks';

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Returns resolved touch response related values.
 */
function useVisTouchResponse(options) {
    const resolvedAutoTouchResponse = useVisAutoTouchResponse(options.type === 'auto' ? options : { type: 'auto', supportsTouchDragGestures: true } // dummy options; the output won't be used here for non-auto type.
    );
    return options.type === 'auto'
        ? resolvedAutoTouchResponse
        : {
            touchResponse: options.type,
            touchResponseStyle: {
                touchAction: options.type === 'touchStart' ? 'none' : 'auto'
            }
        };
}
function useVisAutoTouchResponse(options) {
    const { supportsTouchDragGestures } = options;
    const rootRef = !supportsTouchDragGestures ? options.rootRef : undefined;
    const [touchResponse, setTouchResponse] = useState('touchHold');
    useEffect(() => {
        if (supportsTouchDragGestures) {
            setTouchResponse('touchHold');
        }
        else if (rootRef && rootRef.current) {
            setTouchResponse(resolveTouchResponse(rootRef.current));
        }
    }, [rootRef, supportsTouchDragGestures]);
    return {
        touchResponse,
        touchResponseStyle: {
            touchAction: touchResponse === 'touchStart' || supportsTouchDragGestures ? 'none' : 'auto'
        }
    };
}
const resolveTouchResponse = (root) => {
    // Almost entirely copied from Dvt.EventManager.isTouchResponseTouchStart
    const TOUCH_RESPONSE_PADDING_CHECK = 10;
    let r = root;
    while (r) {
        const style = window.getComputedStyle(r);
        if ((style.overflow !== 'hidden' &&
            ((r.scrollWidth > r.clientWidth + TOUCH_RESPONSE_PADDING_CHECK &&
                style.overflowX !== 'hidden') ||
                (r.scrollHeight > r.clientHeight + TOUCH_RESPONSE_PADDING_CHECK &&
                    style.overflowY !== 'hidden'))) ||
            (window.frameElement && window.frameElement.nodeName == 'IFRAME')) {
            return 'touchHold';
        }
        if (r.nodeName === 'HTML') {
            break;
        }
        r = r.parentElement;
    }
    return 'touchStart';
};

export { useVisTouchResponse as u };
//# sourceMappingURL=useVisTouchResponse-e9ca4766.js.map
