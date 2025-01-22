/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var PRIVATE_TimeComponent_themes_TimeComponentStyles_css = require('./PRIVATE_TimeComponent/themes/TimeComponentStyles.css.js');
var classNames = require('./classNames-c14c6ef3.js');
var hooks = require('preact/hooks');
var TrackResizeContainer = require('./TrackResizeContainer-cd09fc87.js');
var Flex = require('./Flex-fbba4ad6.js');
var BaseButton = require('./BaseButton-ff6f39f2.js');
var ButtonLabelLayout = require('./ButtonLabelLayout-3399b9e1.js');
var useTooltip = require('./useTooltip-468c1c92.js');
require('./useTooltipControlled-706a3651.js');
var Plus = require('./Plus-cecd0d87.js');
var getFormatParse = require('./getFormatParse-4a697b8f.js');
require('./logger-2b636482.js');
var useTranslationBundle = require('./useTranslationBundle-9da032d6.js');
var Minus = require('./Minus-3aadfd1a.js');
var usePointerGesture = require('./usePointerGesture-44fbeb65.js');
var preact = require('preact');
var Text = require('./Text-aaacb6a0.js');

function TimeComponentLayersStack({ width, height, children, align, justify }) {
    const layers = preact.toChildArray(children);
    return (jsxRuntime.jsx("div", { class: PRIVATE_TimeComponent_themes_TimeComponentStyles_css.layersStackStyles.base, style: { width, height, alignItems: align, justifyItems: justify }, children: layers.map((layer) => (jsxRuntime.jsx("div", { class: PRIVATE_TimeComponent_themes_TimeComponentStyles_css.layersStackStyles.layer, children: layer }))) }));
}

function TimeComponentOverlayControlsContainer({ innerRef, children }) {
    const [isVisible, setIsVisible] = hooks.useState(false);
    const onControlsShow = () => setIsVisible(true);
    const onControlsHide = () => setIsVisible(false);
    const visibilityProps = { onControlsShow, onControlsHide };
    return (jsxRuntime.jsx("div", { ref: innerRef, ...visibilityProps, class: classNames.classNames([
            PRIVATE_TimeComponent_themes_TimeComponentStyles_css.overlayControlsContainerStyles.base,
            isVisible && PRIVATE_TimeComponent_themes_TimeComponentStyles_css.overlayControlsContainerStyles.visible
        ]), children: children }));
}

function TimeComponentPanZoomLayout({ overlayControlsContainerRef, width, height, overlayControls, verticalControl, verticalControlTopGap = '0', verticalControlBottomGap = '0', verticalControlStartGap = true, horizontalControl, horizontalControlStartGap = '0', horizontalControlEndGap = '0', horizontalControlTopGap = true, vis }) {
    return (jsxRuntime.jsxs("div", { class: PRIVATE_TimeComponent_themes_TimeComponentStyles_css.panZoomLayoutStyles.base, style: {
            gridTemplateColumns: `${horizontalControlStartGap} minmax(0, 1fr) ${horizontalControlEndGap} auto`,
            gridTemplateRows: `${verticalControlTopGap} minmax(0, 1fr) ${verticalControlBottomGap} auto`,
            width,
            height
        }, children: [jsxRuntime.jsx("div", { class: classNames.classNames([
                    PRIVATE_TimeComponent_themes_TimeComponentStyles_css.panZoomLayoutStyles.verticalControl,
                    verticalControlStartGap && PRIVATE_TimeComponent_themes_TimeComponentStyles_css.panZoomLayoutStyles.verticalControlWithSpacing
                ]), children: verticalControl }), jsxRuntime.jsx("div", { class: classNames.classNames([
                    PRIVATE_TimeComponent_themes_TimeComponentStyles_css.panZoomLayoutStyles.horizontalControl,
                    horizontalControlTopGap && PRIVATE_TimeComponent_themes_TimeComponentStyles_css.panZoomLayoutStyles.horizontalControlWithSpacing
                ]), children: horizontalControl }), jsxRuntime.jsx("div", { class: PRIVATE_TimeComponent_themes_TimeComponentStyles_css.panZoomLayoutStyles.vis, children: overlayControls ? (jsxRuntime.jsxs(TimeComponentLayersStack, { children: [vis, jsxRuntime.jsx(TimeComponentOverlayControlsContainer, { innerRef: overlayControlsContainerRef, children: overlayControls })] })) : (vis) })] }));
}

