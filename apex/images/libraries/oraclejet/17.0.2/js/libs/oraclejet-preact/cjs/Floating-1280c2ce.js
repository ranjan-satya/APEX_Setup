/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var hooks = require('preact/hooks');
var compat = require('preact/compat');
var useFloating = require('./useFloating-7800fd56.js');
var refUtils = require('./refUtils-915b985d.js');
var useOutsideClick = require('./useOutsideClick-7420644b.js');
var useUser = require('./useUser-a6d15333.js');
var useComponentTheme = require('./useComponentTheme-082fc8e4.js');
var classNames = require('./classNames-c14c6ef3.js');
var utils = require('./utils-b7099be5.js');
var Common_themes_themeContract_css = require('./Common/themes/themeContract.css.js');
var UNSAFE_Floating_themes_redwood_FloatingTheme = require('./UNSAFE_Floating/themes/redwood/FloatingTheme.js');
var UNSAFE_Floating_themes_FloatingStyles_css = require('./UNSAFE_Floating/themes/FloatingStyles.css.js');
var vanillaExtractDynamic_esm = require('./vanilla-extract-dynamic.esm-d5dffce7.js');
var UNSAFE_Floating_themes_FloatingContract_css = require('./UNSAFE_Floating/themes/FloatingContract.css.js');

