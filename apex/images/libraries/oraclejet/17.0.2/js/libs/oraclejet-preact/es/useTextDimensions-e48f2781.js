/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs } from 'preact/jsx-runtime';
import { useRef, useState, useMemo, useLayoutEffect } from 'preact/hooks';
import { g as getClientHints } from './clientHints-c76a913b.js';

// Text dimensions cache for each measurement backend.
// Note that all consumers of this util within an app shares this cache.
const textDimensionsCache = {
    canvas: {},
    htmlSvg: {},
    htmlCanvas: {},
    svg: {}
};
// Represents the computed styles of the text's parent.
// This is referred to as the "base styles" throughout this file.
let baseStyle = {
    fontStyle: 'normal',
    fontVariant: 'normal',
    fontWeight: 'normal',
    fontStretch: 'normal',
    fontSize: 'medium',
    lineHeight: 'normal',
    fontFamily: '',
    letterSpacing: 'normal',
    wordSpacing: 'normal',
    fontVariantNumeric: 'normal'
};
// font shorthand only supports font-variant CSS Level 2 (Revision 1), i.e. only
// 'normal' or 'small-caps'
const LEGAL_FONT_VARIANT = new Set(['normal', 'small-caps']);
// font shorthand only supports single keyword value subset of fontStretch
const LEGAL_FONT_STRETCH = new Set([
    'normal',
    'ultra-condensed',
    'extra-condensed',
    'condensed',
    'semi-condensed',
    'semi-expanded',
    'expanded',
    'extra-expanded',
    'ultra-expanded'
]);
// Representative text used for determining the text baseline location for a given font.
const REPRESENTATIVE_TEXT = 'MW';
/**
 * Merges the given font with the base styles.
 * @param font The font to merge.
 * @returns The merged font.
 */
const mergeDefaultStyle = (font) => {
    if (!font)
        return { ...baseStyle };
    // We can't just do "return { ...baseStyle, ...font }"
    // because if something is explicitly undefined in "font",
    // then we want to use the value from "baseStyle" instead:
    return {
        fontStyle: font.fontStyle ?? baseStyle.fontStyle,
        fontVariant: font.fontVariant ?? baseStyle.fontVariant,
        fontWeight: font.fontWeight ?? baseStyle.fontWeight,
        fontStretch: font.fontStretch ?? baseStyle.fontStretch,
        fontSize: font.fontSize ?? baseStyle.fontSize,
        lineHeight: font.lineHeight ?? baseStyle.lineHeight,
        fontFamily: font.fontFamily ?? baseStyle.fontFamily,
        letterSpacing: font.letterSpacing ?? baseStyle.letterSpacing,
        wordSpacing: font.wordSpacing ?? baseStyle.wordSpacing,
        fontVariantNumeric: font.fontVariantNumeric ?? baseStyle.fontVariantNumeric
    };
};
/**
 * Converts the given font into a font CSS shorthand string.
 * @param font The target font.
 * @returns The equivalent font CSS shorthand string.
 */
const toFontString = (font) => {
    const { fontStyle, fontVariant, fontWeight, fontStretch, fontSize, lineHeight, fontFamily } = font;
    // include 'px' if fontSize is just a number
    const fontSizeString = !Number.isNaN(Number(fontSize)) ? `${fontSize}px` : fontSize;
    return `${fontStyle} ${fontVariant} ${fontWeight} ${fontStretch} ${fontSizeString}/${lineHeight} ${fontFamily}`;
};
/**
 * Constructs the cache key uniquely derived from the given textString and font.
 * @param textString The text string.
 * @param font The font.
 * @returns The cache key.
 */
const getCacheKey = (textString, font) => {
    return (textString +
        toFontString(font) +
        font.letterSpacing +
        font.wordSpacing +
        font.fontVariantNumeric);
};
/**
 * Determines whether the given CSS value is equivalent to 'normal.
 * @param value The value.
 * @returns Whether the value is equivalent to 'normal'.
 */
const isNormalSpacing = (value) => {
    return value === 'normal' || value === '0px';
};
/**
 * Determines the most suitable measurement backend given the browser and the font.
 * @param clientBrowser The browser.
 * @param font The font.
 * @returns The most suitable measurement backend.
 */