function TimeComponentZoomControl({ children, accessibleLabel, isDisabled = false, onAction }) {
    const { tooltipContent, tooltipProps: { onFocus, onBlur, ...restTooltipProps } } = useTooltip.useTooltip({ text: accessibleLabel });
    // Note that below we ensure the button is not tabbable;
    // one should use a specific set of keyboard shortcuts for zooming instead.
    // TODO: Work with UX to confirm the final look, and then switch to use the EmbeddedIconButton.
    return (jsxRuntime.jsxs("div", { class: PRIVATE_TimeComponent_themes_TimeComponentStyles_css.zoomControlStyles.base, ...restTooltipProps, children: [jsxRuntime.jsx(BaseButton.BaseButton, { elementDetails: isDisabled ? undefined : { type: 'span', isFocusable: false }, isDisabled: isDisabled, size: "sm", variant: "outlined", styling: ['min'], onAction: onAction, children: jsxRuntime.jsx(ButtonLabelLayout.ButtonLabelLayout, { display: 'icons', startIcon: children, size: 'sm' }) }), tooltipContent] }));
}

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const DAY = 1000 * 60 * 60 * 24;
/**
 * Returns the timestamp value of the given ISO date string.
 * @param date The ISO date string.
 * @returns The number of milliseconds that has elapsed since the epoch.
 */
const parseDate = (date) => Date.parse(date);
/**
 * Returns the ISO date string given a date timestamp.
 * @param date The timestamp (number of milliseconds that has elapsed since the epoch.)
 * @returns The corresponding ISO date string.
 */
const getISOString = (time) => new Date(time).toISOString();
/**
 * Gets the pixel position of the given time in a given viewport.
 * @param time The query time.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param width The viewport width.
 * @param isRTL Whether the reading direction is rtl.
 * @returns The pixel position.
 */
const getTimePosition = (time, viewportStartTime, viewportEndTime, width, isRTL) => {
    const ltrPos = (width * (time - viewportStartTime)) / (viewportEndTime - viewportStartTime);
    return isRTL ? width - ltrPos : ltrPos;
};
/**
 * Gets the time of a given pixel position in a given viewport.
 * @param pos The query position.
 * @param viewportStartTime Thew viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param width The viewport width.
 * @param isRTL Whether the reading direction is rtl.
 * @returns The time.
 */
const getPositionTime = (pos, viewportStartTime, viewportEndTime, width, isRTL) => {
    const ltrPos = isRTL ? width - pos : pos;
    return (ltrPos * (viewportEndTime - viewportStartTime)) / width + viewportStartTime;
};
/**
 * Gets an appropriate date formatter function for the given scale.
 * @param scale The time scale.
 * @param timeTest A time to invoke the scale on to determine the best date formatter function to return.
 * @returns The date formatter function.
 */
const getDefaultDateFormatter = (scale, timeTest) => {
    // This is used for default datatip and acc.
    // Note that in legacy, the default converter depends on the enum scale of the minor axis.
    // However, in preact, we don't have enum scales, so we'll instead default based
    // on the duration of a minor axis scale interval, i.e. if interval < 1 day, use datetime formatter,
    // otherwise use date formatter. This should yield the same desired behavior if the default importable scales
    // are used. For custom scales in legacy we just use dateformatter always even when the resolution is in < day.
    // So arguably, this is a better default behavior than what we have in legacy.
    //
    // TODO: Decide whether to change legacy to do this behavior, OR in corepack, to 100%
    // preserve the legacy behavior for default datatips + custom time scales,
    // we'll make sure to pass the appropriate default converter to
    // preact comp's valueformats based on scale (when we support valueformats in the future).
    const timeTestString = getISOString(timeTest);
    const intervalStart = parseDate(scale.getPreviousDate(timeTestString));
    const intervalEnd = parseDate(scale.getNextDate(timeTestString));
    const duration = intervalEnd - intervalStart;
    const formatOptions = duration <= DAY
        ? {
            dateStyle: 'medium',
            timeStyle: 'medium',
            locale: navigator.language
        }
        : {
            dateStyle: 'medium',
            locale: navigator.language
        };
    return getFormatParse.getFormatParse(formatOptions).format;
};

const PX_FACTOR_PER_LINE = 15; // Value used in Toolkit
const PX_FACTOR_PER_PAGE = 40; // Value copied from datagrid; this is not handled in Toolkit
const getNormalizedDelta = (e) => {
    const { deltaX, deltaY, deltaMode } = e;
    switch (deltaMode) {
        case e.DOM_DELTA_PIXEL:
            return { deltaX: -deltaX, deltaY: -deltaY };
        case e.DOM_DELTA_LINE:
            return { deltaX: -deltaX * PX_FACTOR_PER_LINE, deltaY: -deltaY * PX_FACTOR_PER_LINE };
        case e.DOM_DELTA_PAGE:
            return { deltaX: -deltaX * PX_FACTOR_PER_PAGE, deltaY: -deltaY * PX_FACTOR_PER_PAGE };
        default:
            return { deltaX: -deltaX, deltaY: -deltaY };
    }
};
/**
 * Hook that enables and handles wheel gestures.
 */