const ARROW_SIZE = 7;
const ARROW_SIZE_CORNER = 6;
const ARROW_INNER_SIZE = 5;
const ARROW_INNER_SIZE_CORNER = 5;
const FloatingTail = compat.forwardRef(({ data, anchorRef, tail, isRtl, backgroundColor }, ref) => {
    const { styles, baseTheme } = useComponentTheme.useComponentTheme(UNSAFE_Floating_themes_redwood_FloatingTheme.FloatingRedwoodTheme);
    const arrowRef = hooks.useRef(null);
    const [arrowStyles, setArrowStyles] = hooks.useState({
        arrowStyle: { visibility: 'hidden' },
        arrowInnerStyle: { visibility: 'hidden' }
    });
    hooks.useLayoutEffect(() => {
        if (arrowRef.current == null)
            return;
        const { isCornerVerticalPlacement, isCornerHorizontalPlacement } = isCorner(anchorRef, tail, data);
        setArrowStyles(setStyles(tail, isRtl, isCornerVerticalPlacement, isCornerHorizontalPlacement, data, backgroundColor));
    }, [
        data,
        backgroundColor,
        data?.placement,
        data?.x,
        data?.y,
        data?.offset,
        data?.arrow,
        tail,
        isRtl,
        anchorRef
    ]);
    const stableRef = hooks.useMemo(() => refUtils.mergeRefs(ref, arrowRef), [ref, arrowRef]);
    return (tail === 'simple' && (jsxRuntime.jsxs("div", { ref: stableRef, class: classNames.classNames([baseTheme, styles.floatingTailBaseStyle]), style: arrowStyles.arrowStyle, children: [' ', jsxRuntime.jsx("div", { class: classNames.classNames([styles.floatingTailBaseStyle]), style: arrowStyles.arrowInnerStyle }), ' '] })));
});
function isCorner(anchorRef, tail, data) {
    if (tail === 'simple' && data && data.arrow) {
        const { centerOffset } = data.arrow;
        const arrowSize = ARROW_SIZE;
        let anchorRefHeight = 0;
        let anchorRefWidth = 0;
        const current = anchorRef.current;
        // @ts-ignore. Type 'Element | Coords' issues
        // Property 'x' does not exist on type 'Element'.
        // Property 'y' does not exist on type 'Element'.
        const isAnchorRefElement = current?.x === undefined && current?.y === undefined;
        if (isAnchorRefElement) {
            // @ts-ignore. Property 'getBoundingClientRect' does not exist on type 'Coords'.
            anchorRefHeight = Math.round(current.getBoundingClientRect().height);
            // @ts-ignore. Property 'getBoundingClientRect' does not exist on type 'Coords'.
            anchorRefWidth = Math.round(anchorRef.current?.getBoundingClientRect().width);
        }
        const isCornerVerticalPlacement = isAnchorRefElement
            ? Math.abs(centerOffset) >= anchorRefHeight / 2 - arrowSize / 2
            : ['start-top-corner', 'start-bottom-corner', 'end-top-corner', 'end-bottom-corner'].includes(data.origPlacement);
        const isCornerHorizontalPlacement = isAnchorRefElement
            ? Math.abs(centerOffset) >= anchorRefWidth / 2 - arrowSize / 2
            : ['top-start-corner', 'top-end-corner', 'bottom-start-corner', 'bottom-end-corner'].includes(data.origPlacement);
        return { isCornerVerticalPlacement, isCornerHorizontalPlacement };
    }
    else
        return { isCornerVerticalPlacement: false, isCornerHorizontalPlacement: false };
}
function setStyles(
//arrowEl: HTMLDivElement,
tail, isRtl, isCornerVerticalPlacement, isCornerHorizontalPlacement, data, backgroundColor) {
    const result = { visibility: 'visible' };
    const innerResult = { visibility: 'visible' };
    if (tail === 'simple' && data && data.arrow) {
        const { x, y, centerOffset } = data.arrow;
        const arrowSize = ARROW_SIZE;
        const arrowSizeCorner = ARROW_SIZE_CORNER;
        //const arrowInnerEl = arrowEl.querySelector('div') as Element;
        const arrowInnerSize = ARROW_INNER_SIZE;
        const arrowInnerSizeCorner = ARROW_INNER_SIZE_CORNER;
        const isCenter = centerOffset === 0;
        const isCenterOffsetPositive = centerOffset > 0;
        // Set sizes of the arrow
        setArrowSizes(isCornerVerticalPlacement || isCornerHorizontalPlacement);
        // Corner vs. normal arrow
        function setArrowSizes(isCornerPlacement) {
            // Outer arrow (shadow)
            const arrowFinalSize = isCornerPlacement ? arrowSizeCorner : arrowSize;
            setArrowStyle({
                // Tracked: 
                borderTop: `${getSize(arrowFinalSize)} solid ${utils.rgba(Common_themes_themeContract_css.colorSchemeVars.palette.neutral[90], 0.1)}`,
                borderRight: getTransparentBorder(arrowFinalSize),
                borderLeft: getTransparentBorder(arrowFinalSize)
            }, result);
            // Inner arrow
            const arrowInnerFinalSize = isCornerPlacement ? arrowInnerSizeCorner : arrowInnerSize;
            setArrowInnerStyle({
                // Tracked: 
                borderTop: `${getSize(arrowInnerFinalSize)} solid ${backgroundColor}`,
                borderRight: `${getTransparentBorder(arrowInnerFinalSize)}`,
                borderLeft: `${getTransparentBorder(arrowInnerFinalSize)}`
            }, innerResult);
        }
        function setArrowStyle(style, result) {
            Object.assign(result, style);
        }
        function setArrowInnerStyle(style, result) {
            Object.assign(result, style);
        }
        function getTurn(eighth) {
            return `rotate(${eighth * 45}deg)`;
        }
        function getSize(size) {
            return `${size}px`;
        }
        function getTransparentBorder(size) {
            return `${getSize(size)} solid transparent`;
        }
        const placementArr = data.placement.split('-');
        const side = placementArr[0];
        switch (side) {
            case 'top':
                setArrowTop();
                break;
            case 'end':
                isRtl ? setArrowStart() : setArrowEnd();
                break;
            case 'bottom':
                setArrowBottom();
                break;
            case 'start':
                isRtl ? setArrowEnd() : setArrowStart();
                break;
        }
        function setArrowTop() {
            if (x != undefined) {
                if (isCornerHorizontalPlacement) {
                    // Top corners
                    setArrowStyle({
                        top: '', // flip 'reset'
                        bottom: getSize(-arrowSize + 2),
                        left: getSize(x + (isCenterOffsetPositive ? 5 : -5)),
                        transform: getTurn(isCenterOffsetPositive ? 5 : 3)
                    }, result);
                    setCornerArrowInner();
                }
                else {
                    setArrowStyle({
                        top: '', // flip 'reset'
                        bottom: getSize(-arrowSize),
                        left: isCenter ? getSize(x) : getSize(x + (isCenterOffsetPositive ? 1 : -1)),
                        transform: getTurn(0)
                    }, result);
                    setNonCornerArrowInner();
                }
            }
        }
        function setArrowEnd() {
            if (y != undefined) {
                if (isCornerVerticalPlacement) {
                    // End corners
                    setArrowStyle({
                        top: getSize(y + (isCenterOffsetPositive ? 2 : -2)),
                        right: '', // flip 'reset'
                        left: getSize(-arrowSize - 1),
                        transform: getTurn(isCenterOffsetPositive ? 7 : 5)
                    }, result);
                    setCornerArrowInner();
                }
                else {
                    // End
                    setArrowStyle({
                        top: isCenter ? getSize(y) : getSize(y + (isCenterOffsetPositive ? -2 : +2)),
                        right: '', // flip 'reset'
                        left: getSize(-arrowSize * 1.5),
                        transform: getTurn(2)
                    }, result);
                    setNonCornerArrowInner();
                }
            }
        }
        function setArrowBottom() {
            if (x != undefined) {
                if (isCornerHorizontalPlacement) {
                    // Bottom corners
                    setArrowStyle({
                        top: getSize(-arrowSize + 3),
                        bottom: '', // flip 'reset'
                        left: getSize(x + (isCenterOffsetPositive ? 4 : -4)),
                        transform: getTurn(isCenterOffsetPositive ? 2 : 6)
                    }, result);
                    setArrowInnerStyle({
                        top: getSize(-arrowInnerSize),
                        left: getSize(-arrowInnerSize + (isCenterOffsetPositive ? 1 : -1))
                    }, innerResult);
                }
                else {
                    setArrowStyle({
                        top: getSize(-arrowSize),
                        bottom: '', // flip 'reset'
                        left: isCenter ? getSize(x) : getSize(x + (isCenterOffsetPositive ? 1 : -1)),
                        transform: getTurn(4)
                    }, result);
                    setNonCornerArrowInner();
                }
            }
        }
        function setArrowStart() {
            if (y != undefined) {
                if (isCornerVerticalPlacement) {
                    // Start corners
                    setArrowStyle({
                        top: getSize(y + (isCenterOffsetPositive ? 2 : -2)),
                        right: getSize(-arrowSize - 1),
                        left: '', // flip 'reset'
                        transform: getTurn(isCenterOffsetPositive ? 1 : 3)
                    }, result);
                    setArrowInnerStyle({
                        top: getSize(-arrowInnerSize),
                        left: getSize(-arrowInnerSize + (isCenterOffsetPositive ? -2 : 2))
                    }, innerResult);
                }
                else {
                    // Start
                    setArrowStyle({
                        top: isCenter ? getSize(y) : getSize(y + (isCenterOffsetPositive ? -2 : +2)),
                        right: getSize(-arrowSize * 1.5),
                        left: '', // flip 'reset'
                        transform: getTurn(6)
                    }, result);
                    setNonCornerArrowInner();
                }
            }
        }
        function setCornerArrowInner() {
            setArrowInnerStyle({
                top: getSize(-arrowInnerSize),
                left: getSize(-arrowInnerSize + (isCenterOffsetPositive ? 2 : -2))
            }, innerResult);
        }
        function setNonCornerArrowInner() {
            setArrowInnerStyle({
                top: getSize(-arrowInnerSize - 2),
                left: getSize(-arrowInnerSize)
            }, innerResult);
        }
    }
    return { arrowStyle: result, arrowInnerStyle: innerResult };
}