const getBackend = (clientBrowser, font) => {
    if (clientBrowser === 'unknown') {
        return 'htmlSvg';
    }
    const { letterSpacing, wordSpacing, fontVariantNumeric } = mergeDefaultStyle(font);
    const isLetterSpacingNormal = isNormalSpacing(letterSpacing);
    const isWordSpacingNormal = isNormalSpacing(wordSpacing);
    const isFontVariantNumericNormal = fontVariantNumeric === 'normal';
    const isFontVariantNumericInherited = fontVariantNumeric === baseStyle.fontVariantNumeric;
    if (isLetterSpacingNormal &&
        isWordSpacingNormal &&
        isFontVariantNumericNormal &&
        isFontVariantNumericInherited) {
        return 'canvas';
    }
    switch (clientBrowser) {
        // Firefox <canvas> does not support letterSpacing, wordSpacing, or fontVariantNumeric
        // even if attached to the DOM.
        case 'firefox':
            return 'htmlSvg';
        // Safari <canvas> does not support letterSpacing or wordSpacing, even if attached to the DOM.
        // Chrome and Edge <canvas> context supports letterSpacing and wordSpacing, but only CSS lengths,
        // e.g. 'normal' is not supported. They're also considered experimental technology right now.
        // so we'll use 'htmlCanvas' backend to be safe.
        // All three support fontVariantNumeric inheritance if the canvas is attached to the DOM.
        case 'safari':
        case 'chrome':
        case 'edge':
            return isLetterSpacingNormal && isWordSpacingNormal && isFontVariantNumericInherited
                ? 'canvas'
                : 'htmlCanvas';
        default:
            return 'htmlSvg';
    }
};
/**
 * Sets the base style to the computed style of the given node.
 * @param referenceNode The target node.
 */
const computeBaseStyle = (referenceNode) => {
    const computedStyle = getComputedStyle(referenceNode);
    baseStyle = {
        fontStyle: computedStyle.fontStyle,
        fontVariant: computedStyle.fontVariantCaps,
        fontWeight: computedStyle.fontWeight,
        fontStretch: computedStyle.fontStretch,
        fontSize: computedStyle.fontSize,
        lineHeight: computedStyle.lineHeight,
        fontFamily: computedStyle.fontFamily,
        letterSpacing: computedStyle.letterSpacing,
        wordSpacing: computedStyle.wordSpacing,
        fontVariantNumeric: computedStyle.fontVariantNumeric
    };
    if (!baseStyle.fontVariant || !LEGAL_FONT_VARIANT.has(baseStyle.fontVariant)) {
        baseStyle.fontVariant = 'normal';
    }
    if (!baseStyle.fontStretch || !LEGAL_FONT_STRETCH.has(baseStyle.fontStretch)) {
        baseStyle.fontStretch = 'normal';
    }
};
/**
 * Computes the text dimensions of the given string with the given font
 * using Canvas 2D.
 * Note the following font properties support:
 *   - font*:
 *       - Supports whatever the font CSS shorthand supports,
 *         which is basically everything we care about, except fontVariant and fontStretch values are more limited;
 *         see LEGAL_FONT_VARIANT and LEGAL_FONT_STRETCH.
 *   - letterSpacing:
 *       - Chrome and Edge supports CSS lengths only. Everything else is ignored.
 *       - Ignored and not supported in Safari and Firefox.
 *   - wordSpacing: same as letterSpacing.
 *   - fontVariantNumeric:
 *       - Ignored and not supported in Firefox.
 *       - In Chrome/Edge/Safari, the inherited (parent's) fontVariantNumeric is used.
 *         (So specifying a different fontVariantNumeric in the given font has no effect).
 * @param canvasCtx The canvas 2D context.
 * @param textString The target text string.
 * @param font The target text's font.
 * @returns The target text's dimensions.
 */