const useWheel = ({ onWheel: onWheelCallback, preventDefault = true, isDisabled = false }) => {
    const onWheel = (e) => {
        const { deltaX, deltaY } = getNormalizedDelta(e);
        if (preventDefault)
            e.preventDefault();
        onWheelCallback({
            x: e.offsetX,
            y: e.offsetY,
            deltaX,
            deltaY,
            ctrlKey: e.ctrlKey || e.metaKey
        });
    };
    return isDisabled ? {} : { onWheel };
};

const DEFAULT_ZOOM_IN_FACTOR = 1.25;
const DEFAULT_ZOOM_OUT_FACTOR = 1 / 1.25;
/**
 * Gets the zoom viewport given the current viewport, zoom location, zoom factor, etc.
 * @param time The zoom location.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param startTime The start time.
 * @param endTime The end time.
 * @param zoomFactor The zoom factor.
 * @param minViewportDuration The min viewport duration.
 * @param maxViewportDuration The max viewport duration.
 * @returns The new viewport if the zoom were to happen.
 */
const getZoomViewport = (time, viewportStartTime, viewportEndTime, startTime, endTime, zoomFactor, minViewportDuration, maxViewportDuration) => {
    // Let
    // t = time point that triggered the zoom
    // vs = viewport start time
    // ve = viewport end time
    // s = start time
    // e = end time
    // N = zoom factor, e.g. zoom factor == 2 means the content should "stretch"/"scale" by 2x.
    //
    // Zooming by N means:
    //     current viewport: (vs, ve)
    //     current viewport duration: (ve - vs)
    //     final viewport: (vs + ds, ve - de) for some ds, de
    //     final viewport duration: (1/N)*(ve - vs) = (ve - de) - (vs + ds)
    //
    // Solving for ds and de:
    // (ve - de) - (vs + ds) = (1/N)*(ve - vs)
    // (ve - vs) - (de + ds) = (1/N)*(ve - vs)
    // (de + ds) = (ve - vs) * (1 - 1/N)
    //
    // Note that (t - vs) / (ve - vs) = ds / (de + ds). Rearranging and substituting the above:
    // ds = (de + ds) * (t - vs) / (ve - vs)
    // ds = (ve - vs) * (1 - 1/N) * (t - vs) / (ve - vs)
    // ds = (1 - 1/N) * (t - vs)
    //
    // de = (ve - vs) * (1 - 1/N) - ds
    // de = (ve - vs) * (1 - 1/N) - (1 - 1/N) * (t - vs)
    // de = (1 - 1/N)(ve - vs - t + vs)
    // de = (1 - 1/N)(ve - t)
    //
    // Therefore, assuming NO bounds and constraints:
    // ds = (1 - 1/N) * (t - vs)
    // de = (1 - 1/N)(ve - t)
    // Final viewport after zoom: (vs + ds, ve - de)
    //
    // In reality, there is a max amount of zoom in (minViewportDuration),
    // and a max amount of zoom out (maxViewportDuration),
    // and the final viewport is constrained by the start and end edges,
    // so the code below takes these constraints into account:
    const t = time;
    const vs = viewportStartTime;
    const ve = viewportEndTime;
    const s = startTime;
    const e = endTime;
    const N = zoomFactor;
    const dur = ve - vs;
    const dsMax = Math.max(0, dur - minViewportDuration) * ((t - vs) / dur);
    const deMax = Math.max(0, dur - minViewportDuration) * ((ve - t) / dur);
    const dsMin = -Math.max(0, maxViewportDuration - dur) * ((t - vs) / dur);
    const deMin = -Math.max(0, maxViewportDuration - dur) * ((ve - t) / dur);
    const ds = Math.max(dsMin, Math.min(dsMax, (1 - 1 / N) * (t - vs)));
    const de = Math.max(deMin, Math.min(deMax, (1 - 1 / N) * (ve - t)));
    const sOverShoot = Math.max(0, s - (vs + ds));
    const eOverShoot = Math.max(0, ve - de - e);
    return {
        newViewportStartTime: Math.max(s, vs + (ds - eOverShoot)),
        newViewportEndTime: Math.min(e, ve - (de - sOverShoot))
    };
};
/**
 * Gets the best zoom order index given a viewport.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param zoomOrderViewDurationThresholds The computed zoom order viewport duration thresholds.
 * @returns
 */
