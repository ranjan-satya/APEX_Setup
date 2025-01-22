/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var preact = require('preact');
var compat = require('preact/compat');
var classNames = require('./classNames-c14c6ef3.js');
var PRIVATE_FocusTracker_themes_FocusTrackerStyles_css = require('./PRIVATE_FocusTracker/themes/FocusTrackerStyles.css.js');
var tabbableUtils = require('./tabbableUtils-b49673af.js');

/**
 * Styled FocusTrap sub-component to render non-visible focus guards
 */
const FocusGuard = compat.forwardRef(({ onFocus }, guardRef) => {
    const classes = classNames.classNames([PRIVATE_FocusTracker_themes_FocusTrackerStyles_css.styles.guardStyle]);
    return jsxRuntime.jsx("div", { class: classes, onFocus: onFocus, ref: guardRef, tabIndex: 0 });
});

/**
 * Tracks focus within a DOM node.
 */
const FocusTracker = ({ children, onFocusStartEdge, onFocusEndEdge, onStartTracking, onStopTracking, isDisabled = false, styleClass }) => {
    const trackerRef = compat.useRef(null);
    const startGuardRef = compat.useRef(null);
    const endGuardRef = compat.useRef(null);
    const lastActiveElementRef = compat.useRef(null);
    const onStartTrackingRef = compat.useRef();
    const onStopTrackingRef = compat.useRef();
    // classes to be set on the children wrapper
    const classes = classNames.classNames([PRIVATE_FocusTracker_themes_FocusTrackerStyles_css.baseStyle, styleClass]);
    // store onStartTracking in our own ref to avoid this callback being triggered if it is ever updated externally.
    // for example, if we were not using a ref here and the component controlling this focus tracker passed in a
    // new onStartTracking callback function for whatever reason, the useEffect that invokes this callback would be
    // triggered at that time, and the new instance of this callback would be triggered as well.
    compat.useEffect(() => {
        onStartTrackingRef.current = onStartTracking;
    }, [onStartTracking]);
    // store onStopTracking in our own ref to avoid this callback being triggered if it is ever updated externally.
    // for example, if we were not using a ref here and the component controlling this focus tracker passed in a
    // new onStopTracking callback function for whatever reason, the useEffect that invokes this callback would be
    // triggered at that time, and the previous instance of this callback would be triggered as well.
    compat.useEffect(() => {
        onStopTrackingRef.current = onStopTracking;
    }, [onStopTracking]);
    // helper to handle guard focus
    const handleGuardFocus = (event, trackerElement, focusCallbackFunc // same as Props['onFocusEndEdge']
    ) => {
        if (focusCallbackFunc != null) {
            focusCallbackFunc({
                tabbableElements: tabbableUtils.allTabbableElements(trackerElement)
            });
        }
        // prevent scroll jump and bubbling this event up as a focus event
        event.stopPropagation();
        event.preventDefault();
    };
    // notify focus on start guard
    const handleOnFocusStartGuard = (event) => {
        if (trackerRef.current != null) {
            handleGuardFocus(event, trackerRef.current, onFocusStartEdge);
        }
    };
    // notify focus on end guard
    const handleOnFocusEndGuard = (event) => {
        if (trackerRef.current != null) {
            handleGuardFocus(event, trackerRef.current, onFocusEndEdge);
        }
    };
    // handle focus on child or other descendant
    const handleOnFocus = (event) => {
        lastActiveElementRef.current = event.target;
    };
    // handle initial render or re-render when 'isDisabled' changes
    compat.useEffect(() => {
        // determines if this focus tracker contains real browser focus
        const _hasFocusWithin = () => {
            if (trackerRef.current != null) {
                return hasFocus([trackerRef.current, startGuardRef.current, endGuardRef.current]);
            }
            return false;
        };
        const trackerElement = trackerRef.current;
        if (trackerElement != null && !isDisabled) {
            if (onStartTrackingRef.current != null) {
                onStartTrackingRef.current({
                    activeElement: tabbableUtils.getActiveElement(trackerElement),
                    hasFocusWithin: _hasFocusWithin(),
                    tabbableElements: tabbableUtils.allTabbableElements(trackerElement)
                });
            }
            // the 'cleanup' function of a useEffect is run when unmounted as well as before the useEffect is run on a re-render
            // 'isDisabled' is the only trigger so this should only run when unmounted and on isDisabled changes from false to true
            return () => {
                if (onStopTrackingRef.current != null) {
                    onStopTrackingRef.current({
                        hasFocusWithin: _hasFocusWithin(),
                        lastActiveElement: lastActiveElementRef.current
                    });
                }
            };
        }
        return;
        // it is very important that this useEffect is ONLY dependent on isDisabled changes. otherwise, the
        // start / stop tracking callbacks will be triggered whenever those other dependencies are updated.
    }, [isDisabled]);
    return (jsxRuntime.jsxs(preact.Fragment, { children: [!isDisabled && jsxRuntime.jsx(FocusGuard, { onFocus: handleOnFocusStartGuard, ref: startGuardRef }), jsxRuntime.jsx("div", { onFocus: !isDisabled ? handleOnFocus : undefined, ref: trackerRef, class: classes, children: children }), !isDisabled && jsxRuntime.jsx(FocusGuard, { onFocus: handleOnFocusEndGuard, ref: endGuardRef })] }));
};
/**
 * Helper function used to help determine if real browser focus is currently contained in the
 * array of elements provided.
 */
const hasFocus = (elements) => {
    if (elements.length === 0) {
        return false;
    }
    const activeElement = tabbableUtils.getActiveElement(elements[0]);
    return elements.some((el) => el?.contains(activeElement));
};

exports.FocusTracker = FocusTracker;
//# sourceMappingURL=FocusTracker-9cc329a3.js.map