const getCanvasTextDimensions = (canvasCtx, textString, font) => {
    const fullFont = mergeDefaultStyle(font);
    const cacheKey = getCacheKey(textString, fullFont);
    const cachedDims = textDimensionsCache.canvas[cacheKey];
    if (cachedDims)
        return cachedDims;
    const fontString = toFontString(fullFont);
    canvasCtx.font = fontString;
    // Note: letterSpacing and wordSpacing only supported on Chrome and Edge currently,
    // and only CSS lengths supported.
    // This is a no-op in other browsers.
    /* eslint-disable */
    // @ts-ignore
    canvasCtx.letterSpacing = '0px'; // Default any invalid values set in the next line
    // @ts-ignore
    canvasCtx.letterSpacing = fullFont.letterSpacing;
    // @ts-ignore
    canvasCtx.wordSpacing = '0px'; // Default any invalid values set in the next line
    // @ts-ignore
    canvasCtx.wordSpacing = fullFont.wordSpacing;
    /* eslint-enable */
    const textMetrics = canvasCtx.measureText(textString);
    const dims = {
        x: 0,
        y: -textMetrics.fontBoundingBoxAscent,
        width: textMetrics.width,
        height: textMetrics.fontBoundingBoxAscent + textMetrics.fontBoundingBoxDescent
    };
    textDimensionsCache.canvas[cacheKey] = dims;
    return dims;
};
/**
 * Computes the text dimensions of the given string with the given font
 * using SVG.
 * This is well supported across all browsers, but is generally less performant
 * compared to using an HTML or Canvas.
 * @param container The SVG container element.
 * @param textString The target text string.
 * @param font The target text's font.
 * @returns The target text's dimensions.
 */
const getSvgTextDimensions = (container, textString, font) => {
    const fullFont = mergeDefaultStyle(font);
    const cacheKey = getCacheKey(textString, fullFont);
    const cachedDims = textDimensionsCache.svg[cacheKey];
    if (cachedDims)
        return cachedDims;
    const text = document.createElementNS('http://www.w3.org/2000/svg', 'text');
    text.setAttribute('font-style', fullFont.fontStyle);
    text.setAttribute('font-variant', fullFont.fontVariant);
    text.setAttribute('font-weight', fullFont.fontWeight);
    text.setAttribute('font-stretch', fullFont.fontStretch);
    text.setAttribute('font-size', fullFont.fontSize);
    text.setAttribute('font-family', fullFont.fontFamily);
    text.setAttribute('letter-spacing', fullFont.letterSpacing);
    text.setAttribute('word-spacing', fullFont.wordSpacing);
    text.style.fontVariantNumeric = fullFont.fontVariantNumeric;
    text.textContent = textString;
    container.appendChild(text);
    const bbox = text.getBBox();
    const dims = {
        x: bbox.x,
        y: bbox.y,
        width: bbox.width,
        height: bbox.height
    };
    container.innerHTML = '';
    textDimensionsCache.svg[cacheKey] = dims;
    return dims;
};
/**
 * Computes the width and height of the given string with the given font using HTML.
 * This is well supported across all browsers.
 * To match the support of the Canvas backend, this method also only supports
 * the font values that the font CSS shorthand supports.
 * @param container The container element.
 * @param textString The target text string.
 * @param font The target text's font.
 * @returns The target text's width and height.
 */
const getHtmlTextSize = (container, textString, font) => {
    const fullFont = mergeDefaultStyle(font);
    const fontString = toFontString(fullFont);
    const span = document.createElement('span');
    span.style.font = fontString;
    span.style.whiteSpace = 'nowrap';
    span.style.letterSpacing = fullFont.letterSpacing;
    span.style.wordSpacing = fullFont.wordSpacing;
    span.style.fontVariantNumeric = fullFont.fontVariantNumeric;
    span.textContent = textString;
    container.appendChild(span);
    const size = {
        width: span.offsetWidth,
        height: span.offsetHeight
    };
    container.innerHTML = '';
    return size;
};
/**
 * Computes the dimensions of a representative text with the given font and measurement backend.
 * @param options The measurement backend.
 * @param font The target font.
 * @returns The representative text's dimensions.
 */
const getRepresentativeTextDimensions = (options, font) => {
    let dimensions;
    switch (options.backend) {
        case 'svg':
            dimensions = getSvgTextDimensions(options.container, REPRESENTATIVE_TEXT, font);
            break;
        case 'canvas':
            dimensions = getCanvasTextDimensions(options.ctx, REPRESENTATIVE_TEXT, font);
            break;
    }
    return {
        x: dimensions.x,
        y: dimensions.y,
        width: dimensions.width / REPRESENTATIVE_TEXT.length,
        height: dimensions.height
    };
};
/**
 * Computes the text width and height of the given string with the given font
 * using HTML. Due to limitations of HTML, the x and y values are computed using a different specified backend.
 * Note that for the x and y computation backend:
 *   - Canvas backend is supported by Chrome/Edge/Safari, but not Firefox.
 *   - SVG backend is supported by all browsers but is generally less performant.
 * @param container The container element.
 * @param baselineMeasureOptions The options for the backend to use for computing the x and y portion of the dimensions.
 * @param textString The target text string.
 * @param font The target text's font.
 * @returns The target text's dimensions.
 */