const getZoomOrderIndex = (viewportStartTime, viewportEndTime, zoomOrderViewDurationThresholds) => {
    const duration = viewportEndTime - viewportStartTime;
    const nextIndex = [...zoomOrderViewDurationThresholds, -Infinity].findIndex((threshold) => duration > threshold);
    return nextIndex - 1;
};
/**
 * Gets the best time axes scales given the viewport.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param zoomOrderViewDurationThresholds The computed zoom order viewport duration thresholds.
 * @param minorAxisZoomOrder The minor axis zoom order.
 * @param minorAxisZoomOrderIndex The current minor axis zoom order index.
 * @param majorAxisZoomOrder The major axis zoom order.
 * @param majorAxisZoomOrderIndex The current major axis zoom order index.
 * @returns The best time axes scales given the viewport.
 */
const getZoomScales = (viewportStartTime, viewportEndTime, zoomOrderViewDurationThresholds, minorAxisZoomOrder, minorAxisZoomOrderIndex, majorAxisZoomOrder, majorAxisZoomOrderIndex) => {
    const idealMinorZoomOrderIndex = getZoomOrderIndex(viewportStartTime, viewportEndTime, zoomOrderViewDurationThresholds);
    let indexOffset = 0;
    if (majorAxisZoomOrder === undefined) {
        indexOffset = idealMinorZoomOrderIndex - minorAxisZoomOrderIndex;
    }
    else if (idealMinorZoomOrderIndex >= minorAxisZoomOrderIndex) {
        indexOffset = Math.min(idealMinorZoomOrderIndex - minorAxisZoomOrderIndex, majorAxisZoomOrder.length - 1 - majorAxisZoomOrderIndex);
    }
    else {
        indexOffset = -Math.min(minorAxisZoomOrderIndex - idealMinorZoomOrderIndex, majorAxisZoomOrderIndex);
    }
    return {
        minorAxisScale: minorAxisZoomOrder[minorAxisZoomOrderIndex + indexOffset],
        majorAxisScale: majorAxisZoomOrder && majorAxisZoomOrder[majorAxisZoomOrderIndex + indexOffset]
    };
};
/**
 * Gets the equivalent zoom factor from a zoom gesture value (e.g. wheel delta value).
 * @param delta The zoom gesture value.
 * @returns The corresponding zoom factor to apply.
 */
const getGestureZoomFactor = (delta) => {
    const deltaVal = Math.abs(delta);
    const deltaSign = Math.sign(delta);
    // Formula is adopted from TimeComponent Toolkit
    // But in toolkit we use the deprecated WheelEvent.wheelDelta(Y) instead of WheelEvent.delta(Y)
    // We use the latter here, but the two values are a bit different and it's unclear how they relate.
    // According to MDN wheelDelta is platform dependent but generally represents mouse wheel turns,
    // and in our case delta represent pixels.
    // So the constants in the formula below are tweaked based on "feel"
    // (e.g., changed from 0.02 toolkit value to 0.05, and approximating wheelDelta as delta/(px per line)).
    return ((deltaVal / PX_FACTOR_PER_LINE) * 0.05 + 1) ** deltaSign;
};
/**
 * Performs a zoom, by invoking a viewport change callback with the new viewport.
 * @param time The zoom location.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param startTime The start time.
 * @param endTime The end time.
 * @param zoomFactor The zoom factor.
 * @param minZoomViewportDuration The min viewport duration.
 * @param maxZoomViewportDuration The max viewport duration.
 * @param zoomOrderViewDurationThresholds The computed zoom order viewport duration thresholds.
 * @param minorAxisZoomOrder The major axis zoom order.
 * @param minorAxisZoomOrderIndex The current minor axis zoom order index.
 * @param majorAxisZoomOrder The major axis zoom order.
 * @param majorAxisZoomOrderIndex The current major axis zoom order index.
 * @param onViewportChange The viewport change callback.
 * @returns The new viewport, and whether the viewport actually changed.
 */
const zoomTime = (time, viewportStartTime, viewportEndTime, startTime, endTime, zoomFactor, minZoomViewportDuration, maxZoomViewportDuration, zoomOrderViewDurationThresholds, minorAxisZoomOrder, minorAxisZoomOrderIndex, majorAxisZoomOrder, majorAxisZoomOrderIndex, onViewportChange) => {
    const { newViewportStartTime, newViewportEndTime } = getZoomViewport(time, viewportStartTime, viewportEndTime, startTime, endTime, zoomFactor, minZoomViewportDuration, maxZoomViewportDuration);
    const { minorAxisScale, majorAxisScale } = getZoomScales(newViewportStartTime, newViewportEndTime, zoomOrderViewDurationThresholds, minorAxisZoomOrder, minorAxisZoomOrderIndex, majorAxisZoomOrder, majorAxisZoomOrderIndex);
    const newViewport = {
        viewportStartTime: newViewportStartTime,
        viewportEndTime: newViewportEndTime,
        majorAxisScale,
        minorAxisScale
    };
    const isViewportChanged = newViewportStartTime !== viewportStartTime || newViewportEndTime !== viewportEndTime;
    if (onViewportChange && isViewportChanged) {
        onViewportChange({
            viewportStart: getISOString(newViewportStartTime),
            viewportEnd: getISOString(newViewportEndTime),
            majorAxisScale,
            minorAxisScale
        });
    }
    return { newViewport, isViewportChanged };
};

