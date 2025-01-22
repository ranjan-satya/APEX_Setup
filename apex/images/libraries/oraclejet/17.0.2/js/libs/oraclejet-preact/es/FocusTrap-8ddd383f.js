/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { useRef, useCallback } from 'preact/compat';
import { b as focusOn, i as isTabbableElement } from './tabbableUtils-dca964ca.js';
import { F as FocusTracker } from './FocusTracker-a0621449.js';

/**
 * Trap focus within a DOM node.  When a user hits Tab or Shift+Tab, focus remains in the focus trap.
 */
const FocusTrap = ({ autoFocusRef, children, isDisabled = false, restoreFocusRef }) => {
    const originalActiveElementRef = useRef(null);
    const lastActiveElementRef = useRef(null);
    /**
     * contain focus if trap is enabled, and target is not already contained
     *
     * calling cases for side-effect of setting focus
     *   - on initial mount of (enabled) trap, where target is not inside trap
     *   - on enabling of a disabled trap, where target is not inside trap
     *   - target of click event is outside of trap.
     */
    const conditionallyContainFocus = useCallback((hasFocusWithin, currentActiveElement, tabbableElements) => {
        //  short-circuit, currentActiveElement not valid
        if (isDisabled || !currentActiveElement)
            return;
        // just update ref if currentActiveElement is a child of the tracker
        if (hasFocusWithin) {
            lastActiveElementRef.current = currentActiveElement;
            return;
        }
        // set focus to last active tab-stop if lastElement is defined and inside trap
        if (lastActiveElementRef.current) {
            focusOn(lastActiveElementRef.current);
        }
        else if (tabbableElements.length > 0) {
            // otherwise just contain focus within trap as target is outside enabled trap and we have no last-known tab-stop
            focusOn(tabbableElements[0]);
        }
    }, [isDisabled]);
    // loop focus from start edge
    const handleFocusStartEdge = useCallback((detail) => {
        const tabbableCount = detail.tabbableElements.length;
        if (tabbableCount > 0) {
            focusOn(detail.tabbableElements[tabbableCount - 1]);
        }
    }, []);
    // loop focus from end edge
    const handleFocusEndEdge = useCallback((detail) => {
        const tabbableCount = detail.tabbableElements.length;
        if (tabbableCount > 0) {
            focusOn(detail.tabbableElements[0]);
        }
    }, []);
    // handle enable case and initial render
    const handleStartTracking = useCallback((detail) => {
        originalActiveElementRef.current = detail.activeElement;
        // init focus
        if (autoFocusRef && autoFocusRef.current) {
            focusOn(autoFocusRef.current);
        }
        else {
            conditionallyContainFocus(detail.hasFocusWithin, detail.activeElement, detail.tabbableElements);
        }
    }, [autoFocusRef, conditionallyContainFocus]);
    // handle disable case
    const handleStopTracking = useCallback((detail) => {
        lastActiveElementRef.current = detail.lastActiveElement;
        if (restoreFocusRef !== false) {
            restoreFocusForCleanup(restoreFocusRef?.current || originalActiveElementRef.current);
        }
    }, [restoreFocusRef]);
    return (jsx(FocusTracker, { isDisabled: isDisabled, onStartTracking: handleStartTracking, onStopTracking: handleStopTracking, onFocusStartEdge: handleFocusStartEdge, onFocusEndEdge: handleFocusEndEdge, children: children }));
};
// setTimeout ensures that unmount lifecycle has completed
const restoreFocusForCleanup = (element) => {
    if (element && isTabbableElement(element)) {
        setTimeout(() => {
            focusOn(element);
        }, 0);
    }
};

export { FocusTrap as F };
//# sourceMappingURL=FocusTrap-8ddd383f.js.map