function isElement(value) {
    return value instanceof Element;
}
/**
 * A floating component allows the user to create a floating element that is displayed relative to an anchor element or pointer coordinates
 * and at the same time on the "top layer" of all other elements.
 * The Floating component is a base component and is often used by such components as Popup, Tooltip, SelectMultiple, Menu and other components.
 */
const Floating = compat.forwardRef(({ children, backgroundColor, onClickOutside, placement = 'bottom', anchorRef, offsetValue, class: className, tail = 'none', flipOptions = { mainAxis: true, crossAxis: false }, shiftOptions = { mainAxis: true, crossAxis: false }, sizeOptions = { isMaxHeightAdjusted: false, isMaxWidthAdjusted: false }, boundaryOptions = { padding: 0 }, onPosition }, ref) => {
    const arrowRef = hooks.useRef(null);
    const [positionData, setPositionData] = hooks.useState();
    const [previousAnchor, setPreviousAnchor] = hooks.useState(null);
    const { styles, baseTheme } = useComponentTheme.useComponentTheme(UNSAFE_Floating_themes_redwood_FloatingTheme.FloatingRedwoodTheme);
    // we need to be sure anchorRef.current exists in first call
    // to be able to set the previousAnchor state
    hooks.useLayoutEffect(() => {
        setPreviousAnchor(anchorRef.current);
    }, [anchorRef]);
    // In case anchorRef.current changes and we need to update floating position
    // when it changes, we need to have copy in the state.
    // For example when anchorRef is Coords( virtual element)
    if (anchorRef.current !== previousAnchor) {
        setPreviousAnchor(anchorRef.current);
    }
    const { direction } = useUser.useUser();
    const isRtl = direction === 'rtl';
    const _onPosition = hooks.useCallback((data) => {
        setPositionData(data);
        onPosition?.(data);
    }, [onPosition]);
    const middleware = [
        useFloating.offset(offsetValue),
        useFloating.flip({
            mainAxis: flipOptions.mainAxis,
            crossAxis: flipOptions.crossAxis,
            fallbackPlacements: flipOptions.fallbackPlacements?.map((placement) => useFloating.logicalSide(placement, direction)),
            padding: boundaryOptions.padding
        }),
        useFloating.shift({
            mainAxis: shiftOptions.mainAxis,
            crossAxis: shiftOptions.crossAxis,
            limiter: useFloating.limitShift({
                mainAxis: shiftOptions.mainAxis,
                crossAxis: shiftOptions.crossAxis
            })
        }),
        ...(arrowRef.current
            ? [
                useFloating.arrow({
                    element: arrowRef.current
                })
            ]
            : [])
    ];
    if (sizeOptions.isMaxHeightAdjusted || sizeOptions.isMaxWidthAdjusted) {
        middleware.push(useFloating.size({
            apply({ availableWidth, availableHeight, elements }) {
                if (sizeOptions.isMaxHeightAdjusted) {
                    if (parseInt(elements.floating.style.maxHeight) !== availableHeight) {
                        Object.assign(elements.floating.style, {
                            maxHeight: `${Math.min(availableHeight, sizeOptions.maxHeightCeiling || availableHeight)}px`
                        });
                    }
                }
                if (sizeOptions.isMaxWidthAdjusted) {
                    if (parseInt(elements.floating.style.maxWidth) !== availableWidth) {
                        Object.assign(elements.floating.style, {
                            maxWidth: `${Math.min(availableWidth, sizeOptions.maxWidthCeiling || availableWidth)}px`
                        });
                    }
                }
            },
            padding: boundaryOptions.padding
        }));
    }
    const { x, y, reference, floating, refs, update } = useFloating.useFloating({
        placement: placement,
        middleware: middleware,
        onPosition: _onPosition
    });
    // To solve "loop limit exceeds" problem from the ResizeObserver in autoUpdate
    // we need to make sure that we utilize autoUpdate function
    // after the Floating component is positioned and has x, y coordinates.
    const [isPositioned, setIsPositioned] = hooks.useState(false);
    // here autoUpdate should be called only once during the Component lifecycle,
    // if the floating, reference, placement and middleware do not change
    hooks.useEffect(() => {
        if (!refs.reference.current || !refs.floating.current || isPositioned !== true) {
            return;
        }
        return useFloating.autoUpdate(refs.reference.current, refs.floating.current, update);
    }, [refs.floating, refs.reference, update, isPositioned]);
    // here we should know when the Floating is positioned
    hooks.useEffect(() => {
        if (x != null && y != null) {
            setIsPositioned(true);
        }
    }, [x, y]);
    useOutsideClick.useOutsideClick({ isDisabled: false, ref: refs.floating, handler: onClickOutside });
    function createVirtualElement(domRef, data) {
        let offsetX = null;
        let offsetY = null;
        let isAutoUpdateEvent = false;
        return {
            contextElement: domRef || undefined,
            getBoundingClientRect() {
                const domRect = domRef?.getBoundingClientRect() || {
                    width: 0,
                    height: 0,
                    x: 0,
                    y: 0
                };
                const isXAxis = data.axis === 'x' || data.axis === 'both';
                const isYAxis = data.axis === 'y' || data.axis === 'both';
                let width = domRect.width;
                let height = domRect.height;
                let x = domRect.x;
                let y = domRect.y;
                if (offsetX == null && data.x && isXAxis) {
                    offsetX = domRect.x - data.x;
                }
                if (offsetY == null && data.y && isYAxis) {
                    offsetY = domRect.y - data.y;
                }
                x -= offsetX || 0;
                y -= offsetY || 0;
                width = 0;
                height = 0;
                if (!isAutoUpdateEvent) {
                    width = data.axis === 'y' ? domRect.width : 0;
                    height = data.axis === 'x' ? domRect.height : 0;
                    x = isXAxis && data.x != null ? data.x : x;
                    y = isYAxis && data.y != null ? data.y : y;
                }
                else if (isAutoUpdateEvent) {
                    height = data.axis === 'x' ? domRect.height : height;
                    width = data.axis === 'y' ? domRect.width : width;
                }
                isAutoUpdateEvent = true;
                const virtEl = {
                    width,
                    height,
                    x,
                    y,
                    top: y,
                    right: x + width,
                    bottom: y + height,
                    left: x
                };
                return virtEl;
            }
        };
    }
    hooks.useLayoutEffect(() => {
        if (isElement(previousAnchor)) {
            const element = previousAnchor;
            reference(element);
            return;
        }
        const coords = previousAnchor;
        if (coords != null && coords.contextElement != null) {
            const virtualEl = createVirtualElement(coords.contextElement, {
                axis: 'both',
                x: coords.x,
                y: coords.y
            });
            reference(virtualEl);
            return;
        }
        const virtualEl = {
            getBoundingClientRect() {
                return {
                    width: 0,
                    height: 0,
                    x: coords.x,
                    y: coords.y,
                    top: coords.y,
                    left: coords.x,
                    right: coords.x,
                    bottom: coords.y
                };
            }
        };
        if (coords && coords.x != null) {
            reference(virtualEl);
        }
    }, [previousAnchor, reference]);
    const stableRef = hooks.useMemo(() => refUtils.mergeRefs(ref, floating), [ref, floating]);
    const positionStyle = { top: y, left: x };
    let assignedVars = {}; // empty var override unless background is specified
    if (backgroundColor) {
        assignedVars = vanillaExtractDynamic_esm.assignInlineVars({
            [UNSAFE_Floating_themes_FloatingContract_css.floatingVars.backgroundColor]: backgroundColor
        });
    }
    const visibilityStyles = x == null && y == null ? UNSAFE_Floating_themes_FloatingStyles_css.floatingVisibilityStyles.hidden : UNSAFE_Floating_themes_FloatingStyles_css.floatingVisibilityStyles.visible;
    const floatingClasses = classNames.classNames([className, baseTheme, styles.baseStyle, visibilityStyles]);
    const isAnchorMounted = anchorRef && anchorRef.current;
    const content = (jsxRuntime.jsxs("div", { class: floatingClasses, ref: stableRef, style: { ...positionStyle, ...assignedVars }, children: [children, isAnchorMounted && (jsxRuntime.jsx(FloatingTail, { ref: arrowRef, backgroundColor: backgroundColor, data: positionData, anchorRef: anchorRef, tail: tail, isRtl: isRtl }))] }));
    return content;
});

exports.Floating = Floating;
//# sourceMappingURL=Floating-1280c2ce.js.map