function TimeComponentZoomInControl({ zoomFactor = DEFAULT_ZOOM_IN_FACTOR, startTime, endTime, viewportStartTime, viewportEndTime, majorAxisZoomOrder, majorAxisZoomOrderIndex, minorAxisZoomOrder, minorAxisZoomOrderIndex, zoomOrderViewDurationThresholds, minZoomViewportDuration, maxZoomViewportDuration, onViewportChange }) {
    const translations = useTranslationBundle.useTranslationBundle('@oracle/oraclejet-preact');
    const accessibleLabel = translations.timeComponent_tooltipZoomIn();
    const viewportCenter = viewportStartTime + (viewportEndTime - viewportStartTime) / 2;
    const { newViewport, isViewportChanged } = zoomTime(viewportCenter, viewportStartTime, viewportEndTime, startTime, endTime, zoomFactor, minZoomViewportDuration, maxZoomViewportDuration, zoomOrderViewDurationThresholds, minorAxisZoomOrder, minorAxisZoomOrderIndex, majorAxisZoomOrder, majorAxisZoomOrderIndex);
    const isDisabled = !isViewportChanged;
    const onAction = () => {
        onViewportChange?.({
            viewportStart: getISOString(newViewport.viewportStartTime),
            viewportEnd: getISOString(newViewport.viewportEndTime),
            majorAxisScale: newViewport.majorAxisScale,
            minorAxisScale: newViewport.minorAxisScale
        });
    };
    return (jsxRuntime.jsx(TimeComponentZoomControl, { accessibleLabel: accessibleLabel, isDisabled: isDisabled, onAction: onAction, children: jsxRuntime.jsx(Plus.SvgPlus, { size: "4x" }) }));
}

function TimeComponentZoomOutControl({ zoomFactor = DEFAULT_ZOOM_OUT_FACTOR, startTime, endTime, viewportStartTime, viewportEndTime, majorAxisZoomOrder, majorAxisZoomOrderIndex, minorAxisZoomOrder, minorAxisZoomOrderIndex, zoomOrderViewDurationThresholds, minZoomViewportDuration, maxZoomViewportDuration, onViewportChange }) {
    const translations = useTranslationBundle.useTranslationBundle('@oracle/oraclejet-preact');
    const accessibleLabel = translations.timeComponent_tooltipZoomOut();
    const viewportCenter = viewportStartTime + (viewportEndTime - viewportStartTime) / 2;
    const { newViewport, isViewportChanged } = zoomTime(viewportCenter, viewportStartTime, viewportEndTime, startTime, endTime, zoomFactor, minZoomViewportDuration, maxZoomViewportDuration, zoomOrderViewDurationThresholds, minorAxisZoomOrder, minorAxisZoomOrderIndex, majorAxisZoomOrder, majorAxisZoomOrderIndex);
    const isDisabled = !isViewportChanged;
    const onAction = () => {
        onViewportChange?.({
            viewportStart: getISOString(newViewport.viewportStartTime),
            viewportEnd: getISOString(newViewport.viewportEndTime),
            majorAxisScale: newViewport.majorAxisScale,
            minorAxisScale: newViewport.minorAxisScale
        });
    };
    return (jsxRuntime.jsx(TimeComponentZoomControl, { accessibleLabel: accessibleLabel, isDisabled: isDisabled, onAction: onAction, children: jsxRuntime.jsx(Minus.SvgMinus, { size: "4x" }) }));
}