const getHtmlTextDimensions = (container, baselineMeasureOptions, textString, font) => {
    const fullFont = mergeDefaultStyle(font);
    const cacheKey = getCacheKey(textString, fullFont);
    const cache = baselineMeasureOptions.backend === 'svg'
        ? textDimensionsCache.htmlSvg
        : textDimensionsCache.htmlCanvas;
    const cachedDims = cache[cacheKey];
    if (cachedDims)
        return cachedDims;
    const { width, height } = getHtmlTextSize(container, textString, font);
    const { x, y } = getRepresentativeTextDimensions(baselineMeasureOptions, font);
    const dims = { x, y, width, height };
    cache[cacheKey] = dims;
    return dims;
};

const clientBrowser = getClientHints().browser;
const useTextDimensions = ({ backend = 'auto' } = {}) => {
    const canvasRef = useRef(null);
    const htmlRef = useRef(null);
    const svgRef = useRef(null);
    const [measureFunction, setMeasureFunction] = useState();
    const backendConfig = useMemo(() => {
        const canvasContent = jsx("canvas", { ref: canvasRef, style: { display: 'none' } });
        const htmlContent = jsx("div", { ref: htmlRef });
        const svgContent = (jsx("svg", { ref: svgRef, style: { display: 'block', width: '0px', height: '0px' } }));
        const config = {
            canvas: {
                refs: [canvasRef],
                measureContent: canvasContent,
                measureFunction: (textString, font) => {
                    const canvas = canvasRef.current;
                    const ctx = canvas?.getContext('2d');
                    if (!canvas || !ctx)
                        return { x: -1, y: -1, width: -1, height: -1 };
                    return getCanvasTextDimensions(ctx, textString, font);
                }
            },
            htmlSvg: {
                refs: [htmlRef, svgRef],
                measureContent: (jsxs("div", { children: [htmlContent, svgContent] })),
                measureFunction: (textString, font) => {
                    if (!htmlRef.current || !svgRef.current)
                        return { x: -1, y: -1, width: -1, height: -1 };
                    return getHtmlTextDimensions(htmlRef.current, { backend: 'svg', container: svgRef.current }, textString, font);
                }
            },
            htmlCanvas: {
                refs: [htmlRef, canvasRef],
                measureContent: (jsxs("div", { children: [htmlContent, canvasContent] })),
                measureFunction: (textString, font) => {
                    const canvas = canvasRef.current;
                    const ctx = canvas?.getContext('2d');
                    if (!htmlRef.current || !canvas || !ctx)
                        return { x: -1, y: -1, width: -1, height: -1 };
                    return getHtmlTextDimensions(htmlRef.current, { backend: 'canvas', ctx }, textString, font);
                }
            },
            svg: {
                refs: [svgRef],
                measureContent: svgContent,
                measureFunction: (textString, font) => {
                    if (!svgRef.current)
                        return { x: -1, y: -1, width: -1, height: -1 };
                    return getSvgTextDimensions(svgRef.current, textString, font);
                }
            }
        };
        if (backend === 'auto') {
            return {
                refs: [htmlRef, canvasRef],
                measureContent: (jsxs("div", { children: [canvasContent, htmlContent, svgContent] })),
                measureFunction: (textString, font) => {
                    const measurementBackend = getBackend(clientBrowser, font);
                    return config[measurementBackend].measureFunction(textString, font);
                }
            };
        }
        return config[backend];
    }, [backend]);
    useLayoutEffect(() => {
        if (!backendConfig.refs[0].current)
            return;
        computeBaseStyle(backendConfig.refs[0].current);
        // Ensure all fonts are loaded before any measurements are made
        document.fonts.ready.then(() => {
            setMeasureFunction(() => backendConfig.measureFunction);
        });
    }, [backendConfig]);
    return {
        textMeasureContent: backendConfig.measureContent,
        getTextDimensions: measureFunction
    };
};

export { useTextDimensions as u };
//# sourceMappingURL=useTextDimensions-e48f2781.js.map
