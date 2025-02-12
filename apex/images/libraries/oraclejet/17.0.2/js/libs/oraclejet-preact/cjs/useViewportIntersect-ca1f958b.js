/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook to detect when the specified viewport element intersects elements that matches the specified css selector.
 * This is currently used by IncrementalLoader and VirtualizeViewportCollection.
 * Note options to IntersectionObsever such as rootMargin is not exposed now but can be added in the future as
 * needed.  (for example, with sticky footer we want to specify a wider margin so it won't trigger intersect)
 *
 * @param viewport an object which provide information about the viewport including what the viewport element is
 * @param onIntersect callback when an intersection with an element that has the specified target
 *                    style class occurred
 * @param targetSelector the CSS querySelector string used to identify the element where IntersectionObserver
 *                       observes
 * @param margin the top and bottom margin surrounding the viewport element in which the intersect detection takes into account.
 */
function useViewportIntersect(viewport, margin = 0, threshold = 0, targetSelector, onIntersect, onNotIntersect) {
    // create an IntersectionObserver.  Note for now we are creating it on every render (instead of once
    // on mounted) due to an issue we encountered where sometimes IntersectionObserver will not invoke
    // the intersect callback (possibly due to the root might have been detach/re-attached?), see JET-49951.
    hooks.useEffect(() => {
        let observer;
        const root = viewport.scroller();
        if (root) {
            const options = {
                // specifying null to cause ResizeObserver to use document viewport
                root: root === document.body || root === document.documentElement ? null : root,
                rootMargin: `${margin}px 0px`,
                threshold: [threshold]
            };
            observer = new IntersectionObserver((entries) => {
                for (const entry of entries) {
                    if (entry.isIntersecting ||
                        // manually check intersection here, because rootMargin is ignored when scroller is not explicitly defined,
                        // e.g. using document.documentElement, which leads to intersection is not correctly detected during
                        // keyboard navigation. https://w3c.github.io/IntersectionObserver/#dom-intersectionobserver-rootmargin
                        (margin > 0 &&
                            !options.root &&
                            entry.rootBounds?.bottom &&
                            entry.boundingClientRect.top <= entry.rootBounds?.bottom)) {
                        onIntersect();
                        return;
                    }
                    if (entry.intersectionRatio > 0 && !entry.isIntersecting && onNotIntersect) {
                        onNotIntersect(entry);
                        return;
                    }
                }
            }, options);
            // start observing the element with certain class is scrolled into viewport
            root.querySelectorAll(targetSelector).forEach((target) => {
                observer.observe(target);
            });
        }
        return () => {
            observer?.disconnect();
        };
    });
}

exports.useViewportIntersect = useViewportIntersect;
//# sourceMappingURL=useViewportIntersect-ca1f958b.js.map