function TimeComponentZoomControls({ position = 'topEnd', zoomParameters, onViewportChange }) {
    return (jsxRuntime.jsx(TrackResizeContainer.TrackResizeContainer, { width: "100%", height: "100%", children: (width, _) => {
            const { getZoomOrderViewDurationThresholds, ...restZoomParameters } = zoomParameters;
            const zoomOrderViewDurationThresholds = getZoomOrderViewDurationThresholds(width);
            return (jsxRuntime.jsx("div", { class: classNames.classNames([PRIVATE_TimeComponent_themes_TimeComponentStyles_css.zoomControlsLayoutStyles.base, PRIVATE_TimeComponent_themes_TimeComponentStyles_css.zoomControlsLayoutStyles[position]]), children: jsxRuntime.jsx("div", { class: PRIVATE_TimeComponent_themes_TimeComponentStyles_css.zoomControlsLayoutStyles.controls, children: jsxRuntime.jsxs(Flex.Flex, { direction: "column", gap: "2.25x", children: [jsxRuntime.jsx(TimeComponentZoomInControl, { ...restZoomParameters, zoomOrderViewDurationThresholds: zoomOrderViewDurationThresholds, onViewportChange: onViewportChange }), jsxRuntime.jsx(TimeComponentZoomOutControl, { ...restZoomParameters, zoomOrderViewDurationThresholds: zoomOrderViewDurationThresholds, onViewportChange: onViewportChange })] }) }) }));
        } }));
}

function TimeComponentVerticalScrollbarContainer({ getLayout, onRangeChange, children }) {
    return (jsxRuntime.jsx("div", { class: PRIVATE_TimeComponent_themes_TimeComponentStyles_css.verticalScrollbarStyles.base, children: jsxRuntime.jsx(TrackResizeContainer.TrackResizeContainer, { width: "100%", height: "100%", children: (width, height) => children({ ...getLayout(height), onRangeChange, width, height }) }) }));
}

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const inDraggableRegion = (x, y, region) => {
    if (!region)
        return true;
    const { xMin, xMax, yMin, yMax } = region;
    return x >= xMin && x <= xMax && y >= yMin && y <= yMax;
};
const getRegionOffset = (x, y, region) => {
    if (!region)
        return { regionOffsetX: x, regionOffsetY: y };
    return { regionOffsetX: x - region.xMin, regionOffsetY: y - region.yMin };
};
/**
 * Hook that enables and handles drag gestures.
 */
const useDrag = ({ captureTargetRef, draggableRegion, onDragStart, onDragMove, onDragEnd, isDisabled = false }) => {
    const inactiveState = { isDragging: false, x0: -1, y0: -1, regionOffsetX: -1, regionOffsetY: -1 };
    const dragState = hooks.useRef(inactiveState);
    const handlePointerEvent = (e, cb) => {
        const { isDragging, x0, y0, regionOffsetX, regionOffsetY } = dragState.current;
        if (!isDragging)
            return;
        const x = e.offsetX;
        const y = e.offsetY;
        cb && cb({ x, y, dx: x - x0, dy: y - y0, regionOffsetX, regionOffsetY, originalEvent: e });
    };
    const dragProps = usePointerGesture.usePointerGesture({
        captureTargetRef,
        numPointers: 1, // Only allow 1 pointer dragging
        onExtraneousPointerDown: () => {
            dragState.current = inactiveState;
        },
        onPointerGestureDown: ({ pointers: [e] }) => {
            const x = e.offsetX;
            const y = e.offsetY;
            if (e.button !== 0 || !inDraggableRegion(x, y, draggableRegion))
                return;
            const { regionOffsetX, regionOffsetY } = getRegionOffset(x, y, draggableRegion);
            dragState.current = { isDragging: true, x0: x, y0: y, regionOffsetX, regionOffsetY };
            // captureTargetRef.current!.setPointerCapture(e.pointerId);
            onDragStart && onDragStart({ x, y, regionOffsetX, regionOffsetY, originalEvent: e });
        },
        onPointerGestureMove: ({ pointers: [e] }) => {
            handlePointerEvent(e, onDragMove);
        },
        onPointerGestureEnd: ({ pointers: [e] }) => {
            handlePointerEvent(e, onDragEnd);
            dragState.current = inactiveState;
        }
    });
    return isDisabled ? {} : dragProps;
};

function TimeComponentScrollbar({ thumbWidth, thumbHeight, thumbTop, thumbLeft, thumbRight, draggableRegion, processDragRangeXChange, processDragRangeYChange, processClickRangeXChange, processClickRangeYChange, styles, width, height }) {
    // Scrollbar is draggable to change the range
    const ref = hooks.useRef(null);
    const dragProps = useDrag({
        captureTargetRef: ref,
        draggableRegion,
        onDragMove: ({ x, y, regionOffsetX, regionOffsetY }) => {
            processDragRangeXChange?.(x, regionOffsetX);
            processDragRangeYChange?.(y, regionOffsetY);
        }
    });
    // Scrollbar is also clickable to jump to an arbitrary range
    const handleClick = (e) => {
        const x = e.offsetX;
        const y = e.offsetY;
        const { xMin, xMax, yMin, yMax } = draggableRegion;
        const inDraggableRegion = x >= xMin && x <= xMax && y >= yMin && y <= yMax;
        if (inDraggableRegion)
            return;
        processClickRangeXChange?.(x);
        processClickRangeYChange?.(y);
    };
    return (jsxRuntime.jsx("div", { ref: ref, class: styles.container, style: { width, height }, onClick: handleClick, ...dragProps, children: jsxRuntime.jsx("div", { class: styles.track, children: jsxRuntime.jsx("div", { class: styles.thumb, style: {
                    width: thumbWidth,
                    height: thumbHeight,
                    top: thumbTop,
                    left: thumbLeft,
                    right: thumbRight
                } }) }) }));
}

function TimeComponentVerticalScrollbar({ getNewRange, onRangeChange, ...props }) {
    const prevRange = hooks.useRef({ min: 0, max: 0 });
    const processRange = (newMin, newMax) => {
        const { min: prevMin, max: prevMax } = prevRange.current;
        const isRangeChanged = newMin !== prevMin || newMax !== prevMax;
        isRangeChanged && onRangeChange(newMin, newMax);
        prevRange.current = { min: newMin, max: newMax };
    };
    const processDragRangeYChange = (y, thumbOffsetY) => {
        const { newMin, newMax } = getNewRange(Math.max(0, y - thumbOffsetY));
        processRange(newMin, newMax);
    };
    const processClickRangeYChange = (y) => {
        const { yMin, yMax } = props.draggableRegion;
        const halfThumbWidth = (yMax - yMin) / 2;
        const { newMin, newMax } = getNewRange(Math.max(0, y - halfThumbWidth));
        processRange(newMin, newMax);
    };
    return (jsxRuntime.jsx(TimeComponentScrollbar, { ...props, processDragRangeYChange: processDragRangeYChange, processClickRangeYChange: processClickRangeYChange, styles: PRIVATE_TimeComponent_themes_TimeComponentStyles_css.verticalScrollbarStyles }));
}

function TimeComponentHorizontalScrollbarContainer({ getLayout, onRangeChange, children }) {
    return (jsxRuntime.jsx("div", { class: PRIVATE_TimeComponent_themes_TimeComponentStyles_css.horizontalScrollbarStyles.base, children: jsxRuntime.jsx(TrackResizeContainer.TrackResizeContainer, { width: "100%", height: "100%", children: (width, height) => children({ ...getLayout(width), onRangeChange, width, height }) }) }));
}

function TimeComponentHorizontalScrollbar({ getNewRange, onRangeChange, ...props }) {
    const prevRange = hooks.useRef({ min: 0, max: 0 });
    const processRange = (newMin, newMax) => {
        const { min: prevMin, max: prevMax } = prevRange.current;
        const isRangeChanged = newMin !== prevMin || newMax !== prevMax;
        isRangeChanged && onRangeChange(newMin, newMax);
        prevRange.current = { min: newMin, max: newMax };
    };
    const processDragRangeXChange = (x, thumbOffsetX) => {
        const { newMin, newMax } = getNewRange(Math.max(0, x - thumbOffsetX));
        processRange(newMin, newMax);
    };
    const processClickRangeXChange = (x) => {
        const { xMin, xMax } = props.draggableRegion;
        const halfThumbWidth = (xMax - xMin) / 2;
        const { newMin, newMax } = getNewRange(Math.max(0, x - halfThumbWidth));
        processRange(newMin, newMax);
    };
    return (jsxRuntime.jsx(TimeComponentScrollbar, { ...props, processDragRangeXChange: processDragRangeXChange, processClickRangeXChange: processClickRangeXChange, styles: PRIVATE_TimeComponent_themes_TimeComponentStyles_css.horizontalScrollbarStyles }));
}

function TimeComponentVerticalGridlines({ width, height, positions, variant }) {
    const cmd = positions.map((p) => `M${p},0 V${height}`).join(' ');
    return (jsxRuntime.jsx("svg", { width: width, height: height, children: jsxRuntime.jsx("path", { class: PRIVATE_TimeComponent_themes_TimeComponentStyles_css.verticalGridlinesStyles[variant], d: cmd }) }));
}

function TimeComponentHorizontalTimeAxisLabel({ x, y, width, label, font, labelPosition, isTruncated, isStartIntervalTruncated, isRTL }) {
    const { tooltipContent, tooltipProps: { onFocus, onBlur, ...restTooltipProps } } = useTooltip.useTooltip({ text: label, isDisabled: !isTruncated });
    const textAlign = labelPosition === 'center' ? 'center' : undefined;
    // If start truncated, we want the ellipsis to be the prefix rather than suffix in ltr,
    // so a trick is to locally set the direction to rtl
    const direction = isStartIntervalTruncated && isTruncated ? (isRTL ? 'ltr' : 'rtl') : undefined;
    return (jsxRuntime.jsxs("div", { ...restTooltipProps, "aria-hidden": "true", class: classNames.classNames([
            PRIVATE_TimeComponent_themes_TimeComponentStyles_css.timeAxisLabelsStyles.label,
            isTruncated && PRIVATE_TimeComponent_themes_TimeComponentStyles_css.timeAxisLabelsStyles.labelTruncated
        ]), style: { left: x, top: y, width, textAlign, direction, ...font }, children: [jsxRuntime.jsx(Text.Text, { variant: "primary", truncation: "ellipsis", size: "inherit", weight: "inherit", children: label }), tooltipContent] }));
}

function TimeComponentHorizontalTimeAxis({ font, labelPosition, labels, labelTicks, labelPositions, isLabelTruncated, isIntervalStartTruncated, intervalWidths, majorGridTicksPos, minorGridTicksPos, isRTL, width, height }) {
    return (jsxRuntime.jsxs(TimeComponentLayersStack, { width: `${width}px`, height: `${height}px`, children: [jsxRuntime.jsx("div", { class: PRIVATE_TimeComponent_themes_TimeComponentStyles_css.timeAxisLabelsStyles.base, children: labels.map((text, i) => (jsxRuntime.jsx(TimeComponentHorizontalTimeAxisLabel, { font: font, label: text, labelPosition: labelPosition, x: labelPositions[i], y: 0, width: intervalWidths[i], isTruncated: isLabelTruncated[i], isStartIntervalTruncated: i === 0 ? isIntervalStartTruncated : false, isRTL: isRTL }, labelTicks[i]))) }), minorGridTicksPos && (jsxRuntime.jsx(TimeComponentVerticalGridlines, { width: width, height: height, positions: minorGridTicksPos, variant: "minor" })), majorGridTicksPos && (jsxRuntime.jsx(TimeComponentVerticalGridlines, { width: width, height: height, positions: majorGridTicksPos, variant: "major" }))] }));
}

function TimeComponentCanvas2D({ width, height, draw }) {
    const ref = hooks.useRef(null);
    hooks.useLayoutEffect(() => {
        const canvas = ref.current;
        const ctx = canvas.getContext('2d');
        canvas.style.width = `${width}px`;
        canvas.style.height = `${height}px`;
        const scale = window.devicePixelRatio;
        canvas.width = Math.floor(width * scale);
        canvas.height = Math.floor(height * scale);
        ctx.scale(scale, scale);
    }, [width, height]);
    hooks.useLayoutEffect(() => {
        const canvas = ref.current;
        const ctx = canvas.getContext('2d');
        ctx.clearRect(0, 0, canvas.width, canvas.height);
        draw(ctx);
    }, [width, height, draw]);
    return jsxRuntime.jsx("canvas", { ref: ref });
}

exports.DEFAULT_ZOOM_IN_FACTOR = DEFAULT_ZOOM_IN_FACTOR;
exports.DEFAULT_ZOOM_OUT_FACTOR = DEFAULT_ZOOM_OUT_FACTOR;
exports.TimeComponentCanvas2D = TimeComponentCanvas2D;
exports.TimeComponentHorizontalScrollbar = TimeComponentHorizontalScrollbar;
exports.TimeComponentHorizontalScrollbarContainer = TimeComponentHorizontalScrollbarContainer;
exports.TimeComponentHorizontalTimeAxis = TimeComponentHorizontalTimeAxis;
exports.TimeComponentLayersStack = TimeComponentLayersStack;
exports.TimeComponentOverlayControlsContainer = TimeComponentOverlayControlsContainer;
exports.TimeComponentPanZoomLayout = TimeComponentPanZoomLayout;
exports.TimeComponentVerticalGridlines = TimeComponentVerticalGridlines;
exports.TimeComponentVerticalScrollbar = TimeComponentVerticalScrollbar;
exports.TimeComponentVerticalScrollbarContainer = TimeComponentVerticalScrollbarContainer;
exports.TimeComponentZoomControls = TimeComponentZoomControls;
exports.getDefaultDateFormatter = getDefaultDateFormatter;
exports.getGestureZoomFactor = getGestureZoomFactor;
exports.getISOString = getISOString;
exports.getPositionTime = getPositionTime;
exports.getTimePosition = getTimePosition;
exports.parseDate = parseDate;
exports.useDrag = useDrag;
exports.useWheel = useWheel;
exports.zoomTime = zoomTime;
//# sourceMappingURL=TimeComponentCanvas2D-babbee35.js.map
