/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs, Fragment } from 'preact/jsx-runtime';
import { useRef, useState, useMemo } from 'preact/hooks';
import { c as classNames } from './classNames-4e12b00d.js';
import { styles, bridgeValues } from './PRIVATE_TimeComponent/themes/TimeComponentStyles.css.js';
import { styles as styles$1, rowAxisLayoutStyles, rowAxisStyles, rowBackgroundStyles, timeAxisDataBodyStyles, horizontalGridlinesStyles, taskMobileAccStyles, taskLabelLayerStyles, bridgeValues as bridgeValues$1 } from './UNSAFE_Gantt/themes/GanttStyles.css.js';
import { s as sizeToCSS } from './size-782ed57a.js';
import { u as useTestId } from './useTestId-adde554c.js';
import { T as TrackResizeContainer } from './TrackResizeContainer-8360f2c2.js';
import { T as Text } from './Text-da8588ce.js';
import { g as generateAriaLabel, s as supportsMobileScreenReader } from './accUtils-dc32d20b.js';
import { k as getTimePosition, p as parseDate, u as useDrag, l as useWheel, z as zoomTime, m as getGestureZoomFactor, n as getPositionTime, o as getISOString, q as getDefaultDateFormatter, j as TimeComponentCanvas2D, T as TimeComponentLayersStack, g as TimeComponentVerticalGridlines, a as TimeComponentPanZoomLayout, b as TimeComponentZoomControls, c as TimeComponentVerticalScrollbarContainer, d as TimeComponentVerticalScrollbar, e as TimeComponentHorizontalScrollbarContainer, f as TimeComponentHorizontalScrollbar, h as TimeComponentHorizontalTimeAxis, D as DEFAULT_ZOOM_OUT_FACTOR, r as DEFAULT_ZOOM_IN_FACTOR } from './TimeComponentCanvas2D-c2ab38ba.js';
import { u as useUser } from './useUser-99920e02.js';
import { L as Layer } from './Layer-9b06412e.js';
import 'preact/compat';
import './LayerHost-45f545d7.js';
import { F as Floating } from './Floating-9703160e.js';
import { styles as styles$2 } from './hooks/PRIVATE_useDatatip/themes/useDatatip.css.js';
import { u as useId } from './useId-03dbfdf0.js';
import { D as DATATIP_OFFSET } from './datatipUtils-5cb22909.js';
import './LayerStyles.styles.css';
import './useDatatip.styles.css';
import { c as calculateOffset } from './util-c1d41418.js';
import { m as mergeProps } from './mergeProps-88ea8306.js';
import { u as usePinch } from './usePinch-c57ee02b.js';
import { u as useSelection } from './useSelection-c12f7802.js';
import { V as VisTabularDatatip } from './VisTabularDatatip-1f16ca1f.js';
import { u as useTranslationBundle } from './useTranslationBundle-cd815e10.js';
import { g as getRandomId } from './layoutUtils-2374ab3e.js';
import { r as rectangleWithBorderRadius } from './pathUtils-1a478322.js';
import { u as useCssVars } from './useCssVars-64d9b696.js';
import { u as useTextDimensions } from './useTextDimensions-e48f2781.js';
import { typographyVars, baseVars } from './Common/themes/themeContract.css.js';
import { x as xUnits } from './utils-6eab3a64.js';
import { c as cancelEvent } from './eventsUtils-d544e874.js';

function GanttContainer({ innerRef, width, height, testId, children, ...otherProps }) {
    const testIdProps = useTestId(testId);
    return (jsx("div", { ref: innerRef, tabIndex: 0, ...testIdProps, ...otherProps, class: classNames([styles.baseStyle, styles$1.baseStyle]), style: { width: width && sizeToCSS(width), height: height && sizeToCSS(height) }, children: children }));
}

function GanttWithRowAxisLayout({ rowAxisTopGap = '0', rowAxisBottomGap = '0', resolvedRowAxisWidth, resolvedRowAxisMaxWidth, rowAxis, ganttView }) {
    const isRelativeWidth = resolvedRowAxisWidth.suffix === '%';
    const isRelativeMaxWidth = resolvedRowAxisMaxWidth.suffix === '%';
    return isRelativeWidth || isRelativeMaxWidth ? (jsx(TrackResizeContainer, { width: "100%", height: "100%", children: (width, _) => (jsxs("div", { class: rowAxisLayoutStyles.base, style: { gridTemplateRows: `${rowAxisTopGap} minmax(0, 1fr) ${rowAxisBottomGap}` }, children: [jsx("div", { class: rowAxisLayoutStyles.rowAxis, children: rowAxis(isRelativeWidth
                        ? width * (resolvedRowAxisWidth.value / 100)
                        : resolvedRowAxisWidth.value, isRelativeMaxWidth
                        ? width * (resolvedRowAxisMaxWidth.value / 100)
                        : resolvedRowAxisMaxWidth.value) }), jsx("div", { class: rowAxisLayoutStyles.ganttView, children: ganttView })] })) })) : (jsxs("div", { class: rowAxisLayoutStyles.base, style: { gridTemplateRows: `${rowAxisTopGap} minmax(0, 1fr) ${rowAxisBottomGap}` }, children: [jsx("div", { class: rowAxisLayoutStyles.rowAxis, children: rowAxis(resolvedRowAxisWidth.value, resolvedRowAxisMaxWidth.value) }), jsx("div", { class: rowAxisLayoutStyles.ganttView, children: ganttView })] }));
}

/**
 * Gets the default row axis label renderer.
 * @param param0
 * @returns The default renderer.
 */
const defaultRowAxisLabelRender = ({ maxWidth, maxHeight, data: { label = '', labelStyle } }) => {
    return (jsx("div", { style: {
            width: maxWidth > -1 ? maxWidth : undefined,
            height: maxHeight,
            display: 'flex',
            alignItems: 'center',
            ...labelStyle
        }, children: jsx(Text, { size: "md", variant: labelStyle?.color ? 'inherit' : 'primary', truncation: "ellipsis", children: label }) }));
};
/**
 * Gets the row label renderer context.
 * @param layoutObj The row layout object.
 * @param rowData The rows data.
 * @param maxWidth The max width of the row axis.
 * @returns The renderer context.
 */
const getRenderContext$1 = (layoutObj, rowData, maxWidth) => {
    return {
        maxWidth,
        maxHeight: layoutObj.height,
        data: rowData[layoutObj.index]
    };
};

class FlatQueue {

    constructor() {
        this.ids = [];
        this.values = [];
        this.length = 0;
    }

    clear() {
        this.length = 0;
    }

    push(id, value) {
        let pos = this.length++;

        while (pos > 0) {
            const parent = (pos - 1) >> 1;
            const parentValue = this.values[parent];
            if (value >= parentValue) break;
            this.ids[pos] = this.ids[parent];
            this.values[pos] = parentValue;
            pos = parent;
        }

        this.ids[pos] = id;
        this.values[pos] = value;
    }

    pop() {
        if (this.length === 0) return undefined;

        const top = this.ids[0];
        this.length--;

        if (this.length > 0) {
            const id = this.ids[0] = this.ids[this.length];
            const value = this.values[0] = this.values[this.length];
            const halfLength = this.length >> 1;
            let pos = 0;

            while (pos < halfLength) {
                let left = (pos << 1) + 1;
                const right = left + 1;
                let bestIndex = this.ids[left];
                let bestValue = this.values[left];
                const rightValue = this.values[right];

                if (right < this.length && rightValue < bestValue) {
                    left = right;
                    bestIndex = this.ids[right];
                    bestValue = rightValue;
                }
                if (bestValue >= value) break;

                this.ids[pos] = bestIndex;
                this.values[pos] = bestValue;
                pos = left;
            }

            this.ids[pos] = id;
            this.values[pos] = value;
        }

        return top;
    }

    peek() {
        if (this.length === 0) return undefined;
        return this.ids[0];
    }

    peekValue() {
        if (this.length === 0) return undefined;
        return this.values[0];
    }

    shrink() {
        this.ids.length = this.values.length = this.length;
    }
}

const ARRAY_TYPES = [Int8Array, Uint8Array, Uint8ClampedArray, Int16Array, Uint16Array, Int32Array, Uint32Array, Float32Array, Float64Array];
const VERSION = 3; // serialized format version

/** @typedef {Int8ArrayConstructor | Uint8ArrayConstructor | Uint8ClampedArrayConstructor | Int16ArrayConstructor | Uint16ArrayConstructor | Int32ArrayConstructor | Uint32ArrayConstructor | Float32ArrayConstructor | Float64ArrayConstructor} TypedArrayConstructor */

class Flatbush {

    /**
     * Recreate a Flatbush index from raw `ArrayBuffer` or `SharedArrayBuffer` data.
     * @param {ArrayBuffer | SharedArrayBuffer} data
     * @returns {Flatbush} index
     */
    static from(data) {
        // @ts-expect-error duck typing array buffers
        if (!data || data.byteLength === undefined || data.buffer) {
            throw new Error('Data must be an instance of ArrayBuffer or SharedArrayBuffer.');
        }
        const [magic, versionAndType] = new Uint8Array(data, 0, 2);
        if (magic !== 0xfb) {
            throw new Error('Data does not appear to be in a Flatbush format.');
        }
        const version = versionAndType >> 4;
        if (version !== VERSION) {
            throw new Error(`Got v${version} data when expected v${VERSION}.`);
        }
        const ArrayType = ARRAY_TYPES[versionAndType & 0x0f];
        if (!ArrayType) {
            throw new Error('Unrecognized array type.');
        }
        const [nodeSize] = new Uint16Array(data, 2, 1);
        const [numItems] = new Uint32Array(data, 4, 1);

        return new Flatbush(numItems, nodeSize, ArrayType, undefined, data);
    }

    /**
     * Create a Flatbush index that will hold a given number of items.
     * @param {number} numItems
     * @param {number} [nodeSize=16] Size of the tree node (16 by default).
     * @param {TypedArrayConstructor} [ArrayType=Float64Array] The array type used for coordinates storage (`Float64Array` by default).
     * @param {ArrayBufferConstructor | SharedArrayBufferConstructor} [ArrayBufferType=ArrayBuffer] The array buffer type used to store data (`ArrayBuffer` by default).
     * @param {ArrayBuffer | SharedArrayBuffer} [data] (Only used internally)
     */
    constructor(numItems, nodeSize = 16, ArrayType = Float64Array, ArrayBufferType = ArrayBuffer, data) {
        if (numItems === undefined) throw new Error('Missing required argument: numItems.');
        if (isNaN(numItems) || numItems <= 0) throw new Error(`Unexpected numItems value: ${numItems}.`);

        this.numItems = +numItems;
        this.nodeSize = Math.min(Math.max(+nodeSize, 2), 65535);

        // calculate the total number of nodes in the R-tree to allocate space for
        // and the index of each tree level (used in search later)
        let n = numItems;
        let numNodes = n;
        this._levelBounds = [n * 4];
        do {
            n = Math.ceil(n / this.nodeSize);
            numNodes += n;
            this._levelBounds.push(numNodes * 4);
        } while (n !== 1);

        this.ArrayType = ArrayType;
        this.IndexArrayType = numNodes < 16384 ? Uint16Array : Uint32Array;

        const arrayTypeIndex = ARRAY_TYPES.indexOf(this.ArrayType);
        const nodesByteSize = numNodes * 4 * this.ArrayType.BYTES_PER_ELEMENT;

        if (arrayTypeIndex < 0) {
            throw new Error(`Unexpected typed array class: ${ArrayType}.`);
        }

        // @ts-expect-error duck typing array buffers
        if (data && data.byteLength !== undefined && !data.buffer) {
            this.data = data;
            this._boxes = new this.ArrayType(this.data, 8, numNodes * 4);
            this._indices = new this.IndexArrayType(this.data, 8 + nodesByteSize, numNodes);

            this._pos = numNodes * 4;
            this.minX = this._boxes[this._pos - 4];
            this.minY = this._boxes[this._pos - 3];
            this.maxX = this._boxes[this._pos - 2];
            this.maxY = this._boxes[this._pos - 1];

        } else {
            this.data = new ArrayBufferType(8 + nodesByteSize + numNodes * this.IndexArrayType.BYTES_PER_ELEMENT);
            this._boxes = new this.ArrayType(this.data, 8, numNodes * 4);
            this._indices = new this.IndexArrayType(this.data, 8 + nodesByteSize, numNodes);
            this._pos = 0;
            this.minX = Infinity;
            this.minY = Infinity;
            this.maxX = -Infinity;
            this.maxY = -Infinity;

            new Uint8Array(this.data, 0, 2).set([0xfb, (VERSION << 4) + arrayTypeIndex]);
            new Uint16Array(this.data, 2, 1)[0] = nodeSize;
            new Uint32Array(this.data, 4, 1)[0] = numItems;
        }

        // a priority queue for k-nearest-neighbors queries
        /** @type FlatQueue<number> */
        this._queue = new FlatQueue();
    }

    /**
     * Add a given rectangle to the index.
     * @param {number} minX
     * @param {number} minY
     * @param {number} maxX
     * @param {number} maxY
     * @returns {number} A zero-based, incremental number that represents the newly added rectangle.
     */
    add(minX, minY, maxX, maxY) {
        const index = this._pos >> 2;
        const boxes = this._boxes;
        this._indices[index] = index;
        boxes[this._pos++] = minX;
        boxes[this._pos++] = minY;
        boxes[this._pos++] = maxX;
        boxes[this._pos++] = maxY;

        if (minX < this.minX) this.minX = minX;
        if (minY < this.minY) this.minY = minY;
        if (maxX > this.maxX) this.maxX = maxX;
        if (maxY > this.maxY) this.maxY = maxY;

        return index;
    }

    /** Perform indexing of the added rectangles. */
    finish() {
        if (this._pos >> 2 !== this.numItems) {
            throw new Error(`Added ${this._pos >> 2} items when expected ${this.numItems}.`);
        }
        const boxes = this._boxes;

        if (this.numItems <= this.nodeSize) {
            // only one node, skip sorting and just fill the root box
            boxes[this._pos++] = this.minX;
            boxes[this._pos++] = this.minY;
            boxes[this._pos++] = this.maxX;
            boxes[this._pos++] = this.maxY;
            return;
        }

        const width = (this.maxX - this.minX) || 1;
        const height = (this.maxY - this.minY) || 1;
        const hilbertValues = new Uint32Array(this.numItems);
        const hilbertMax = (1 << 16) - 1;

        // map item centers into Hilbert coordinate space and calculate Hilbert values
        for (let i = 0, pos = 0; i < this.numItems; i++) {
            const minX = boxes[pos++];
            const minY = boxes[pos++];
            const maxX = boxes[pos++];
            const maxY = boxes[pos++];
            const x = Math.floor(hilbertMax * ((minX + maxX) / 2 - this.minX) / width);
            const y = Math.floor(hilbertMax * ((minY + maxY) / 2 - this.minY) / height);
            hilbertValues[i] = hilbert(x, y);
        }

        // sort items by their Hilbert value (for packing later)
        sort(hilbertValues, boxes, this._indices, 0, this.numItems - 1, this.nodeSize);

        // generate nodes at each tree level, bottom-up
        for (let i = 0, pos = 0; i < this._levelBounds.length - 1; i++) {
            const end = this._levelBounds[i];

            // generate a parent node for each block of consecutive <nodeSize> nodes
            while (pos < end) {
                const nodeIndex = pos;

                // calculate bbox for the new node
                let nodeMinX = boxes[pos++];
                let nodeMinY = boxes[pos++];
                let nodeMaxX = boxes[pos++];
                let nodeMaxY = boxes[pos++];
                for (let j = 1; j < this.nodeSize && pos < end; j++) {
                    nodeMinX = Math.min(nodeMinX, boxes[pos++]);
                    nodeMinY = Math.min(nodeMinY, boxes[pos++]);
                    nodeMaxX = Math.max(nodeMaxX, boxes[pos++]);
                    nodeMaxY = Math.max(nodeMaxY, boxes[pos++]);
                }

                // add the new node to the tree data
                this._indices[this._pos >> 2] = nodeIndex;
                boxes[this._pos++] = nodeMinX;
                boxes[this._pos++] = nodeMinY;
                boxes[this._pos++] = nodeMaxX;
                boxes[this._pos++] = nodeMaxY;
            }
        }
    }

    /**
     * Search the index by a bounding box.
     * @param {number} minX
     * @param {number} minY
     * @param {number} maxX
     * @param {number} maxY
     * @param {(index: number) => boolean} [filterFn] An optional function for filtering the results.
     * @returns {number[]} An array of indices of items intersecting or touching the given bounding box.
     */
    search(minX, minY, maxX, maxY, filterFn) {
        if (this._pos !== this._boxes.length) {
            throw new Error('Data not yet indexed - call index.finish().');
        }

        /** @type number | undefined */
        let nodeIndex = this._boxes.length - 4;
        const queue = [];
        const results = [];

        while (nodeIndex !== undefined) {
            // find the end index of the node
            const end = Math.min(nodeIndex + this.nodeSize * 4, upperBound(nodeIndex, this._levelBounds));

            // search through child nodes
            for (let /** @type number */ pos = nodeIndex; pos < end; pos += 4) {
                // check if node bbox intersects with query bbox
                if (maxX < this._boxes[pos]) continue; // maxX < nodeMinX
                if (maxY < this._boxes[pos + 1]) continue; // maxY < nodeMinY
                if (minX > this._boxes[pos + 2]) continue; // minX > nodeMaxX
                if (minY > this._boxes[pos + 3]) continue; // minY > nodeMaxY

                const index = this._indices[pos >> 2] | 0;

                if (nodeIndex >= this.numItems * 4) {
                    queue.push(index); // node; add it to the search queue

                } else if (filterFn === undefined || filterFn(index)) {
                    results.push(index); // leaf item
                }
            }

            nodeIndex = queue.pop();
        }

        return results;
    }

    /**
     * Search items in order of distance from the given point.
     * @param {number} x
     * @param {number} y
     * @param {number} [maxResults=Infinity]
     * @param {number} [maxDistance=Infinity]
     * @param {(index: number) => boolean} [filterFn] An optional function for filtering the results.
     * @returns {number[]} An array of indices of items found.
     */
    neighbors(x, y, maxResults = Infinity, maxDistance = Infinity, filterFn) {
        if (this._pos !== this._boxes.length) {
            throw new Error('Data not yet indexed - call index.finish().');
        }

        /** @type number | undefined */
        let nodeIndex = this._boxes.length - 4;
        const q = this._queue;
        const results = [];
        const maxDistSquared = maxDistance * maxDistance;

        outer: while (nodeIndex !== undefined) {
            // find the end index of the node
            const end = Math.min(nodeIndex + this.nodeSize * 4, upperBound(nodeIndex, this._levelBounds));

            // add child nodes to the queue
            for (let pos = nodeIndex; pos < end; pos += 4) {
                const index = this._indices[pos >> 2] | 0;

                const dx = axisDist(x, this._boxes[pos], this._boxes[pos + 2]);
                const dy = axisDist(y, this._boxes[pos + 1], this._boxes[pos + 3]);
                const dist = dx * dx + dy * dy;
                if (dist > maxDistSquared) continue;

                if (nodeIndex >= this.numItems * 4) {
                    q.push(index << 1, dist); // node (use even id)

                } else if (filterFn === undefined || filterFn(index)) {
                    q.push((index << 1) + 1, dist); // leaf item (use odd id)
                }
            }

            // pop items from the queue
            // @ts-expect-error q.length check eliminates undefined values
            while (q.length && (q.peek() & 1)) {
                const dist = q.peekValue();
                // @ts-expect-error
                if (dist > maxDistSquared) break outer;
                // @ts-expect-error
                results.push(q.pop() >> 1);
                if (results.length === maxResults) break outer;
            }

            // @ts-expect-error
            nodeIndex = q.length ? q.pop() >> 1 : undefined;
        }

        q.clear();
        return results;
    }
}

/**
 * 1D distance from a value to a range.
 * @param {number} k
 * @param {number} min
 * @param {number} max
 */
function axisDist(k, min, max) {
    return k < min ? min - k : k <= max ? 0 : k - max;
}

/**
 * Binary search for the first value in the array bigger than the given.
 * @param {number} value
 * @param {number[]} arr
 */
function upperBound(value, arr) {
    let i = 0;
    let j = arr.length - 1;
    while (i < j) {
        const m = (i + j) >> 1;
        if (arr[m] > value) {
            j = m;
        } else {
            i = m + 1;
        }
    }
    return arr[i];
}

/**
 * Custom quicksort that partially sorts bbox data alongside the hilbert values.
 * @param {Uint32Array} values
 * @param {InstanceType<TypedArrayConstructor>} boxes
 * @param {Uint16Array | Uint32Array} indices
 * @param {number} left
 * @param {number} right
 * @param {number} nodeSize
 */
function sort(values, boxes, indices, left, right, nodeSize) {
    if (Math.floor(left / nodeSize) >= Math.floor(right / nodeSize)) return;

    const pivot = values[(left + right) >> 1];
    let i = left - 1;
    let j = right + 1;

    while (true) {
        do i++; while (values[i] < pivot);
        do j--; while (values[j] > pivot);
        if (i >= j) break;
        swap(values, boxes, indices, i, j);
    }

    sort(values, boxes, indices, left, j, nodeSize);
    sort(values, boxes, indices, j + 1, right, nodeSize);
}

/**
 * Swap two values and two corresponding boxes.
 * @param {Uint32Array} values
 * @param {InstanceType<TypedArrayConstructor>} boxes
 * @param {Uint16Array | Uint32Array} indices
 * @param {number} i
 * @param {number} j
 */
function swap(values, boxes, indices, i, j) {
    const temp = values[i];
    values[i] = values[j];
    values[j] = temp;

    const k = 4 * i;
    const m = 4 * j;

    const a = boxes[k];
    const b = boxes[k + 1];
    const c = boxes[k + 2];
    const d = boxes[k + 3];
    boxes[k] = boxes[m];
    boxes[k + 1] = boxes[m + 1];
    boxes[k + 2] = boxes[m + 2];
    boxes[k + 3] = boxes[m + 3];
    boxes[m] = a;
    boxes[m + 1] = b;
    boxes[m + 2] = c;
    boxes[m + 3] = d;

    const e = indices[i];
    indices[i] = indices[j];
    indices[j] = e;
}

/**
 * Fast Hilbert curve algorithm by http://threadlocalmutex.com/
 * Ported from C++ https://github.com/rawrunprotected/hilbert_curves (public domain)
 * @param {number} x
 * @param {number} y
 */
function hilbert(x, y) {
    let a = x ^ y;
    let b = 0xFFFF ^ a;
    let c = 0xFFFF ^ (x | y);
    let d = x & (y ^ 0xFFFF);

    let A = a | (b >> 1);
    let B = (a >> 1) ^ a;
    let C = ((c >> 1) ^ (b & (d >> 1))) ^ c;
    let D = ((a & (c >> 1)) ^ (d >> 1)) ^ d;

    a = A; b = B; c = C; d = D;
    A = ((a & (a >> 2)) ^ (b & (b >> 2)));
    B = ((a & (b >> 2)) ^ (b & ((a ^ b) >> 2)));
    C ^= ((a & (c >> 2)) ^ (b & (d >> 2)));
    D ^= ((b & (c >> 2)) ^ ((a ^ b) & (d >> 2)));

    a = A; b = B; c = C; d = D;
    A = ((a & (a >> 4)) ^ (b & (b >> 4)));
    B = ((a & (b >> 4)) ^ (b & ((a ^ b) >> 4)));
    C ^= ((a & (c >> 4)) ^ (b & (d >> 4)));
    D ^= ((b & (c >> 4)) ^ ((a ^ b) & (d >> 4)));

    a = A; b = B; c = C; d = D;
    C ^= ((a & (c >> 8)) ^ (b & (d >> 8)));
    D ^= ((b & (c >> 8)) ^ ((a ^ b) & (d >> 8)));

    a = C ^ (C >> 1);
    b = D ^ (D >> 1);

    let i0 = x ^ y;
    let i1 = b | (0xFFFF ^ (i0 | a));

    i0 = (i0 | (i0 << 8)) & 0x00FF00FF;
    i0 = (i0 | (i0 << 4)) & 0x0F0F0F0F;
    i0 = (i0 | (i0 << 2)) & 0x33333333;
    i0 = (i0 | (i0 << 1)) & 0x55555555;

    i1 = (i1 | (i1 << 8)) & 0x00FF00FF;
    i1 = (i1 | (i1 << 4)) & 0x0F0F0F0F;
    i1 = (i1 | (i1 << 2)) & 0x33333333;
    i1 = (i1 | (i1 << 1)) & 0x55555555;

    return ((i1 << 1) | i0) >>> 0;
}

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Gets the task spatial index.
 * @param rowObjs The row layout objects (for the entier dataset).
 * @returns The task spatial index.
 */
const getTasksSpatialIndex = (rowObjs) => {
    const numTasks = rowObjs.map((r) => r.taskObjs.length).reduce((a, b) => a + b, 0);
    const index = new Flatbush(numTasks);
    rowObjs.forEach((r) => r.taskObjs.forEach(({ overallStartTime, overallEndTime, y, height }) => {
        index.add(overallStartTime, y, overallEndTime, y + height);
    }));
    index.finish();
    return index;
};
/**
 * Gets all spatial indices of the component.
 * @param rowObjs The row layout objects (for the entier dataset).
 * @returns The spatial indices.
 */
const getSpatialIndex = (rowObjs) => {
    // TODO: add more spatial indices for non task bar stuff
    return {
        tasks: getTasksSpatialIndex(rowObjs)
    };
};
/**
 * Returns the target task that overlaps with the given point.
 * @param rowObjs The row layout objects (for the entier dataset).
 * @param index The spatial index to query.
 * @param param2 The point.
 * @returns The target task.
 */
const queryTasksSpatialIndex = (rowObjs, index, { time, y }) => {
    const found = index.search(time, y, time, y);
    if (found.length === 0)
        return;
    // TODO: Handle task overlaps. Not a problem yet for V1.
    // Instead of depending on order gaurantees from Flatbush (there might not be any), we should
    // just check chronological task order and overlap behavior (when we support that API)
    // to figure out the topmost task in the search result.
    let flatIndex = found[0];
    // TODO: improve this with binary search
    for (let i = 0; i < rowObjs.length; i++) {
        const rowObj = rowObjs[i];
        for (let j = 0; j < rowObj.taskObjs.length; j++) {
            if (flatIndex === 0)
                return { rowIndex: i, taskIndex: j };
            flatIndex -= 1;
        }
    }
    return;
};

/**
 * Determines whether given two intervals overlap
 * @param s1 interval 1 start
 * @param e1 interval 1 end
 * @param s2 interval 2 start
 * @param e2 interval 2 end
 * @param isClosedComparison True if closed interval comparison, else open
 * @returns Whether the two intervals overlap
 */
const isIntervalOverlap = (s1, e1, s2, e2, isClosedComparison = true) => (isClosedComparison ? s1 <= e2 && s2 <= e1 : s1 < e2 && s2 < e1);
/**
 * Determines whether given two tasks overlap chronologically
 * @param taskObj1 task layout object
 * @param taskObj2 task layout object
 * @returns Whether the two tasks overlap chronologically
 */
const isOverlap = (taskObj1, taskObj2) => {
    // Open interval comparison: if interval 1 ends at the same time interval 2 starts, they are still NOT overlapping.
    return isIntervalOverlap(taskObj1.overallStartTime, taskObj1.overallEndTime, taskObj2.overallStartTime, taskObj2.overallEndTime, false);
};
/**
 * Binary search for the index of the leftmost element that equals the target.
 * If the target is not in the array, then the returned value is:
 *     - the index of rightmost element less than the target if approximateMode is 'predecessor'
 *     - the index of the leftmost element greater than the target if approximateMode is 'successor'
 * Search is O(lgN), N being the length of the array.
 * @param array The array
 * @param target The target
 * @param approximateMode The behavior if target is not in the array. 'predecessor' or 'successor'
 * @returns The leftmost index at which the target is found, or the index of the predecessor/successor element as per approximateMode param
 */
const binarySearchLeftMost = (array, target, approximateMode) => {
    if (array.length === 0)
        return 0;
    let L = 0;
    let R = array.length;
    while (L < R) {
        const m = Math.floor((L + R) / 2);
        const value = array[m];
        if (value < target)
            L = m + 1;
        else
            R = m;
    }
    // If target is not in the array, then L at this point is the rank of the target in the array,
    // i.e. the number of elements in the array that are less than the target.
    if (L < array.length) {
        const value = array[L];
        if (value === target || approximateMode === 'successor')
            return L;
    }
    // L - 1 would give the index of the rightmost element less than the target (predecessor)
    return L > 0 ? L - 1 : 0;
};
/**
 * Finds the minimum and maximum row indices relevant to the given viewport bounds
 * @param rowYs The row y coords
 * @param yMin The minimum y bound
 * @param yMax The maximum y bound
 * @returns The minimum and maximum row indices
 */
const findRowIndRange = (rowYs, yMin, yMax) => {
    // O(lgN) binary search for first row (intersecting yMin)
    const minRowInd = binarySearchLeftMost(rowYs, yMin, 'predecessor');
    let maxRowInd = minRowInd;
    // linear search from that row to search for last row (intersecting yMax)
    for (let i = minRowInd; i < rowYs.length; i++) {
        if (rowYs[i] <= yMax) {
            maxRowInd = i;
        }
        else {
            break;
        }
    }
    return { minRowInd, maxRowInd };
};
/**
 * Gets the height of an empty row.
 * @param resolvedVars The resolved CSS vars.
 * @returns The height of an empty row.
 */
const getEmptyRowHeight = (resolvedVars) => resolvedVars.rowPaddingTop + resolvedVars.taskHeight + resolvedVars.rowPaddingBottom;
/**
 * Computes the vertical layout of the given row and its tasks.
 * This method modifies the given task layout objects with resolved layout information.
 * @param param0
 * @returns The resolved height of the row.
 */
const calcRowTaskVerticalLayout = ({ rowHeight, rowY, taskObjs, resolvedVars }) => {
    if (taskObjs.length === 0)
        return getEmptyRowHeight(resolvedVars);
    taskObjs[0].rowLevel = 0;
    taskObjs[0].y = 0;
    const overlapChains = [[taskObjs[0]]];
    const rowLevelRecentTaskObjs = [taskObjs[0]];
    for (let i = 1; i < taskObjs.length; i++) {
        const taskObj = taskObjs[i];
        // Handle properly in the future when we support these APIs
        const overlapBehavior = 'stack';
        const previousTaskObj = taskObjs[i - 1];
        const thisOverlapsPrevious = isOverlap(taskObj, previousTaskObj);
        if (thisOverlapsPrevious) {
            overlapChains[overlapChains.length - 1].push(taskObj);
        }
        else {
            overlapChains.push([taskObj]);
        }
        let rowLevel = 0;
        let previousAdjacentTaskObj;
        switch (overlapBehavior) {
            case 'stack': {
                let promote = true;
                for (let j = 0; j < rowLevelRecentTaskObjs.length; j++) {
                    previousAdjacentTaskObj = undefined;
                    if (isOverlap(taskObj, rowLevelRecentTaskObjs[j])) {
                        rowLevel += 1;
                    }
                    else {
                        previousAdjacentTaskObj = rowLevelRecentTaskObjs[j];
                        rowLevelRecentTaskObjs[j] = taskObj;
                        promote = false;
                        break;
                    }
                }
                if (promote) {
                    rowLevelRecentTaskObjs.push(taskObj);
                }
                taskObj.y = 0;
                if (previousAdjacentTaskObj) {
                    taskObj.previousAdjacentTaskObj = previousAdjacentTaskObj;
                    previousAdjacentTaskObj.nextAdjacentTaskObj = taskObj;
                }
                break;
            }
            // More cases in the future when we support the overlap behavior APIs
            default: {
                const _exhaustiveCheck = overlapBehavior;
                return _exhaustiveCheck;
            }
        }
        taskObj.rowLevel = rowLevel;
    }
    // Add padding to task y when row height is not fixed
    const rowPaddingTop = resolvedVars.rowPaddingTop;
    const rowPaddingBottom = resolvedVars.rowPaddingBottom;
    const rowLevelHeights = rowLevelRecentTaskObjs.map(() => 0);
    if (rowHeight === undefined) {
        // Figure out offset based on row level height
        {
            taskObjs.forEach((taskObj) => {
                if (taskObj.height > rowLevelHeights[taskObj.rowLevel]) {
                    rowLevelHeights[taskObj.rowLevel] = taskObj.height;
                }
            });
            const rowLevelCumHeightsWithPadding = rowLevelHeights
                .map((rowLevelHeight) => rowLevelHeight + rowPaddingTop + rowPaddingBottom)
                .reduce((acc, curr, i) => {
                acc.push((acc[i - 1] || 0) + curr);
                return acc;
            }, []);
            taskObjs.forEach((taskObj) => {
                taskObj.y += (rowLevelCumHeightsWithPadding[taskObj.rowLevel - 1] || 0) + rowPaddingTop;
            });
        }
    }
    const overlapChainHeights = overlapChains.map((chain) => {
        let chainHeight = 0;
        chain.forEach((chainTaskObj) => {
            const distanceFromBottomToRowTop = chainTaskObj.y + chainTaskObj.height;
            if (distanceFromBottomToRowTop > chainHeight) {
                chainHeight = distanceFromBottomToRowTop;
            }
        });
        return chainHeight;
    });
    let resolvedRowHeight;
    if (rowHeight === undefined) {
        // Grow the row height to accommodate everything
        resolvedRowHeight =
            overlapChainHeights.reduce((a, b) => {
                return Math.max(a, b);
            }) + rowPaddingTop;
        // If no overlapping offset specified: Mid align task within its row level
        {
            overlapChains.forEach((chain) => {
                chain.forEach((taskObj) => {
                    const rowLevelHeight = rowLevelHeights[taskObj.rowLevel];
                    taskObj.y += (rowLevelHeight - taskObj.height) / 2 + rowY;
                });
            });
        }
    }
    else {
        // Fix the row height and mid align everything
        resolvedRowHeight = rowHeight;
        overlapChains.forEach((chain, i) => {
            const chainHeight = overlapChainHeights[i];
            let minTaskY = Number.MAX_VALUE;
            chain.forEach((taskObj) => {
                taskObj.y += Math.floor((resolvedRowHeight - taskObj.height) / 2);
                if (taskObj.y < minTaskY) {
                    minTaskY = taskObj.y;
                }
            });
            const offsetFromRowCenter = Math.floor((resolvedRowHeight - chainHeight) / 2) - minTaskY;
            chain.forEach((taskObj) => {
                taskObj.y += rowY + offsetFromRowCenter;
            });
        });
    }
    return resolvedRowHeight;
};
/**
 * Computes the (unresolved) task labels layout.
 * This method modifies the given task layout objects with resolved layout information.
 * @param taskObjs The task layout object.
 * @param rowData The rows data.
 */
const calcTaskLabelLayout = (taskObjs, rowData) => {
    // TODO: Support other label positions when we get to exposing those APIs
    // For now, just take care of label position "innerCenter"
    taskObjs.forEach((taskObj) => {
        const { index, rowIndex } = taskObj;
        const labelText = rowData[rowIndex].tasks[index].label;
        if (labelText) {
            taskObj.labelObj = {
                startTime: taskObj.startTime,
                endTime: taskObj.endTime,
                label: labelText,
                isInner: true,
                position: 'center' // Future: unless inner, 'start' if labelPosition is 'end', 'end if labelPosition is 'start'
                // TODO: Handle contrast color
            };
        }
    });
};
/**
 * Computes the resolved task label layout given the unresolved label layout and the viewport.
 * @param labelObj The unresolved label layout object.
 * @param labelStyle The label style.
 * @param y The y position of the task.
 * @param height The height of the task.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param viewportWidth The viewport width.
 * @param isRTL Whether the reading direction is rtl.
 * @returns The resolved label layout object.
 */
const getResolvedTaskLabelLayout = (labelObj, labelStyle, y, height, viewportStartTime, viewportEndTime, viewportWidth, isRTL) => {
    if (!labelObj)
        return;
    const startPos = getTimePosition(labelObj.startTime, viewportStartTime, viewportEndTime, viewportWidth, isRTL);
    const endPos = getTimePosition(labelObj.endTime, viewportStartTime, viewportEndTime, viewportWidth, isRTL);
    let textAlign;
    switch (labelObj.position) {
        case 'center':
            textAlign = 'center';
            break;
        case 'start':
            textAlign = isRTL ? 'right' : 'left';
            break;
        case 'end':
            textAlign = isRTL ? 'left' : 'right';
            break;
        default: {
            const _exhaustiveCheck = labelObj.position;
            return _exhaustiveCheck;
        }
    }
    return {
        x: isRTL ? endPos : startPos,
        y,
        width: isRTL ? startPos - endPos : endPos - startPos,
        height,
        label: labelObj.label,
        isInner: labelObj.isInner,
        textAlign,
        labelStyle
    };
};
/**
 * Gets normalized start and end date strings from props,
 * e.g. one of them may be undefined in the props, but that really means both
 * start and end are the same.
 * @param task The task data containing the start and end date strings.
 * @returns Normalized start and end date strings.
 */
const getNormalizedStartEnd = (task) => {
    const start = task.start ? task.start : task.end;
    const end = task.end ? task.end : task.start;
    return { start, end };
};
/**
 * Returns whether selection is supported given the selection mode.
 * @param selectionMode The selection mode from props.
 * @returns Whether selection is supported.
 */
const supportsSelection = (selectionMode) => {
    return !!(selectionMode && selectionMode !== 'none');
};
/**
 * Gets the (unresolved) rows data layout. Note that this is done for all rows in the data.
 * @param rowData The rows data.
 * @param resolvedVars The resolved CSS vars.
 * @param gridlines The gridlines prop value.
 * @param selectionProps The selection related props.
 * @returns The (unresolved) rows data layout.
 */
const getRowDataLayout = (rowData, resolvedVars, gridlines, selectionProps) => {
    const selectionEnabled = supportsSelection(selectionProps.selectionMode);
    const selectedIds = new Set(selectionProps.selectedIds);
    let rowY = 0;
    const rowObjs = rowData.map((row, i) => {
        const taskObjs = row.tasks.map((task, j) => {
            const { start, end } = getNormalizedStartEnd(task);
            const startTime = parseDate(start);
            const endTime = parseDate(end);
            return {
                id: task.id,
                renderIndex: 0, // calculated downstream
                index: j,
                rowIndex: i,
                y: -1, // calculated downstream
                startTime,
                endTime,
                overallStartTime: startTime,
                overallEndTime: endTime,
                rowLevel: 0, // calculated downstream
                height: task.height !== undefined ? task.height : resolvedVars.taskHeight,
                borderRadius: task.borderRadius !== undefined
                    ? task.borderRadius.toString()
                    : resolvedVars.taskBorderRadius,
                fill: task.color ? task.color : resolvedVars.taskBgColor,
                stroke: resolvedVars.taskBorderColor,
                strokeWidth: 1,
                isSelectable: selectionEnabled,
                isSelected: selectedIds.has(task.id),
                selectionEffect: {
                    stroke: resolvedVars.taskEffectBorderColor,
                    strokeWidth: 2,
                    padding: 2
                },
                hoverEffect: {
                    stroke: resolvedVars.taskEffectBorderColor,
                    strokeWidth: 1,
                    padding: 0,
                    shadow: {
                        ...resolvedVars.taskEffectBoxShadow
                    }
                },
                focusEffect: {
                    stroke: resolvedVars.taskEffectBorderColor,
                    strokeWidth: 1,
                    padding: 2
                }
            };
        });
        taskObjs.sort((a, b) => a.startTime - b.startTime);
        taskObjs.forEach((t, i) => (t.renderIndex = i));
        const resolvedRowHeight = calcRowTaskVerticalLayout({
            rowHeight: row.height,
            rowY,
            taskObjs,
            resolvedVars
        });
        calcTaskLabelLayout(taskObjs, rowData);
        const rowObj = {
            id: row.id,
            y: rowY,
            height: resolvedRowHeight,
            index: i,
            isSelected: taskObjs.some((t) => t.isSelected),
            taskObjs
        };
        const horizontalLineHeightOffset = gridlines.horizontal === 'on' ? 1 : 0;
        rowY += resolvedRowHeight + horizontalLineHeightOffset;
        return rowObj;
    });
    const lastRowLayoutObj = rowObjs[rowObjs.length - 1];
    const totalRowsHeight = lastRowLayoutObj ? lastRowLayoutObj.y + lastRowLayoutObj.height : 0;
    const idTaskObjMap = new Map();
    rowObjs.forEach((rowObj) => rowObj.taskObjs.forEach((taskObj) => idTaskObjMap.set(taskObj.id, taskObj)));
    const idRowObjMap = new Map();
    rowObjs.forEach((rowObj) => idRowObjMap.set(rowObj.id, rowObj));
    const spatialIndex = getSpatialIndex(rowObjs);
    return {
        rowData,
        rowObjs,
        rowPadding: resolvedVars.rowPaddingTop,
        totalRowsHeight,
        gridlines,
        spatialIndex,
        idRowObjMap,
        idTaskObjMap,
        getTaskDataById: (id) => {
            const data = idTaskObjMap.get(id);
            return data && rowData[data.rowIndex].tasks[data.index];
        }
    };
};
/**
 * Gets the corresponding task layout object given the id of the tasks, for each effect.
 * @param effectProps The task ids associated with each effect.
 * @param idTaskObjMap A Map between task ids and task layout objects.
 * @returns The task layout objects for each effect.
 */
const getEffectTaskObjs = (effectProps, idTaskObjMap) => {
    // TODO: Decide whether the task selection source of truth should be in
    // the rowObjs layout, or determined dynamically here, or both.
    // Right now it's in both places.
    // Let's decide after we figure out where eactly to memo for performance.
    //
    // Note we're rendering selectedIds regardless of selectionMode.
    const selectedIds = effectProps.selectionProps.selectedIds || [];
    const selectedTaskObjs = [];
    selectedIds.forEach((id) => {
        const selectedTaskObj = idTaskObjMap.get(id);
        if (selectedTaskObj)
            selectedTaskObjs.push(selectedTaskObj);
    });
    const hoveredId = supportsSelection(effectProps.selectionProps.selectionMode)
        ? effectProps.hoverProps.hoveredTaskId
        : undefined;
    const hoveredTaskObj = hoveredId !== undefined ? idTaskObjMap.get(hoveredId) : undefined;
    const currentTask = effectProps.currentProps.currentTask;
    const isTaskFocused = currentTask?.isFocused === true;
    const currentTaskId = currentTask?.id;
    const focusedTaskObj = isTaskFocused && currentTaskId !== undefined ? idTaskObjMap.get(currentTaskId) : undefined;
    return {
        selectedTaskObjs,
        hoveredTaskObj,
        focusedTaskObj
    };
};
/**
 * Gets the resolved task layout object for the given viewport, given the unresolved task layout object.
 * @param taskObj The unresolved task layout object.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param viewportWidth The viewport width.
 * @param scrollPosition The scroll position.
 * @param isRTL Whether the reading direction is rtl.
 * @returns The resolved task layout object.
 */
const getResolvedTaskObj = (taskObj, viewportStartTime, viewportEndTime, viewportWidth, scrollPosition, isRTL) => {
    const startPos = getTimePosition(taskObj.startTime, viewportStartTime, viewportEndTime, viewportWidth, isRTL);
    const endPos = getTimePosition(taskObj.endTime, viewportStartTime, viewportEndTime, viewportWidth, isRTL);
    return {
        ...taskObj,
        x: isRTL ? endPos : startPos,
        y: taskObj.y - scrollPosition,
        width: isRTL ? startPos - endPos : endPos - startPos
    };
};
/**
 * Gets the resolved rows data layout for the given viewport.
 * @param rowDataLayout The unresolved rows data layout object for all data.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param scrollPosition The scroll position.
 * @param viewportWidth The viewport width.
 * @param viewportHeight The viewport height.
 * @param isRTL Whether the reading direction is rtl.
 * @returns The resolved rows data layout for the given viewport.
 */
const getResolvedViewportLayout = (rowDataLayout, viewportStartTime, viewportEndTime, scrollPosition, viewportWidth, viewportHeight, isRTL) => {
    const viewportYMin = scrollPosition;
    const viewportYMax = scrollPosition + viewportHeight;
    const rowYs = rowDataLayout.rowObjs.map((r) => r.y);
    const { minRowInd, maxRowInd } = findRowIndRange(rowYs, viewportYMin, viewportYMax);
    const viewportRowsLayout = [];
    for (let i = minRowInd; i <= maxRowInd; i++) {
        const rowObj = rowDataLayout.rowObjs[i];
        const viewportTaskObjs = rowObj.taskObjs.filter(({ overallStartTime, overallEndTime }) => isIntervalOverlap(overallStartTime, overallEndTime, viewportStartTime, viewportEndTime));
        const resolvedViewportTaskObjs = viewportTaskObjs.map((taskObj) => getResolvedTaskObj(taskObj, viewportStartTime, viewportEndTime, viewportWidth, scrollPosition, isRTL));
        const resolvedViewportRowObjs = {
            ...rowObj,
            y: rowObj.y - scrollPosition,
            taskObjs: resolvedViewportTaskObjs
        };
        viewportRowsLayout.push(resolvedViewportRowObjs);
    }
    const viewportTaskLabelsLayout = [];
    viewportRowsLayout.forEach((rowObj) => {
        rowObj.taskObjs.forEach(({ index, rowIndex, labelObj, y, height }) => {
            const labelStyle = rowDataLayout.rowData[rowIndex].tasks[index].labelStyle;
            const labelLayout = getResolvedTaskLabelLayout(labelObj, labelStyle, y, height, viewportStartTime, viewportEndTime, viewportWidth, isRTL);
            if (labelLayout)
                viewportTaskLabelsLayout.push(labelLayout);
        });
    });
    // due to pixel hinting, odd value stroke width needs it's position to be offset by 0.5 to ensure consistent behavior across browsers
    // i.e. pos = pos + (strokeWidth % 2) * 0.5
    // e.g. stroke-width of 1px means 0.5px above and below the reference coordinate. With pixel hinting, some browsers
    // renders 1px above the reference, some renders 1px below the reference. If we offset the reference by 0.5px, the stroke location
    // becomes unambiguous (it'll lock onto whole pixel grid) so all browsers will render this consistently.
    const horizontalGridlinesPos = rowDataLayout.gridlines.horizontal === 'on'
        ? viewportRowsLayout.map(({ y, height }) => y + height + 0.5)
        : undefined;
    const idTaskObjMap = new Map();
    viewportRowsLayout.forEach((rowObj) => rowObj.taskObjs.forEach((taskObj) => idTaskObjMap.set(taskObj.id, taskObj)));
    return {
        spatialIndex: rowDataLayout.spatialIndex,
        gridlines: rowDataLayout.gridlines,
        horizontalGridlinesPos,
        rowData: rowDataLayout.rowData,
        allRowObjs: rowDataLayout.rowObjs,
        allIdTaskObjMap: rowDataLayout.idTaskObjMap,
        allIdRowObjMap: rowDataLayout.idRowObjMap,
        rowPadding: rowDataLayout.rowPadding,
        rowObjs: viewportRowsLayout,
        taskLabelObjs: viewportTaskLabelsLayout,
        idTaskObjMap,
        getTaskDataById: rowDataLayout.getTaskDataById
    };
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Gets the default aria label for the task.
 * @param taskObj The task layout object.
 * @param rowData The rows data.
 * @param dateFormatter The date formatter.
 * @param translations The translations bundle.
 * @returns The default aria label.
 */
const getDefaultTaskAccessibleLabel = (taskObj, rowData, 
// TODO: take valueFormats instead of dateFormatter when we support the API
dateFormatter, translations) => {
    const row = rowData[taskObj.rowIndex];
    const task = row.tasks[taskObj.index];
    const { start, end } = getNormalizedStartEnd(task);
    const isMilestone = start === end;
    const desc = [];
    if (row.label) {
        const rowDesc = translations.vis_labelAndValue({
            LABEL: translations.gantt_labelRow(),
            VALUE: row.label
        });
        desc.push(rowDesc);
    }
    if (!isMilestone) {
        const startDesc = translations.vis_labelAndValue({
            LABEL: translations.gantt_labelStart(),
            VALUE: dateFormatter(start)
        });
        const endDesc = translations.vis_labelAndValue({
            LABEL: translations.gantt_labelEnd(),
            VALUE: dateFormatter(end)
        });
        desc.push(startDesc);
        desc.push(endDesc);
    }
    else {
        const dateDesc = translations.vis_labelAndValue({
            LABEL: translations.gantt_labelDate(),
            VALUE: dateFormatter(start)
        });
        desc.push(dateDesc);
    }
    if (task.label) {
        const labelDesc = translations.vis_labelAndValue({
            LABEL: translations.gantt_labelLabel(),
            VALUE: task.label
        });
        desc.push(labelDesc);
    }
    return desc.join('; ');
};
/**
 * Gets the aria label for the task.
 * @param taskObj The task layout object.
 * @param rowData The rows data.
 * @param dateFormatter The date formatter.
 * @param translations The translations bundle.
 * @returns The aria label for the task.
 */
const getTaskAriaLabel = (taskObj, rowData, dateFormatter, translations) => {
    const data = rowData[taskObj.rowIndex].tasks[taskObj.index];
    const accessibleLabel = data.accessibleLabel !== undefined
        ? data.accessibleLabel
        : getDefaultTaskAccessibleLabel(taskObj, rowData, dateFormatter, translations);
    return generateAriaLabel(translations, accessibleLabel, { isSelected: taskObj.isSelected });
};
/**
 * Gets the aria label for the row label
 * @param rowObj The row layout object.
 * @param rowData The rows data.
 * @returns The aria label for the row label.
 */
const getRowLabelAriaLabel = (rowObj, rowData) => {
    // TODO: There will be states when we support tree data
    const data = rowData[rowObj.index];
    const accessibleLabel = data.accessibleLabel || data.label;
    return accessibleLabel;
};

function GanttRowLabelContainer({ rowObj, rowData, isRowSelected, isFocused, isHorizontalGridlinesVisible, ariaActive, children }) {
    const ariaLabel = getRowLabelAriaLabel(rowObj, rowData);
    return (jsx("div", { id: ariaActive?.dataId === rowObj.id ? ariaActive.ariaId : undefined, "data-oj-row-index": rowObj.index, role: "row", "aria-label": ariaLabel, class: classNames([
            rowAxisStyles.labelContainer,
            isRowSelected && rowBackgroundStyles.selected,
            isFocused && rowAxisStyles.labelContainerFocused,
            isHorizontalGridlinesVisible && rowAxisStyles.withLabelSeparatorBottom
        ]), children: jsx("div", { role: "rowheader", children: children }) }, rowObj.id));
}

/**
 * The hook to support custom datatip in visualization components.
 * TODO: THIS IS A TEMPORARY FORK OF PRIVATE_useDatatip until Gantt moves state up.
 */
function useDatatip({ content, placement = 'top-end-corner', offset, borderColor, anchor, targetFocusRef }) {
    const uniqueIdRef = useRef(useId());
    const [coords, setCoords] = useState({ x: 0, y: 0 });
    const offsetValue = offset || { mainAxis: DATATIP_OFFSET, crossAxis: -1 * DATATIP_OFFSET };
    const targetRef = useRef(null);
    const onPointerMove = (event) => {
        setCoords({ x: event.clientX, y: event.clientY });
    };
    const onFocus = (event) => {
        if (event.eventPhase === Event.AT_TARGET || event.eventPhase === Event.BUBBLING_PHASE) {
            targetRef.current = event.target;
        }
    };
    const onShowFocusDatatip = () => {
        targetRef.current = targetFocusRef.current;
    };
    const onPointerEnter = (event) => {
        if (event.eventPhase === Event.AT_TARGET || event.eventPhase === Event.BUBBLING_PHASE) {
            targetRef.current = event.currentTarget;
        }
    };
    // TODO: Why don't others need this? Find a way to remove this workaround
    const onPointerLeave = () => {
        setCoords({ x: -10000, y: -10000 });
    };
    const anchorRef = anchor === 'element' ? targetRef : { current: coords };
    const datatipContent = content != null ? (jsx(Layer, { children: jsx(Floating, { anchorRef: anchorRef, placement: placement, offsetValue: offsetValue, flipOptions: { crossAxis: true, mainAxis: true }, shiftOptions: { crossAxis: false, mainAxis: false }, children: jsx("div", { id: uniqueIdRef.current, className: styles$2.visDatatipStyle, style: { borderColor }, children: content }) }) })) : null;
    return {
        datatipContent,
        datatipProps: {
            'aria-describedby': uniqueIdRef.current,
            onPointerEnter,
            onPointerLeave,
            onPointerMove,
            onFocus,
            onShowFocusDatatip
        }
    };
}

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook that handles row label datatip.
 */
const useGanttRowLabelDatatip = ({ targetRef, rowData, hoveredRowObj, focusedRowObj, currentRowLabelInteraction, rowAxisRegion }) => {
    const { direction } = useUser();
    const isRTL = direction === 'rtl';
    const config = {
        hover: {
            rowObj: hoveredRowObj,
            anchor: 'pointer'
        },
        focus: {
            rowObj: focusedRowObj,
            anchor: 'element'
        },
        none: {
            rowObj: undefined,
            anchor: 'pointer'
        }
    };
    const { anchor, rowObj: activeRowObj } = config[currentRowLabelInteraction];
    const content = activeRowObj ? rowData[activeRowObj.index].accessibleLabel : undefined;
    const elementBounds = activeRowObj && anchor === 'element'
        ? {
            x: 0,
            y: activeRowObj.y + rowAxisRegion.y,
            width: rowAxisRegion.w,
            height: activeRowObj.height
        }
        : undefined;
    return useDatatip({
        content,
        anchor,
        placement: 'top-start',
        offset: calculateOffset(isRTL, rowAxisRegion.w, elementBounds),
        targetFocusRef: targetRef
    });
};

/**
 * Hook that handles row labels pointer gestures.
 */
const useGanttRowLabelPointerGestures = ({ rowObjs, hoverProps }) => {
    const idExtracter = (event) => {
        const { clientX: x, clientY: y } = event;
        // Just for fun, an alternative to getInfo -> getElementData that Chart is doing.
        // TODO: think about whether this is more useful if we were to have a
        // Visualization shared "points to elements" system. At face value, this actually might be slightly less
        // efficient than the Chart method right now *in general*, because elementsFromPoint gives us ancestors
        // beyond the root. For our row labels purpose however, there's no "non-rowlabel" whitespace
        // so we'll definitely hit the element we want in like 2ish iterations so poor performance is not a concern.
        const elements = document.elementsFromPoint(x, y);
        for (let i = 0; i < elements.length; i++) {
            const dataRowIndex = elements[i].dataset['ojRowIndex'];
            if (dataRowIndex) {
                return rowObjs[Number(dataRowIndex)].id;
            }
        }
        return undefined;
    };
    const onPointerMove = (event) => {
        const id = idExtracter(event);
        if (id !== hoverProps.hoveredRowLabelId) {
            hoverProps.onRowLabelHoverChange({ id });
        }
    };
    return { onPointerMove };
};

function GanttRowAxis({ innerRef, scrollPosition, resolvedWidth, resolvedMaxWidth, currentRowLabel, currentRowLabelInteraction, hoveredRowLabelId, onRowLabelHoverChange, layoutObj: { labelPaddingInlineStart, labelPaddingInlineEnd, rowData, rowObjs, idRowObjMap, isHorizontalGridlinesVisible }, ariaActive, children }) {
    const width = resolvedWidth !== Infinity ? resolvedWidth : undefined;
    const maxWidth = resolvedMaxWidth !== Infinity ? resolvedMaxWidth : undefined;
    const availableWidth = Math.min(resolvedWidth, resolvedMaxWidth);
    const contextMaxWidth = availableWidth === Infinity
        ? -1
        : availableWidth - (labelPaddingInlineStart + labelPaddingInlineEnd);
    const gestureProps = useGanttRowLabelPointerGestures({
        rowObjs,
        hoverProps: { hoveredRowLabelId, onRowLabelHoverChange }
    });
    const { datatipContent, datatipProps } = useGanttRowLabelDatatip({
        rowData,
        hoveredRowObj: hoveredRowLabelId && idRowObjMap.get(hoveredRowLabelId),
        focusedRowObj: currentRowLabel?.isFocused ? idRowObjMap.get(currentRowLabel.id) : undefined,
        currentRowLabelInteraction,
        // TODO: Evaluate whether we should get real element bounds by measuring.
        // It's unfortunate that we need to measure JUST for keyboard datatip positioning...
        rowAxisRegion: {
            x: 0,
            y: -scrollPosition,
            w: (labelPaddingInlineStart + labelPaddingInlineEnd) * 2,
            h: -1
        },
        targetRef: innerRef
    });
    return (jsxs("div", { ref: innerRef, ...mergeProps(gestureProps, datatipProps), class: classNames([
            rowAxisStyles.base,
            isHorizontalGridlinesVisible && rowAxisStyles.withSeparatorTop
        ]), style: { width, maxWidth }, children: [jsx("div", { role: "grid", class: rowAxisStyles.contentContainer, style: { top: -scrollPosition }, children: rowObjs.map((rowObj) => {
                    return (jsx(GanttRowLabelContainer, { ariaActive: ariaActive, rowObj: rowObj, rowData: rowData, isRowSelected: rowObj.isSelected, isFocused: !!currentRowLabel?.isFocused && currentRowLabel.id === rowObj.id, isHorizontalGridlinesVisible: isHorizontalGridlinesVisible, children: children(getRenderContext$1(rowObj, rowData, contextMaxWidth)) }));
                }) }), datatipContent] }));
}

/**
 * Gets the new range given the initial, global, and range ratio to apply. This applies a linear scale.
 * @param rangeRatio The range ratio to scale by.
 * @param initialRange The initial range.
 * @param globalRange The global range.
 * @returns The new linearly scaled range.
 */
const getNewRange = (rangeRatio, initialRange, globalRange) => {
    const dRangeMin = initialRange.max - globalRange.max;
    const dRangeMax = initialRange.min - globalRange.min;
    const dRange = rangeRatio * (initialRange.max - initialRange.min);
    const dRangeClamped = Math.max(dRangeMin, Math.min(dRange, dRangeMax));
    return {
        // Ensure positive min;
        // For vertical scroll for example,
        // it's possible for globalRange to be smaller than initialRange
        // due to the component being taller than the height the data occupies
        // e.g. tall Gantt with 1 row
        min: Math.max(0, initialRange.min - dRangeClamped),
        max: initialRange.max - dRangeClamped
    };
};
/**
 * Performs a pan, by invoking the given onRangeChange callback with the new range.
 * @param rangeRatio The range ratio to scale by.
 * @param initialRange The initial range.
 * @param prevRange The previous range.
 * @param globalRange The global range.
 * @param onRangeChange The callback to invoke with the new range.
 * @returns The new range and whether the range actually changed.
 */
const pan = (rangeRatio, initialRange, prevRange, globalRange, onRangeChange) => {
    const newRange = getNewRange(rangeRatio, initialRange, globalRange);
    const { min: prevMin, max: prevMax } = prevRange;
    const isRangeChanged = newRange.min !== prevMin || newRange.max !== prevMax;
    isRangeChanged && onRangeChange(newRange);
    return { newRange, isRangeChanged };
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook that enables and handles drag pan gestures.
 */
const useDragPan = ({ captureTargetRef, width, height, getRangeX, getRangeY, globalRangeX, globalRangeY, onRangeXChange, onRangeYChange, onDragPanStart, onDragPanEnd, isDisabled = false }) => {
    const { direction } = useUser();
    const prevRangeX = useRef({ min: 0, max: 0 });
    const prevRangeY = useRef({ min: 0, max: 0 });
    const initialRangeX = useRef({ min: 0, max: 0 });
    const initialRangeY = useRef({ min: 0, max: 0 });
    const isPanning = useRef(false);
    const dragProps = useDrag({
        captureTargetRef,
        onDragStart: () => {
            initialRangeX.current = getRangeX();
            initialRangeY.current = getRangeY();
            onDragPanStart && onDragPanStart();
        },
        onDragMove: ({ dx, dy }) => {
            isPanning.current = true;
            const { newRange: newRangeX } = pan(((direction === 'rtl' ? -1 : 1) * dx) / width, initialRangeX.current, prevRangeX.current, globalRangeX, onRangeXChange);
            prevRangeX.current = newRangeX;
            const { newRange: newRangeY } = pan(dy / height, initialRangeY.current, prevRangeY.current, globalRangeY, onRangeYChange);
            prevRangeY.current = newRangeY;
        },
        onDragEnd: ({ originalEvent }) => {
            // If panning occurred, call preventDefault to prevent selection from occurring
            if (isPanning.current)
                originalEvent.preventDefault();
            isPanning.current = false;
            onDragPanEnd && onDragPanEnd();
        },
        isDisabled
    });
    return isDisabled ? {} : dragProps;
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook that enables and handles wheel pan gestures.
 */
const useWheelPan = ({ width, height, getRangeX, getRangeY, globalRangeX, globalRangeY, onRangeXChange, onRangeYChange, isDisabled = false }) => {
    const { direction } = useUser();
    const prevRangeX = useRef({ min: 0, max: 0 });
    const prevRangeY = useRef({ min: 0, max: 0 });
    const wheelProps = useWheel({
        onWheel: ({ deltaX: dx, deltaY: dy, ctrlKey }) => {
            // WheelEvent with ctrlKey means pinch/zoom gesture
            if (ctrlKey)
                return;
            const { newRange: newRangeX } = pan(((direction === 'rtl' ? -1 : 1) * dx) / width, getRangeX(), prevRangeX.current, globalRangeX, onRangeXChange);
            prevRangeX.current = newRangeX;
            const { newRange: newRangeY } = pan(dy / height, getRangeY(), prevRangeY.current, globalRangeY, onRangeYChange);
            prevRangeY.current = newRangeY;
        },
        isDisabled
    });
    return isDisabled ? {} : wheelProps;
};

/**
 * Hook that enables and handles pinch zoom gestures.
 */
const usePinchZoom = ({ captureTargetRef, width, startTime, endTime, viewportStartTime, viewportEndTime, majorAxisZoomOrder, majorAxisZoomOrderIndex, minorAxisZoomOrder, minorAxisZoomOrderIndex, zoomOrderViewDurationThresholds, minZoomViewportDuration, maxZoomViewportDuration, onViewportChange, isDisabled = false }) => {
    const { direction } = useUser();
    const isRTL = direction === 'rtl';
    const pinchProps = usePinch({
        captureTargetRef,
        onPinchZoomChange: ({ origin: { x }, delta }) => {
            const time = getPositionTime(x, viewportStartTime, viewportEndTime, width, isRTL);
            zoomTime(time, viewportStartTime, viewportEndTime, startTime, endTime, getGestureZoomFactor(delta), minZoomViewportDuration, maxZoomViewportDuration, zoomOrderViewDurationThresholds, minorAxisZoomOrder, minorAxisZoomOrderIndex, majorAxisZoomOrder, majorAxisZoomOrderIndex, onViewportChange);
        },
        isDisabled
    });
    return isDisabled ? {} : pinchProps;
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook that enables and handles wheen zoom gestures.
 */
const useWheelZoom = ({ width, startTime, endTime, viewportStartTime, viewportEndTime, majorAxisZoomOrder, majorAxisZoomOrderIndex, minorAxisZoomOrder, minorAxisZoomOrderIndex, zoomOrderViewDurationThresholds, minZoomViewportDuration, maxZoomViewportDuration, onViewportChange, isDisabled = false }) => {
    const { direction } = useUser();
    const isRTL = direction === 'rtl';
    const wheelProps = useWheel({
        onWheel: ({ x, deltaY, ctrlKey }) => {
            // WheelEvent with ctrlKey means pinch/zoom gesture
            if (!ctrlKey)
                return;
            const time = getPositionTime(x, viewportStartTime, viewportEndTime, width, isRTL);
            zoomTime(time, viewportStartTime, viewportEndTime, startTime, endTime, getGestureZoomFactor(deltaY), minZoomViewportDuration, maxZoomViewportDuration, zoomOrderViewDurationThresholds, minorAxisZoomOrder, minorAxisZoomOrderIndex, majorAxisZoomOrder, majorAxisZoomOrderIndex, onViewportChange);
        },
        isDisabled
    });
    return isDisabled ? {} : wheelProps;
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook that enables and handles keyboard zooming gestures.
 */
const useKbZoom = ({ startTime, endTime, viewportStartTime, viewportEndTime, majorAxisZoomOrder, majorAxisZoomOrderIndex, minorAxisZoomOrder, minorAxisZoomOrderIndex, zoomOrderViewDurationThresholds, minZoomViewportDuration, maxZoomViewportDuration, onViewportChange, isDisabled = false }) => {
    const onKbZoomIn = (e) => {
        const viewportCenter = viewportStartTime + (viewportEndTime - viewportStartTime) / 2;
        zoomTime(viewportCenter, viewportStartTime, viewportEndTime, startTime, endTime, e.detail.zoomFactor, minZoomViewportDuration, maxZoomViewportDuration, zoomOrderViewDurationThresholds, minorAxisZoomOrder, minorAxisZoomOrderIndex, majorAxisZoomOrder, majorAxisZoomOrderIndex, onViewportChange);
    };
    const onKbZoomOut = (e) => {
        const viewportCenter = viewportStartTime + (viewportEndTime - viewportStartTime) / 2;
        zoomTime(viewportCenter, viewportStartTime, viewportEndTime, startTime, endTime, e.detail.zoomFactor, minZoomViewportDuration, maxZoomViewportDuration, zoomOrderViewDurationThresholds, minorAxisZoomOrder, minorAxisZoomOrderIndex, majorAxisZoomOrder, majorAxisZoomOrderIndex, onViewportChange);
    };
    return isDisabled
        ? {}
        : {
            onKbZoomIn,
            onKbZoomOut
        };
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook that enables and handles keyboard panning gesture.
 */
const useKbPan = ({ getRangeX, getRangeY, globalRangeX, globalRangeY, onRangeXChange, onRangeYChange, isDisabled = false }) => {
    const prevRangeX = useRef({ min: 0, max: 0 });
    const prevRangeY = useRef({ min: 0, max: 0 });
    const onKbPanHorizontal = (e) => {
        const { detail: { rangeRatio } } = e;
        const { newRange: newRangeX } = pan(rangeRatio, getRangeX(), prevRangeX.current, globalRangeX, onRangeXChange);
        prevRangeX.current = newRangeX;
    };
    const onKbPanVertical = (e) => {
        const { detail: { rangeRatio } } = e;
        const { newRange: newRangeY } = pan(rangeRatio, getRangeY(), prevRangeY.current, globalRangeY, onRangeYChange);
        prevRangeY.current = newRangeY;
    };
    return isDisabled
        ? {}
        : {
            onKbPanHorizontal,
            onKbPanVertical
        };
};

/**
 * Gets the default task to initially receive logical focus upon component focus.
 * @param param0 The (unresolved) row data layout.
 * @returns The task (if there are any) to receive focus.
 */
const getDefaultInitialFocusTask = ({ rowObjs }) => {
    // Default to the first task of the first row (if it exists)
    if (rowObjs.length === 0)
        return;
    if (rowObjs[0].taskObjs.length === 0)
        return;
    return { id: rowObjs[0].taskObjs[0].id, isFocused: true };
};
/**
 * Gets next or previous navigable task from the current task.
 * @param currentTask The current task.
 * @param param1 The (unresolved) row data layout.
 * @param direction 'next' or 'prev'
 * @returns The adjacent navigable task according to the given direction.
 */
const getAdjacentTaskNavigable = (currentTask, { rowObjs, idTaskObjMap }, direction) => {
    const currentTaskObj = idTaskObjMap.get(currentTask);
    if (!currentTaskObj)
        return;
    const indexOffset = direction === 'next' ? 1 : -1;
    const { rowIndex, renderIndex: index } = currentTaskObj;
    // Return adjacent task in the row if it exists
    const adjTaskObj = rowObjs[rowIndex].taskObjs[index + indexOffset];
    if (adjTaskObj)
        return adjTaskObj.id;
    // Return a task in adjacent row if it exists
    // For 'next' direction, this is the first task of the next row
    // For 'prev' direction, this is the last task of the previous row
    const adjRowObj = rowObjs[rowIndex + indexOffset];
    if (adjRowObj) {
        const adjTaskObj = direction === 'next'
            ? adjRowObj.taskObjs[0]
            : adjRowObj.taskObjs[adjRowObj.taskObjs.length - 1];
        if (adjTaskObj)
            return adjTaskObj.id;
    }
    return;
};
/**
 * Gets above or below navigable task from the current task.
 * @param currentTask The current task.
 * @param param1 The (unresolved) row data layout.
 * @param direction 'up' or 'down'
 * @returns The adjacent navigable task according to the given direction.
 */
const getVerticalTaskNavigable = (currentTask, { rowObjs, idTaskObjMap }, direction) => {
    const currentTaskObj = idTaskObjMap.get(currentTask);
    if (!currentTaskObj)
        return;
    const rowIndexOffset = direction === 'down' ? 1 : -1;
    const { rowIndex } = currentTaskObj;
    // Return first task in the adjacent row if it exists
    const adjRowObj = rowObjs[rowIndex + rowIndexOffset];
    if (!adjRowObj)
        return;
    const adjTaskObj = adjRowObj.taskObjs[0];
    if (adjTaskObj)
        return adjTaskObj.id;
    return;
};
/**
 * Gets the next navigable task from the current task.
 * @param currentTask The current task.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The next navigable task.
 */
const getNextTaskNavigable = (currentTask, rowDataLayout) => getAdjacentTaskNavigable(currentTask, rowDataLayout, 'next');
/**
 * Gets the previous navigable task from the current task.
 * @param currentTask The current task.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The previous navigable task.
 */
const getPrevTaskNavigable = (currentTask, rowDataLayout) => getAdjacentTaskNavigable(currentTask, rowDataLayout, 'prev');
/**
 * Gets the navigable task above the current task.
 * @param currentTask The current task.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The navigable task above.
 */
const getAboveTaskNavigable = (currentTask, rowDataLayout) => getVerticalTaskNavigable(currentTask, rowDataLayout, 'up');
/**
 * Gets the navigable task below the current task.
 * @param currentTask The current task.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The navigable task below.
 */
const getBelowTaskNavigable = (currentTask, rowDataLayout) => getVerticalTaskNavigable(currentTask, rowDataLayout, 'down');
/**
 * Gets above or below navigable row label from the current row label.
 * @param currentRowLabel The current row label.
 * @param param1 The (unresolved) row data layout.
 * @param direction 'up' or 'down'
 * @returns The adjacent navigable row label according to the given direction.
 */
const getAdjacentRowLabelNavigable = (currentRowLabel, { rowObjs, idRowObjMap }, direction) => {
    const currentRowObj = idRowObjMap.get(currentRowLabel);
    if (!currentRowObj)
        return;
    const rowIndexOffset = direction === 'down' ? 1 : -1;
    const { index: rowIndex } = currentRowObj;
    const adjRowObj = rowObjs[rowIndex + rowIndexOffset];
    if (!adjRowObj)
        return;
    return adjRowObj.id;
};
/**
 * Gets the navigable row label above the current row label.
 * @param currentRowLabel The current row label.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The navigable row label above.
 */
const getAboveRowLabelNavigable = (currentRowLabel, rowDataLayout) => getAdjacentRowLabelNavigable(currentRowLabel, rowDataLayout, 'up');
/**
 * Gets the navigable row label below the current row label.
 * @param currentRowLabel The current row label.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The navigable row label below.
 */
const getBelowRowLabelNavigable = (currentRowLabel, rowDataLayout) => getAdjacentRowLabelNavigable(currentRowLabel, rowDataLayout, 'down');
/**
 * Gets the row label navigable from the current task.
 * @param currentTask The current task.
 * @param rowDataLayout The (unresolved) row data layout.
 * @returns The row label navigable from the current task.
 */
const getRowLabelNavigableFromTask = (currentTask, rowDataLayout) => {
    // taskObj should not be undefined because you must start from
    // a focused task to get to a rowlabel.
    const taskObj = rowDataLayout.idTaskObjMap.get(currentTask);
    const { rowIndex } = taskObj;
    const rowObj = rowDataLayout.rowObjs[rowIndex];
    return rowObj.id;
};
/**
 * Gets the task navigable from the current row label.
 * @param currentRowLabel The current row label.
 * @param rowDataLayout The (unresolved) row data layout.
 * @param currentTask If any, the last current task (e.g. the last focused task).
 * @returns The task navigable from the current row label.
 */
const getTaskNavigableFromRowLabel = (currentRowLabel, rowDataLayout, currentTask) => {
    if (currentTask !== undefined) {
        const taskObj = rowDataLayout.idTaskObjMap.get(currentTask);
        if (taskObj) {
            const { rowIndex } = taskObj;
            const rowObj = rowDataLayout.rowObjs[rowIndex];
            if (rowObj.id === currentRowLabel) {
                return currentTask;
            }
        }
    }
    const rowObj = rowDataLayout.idRowObjMap.get(currentRowLabel);
    const firstTaskObj = rowObj?.taskObjs[0];
    if (firstTaskObj) {
        return firstTaskObj.id;
    }
    const defaultTask = getDefaultInitialFocusTask(rowDataLayout);
    return defaultTask?.id;
};
/**
 * Gets the dx and dy necessary to pan the given region into view.
 * @param region The target region to pan into view.
 * @param viewportRegion The viewport region.
 * @param isRTL Whether the reading direction is rtl.
 * @param xPriority The side in the x direction to prioritize scroll into view.
 * @param yPriority The side in the y direction to prioritize scroll into view.
 * @param overShoot The extra amount of space to pan by.
 * @returns The dx and dy values.
 */
const getPanIntoViewValues = (region, viewportRegion, isRTL, xPriority = 'auto', yPriority = 'auto', overShoot = 0) => {
    const deltaXLeftVisible = Math.min(region.x - viewportRegion.x - overShoot, 0);
    const deltaXRightVisible = Math.max(0, region.x + region.w - (viewportRegion.x + viewportRegion.w) + overShoot);
    const deltaXStartVisible = isRTL ? deltaXRightVisible : deltaXLeftVisible;
    const deltaXEndVisible = isRTL ? deltaXLeftVisible : deltaXRightVisible;
    let deltaX = 0;
    switch (xPriority) {
        case 'start':
            deltaX = deltaXStartVisible;
            break;
        case 'end':
            deltaX = deltaXEndVisible;
            break;
        case 'auto':
            deltaX = (!isRTL ? deltaXEndVisible > 0 : deltaXEndVisible < 0)
                ? deltaXEndVisible
                : deltaXStartVisible; // 'end' wins if just 'end', or both sides, require panning. 'start' otherwise.
            break;
        default: {
            const _exhaustiveCheck = xPriority;
            return _exhaustiveCheck;
        }
    }
    const deltaYTopVisible = Math.min(region.y - viewportRegion.y - overShoot, 0);
    const deltaYBottomVisible = Math.max(0, region.y + region.h - (viewportRegion.y + viewportRegion.h) + overShoot);
    let deltaY = 0;
    switch (yPriority) {
        case 'top':
            deltaY = deltaYTopVisible;
            break;
        case 'bottom':
            deltaY = deltaYBottomVisible;
            break;
        case 'auto':
            deltaY = deltaYTopVisible < 0 ? deltaYTopVisible : deltaYBottomVisible; // 'top' wins if just 'top', or both sides, require panning. 'bottom' otherwise.
            break;
        default: {
            const _exhaustiveCheck = yPriority;
            return _exhaustiveCheck;
        }
    }
    return { dx: -deltaX, dy: -deltaY };
};

/**
 * Hook that handles keyboard panning related gestures on a Gantt.
 */
const useGanttKbPan = ({ viewportLayout, dataBodyWidth, dataBodyHeight, viewportStartTime, viewportEndTime, scrollPosition, ...panOptions }) => {
    const { direction } = useUser();
    const isRTL = direction === 'rtl';
    const kbPanProps = useKbPan(panOptions);
    const prevRangeX = useRef({ min: 0, max: 0 });
    const prevRangeY = useRef({ min: 0, max: 0 });
    const panBy = (dx = 0, dy = 0) => {
        if (dx !== 0) {
            const { newRange: newRangeX } = pan(dx / dataBodyWidth, panOptions.getRangeX(), prevRangeX.current, panOptions.globalRangeX, panOptions.onRangeXChange);
            prevRangeX.current = newRangeX;
        }
        if (dy !== 0) {
            const { newRange: newRangeY } = pan(dy / dataBodyHeight, panOptions.getRangeY(), prevRangeY.current, panOptions.globalRangeY, panOptions.onRangeYChange);
            prevRangeY.current = newRangeY;
        }
    };
    const onKbPanTaskIntoView = (e) => {
        let taskObj = viewportLayout.idTaskObjMap.get(e.detail.id);
        if (!taskObj) {
            // task may be outside viewport
            const unresolvedTaskObj = viewportLayout.allIdTaskObjMap.get(e.detail.id);
            if (!unresolvedTaskObj)
                return;
            taskObj = getResolvedTaskObj(unresolvedTaskObj, viewportStartTime, viewportEndTime, dataBodyWidth, scrollPosition, isRTL);
        }
        const { x, y, width: w, height: h } = taskObj;
        const region = { x, y, w, h };
        const viewportRegion = { x: 0, y: 0, w: dataBodyWidth, h: dataBodyHeight };
        const overShoot = viewportLayout.rowPadding;
        const { dx, dy } = getPanIntoViewValues(region, viewportRegion, isRTL, 'auto', 'auto', overShoot);
        panBy(dx, dy);
    };
    const onKbPanRowIntoView = (e) => {
        const rowObj = viewportLayout.allIdRowObjMap.get(e.detail.id);
        if (!rowObj)
            return;
        const region = { x: 0, y: rowObj.y - scrollPosition, w: dataBodyWidth, h: rowObj.height };
        const viewportRegion = { x: 0, y: 0, w: dataBodyWidth, h: dataBodyHeight };
        const overShoot = viewportLayout.rowPadding;
        const { dy } = getPanIntoViewValues(region, viewportRegion, isRTL, 'auto', 'auto', overShoot);
        panBy(0, dy);
    };
    return panOptions.isDisabled
        ? {}
        : {
            ...kbPanProps,
            onKbPanTaskIntoView,
            onKbPanRowIntoView
        };
};

/**
 * Hook that handles pan/zoom related gestures on a Gantt.
 */
const useGanttPanZoomGestures = ({ captureTargetRef, width, height, viewportStartTime, viewportEndTime, majorAxisScale, minorAxisScale, startTime, endTime, zoomParameters, scrollPosition, dataBodyHeight, totalRowsHeight, viewportLayout, onViewportChange, onScrollPositionChange, onCursorChange, isPanDisabled, isZoomDisabled }) => {
    const panOptions = {
        captureTargetRef,
        width,
        height,
        getRangeX: () => ({ min: viewportStartTime, max: viewportEndTime }),
        getRangeY: () => ({ min: scrollPosition, max: scrollPosition + dataBodyHeight }),
        globalRangeX: { min: startTime, max: endTime },
        globalRangeY: { min: 0, max: totalRowsHeight },
        onRangeXChange: (newRange) => {
            onViewportChange?.({
                viewportStart: getISOString(newRange.min),
                viewportEnd: getISOString(newRange.max),
                majorAxisScale,
                minorAxisScale
            });
        },
        onRangeYChange: (newRange) => {
            onScrollPositionChange?.({
                y: newRange.min
            });
        },
        isDisabled: isPanDisabled
    };
    const { getZoomOrderViewDurationThresholds, ...restZoomParameters } = zoomParameters;
    const zoomOrderViewDurationThresholds = getZoomOrderViewDurationThresholds(width);
    const zoomOptions = {
        captureTargetRef,
        width,
        ...restZoomParameters,
        zoomOrderViewDurationThresholds,
        onViewportChange,
        isDisabled: isZoomDisabled
    };
    const dragPanProps = useDragPan({
        ...panOptions,
        onDragPanStart: () => onCursorChange?.({ cursor: 'grabbing' }),
        onDragPanEnd: () => onCursorChange?.({ cursor: 'grabbingUnset' })
    });
    const wheelPanProps = useWheelPan(panOptions);
    const kbPanProps = useGanttKbPan({
        ...panOptions,
        viewportLayout,
        dataBodyWidth: width,
        dataBodyHeight,
        viewportStartTime,
        viewportEndTime,
        scrollPosition
    });
    const pinchZoomProps = usePinchZoom(zoomOptions);
    const wheelZoomProps = useWheelZoom(zoomOptions);
    const kbZoomProps = useKbZoom(zoomOptions);
    const gestureProps = mergeProps(dragPanProps, wheelPanProps, kbPanProps, pinchZoomProps, wheelZoomProps, kbZoomProps);
    return { gestureProps };
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook that handles task pointer gestures.
 */
const useGanttTaskPointerGestures = ({ viewportLayout, viewportYOffset, dataBodyRegion, viewportStartTime, viewportEndTime, width, isRTL, selectionProps, hoverProps, currentProps, onCursorChange }) => {
    const { x: dbx, y: dby, w: dbw, h: dbh } = dataBodyRegion;
    const selectionSupported = supportsSelection(selectionProps.selectionMode);
    const idExtracter = (event) => {
        const rowObjs = viewportLayout.allRowObjs;
        const spatialIndex = viewportLayout.spatialIndex;
        const { offsetX: x, offsetY: y } = event;
        const inDataBody = !(x < dbx || x > dbx + dbw || y < dby || y > dby + dbh);
        if (!inDataBody)
            return;
        const timePoint = {
            time: getPositionTime(x, viewportStartTime, viewportEndTime, width, isRTL),
            y: y + viewportYOffset
        };
        const targetIndices = queryTasksSpatialIndex(rowObjs, spatialIndex.tasks, timePoint);
        if (!targetIndices)
            return;
        const { rowIndex, taskIndex } = targetIndices;
        return rowObjs[rowIndex].taskObjs[taskIndex].id;
    };
    const onPointerMove = (event) => {
        const id = idExtracter(event);
        if (id !== hoverProps.hoveredTaskId) {
            hoverProps.onTaskHoverChange({ id });
        }
        selectionSupported &&
            onCursorChange?.({ cursor: id !== undefined ? 'pointer' : 'pointerUnset' });
    };
    const onPointerUp = (event) => {
        const id = idExtracter(event);
        if (id !== undefined) {
            selectionSupported && onCursorChange?.({ cursor: 'pointer' });
            if (id !== currentProps?.currentTask?.id) {
                currentProps.onCurrentTaskChange({ id, isFocused: false });
            }
        }
    };
    const hoverPointerGestureProps = { onPointerMove };
    const focusPointerGestureProps = { onPointerUp };
    const { selectionProps: { onKeyUp, ...selectionPointerGestureProps }, selectionContent } = useSelection({
        idExtracter,
        selection: selectionProps.selectedIds,
        selectionMode: selectionProps.selectionMode,
        onChange: selectionProps.onSelectionChange,
        getDataById: viewportLayout.getTaskDataById
    });
    const gestureProps = mergeProps(hoverPointerGestureProps, focusPointerGestureProps, selectionPointerGestureProps);
    return { gestureProps, selectionContent };
};

/**
 * Gets the default datatip renderer.
 * @param options Relevant information.
 * @returns The default datatip renderer.
 */
const getDefaultDatatipRenderer = (options) => {
    const { translations, dateFormatter } = options;
    const defaultDatatipRenderer = ({ data, rowData }) => {
        if (data.accessibleLabel !== undefined) {
            return { content: data.accessibleLabel };
        }
        const { start, end } = getNormalizedStartEnd(data);
        const isMilestone = start === end;
        const tableData = [];
        if (rowData.label) {
            tableData.push({ key: translations.gantt_labelRow(), value: rowData.label });
        }
        if (!isMilestone) {
            tableData.push({ key: translations.gantt_labelStart(), value: dateFormatter(start) });
            tableData.push({ key: translations.gantt_labelEnd(), value: dateFormatter(end) });
        }
        else {
            tableData.push({ key: translations.gantt_labelDate(), value: dateFormatter(start) });
        }
        if (data.label) {
            tableData.push({ key: translations.gantt_labelLabel(), value: data.label });
        }
        const content = jsx(VisTabularDatatip, { tableData: tableData });
        return { content };
    };
    return defaultDatatipRenderer;
};
/**
 * Gets the datatip renderer context.
 * @param rows The rows data.
 * @param layoutObj The task layout object.
 * @returns
 */
const getRenderContext = (rows, layoutObj) => {
    const { index, rowIndex } = layoutObj;
    return {
        data: rows[rowIndex].tasks[index],
        rowData: rows[rowIndex]
    };
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook that handles task datatip.
 */
const useGanttTaskDatatip = ({ targetRef, datatip, rowData, dateFormatter, hoveredTaskObj, focusedTaskObj, currentTaskInteraction, dataBodyRegion }) => {
    const { direction } = useUser();
    const isRTL = direction === 'rtl';
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const config = {
        hover: {
            taskObj: hoveredTaskObj,
            anchor: 'pointer'
        },
        focus: {
            taskObj: focusedTaskObj,
            anchor: 'element'
        },
        none: {
            taskObj: undefined,
            anchor: 'pointer'
        }
    };
    const { anchor, taskObj: activeTaskObj } = config[currentTaskInteraction];
    const datatipRenderer = datatip ??
        getDefaultDatatipRenderer({
            translations,
            dateFormatter,
            isRTL
        });
    const { content, borderColor } = activeTaskObj
        ? datatipRenderer(getRenderContext(rowData, activeTaskObj))
        : { content: undefined, borderColor: undefined };
    const elementBounds = activeTaskObj && anchor === 'element'
        ? {
            x: activeTaskObj.x,
            y: activeTaskObj.y + dataBodyRegion.y,
            width: activeTaskObj.width,
            height: activeTaskObj.height
        }
        : undefined;
    return useDatatip({
        content,
        anchor,
        placement: 'top-start',
        offset: calculateOffset(isRTL, dataBodyRegion.w, elementBounds),
        borderColor,
        targetFocusRef: targetRef
    });
};

function GanttTimeAxisDataBody({ innerRef, isRTL, scrollPosition, onScrollPositionChange, isViewportDefined, onViewportChange, zoomParameters, zooming, selectedIds, selectionMode, onSelectionChange, hoveredTaskId, onTaskHoverChange, currentTask, onCurrentTaskChange, currentTaskInteraction, ariaActive, getTimeAxesLayout, getResolvedViewportLayout, rowDataLayout, rowAxisSeparator, datatip, majorAxis, minorAxis, dataBody }) {
    if (!isViewportDefined) {
        return (jsx(TrackResizeContainer, { width: "100%", height: "100%", children: (width) => {
                const timeAxesLayout = getTimeAxesLayout(width);
                const { majorAxis: majorAxisLayout, minorAxis: minorAxisLayout, viewportStartTime, viewportEndTime } = timeAxesLayout;
                const majorAxisScale = majorAxisLayout && majorAxisLayout.zoomOrder[majorAxisLayout.zoomOrderIndex];
                const minorAxisScale = minorAxisLayout.zoomOrder[minorAxisLayout.zoomOrderIndex];
                onViewportChange?.({
                    viewportStart: getISOString(viewportStartTime),
                    viewportEnd: getISOString(viewportEndTime),
                    majorAxisScale,
                    minorAxisScale
                });
                return null;
            } }));
    }
    return (jsx(TrackResizeContainer, { width: "100%", height: "100%", children: function _(width, height) {
            const timeAxesLayout = getTimeAxesLayout(width);
            const { position, majorAxis: majorAxisLayout, minorAxis: minorAxisLayout, viewportStartTime, viewportEndTime, startTime, endTime } = timeAxesLayout;
            const majorAxisScale = majorAxisLayout && majorAxisLayout.zoomOrder[majorAxisLayout.zoomOrderIndex];
            const minorAxisScale = minorAxisLayout.zoomOrder[minorAxisLayout.zoomOrderIndex];
            const majorAxisHeight = majorAxisLayout ? majorAxisLayout.height : 0;
            const { height: minorAxisHeight } = minorAxisLayout;
            const dataBodyHeight = height - (majorAxisHeight + minorAxisHeight);
            const viewportLayout = getResolvedViewportLayout(rowDataLayout, viewportStartTime, viewportEndTime, scrollPosition, width, dataBodyHeight, isRTL);
            const effectsLayout = getEffectTaskObjs({
                selectionProps: { selectedIds, selectionMode },
                hoverProps: { hoveredTaskId },
                currentProps: { currentTask }
            }, viewportLayout.idTaskObjMap);
            const defaultDateFormatter = getDefaultDateFormatter(minorAxisScale, viewportStartTime);
            const majorAxisComp = majorAxisLayout && majorAxis(majorAxisLayout);
            const minorAxisComp = minorAxis(minorAxisLayout);
            const dataBodyComp = dataBody({
                width,
                height: dataBodyHeight,
                viewportLayout,
                minorAxisLayout,
                effectsLayout,
                dateFormatter: defaultDateFormatter,
                ariaActiveTask: ariaActive
            });
            const layout = {
                top: {
                    components: [majorAxisComp, minorAxisComp, dataBodyComp],
                    dataBodyPos: height - dataBodyHeight
                },
                bottom: {
                    components: [dataBodyComp, minorAxisComp, majorAxisComp],
                    dataBodyPos: 0
                }
            };
            // Temporary; this will be a Gantt prop when we add marquee selection support
            const dragMode = 'pan';
            // TODO: think about a better cursor management system
            const [cursor, setCursor] = useState();
            const onCursorChange = (detail) => setCursor((prevCursor) => {
                if (prevCursor === undefined)
                    return detail.cursor;
                if (prevCursor === 'grabbing' && detail.cursor !== 'grabbingUnset')
                    return 'grabbing';
                if (detail.cursor === 'grabbingUnset' || detail.cursor === 'pointerUnset')
                    return undefined;
                return detail.cursor;
            });
            const { gestureProps: panZoomGestureProps } = useGanttPanZoomGestures({
                captureTargetRef: innerRef,
                width,
                height,
                viewportStartTime,
                viewportEndTime,
                majorAxisScale,
                minorAxisScale,
                startTime,
                endTime,
                zoomParameters: zoomParameters,
                scrollPosition,
                dataBodyHeight,
                totalRowsHeight: rowDataLayout.totalRowsHeight,
                viewportLayout,
                onViewportChange: (args) => {
                    if (onViewportChange) {
                        onViewportChange(args);
                        // TODO: Evaluate whether it's okay to clear hover behavior on pan and zoom
                        onTaskHoverChange({ id: undefined });
                    }
                },
                onScrollPositionChange: (args) => {
                    if (onScrollPositionChange) {
                        onScrollPositionChange(args);
                        // TODO: Evaluate whether it's okay to clear hover behavior on pan
                        onTaskHoverChange({ id: undefined });
                    }
                },
                onCursorChange,
                isPanDisabled: dragMode !== 'pan',
                isZoomDisabled: zooming === 'off'
            });
            const dataBodyRegion = {
                x: 0,
                y: layout[position].dataBodyPos,
                w: width,
                h: dataBodyHeight
            };
            const { gestureProps: taskGestureProps, selectionContent } = useGanttTaskPointerGestures({
                viewportLayout,
                viewportYOffset: scrollPosition - layout[position].dataBodyPos,
                dataBodyRegion,
                viewportStartTime,
                viewportEndTime,
                width,
                isRTL,
                selectionProps: { selectedIds, selectionMode, onSelectionChange },
                hoverProps: { hoveredTaskId, onTaskHoverChange },
                currentProps: { currentTask, onCurrentTaskChange },
                onCursorChange
            });
            const { datatipContent, datatipProps } = useGanttTaskDatatip({
                datatip,
                rowData: viewportLayout.rowData,
                dateFormatter: defaultDateFormatter,
                hoveredTaskObj: hoveredTaskId && viewportLayout.idTaskObjMap.get(hoveredTaskId),
                focusedTaskObj: effectsLayout.focusedTaskObj,
                currentTaskInteraction,
                dataBodyRegion,
                targetRef: innerRef
            });
            const gestureProps = mergeProps(panZoomGestureProps, taskGestureProps, datatipProps);
            return (jsxs("div", { ref: innerRef, ...gestureProps, class: classNames([
                    timeAxisDataBodyStyles.base,
                    timeAxisDataBodyStyles.pannable,
                    isRTL
                        ? rowAxisSeparator && timeAxisDataBodyStyles.withRowAxisSeparatorRight
                        : rowAxisSeparator && timeAxisDataBodyStyles.withRowAxisSeparatorLeft
                ]), style: { cursor }, children: [layout[position].components, datatipContent, selectionContent] }));
        } }));
}

function GanttHorizontalGridlinesLayer({ width, height, positions }) {
    const cmd = positions.map((p) => `M0,${p} H${width}`).join(' ');
    return (jsx("svg", { width: width, height: height, children: jsx("path", { class: horizontalGridlinesStyles.base, d: cmd }) }));
}

function GanttDesktopTaskAccContent({ width, height, rowData, dateFormatter, ariaActiveId, ariaActiveTaskObj }) {
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const idIndex = useRef(0);
    const ids = useMemo(() => {
        const ids = idIndex.current === 0 ? [ariaActiveId, getRandomId()] : [getRandomId(), ariaActiveId];
        idIndex.current = Math.abs(idIndex.current - 1);
        return ids;
    }, [ariaActiveId]);
    const ariaLabel = ariaActiveTaskObj && getTaskAriaLabel(ariaActiveTaskObj, rowData, dateFormatter, translations);
    return (jsxs("div", { style: { width, height }, children: [jsx("div", { role: "img", id: ids[0], "aria-label": ariaLabel }), jsx("div", { role: "img", id: ids[1], "aria-label": ariaLabel })] }));
}

function GanttMobileTaskAccContent({ width, height, rowData, dateFormatter, layoutObjs }) {
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const content = [];
    layoutObjs.forEach((rowObj) => {
        rowObj.taskObjs.forEach((taskObj) => {
            const ariaLabel = getTaskAriaLabel(taskObj, rowData, dateFormatter, translations);
            content.push(jsx("div", { role: "img", "aria-label": ariaLabel, class: taskMobileAccStyles.content, style: {
                    width: taskObj.width,
                    height: taskObj.height,
                    top: taskObj.y,
                    left: taskObj.x
                } }));
        });
    });
    return (jsx("div", { class: taskMobileAccStyles.base, style: { width, height }, children: content }));
}

function GanttTaskAccLayer({ width, height, rowData, dateFormatter, ariaActiveId, ariaActiveTaskObj, layoutObjs }) {
    return supportsMobileScreenReader ? (jsx(GanttMobileTaskAccContent, { width: width, height: height, layoutObjs: layoutObjs, rowData: rowData, dateFormatter: dateFormatter })) : (jsx(GanttDesktopTaskAccContent, { width: width, height: height, rowData: rowData, dateFormatter: dateFormatter, ariaActiveId: ariaActiveId, ariaActiveTaskObj: ariaActiveTaskObj }));
}

function GanttRowBackgroundsLayer({ width, height, layoutObjs }) {
    const selectedRowObjs = layoutObjs.filter((rowObj) => rowObj.isSelected);
    const selectedRowsCmd = selectedRowObjs
        .map(({ y, height }) => {
        // Reduce left and right edge by 1px to ensure the rendering doesn't
        // interfere with the row axis separator
        return `M1,${y} H${width - 1} V${y + height} H${1} Z`;
    })
        .join(' ');
    return selectedRowObjs.length > 0 ? (jsx("svg", { width: width, height: height, children: jsx("path", { class: rowBackgroundStyles.selected, d: selectedRowsCmd }) })) : null;
}

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Draws a given task effect onto a given Canvas.
 * @param ctx The Canvas's 2D context.
 * @param effectLayout The task effect layout object.
 */
const drawTaskEffectRing = (ctx, effectLayout) => {
    const { x, y, width, height, borderRadius, stroke, strokeWidth, padding } = effectLayout;
    const ringX = x - padding;
    const ringY = y - padding;
    const ringWidth = width + 2 * padding;
    const ringHeight = height + 2 * padding;
    const effectRingCmd = rectangleWithBorderRadius(ringX, ringY, ringWidth, ringHeight, borderRadius, Math.min(ringWidth, ringHeight), '0');
    const effectRingPath = new Path2D(effectRingCmd);
    ctx.strokeStyle = stroke;
    ctx.lineWidth = strokeWidth;
    ctx.stroke(effectRingPath);
};
/**
 * Draws a given task effect shadow onto a given Canvas.
 * @param ctx The Canvas's 2D context.
 * @param shadow The shadow definition.
 */
const drawTaskEffectShadow = (ctx, shadow) => {
    ctx.shadowColor = shadow.shadowColor;
    ctx.shadowOffsetX = shadow.shadowOffsetX;
    ctx.shadowOffsetY = shadow.shadowOffsetY;
    ctx.shadowBlur = shadow.shadowBlur;
};
/**
 * Resets any shadow settings in the Canvas's context.
 * @param ctx The Canvas's 2D context.
 */
const resetShadow = (ctx) => {
    ctx.shadowColor = 'transparent';
    ctx.shadowOffsetX = 0;
    ctx.shadowOffsetY = 0;
    ctx.shadowBlur = 0;
};
/**
 * Draws a given task onto a given Canvas.
 * @param ctx The Canvas's 2D context.
 * @param taskLayoutObj The task layout object.
 * @param state The task's state.
 */
const drawTask = (ctx, taskLayoutObj, state) => {
    const drawShadow = state === 'hovered';
    const { x, y, width, height, borderRadius, fill, stroke, strokeWidth } = taskLayoutObj;
    const roundRectCmd = rectangleWithBorderRadius(x, y, width, height, borderRadius, Math.min(width, height), '0');
    const roundRectPath = new Path2D(roundRectCmd);
    // Draw white task backdrop
    if (drawShadow)
        drawTaskEffectShadow(ctx, taskLayoutObj.hoverEffect.shadow);
    ctx.fillStyle = '#ffffff';
    ctx.fill(roundRectPath);
    if (drawShadow)
        resetShadow(ctx);
    // Draw task
    ctx.strokeStyle = stroke;
    ctx.fillStyle = fill;
    ctx.lineWidth = strokeWidth;
    ctx.fill(roundRectPath);
    ctx.stroke(roundRectPath);
    switch (state) {
        case 'selected': {
            drawTaskEffectRing(ctx, {
                x,
                y,
                width,
                height,
                borderRadius,
                ...taskLayoutObj.selectionEffect
            });
            break;
        }
        case 'hovered': {
            drawTaskEffectRing(ctx, { x, y, width, height, borderRadius, ...taskLayoutObj.hoverEffect });
            break;
        }
        case 'focused': {
            drawTaskEffectRing(ctx, { x, y, width, height, borderRadius, ...taskLayoutObj.focusEffect });
            break;
        }
        case undefined: {
            // No effect
            break;
        }
        default: {
            const _exhaustiveCheck = state;
            return _exhaustiveCheck;
        }
    }
};

function GanttTaskFocusEffectsLayer({ width, height, layoutObj: taskObj }) {
    const draw = (ctx) => {
        taskObj && drawTask(ctx, taskObj, 'focused');
    };
    return jsx(TimeComponentCanvas2D, { width: width, height: height, draw: draw });
}

function GanttTaskHoverEffectsLayer({ width, height, layoutObj: taskObj }) {
    const draw = (ctx) => {
        taskObj && drawTask(ctx, taskObj, 'hovered');
    };
    return jsx(TimeComponentCanvas2D, { width: width, height: height, draw: draw });
}

function GanttTaskSelectionEffectsLayer({ width, height, layoutObjs }) {
    const draw = (ctx) => {
        layoutObjs.forEach((taskObj) => drawTask(ctx, taskObj, 'selected'));
    };
    return jsx(TimeComponentCanvas2D, { width: width, height: height, draw: draw });
}

function GanttTaskEffectsLayer({ width, height, layoutObjs: { selectedTaskObjs, hoveredTaskObj, focusedTaskObj } }) {
    return (jsxs(TimeComponentLayersStack, { width: `${width}px`, height: `${height}px`, children: [jsx(GanttTaskFocusEffectsLayer, { width: width, height: height, layoutObj: focusedTaskObj }), jsx(GanttTaskSelectionEffectsLayer, { width: width, height: height, layoutObjs: selectedTaskObjs }), jsx(GanttTaskHoverEffectsLayer, { width: width, height: height, layoutObj: hoveredTaskObj })] }));
}

function GanttTaskLabel({ x, y, width, height, label, isInner, textAlign, labelStyle }) {
    return (jsx("div", { "aria-hidden": "true", class: classNames([taskLabelLayerStyles.label, isInner && taskLabelLayerStyles.innerLabel]), style: {
            left: x,
            top: y,
            width,
            height,
            textAlign,
            ...labelStyle
        }, children: jsx(Text, { variant: labelStyle?.color ? 'inherit' : 'primary', truncation: "ellipsis", size: "md", weight: "inherit", children: label }) }));
}

function GanttTaskLabelsLayer({ width, height, layoutObjs }) {
    return (jsx("div", { class: taskLabelLayerStyles.base, style: { width, height }, children: layoutObjs.map((labelObj) => (jsx(GanttTaskLabel, { ...labelObj }))) }));
}

function GanttTasksLayer({ width, height, layoutObjs }) {
    const draw = (ctx) => {
        layoutObjs.forEach((rowObj) => {
            rowObj.taskObjs.forEach((taskObj) => drawTask(ctx, taskObj));
        });
    };
    return jsx(TimeComponentCanvas2D, { width: width, height: height, draw: draw });
}

function GanttDataBody({ width, height, minorAxisLayout: { minorGridTicksPos, majorGridTicksPos }, viewportLayout: { gridlines, rowData, rowObjs, taskLabelObjs, horizontalGridlinesPos, idTaskObjMap }, effectsLayout, dateFormatter, ariaActiveTask }) {
    return (jsxs(TimeComponentLayersStack, { width: `${width}px`, height: `${height}px`, children: [jsx(GanttRowBackgroundsLayer, { width: width, height: height, layoutObjs: rowObjs }), gridlines.vertical === 'on' && (jsx(TimeComponentVerticalGridlines, { width: width, height: height, positions: minorGridTicksPos, variant: "minor" })), gridlines.vertical === 'on' && majorGridTicksPos && (jsx(TimeComponentVerticalGridlines, { width: width, height: height, positions: majorGridTicksPos, variant: "major" })), horizontalGridlinesPos && (jsx(GanttHorizontalGridlinesLayer, { width: width, height: height, positions: horizontalGridlinesPos })), jsx(GanttTaskAccLayer, { width: width, height: height, layoutObjs: rowObjs, rowData: rowData, dateFormatter: dateFormatter, ariaActiveId: ariaActiveTask?.ariaId, ariaActiveTaskObj: ariaActiveTask && idTaskObjMap.get(ariaActiveTask.dataId) }), jsx(GanttTasksLayer, { width: width, height: height, layoutObjs: rowObjs }), jsx(GanttTaskEffectsLayer, { width: width, height: height, layoutObjs: effectsLayout }), jsx(GanttTaskLabelsLayer, { width: width, height: height, layoutObjs: taskLabelObjs })] }));
}

function GanttView({ visRef, overlayControlsContainerRef, panZoomLayout, getTimeAxesLayout, getHorizontalScrollbarLayout, onHorizontalScrollChange, getVerticalScrollbarLayout, onVerticalScrollChange, rowAxisSeparator = false, zoomParameters, zooming = 'on', isViewportDefined, onViewportChange, getResolvedViewportLayout, datatip, rowDataLayout, isRTL, scrollPosition, onScrollPositionChange, selectedIds, selectionMode, onSelectionChange, hoveredTaskId, onTaskHoverChange, currentTask, onCurrentTaskChange, currentTaskInteraction, ariaActive, width, height }) {
    return (jsx(TimeComponentPanZoomLayout, { overlayControlsContainerRef: overlayControlsContainerRef, ...panZoomLayout, width: width, height: height, overlayControls: zooming === 'on' && zoomParameters && isViewportDefined ? (jsx(TimeComponentZoomControls, { position: panZoomLayout.overlayControlsPosition, zoomParameters: zoomParameters, onViewportChange: onViewportChange })) : undefined, verticalControl: jsx(TimeComponentVerticalScrollbarContainer, { getLayout: getVerticalScrollbarLayout, onRangeChange: onVerticalScrollChange, children: (layout) => jsx(TimeComponentVerticalScrollbar, { ...layout }) }), horizontalControl: jsx(TimeComponentHorizontalScrollbarContainer, { getLayout: getHorizontalScrollbarLayout, onRangeChange: onHorizontalScrollChange, children: (layout) => jsx(TimeComponentHorizontalScrollbar, { ...layout }) }), vis: jsx(GanttTimeAxisDataBody, { innerRef: visRef, isRTL: isRTL, scrollPosition: scrollPosition, onScrollPositionChange: onScrollPositionChange, isViewportDefined: isViewportDefined, onViewportChange: onViewportChange, zoomParameters: zoomParameters, zooming: zooming, rowAxisSeparator: rowAxisSeparator, selectedIds: selectedIds, selectionMode: selectionMode, onSelectionChange: onSelectionChange, hoveredTaskId: hoveredTaskId, onTaskHoverChange: onTaskHoverChange, currentTask: currentTask, onCurrentTaskChange: onCurrentTaskChange, currentTaskInteraction: currentTaskInteraction, ariaActive: ariaActive, getTimeAxesLayout: getTimeAxesLayout, getResolvedViewportLayout: getResolvedViewportLayout, rowDataLayout: rowDataLayout, datatip: datatip, majorAxis: (layout) => jsx(TimeComponentHorizontalTimeAxis, { ...layout }), minorAxis: (layout) => jsx(TimeComponentHorizontalTimeAxis, { ...layout }), dataBody: (layout) => jsx(GanttDataBody, { ...layout }) }) }));
}

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
// TODO: Remove and replace this with the future useTextDimensions batch text measurements solution.
// We also just need width, so maybe we can make useTextDimensions optimize for that case too
// e.g. use canvas backend for width only measurements, etc.
/**
 * Gets the text dimensions of the given array of texts.
 * @param getTextDimensions The measurement function.
 * @param texts An array of texts.
 * @param font The font of the texts.
 * @returns An array of text dimensions.
 */
const getBatchTextDimensions = (getTextDimensions, texts, font) => texts.map((text) => getTextDimensions(text, font));
/**
 * Gets the (unresolved) time axis height.
 * @param axisProps The axis props.
 * @returns The (unresolved) height.
 */
const getUnresolvedTimeAxisHeight = (axisProps) => {
    return axisProps === undefined
        ? '0px'
        : axisProps.height !== undefined
            ? `${axisProps.height}px`
            : bridgeValues.horizontalTimeAxisHeight;
};
/**
 * Gets the unresolved time axis layout.
 * @param axisPosition The axis position.
 * @param minorAxis The minor axis props.
 * @param majorAxis The major axis props.
 * @returns The unresovled time axis layout.
 */
const getUnresolvedTimeAxesLayout = (axisPosition, minorAxis, majorAxis) => {
    const minorAxisHeight = getUnresolvedTimeAxisHeight(minorAxis);
    const majorAxisHeight = getUnresolvedTimeAxisHeight(majorAxis);
    const totalHeight = `calc(${majorAxisHeight} + ${minorAxisHeight})`;
    return {
        position: axisPosition,
        height: totalHeight
    };
};
/**
 * Gets the resolved time axis height.
 * @param defaultHeight The default time axis height.
 * @param axisProps The axis props.
 * @returns The time axis height in pixels.
 */
const getResolvedTimeAxisHeight = (defaultHeight, axisProps) => {
    return axisProps === undefined
        ? 0
        : axisProps.height !== undefined
            ? axisProps.height
            : defaultHeight;
};
/**
 * Gets the resolved time axis props.
 * @param defaultHeight The default time axis height.
 * @param axisProps The axis props.
 * @returns The resolved axis props.
 */
const getResolvedTimeAxisProps = (defaultHeight, axisProps) => {
    const height = getResolvedTimeAxisHeight(defaultHeight, axisProps);
    const { scale, zoomOrder = [axisProps.scale] } = axisProps;
    return {
        height,
        zoomOrder,
        zoomOrderIndex: zoomOrder.indexOf(scale)
    };
};
/**
 * Gets the interval start time relative to the given time according to the given scale.
 * @param scale The time scale.
 * @param time The query time.
 * @returns The interval start time.
 */
const getPreviousTime = (scale, time) => {
    return Date.parse(scale.getPreviousDate(new Date(time).toISOString()));
};
/**
 * Gets the interval end time relative to the given time according to the given scale.
 * @param scale The time scale.
 * @param time The query time.
 * @returns The interval end time.
 */
const getNextTime = (scale, time) => {
    return Date.parse(scale.getNextDate(new Date(time).toISOString()));
};
/**
 * Gets the time axis ticks in the given viewport.
 * @param scale The time scale.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @returns The ticks (in time).
 */
const getViewportTicks = (scale, viewportStartTime, viewportEndTime) => {
    const times = [getPreviousTime(scale, viewportStartTime)];
    while (times[times.length - 1] < viewportEndTime) {
        times.push(getNextTime(scale, times[times.length - 1]));
    }
    return times;
};
/**
 * Returns a set of date intervals sampled using the following procedure:
 * 1. Divide up the time range into numSections sections
 * 2. For each section, take the first numIntervalsPerSection intervals from the start,
 *    plus the last interval of the section.
 * 3. Consolidate all of them and return
 * @param scale
 * @param startTime
 * @param endTime
 * @param numSections
 * @param numIntervalsPerSection
 * @returns The unique intervals retrieved (as a Map of <start time, end time>)
 */
const sampleIntervals = (scale, startTime, endTime, numSections, numIntervalsPerSection) => {
    // key: interval start time, value: interval end time
    // Use Map to prevent duplicate intervals
    const intervals = new Map();
    const sectionInterval = Math.floor((endTime - startTime) / numSections);
    for (let i = 0; i < numSections; i++) {
        const sectionStartTime = startTime + sectionInterval * i;
        const sectionEndTime = Math.min(startTime + sectionInterval * (i + 1), endTime);
        let prevTime = getPreviousTime(scale, sectionStartTime);
        for (let j = 0; j < numIntervalsPerSection; j++) {
            if (prevTime >= sectionEndTime) {
                break;
            }
            const currTime = getNextTime(scale, prevTime);
            intervals.set(prevTime, currTime);
            prevTime = currTime;
        }
        // Also consider last label at the end of the section
        prevTime = getPreviousTime(scale, sectionEndTime - 1);
        intervals.set(prevTime, getNextTime(scale, prevTime));
    }
    return intervals;
};
/**
 * Gets (a representative set of) the time intervals in the given time scale.
 * @param scale The time scale.
 * @param samplingStrategy The sampling strategy to use.
 *  The 'exact' type would retrieve ALL intervals in the given range and scale.
 *  'approximate' would retrieve only a representative subset of intervals.
 * @returns (A representative set of) the time intervals in the given time scale.
 */
const getTimeAxisIntervals = (scale, samplingStrategy) => {
    const { type, params } = samplingStrategy;
    switch (type) {
        case 'exact': {
            const intervals = new Map();
            const viewportTimes = getViewportTicks(scale, params.startTime, params.endTime);
            for (let i = 0; i < viewportTimes.length - 1; i++) {
                intervals.set(viewportTimes[i], viewportTimes[i + 1]);
            }
            return { intervals, numIntervals: intervals.size };
        }
        case 'approximate': {
            // Rather than computing all dates (and labels) to obtain exact dimensions,
            // heuristically sample a subset of dates for better performance.
            // Assumption is that in many usecases, label widths have small variance.
            // Even if our estimation is off and cause a label trunction, users can manually zoom in to see the full label.
            const { startTime, endTime, numSections, numIntervalsPerSection } = params;
            const intervals = sampleIntervals(scale, startTime, endTime, numSections, numIntervalsPerSection);
            // Estimate real number of intervals
            const intervalStartTimes = [...intervals.keys()];
            const avgTimePerInterval = intervalStartTimes.reduce((sum, prevTime) => {
                return sum + (intervals.get(prevTime) - Number(prevTime));
            }, 0) / intervalStartTimes.length;
            const estNumIntervals = (endTime - startTime) / avgTimePerInterval;
            return { intervals, numIntervals: estNumIntervals };
        }
        default: {
            const _exhaustiveCheck = type;
            return _exhaustiveCheck;
        }
    }
};
/**
 * Gets the zoom order characteristics based on the given time intervals, and widths of those intervals.
 * @param getTextDimensions The text measurement function.
 * @param intervalPaddingStart The interval padding start.
 * @param intervalPaddingEnd The interval padding end.
 * @param minIntervalWidth The minimum interval width.
 * @param axisFont The font.
 * @param zoomOrder The zoom order.
 * @param samplingStrategy The sampling strategy to use to retrieve intervals.
 * @returns The min length factor for each scale in the zoom order, and (an estimate of) the max number of intervals in the time axis across all scales in the zoom order.
 */
const getZoomOrderCharacteristics = (getTextDimensions, intervalPaddingStart, intervalPaddingEnd, minIntervalWidth, axisFont, zoomOrder, samplingStrategy) => {
    const intervalPadding = intervalPaddingStart + intervalPaddingEnd;
    const zoomLevelIntervals = zoomOrder.map((scale) => getTimeAxisIntervals(scale, samplingStrategy));
    const maxNumIntervals = Math.max(...zoomLevelIntervals.map(({ numIntervals }) => numIntervals));
    const zoomOrderMinLengthFactor = zoomLevelIntervals.map(({ intervals }, i) => {
        const scale = zoomOrder[i];
        const prevTimes = [...intervals.keys()];
        const labels = prevTimes.map((prevTime) => getTimeLabel(scale, intervals.get(prevTime)));
        const intervalDurations = prevTimes.map((prevTime) => intervals.get(prevTime) - prevTime);
        const intervalLabelDimensions = getBatchTextDimensions(getTextDimensions, labels, axisFont);
        const minLengthFactor = Math.min(...intervalDurations.map((duration, i) => {
            const contentWidth = Math.max(minIntervalWidth, intervalLabelDimensions[i].width + intervalPadding);
            return duration / contentWidth;
        }));
        return minLengthFactor;
    });
    return {
        zoomOrderMinLengthFactor,
        maxNumIntervals
    };
};
/**
 * Gets the resolved viewport range given the range constraints.
 * @param viewportDuration The viewport duration.
 * @param startTime The start time.
 * @param endTime The end time.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @returns The resolved viewport range.
 */
const getResolvedViewport = (viewportDuration, startTime, endTime, viewportStartTime, viewportEndTime) => {
    if (viewportStartTime !== undefined && viewportEndTime !== undefined) {
        return { viewportStartTime, viewportEndTime };
    }
    if (viewportStartTime !== undefined && viewportEndTime === undefined) {
        return {
            viewportStartTime,
            viewportEndTime: Math.min(endTime, viewportStartTime + viewportDuration)
        };
    }
    if (viewportStartTime === undefined && viewportEndTime !== undefined) {
        return {
            viewportStartTime: Math.max(startTime, viewportEndTime - viewportDuration),
            viewportEndTime
        };
    }
    return {
        viewportStartTime: startTime,
        viewportEndTime: Math.min(endTime, startTime + viewportDuration)
    };
};
/**
 * Gets the formatted string for the given time in the given scale.
 * This is used for the time axis interval labels.
 * @param scale The time scale.
 * @param time The time.
 * @returns The formatted string.
 */
const getTimeLabel = (scale, time) => scale.formatter(new Date(time).toISOString());
/**
 * Gets the viewport axis ticks and labels for the given scale.
 * @param scale The time scale.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @returns The ticks and labels.
 */
const getViewportLabelsTicks = (scale, viewportStartTime, viewportEndTime) => {
    // ticks.length >= 2 always, because there's always the first and last tick.
    const ticks = getViewportTicks(scale, viewportStartTime, viewportEndTime);
    // We don't need the label of the last tick.
    const labels = ticks.slice(0, ticks.length - 1).map((t) => getTimeLabel(scale, t));
    return { ticks, labels };
};
/**
 * Gets the time axis layout.
 * @param getTextDimensions The text measurement function.
 * @param labelPaddingStart The interval label padding start.
 * @param labelPaddingEnd The interval label padding end.
 * @param font The font.
 * @param labelPosition The label position.
 * @param ticks The ticks (in time).
 * @param gridTicks The subset of visible ticks that mark the vertical tick lines (in time).
 * @param labels The interval labels.
 * @param startTime The start time.
 * @param endTime The end time.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param width The viewport width.
 * @param isRTL Whether the reading direction is rtl.
 * @returns The time axis layout.
 */
const getTimeAxisLayout = (getTextDimensions, labelPaddingStart, labelPaddingEnd, font, labelPosition = 'start', ticks, gridTicks, labels, startTime, endTime, viewportStartTime, viewportEndTime, width, isRTL) => {
    const intervalPadding = labelPaddingStart + labelPaddingEnd;
    const vs = viewportStartTime;
    const ve = viewportEndTime;
    const labelTicks = ticks.slice(0, ticks.length - 1);
    const gridTicksPos = gridTicks.map((t) => getTimePosition(t, vs, ve, width, isRTL));
    const ticksPos = ticks.map((t) => getTimePosition(t, vs, ve, width, isRTL));
    const intervalWidths = ticksPos
        .slice(1)
        .map((p, i) => (isRTL ? ticksPos[i] - p : p - ticksPos[i]));
    // Labels that start before the startTime or ends after the endTime need to be truncated
    const isIntervalStartTruncated = ticks[0] < startTime;
    if (isIntervalStartTruncated) {
        ticksPos[0] = 0;
        intervalWidths[0] = ticksPos[1];
    }
    if (ticks[ticks.length - 1] > endTime) {
        ticksPos[ticksPos.length - 1] = isRTL ? 0 : width;
        intervalWidths[intervalWidths.length - 1] = isRTL
            ? ticksPos[ticksPos.length - 2] - ticksPos[ticksPos.length - 1]
            : ticksPos[ticksPos.length - 1] - ticksPos[ticksPos.length - 2];
    }
    const labelPositions = ticksPos
        .slice(0, ticksPos.length - 1)
        .map((p, i) => (isRTL ? p - intervalWidths[i] : p));
    const isLabelTruncated = getBatchTextDimensions(getTextDimensions, labels, font).map(({ width }, i) => Math.floor(width) - Math.floor(intervalWidths[i] - intervalPadding) > 0);
    return {
        font,
        labelPosition,
        labels,
        labelTicks,
        labelPositions,
        isLabelTruncated,
        isIntervalStartTruncated,
        intervalWidths,
        gridTicksPos,
        isRTL
    };
};
/**
 * Gets the time axes layout for the viewport.
 * @param getTextDimensions The text measurement function.
 * @param labelPaddingStart The interval label padding start.
 * @param labelPaddingEnd The interval label padding end.
 * @param majorAxisFont The major axis font.
 * @param minorAxisFont The minor axis font.
 * @param startTime The start time.
 * @param endTime The end time.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @param width The viewport width.
 * @param isRTL Whether the reading direction is rtl.
 * @param minorAxisScale The minor axis scale.
 * @param majorAxisScale The major axis scale.
 * @returns The time axes layout for the viewport.
 */
const getTimeAxesViewportLayout = (getTextDimensions, labelPaddingStart, labelPaddingEnd, majorAxisFont, minorAxisFont, startTime, endTime, viewportStartTime, viewportEndTime, width, isRTL, minorAxisScale, majorAxisScale) => {
    const majorAxisLabelsTicks = majorAxisScale
        ? getViewportLabelsTicks(majorAxisScale, viewportStartTime, viewportEndTime)
        : { ticks: [], labels: [] };
    const minorAxisLabelsTicks = getViewportLabelsTicks(minorAxisScale, viewportStartTime, viewportEndTime);
    // Determine whether to render secondary major gridlines
    // If major dates is a subset of minor dates, then the two grids line up.
    // Don't render the minor dates at overlap
    // (due to opacity, minor line would show through major line otherwise).
    // Otherwise the major and minor axis do not "line up"
    // (e.g. months and weeks scale together). Render minor lines only.
    const { ticks: majorTicks, labels: majorLabels } = majorAxisLabelsTicks;
    const { ticks: minorTicks, labels: minorLabels } = minorAxisLabelsTicks;
    const majorTicksSet = new Set(majorTicks);
    const minorTicksSet = new Set(minorTicks);
    // only consider major dates that are in range (e.g. first and/or last ticks may be out of range)
    const showMajorTicks = majorTicks.filter((t) => t > viewportStartTime && t < viewportEndTime && !minorTicksSet.has(t))
        .length === 0;
    const minorGridTicks = showMajorTicks
        ? minorTicks.filter((t) => !majorTicksSet.has(t))
        : minorTicks;
    const majorAxisLayout = majorAxisScale &&
        getTimeAxisLayout(getTextDimensions, labelPaddingStart, labelPaddingEnd, majorAxisFont, majorAxisScale.labelPosition, majorTicks, majorTicks, majorLabels, startTime, endTime, viewportStartTime, viewportEndTime, width, isRTL);
    const minorAxisLayout = getTimeAxisLayout(getTextDimensions, labelPaddingStart, labelPaddingEnd, minorAxisFont, minorAxisScale.labelPosition, minorTicks, minorGridTicks, minorLabels, startTime, endTime, viewportStartTime, viewportEndTime, width, isRTL);
    return {
        minorAxisLayout: {
            majorGridTicksPos: showMajorTicks && majorAxisLayout ? majorAxisLayout.gridTicksPos : undefined,
            minorGridTicksPos: minorAxisLayout.gridTicksPos,
            variant: 'minor',
            ...minorAxisLayout
        },
        majorAxisLayout: majorAxisLayout && {
            majorGridTicksPos: majorAxisLayout.gridTicksPos,
            minorGridTicksPos: undefined,
            variant: 'major',
            ...majorAxisLayout
        }
    };
};
/**
 * Gets the time axes zoom parameters.
 * @param getTextDimensions The text measurement function.
 * @param labelPaddingStart The interval label padding start.
 * @param labelPaddingEnd The interval label padding end.
 * @param labelMinWidth The interval label min width.
 * @param minorAxisFont The minor axis font.
 * @param startTime The start time.
 * @param endTime The end time.
 * @param minorAxisZoomOrder The minor axis zoom order.
 * @returns The time axes zoom parameters.
 */
const getTimeAxesZoomParameters = (getTextDimensions, labelPaddingStart, labelPaddingEnd, labelMinWidth, minorAxisFont, startTime, endTime, minorAxisZoomOrder) => {
    const { zoomOrderMinLengthFactor, maxNumIntervals } = getZoomOrderCharacteristics(getTextDimensions, labelPaddingStart, labelPaddingEnd, labelMinWidth, minorAxisFont, minorAxisZoomOrder, 
    // 4 sections and 10 interval sections is arbitrary, which samples some labels at every quarter.
    // This is more than enough for the current default scales and labels because they're very equally spaced.
    // but this may not work well with weird custom scales such as reptitions of e.g. [3 weeks, 7 days, 2 months]
    // for a span of 1 year, in which case we may only see weeks and months in our sample, but not days,
    // and we underestimate the content lengths.
    // But even then, users may still be able to zoom in sufficiently to see everything they need.
    // If it turns out this doesn't work well for some common cases, we can bump these params up
    // to cover more intervals in the future.
    {
        type: 'approximate',
        params: { numSections: 4, numIntervalsPerSection: 10, startTime, endTime }
    });
    const getZoomOrderViewDurationThresholds = (width) => zoomOrderMinLengthFactor.map((l) => width * l);
    const minZoomViewportDuration = (endTime - startTime) / maxNumIntervals;
    const maxZoomViewportDuration = endTime - startTime;
    return {
        getZoomOrderViewDurationThresholds,
        minorAxisZoomOrder,
        minZoomViewportDuration,
        maxZoomViewportDuration,
        startTime,
        endTime
    };
};
/**
 * Returns a function that given the viewport width, returns the resolved time axes layout for the given viewport.
 * @param getTextDimensions The text measurement function.
 * @param labelPaddingStart The interval label padding start.
 * @param labelPaddingEnd The interval label padding end.
 * @param majorAxisFont The major axis font.
 * @param minorAxisFont The minor axis font.
 * @param getZoomOrderViewDurationThresholds A function that given the viewport width, returns the zoom order viewport duration thresholds.
 * @param axisPosition The axis position.
 * @param startTime The start time.
 * @param endTime The end time.
 * @param isRTL Whether the reading direction is rtl.
 * @param resolvedMinorAxisProps The resolved minor axis props.
 * @param resolvedMajorAxisProps The resolved major axis props.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @returns A function that given the viewport width, returns the resolved time axes layout for the given viewport.
 */
const getResolvedTimeAxesLayout = (getTextDimensions, labelPaddingStart, labelPaddingEnd, majorAxisFont, minorAxisFont, getZoomOrderViewDurationThresholds, axisPosition, startTime, endTime, isRTL, resolvedMinorAxisProps, resolvedMajorAxisProps, viewportStartTime, viewportEndTime) => {
    return (width) => {
        const { zoomOrder, zoomOrderIndex } = resolvedMinorAxisProps;
        const zoomOrderViewDurationThresholds = getZoomOrderViewDurationThresholds(width);
        const { viewportStartTime: resolvedViewportStartTime, viewportEndTime: resolvedViewportEndTime } = getResolvedViewport(zoomOrderViewDurationThresholds[zoomOrderIndex], startTime, endTime, viewportStartTime, viewportEndTime);
        const { majorAxisLayout, minorAxisLayout } = getTimeAxesViewportLayout(getTextDimensions, labelPaddingStart, labelPaddingEnd, majorAxisFont, minorAxisFont, startTime, endTime, resolvedViewportStartTime, resolvedViewportEndTime, width, isRTL, zoomOrder[zoomOrderIndex], resolvedMajorAxisProps &&
            resolvedMajorAxisProps.zoomOrder[resolvedMajorAxisProps.zoomOrderIndex]);
        return {
            position: axisPosition,
            startTime,
            endTime,
            viewportStartTime: resolvedViewportStartTime,
            viewportEndTime: resolvedViewportEndTime,
            width,
            majorAxis: majorAxisLayout && { width, ...resolvedMajorAxisProps, ...majorAxisLayout },
            minorAxis: { width, ...resolvedMinorAxisProps, ...minorAxisLayout }
        };
    };
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Returns whether the given configration is valid.
 * @param startTime The start time.
 * @param endTime The end time.
 * @param viewportStartTime The viewport start time.
 * @param viewportEndTime The viewport end time.
 * @returns Whether the given configuration is valid.
 */
const hasValidTimeConfig = (startTime, endTime, viewportStartTime, viewportEndTime) => {
    const hasValidStartAndEnd = endTime > startTime;
    const hasValidViewport = viewportStartTime !== undefined && viewportEndTime !== undefined
        ? viewportEndTime > viewportStartTime
        : true;
    const hasValidViewportStart = viewportStartTime !== undefined
        ? viewportStartTime >= startTime && viewportStartTime < endTime
        : true;
    const hasValidViewportEnd = viewportEndTime !== undefined
        ? viewportEndTime > startTime && viewportEndTime <= endTime
        : true;
    return hasValidStartAndEnd && hasValidViewport && hasValidViewportStart && hasValidViewportEnd;
};
/**
 * Gets the parsed time axis params.
 * @param start The start date string.
 * @param end The end date string.
 * @param viewportStart The viewport start date string.
 * @param viewportEnd The viewport end date string.
 * @returns The parsed params.
 */
const getParsedTimeAxisParams = (start, end, viewportStart, viewportEnd) => {
    const startTime = parseDate(start);
    const endTime = parseDate(end);
    const viewportStartTime = viewportStart ? parseDate(viewportStart) : undefined;
    const viewportEndTime = viewportEnd ? parseDate(viewportEnd) : undefined;
    const isValidTimeConfig = hasValidTimeConfig(startTime, endTime, viewportStartTime, viewportEndTime);
    return { startTime, endTime, viewportStartTime, viewportEndTime, isValidTimeConfig };
};

const timeComponentUnresolvedVars = [
    {
        tokenVar: bridgeValues.horizontalTimeAxisHeight,
        key: 'defaultTimeAxisHeight',
        cssProp: 'height'
    },
    {
        tokenVar: bridgeValues.horizontalTimeAxisLabelPaddingInlineStart,
        key: 'timeAxisLabelPaddingInlineStart',
        cssProp: 'margin-inline-start'
    },
    {
        tokenVar: bridgeValues.horizontalTimeAxisLabelPaddingInlineEnd,
        key: 'timeAxisLabelPaddingInlineEnd',
        cssProp: 'margin-inline-end'
    },
    {
        tokenVar: xUnits(12.5),
        key: 'timeAxisLabelMinWidth',
        cssProp: 'min-width'
    },
    {
        tokenVar: typographyVars.body.md.fontSize,
        key: 'majorAxisFontSize',
        cssProp: 'font-size'
    },
    {
        tokenVar: typographyVars.body.sm.fontSize,
        key: 'minorAxisFontSize',
        cssProp: 'margin-block-start'
    },
    {
        tokenVar: typographyVars.body.md.fontWeight.semibold,
        key: 'majorAxisFontWeight'
    },
    {
        tokenVar: typographyVars.body.sm.fontWeight.regular,
        key: 'minorAxisFontWeight'
    }
];
/**
 * Gets the resolved time axis related CSS vars.
 * @param resolvedVars The resolved CSS vars.
 * @returns The resolved values.
 */
const getResolvedTimeAxisVars = (resolvedVars) => ({
    defaultTimeAxisHeight: pxToNumber(resolvedVars['defaultTimeAxisHeight']),
    timeAxisLabelPaddingInlineStart: pxToNumber(resolvedVars['timeAxisLabelPaddingInlineStart']),
    timeAxisLabelPaddingInlineEnd: pxToNumber(resolvedVars['timeAxisLabelPaddingInlineEnd']),
    timeAxisLabelMinWidth: pxToNumber(resolvedVars['timeAxisLabelMinWidth']),
    majorAxisFont: {
        fontSize: resolvedVars['majorAxisFontSize'],
        fontWeight: resolvedVars['majorAxisFontWeight']
    },
    minorAxisFont: {
        fontSize: resolvedVars['minorAxisFontSize'],
        fontWeight: resolvedVars['minorAxisFontWeight']
    }
});
// TODO: Export this from useCssVars? Or make useCssVars output number for px strings?
/**
 * Parses the number from a pixel string.
 * @param length The pixel string.
 * @returns The number.
 */
const pxToNumber = (length) => length === '0' ? 0 : Number(length.substring(0, length.length - 2));

const ganttUnresolvedVars = [
    {
        tokenVar: bridgeValues$1.rowLabelPaddingInlineStart,
        key: 'rowLabelPaddingInlineStart',
        cssProp: 'padding-inline-start'
    },
    {
        tokenVar: bridgeValues$1.rowLabelPaddingInlineStart,
        key: 'rowLabelPaddingInlineEnd',
        cssProp: 'padding-inline-end'
    },
    {
        tokenVar: xUnits(3),
        key: 'rowPaddingTop',
        cssProp: 'padding-top'
    },
    {
        tokenVar: xUnits(3),
        key: 'rowPaddingBottom',
        cssProp: 'padding-bottom'
    },
    {
        tokenVar: xUnits(6),
        key: 'taskHeight',
        cssProp: 'min-height'
    },
    {
        tokenVar: xUnits(1),
        key: 'taskBorderRadius',
        cssProp: 'border-radius'
    },
    {
        tokenVar: bridgeValues$1.taskBgColor,
        key: 'taskBgColor',
        cssProp: 'background-color'
    },
    {
        tokenVar: bridgeValues$1.taskBorderColor,
        key: 'taskBorderColor',
        cssProp: 'border-color'
    },
    {
        tokenVar: bridgeValues$1.taskEffectBorderColor,
        key: 'taskEffectBorderColor',
        cssProp: 'outline-color'
    },
    {
        tokenVar: baseVars.boxShadow.md,
        key: 'taskEffectBoxShadow',
        cssProp: 'box-shadow'
    }
];
/**
 * Parses a CSS box-shadow string.
 * @param boxShadow A CSS box-shadow string, of the form "color offsetX offsetY blur spread".
 * @returns The components of the box-shadow.
 */
const parseBoxShadow = (boxShadow) => {
    // boxShadow: "color offsetX offsetY blur spread"
    // color may have spaces e.g. rgb(0, 0, 0, 0.2)
    const [_, shadowBlur, shadowOffsetY, shadowOffsetX, ...rest] = boxShadow.split(' ').reverse();
    const shadowColor = rest.reverse().join(' ');
    return {
        shadowColor,
        shadowOffsetX: pxToNumber(shadowOffsetX ?? '0'),
        shadowOffsetY: pxToNumber(shadowOffsetY ?? '0'),
        shadowBlur: pxToNumber(shadowBlur ?? '0')
    };
};
/**
 * Gets the resolved row axis related CSS vars.
 * @param resolvedVars The resolved CSS vars.
 * @returns The resolved values.
 */
const getResolvedRowAxisVars = (resolvedVars) => ({
    rowLabelPaddingInlineStart: pxToNumber(resolvedVars['rowLabelPaddingInlineStart']),
    rowLabelPaddingInlineEnd: pxToNumber(resolvedVars['rowLabelPaddingInlineEnd'])
});
/**
 * Gets the resolved row related CSS vars.
 * @param resolvedVars The resolved CSS vars.
 * @returns The resolved values.
 */
const getResolvedRowVars = (resolvedVars) => ({
    rowPaddingTop: pxToNumber(resolvedVars['rowPaddingTop']),
    rowPaddingBottom: pxToNumber(resolvedVars['rowPaddingBottom'])
});
/**
 * Gets the resolved task related CSS vars.
 * @param resolvedVars The resolved CSS vars.
 * @returns The resolved values.
 */
const getResolvedTaskVars = (resolvedVars) => ({
    taskHeight: pxToNumber(resolvedVars['taskHeight']),
    taskBorderRadius: resolvedVars['taskBorderRadius'],
    taskBgColor: resolvedVars['taskBgColor'],
    taskBorderColor: resolvedVars['taskBorderColor'],
    taskEffectBorderColor: resolvedVars['taskEffectBorderColor'],
    taskEffectBoxShadow: parseBoxShadow(resolvedVars['taskEffectBoxShadow'])
});

/**
 * Gets the pan zoom canvas layout given the time axes layout.
 * @param timeAxesLayout The time axes layout.
 * @returns The pan zoom canvas layout.
 */
const getPanZoomCanvasLayout = (timeAxesLayout) => {
    const layout = {
        top: {
            overlayControlsPosition: 'topEnd',
            verticalControlTopGap: timeAxesLayout.height,
            verticalControlBottomGap: '0'
        },
        bottom: {
            overlayControlsPosition: 'bottomEnd',
            verticalControlTopGap: '0',
            verticalControlBottomGap: timeAxesLayout.height
        }
    };
    return layout[timeAxesLayout.position];
};

/**
 * Gets the row axis layout.
 * @param timeAxesLayout The time axes layout.
 * @param rowAxisProps The row axis props.
 * @returns
 */
const getWithRowAxisLayout = (timeAxesLayout, rowAxisProps) => {
    const horiScrollbarHeight = `${xUnits(1)} + ${bridgeValues.horizontalScrollbarHeight}`;
    const generalLayout = {
        top: {
            rowAxisTopGap: timeAxesLayout.height,
            rowAxisBottomGap: `calc(${horiScrollbarHeight})`
        },
        bottom: {
            rowAxisTopGap: '0',
            rowAxisBottomGap: `calc(${timeAxesLayout.height} + ${horiScrollbarHeight})`
        }
    };
    const resolvedWidth = getResolvedLength(rowAxisProps.width);
    const resolvedMaxWidth = getResolvedLength(rowAxisProps.maxWidth);
    return {
        ...generalLayout[timeAxesLayout.position],
        resolvedRowAxisWidth: resolvedWidth,
        resolvedRowAxisMaxWidth: resolvedMaxWidth,
        label: rowAxisProps.label
    };
};
/**
 * Gets the parsed length given the values that the row axis accepts.
 * @param length The length values that the row axis accepts.
 * @returns The parsed length.
 */
const getResolvedLength = (length) => {
    if (length.endsWith('px')) {
        return {
            value: Number(length.substring(0, length.length - 2)),
            suffix: 'px'
        };
    }
    if (length.endsWith('%')) {
        return {
            value: Number(length.substring(0, length.length - 1)),
            suffix: '%'
        };
    }
    // length is 'max-content' for width and 'none' for max-width
    return {
        value: Infinity,
        suffix: undefined
    };
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Gets the resolved horizontal scrollbar layout.
 * @param min The range min.
 * @param max The range max.
 * @param globalMin The global min.
 * @param globalMax The global max.
 * @param isRTL Whether the reading direction is rtl.
 * @returns The resolved horizontal scrollbar layout.
 */
const getResolvedHorizontalScrollbarLayout = (min, max, globalMin, globalMax, isRTL) => {
    return (width) => {
        const localRange = max - min;
        const globalRange = globalMax - globalMin;
        const thumbWidth = (width * localRange) / globalRange;
        const thumbStartOffset = (width * (min - globalMin)) / globalRange;
        const logicalThumbLeft = isRTL ? width - thumbStartOffset - thumbWidth : thumbStartOffset;
        const thumbLeft = isRTL ? undefined : thumbStartOffset;
        const thumbRight = isRTL ? thumbStartOffset : undefined;
        const draggableRegion = {
            xMin: logicalThumbLeft,
            xMax: logicalThumbLeft + thumbWidth,
            yMin: -Infinity,
            yMax: Infinity
        };
        const getNewRange = (newThumbLeft) => {
            const p = isRTL ? Math.max(0, width - newThumbLeft - thumbWidth) : newThumbLeft;
            const newMin = Math.min(globalMin + (p / width) * globalRange, globalMax - localRange);
            const newMax = newMin + localRange;
            return { newMin, newMax };
        };
        return {
            thumbWidth,
            thumbLeft,
            thumbRight,
            draggableRegion,
            getNewRange
        };
    };
};
/**
 * Gets the resolved vertical scrollbar layout.
 * @param min The range min.
 * @param max The range max (if any).
 * @param globalMin The global min.
 * @param globalMax The global max.
 * @returns The resolved vertical scrollbar layout.
 */
const getResolvedVerticalScrollbarLayout = (min, max, globalMin, globalMax) => {
    return (height) => {
        // It's possible for globalRange to be smaller than localRange
        // due to the component being taller than the height the data occupies
        // e.g. tall Gantt with 1 row
        // So throughout this code we make sure to clamp thumb dimensions and ranges
        const localRange = (max ?? height + min) - min;
        const globalRange = globalMax - globalMin;
        const thumbHeight = Math.min(height, (height * localRange) / globalRange);
        const thumbTop = Math.max(0, (height * (min - globalMin)) / globalRange);
        const draggableRegion = {
            xMin: -Infinity,
            xMax: Infinity,
            yMin: thumbTop,
            yMax: thumbTop + thumbHeight
        };
        const getNewRange = (newThumbTop) => {
            const newMin = Math.max(0, Math.min(globalMin + (newThumbTop / height) * globalRange, globalMax - localRange));
            const newMax = newMin + localRange;
            return { newMin, newMax };
        };
        return {
            thumbHeight,
            thumbTop,
            draggableRegion,
            getNewRange
        };
    };
};

const cssVars = timeComponentUnresolvedVars.concat(ganttUnresolvedVars);
/**
 * Hook that computes layout related information for the Gantt.
 */
const useGanttLayout = ({ rowAxis: rowAxisProps, gridlines: { horizontal: gridlinesHorizontal = 'off', vertical: gridlinesVertical = 'on' } = {
    horizontal: 'off',
    vertical: 'on'
}, axisPosition = 'top', minorAxis, majorAxis, start, end, viewportStart, viewportEnd, onViewportChange, scrollPosition: { y: scrollPosition = 0 } = { y: 0 }, onScrollPositionChange, rows, selectedIds, selectionMode = 'none' }) => {
    const { direction } = useUser();
    const { resolvedVars, cssContent } = useCssVars(cssVars);
    const { textMeasureContent, getTextDimensions } = useTextDimensions();
    const isRTL = direction === 'rtl';
    const layoutContent = (jsxs(Fragment, { children: [textMeasureContent, cssContent] }));
    const { startTime, endTime, viewportStartTime, viewportEndTime, isValidTimeConfig: isValidConfig } = getParsedTimeAxisParams(start, end, viewportStart, viewportEnd);
    // TODO: take a look a useCssVars and see if we can tighten the types more and make the following check nicer.
    if (!getTextDimensions || Object.keys(resolvedVars).length === 0) {
        return { isRTL, layoutContent, isValidConfig, isReady: false };
    }
    if (!isValidConfig) {
        return { isRTL, layoutContent, isValidConfig, isReady: true };
    }
    // Resolve row axis props
    const rowAxisRendered = rowAxisProps === undefined ? 'off' : 'on';
    const rowAxis = rowAxisProps === 'on' ? {} : rowAxisProps;
    const rowAxisWidth = rowAxis?.width ?? 'max-content';
    const rowAxisMaxWidth = rowAxis?.maxWidth ?? 'none';
    const rowAxisLabelRender = rowAxis?.labelRenderer ?? defaultRowAxisLabelRender;
    // General layout
    const unresolvedTimeAxesLayout = getUnresolvedTimeAxesLayout(axisPosition, minorAxis, majorAxis);
    const panZoomLayout = getPanZoomCanvasLayout(unresolvedTimeAxesLayout);
    const withRowAxisLayout = rowAxisRendered === 'on'
        ? getWithRowAxisLayout(unresolvedTimeAxesLayout, {
            width: rowAxisWidth,
            maxWidth: rowAxisMaxWidth,
            label: rowAxisLabelRender
        })
        : undefined;
    // Time axes layout and Zoom parameters
    const timeAxisResolvedVars = getResolvedTimeAxisVars(resolvedVars);
    const resolvedMajorAxisProps = majorAxis && getResolvedTimeAxisProps(timeAxisResolvedVars.defaultTimeAxisHeight, majorAxis);
    const resolvedMinorAxisProps = getResolvedTimeAxisProps(timeAxisResolvedVars.defaultTimeAxisHeight, minorAxis);
    // TODO: see if we need to useMemo this
    const zoomParameters = getTimeAxesZoomParameters(getTextDimensions, timeAxisResolvedVars.timeAxisLabelPaddingInlineStart, timeAxisResolvedVars.timeAxisLabelPaddingInlineEnd, timeAxisResolvedVars.timeAxisLabelMinWidth, timeAxisResolvedVars.minorAxisFont, startTime, endTime, resolvedMinorAxisProps.zoomOrder);
    const getTimeAxesLayout = getResolvedTimeAxesLayout(getTextDimensions, timeAxisResolvedVars.timeAxisLabelPaddingInlineStart, timeAxisResolvedVars.timeAxisLabelPaddingInlineEnd, timeAxisResolvedVars.majorAxisFont, timeAxisResolvedVars.minorAxisFont, zoomParameters.getZoomOrderViewDurationThresholds, axisPosition, startTime, endTime, isRTL, resolvedMinorAxisProps, resolvedMajorAxisProps, viewportStartTime, viewportEndTime);
    // Row data layout
    const rowResolvedVars = getResolvedRowVars(resolvedVars);
    const taskResolvedVars = getResolvedTaskVars(resolvedVars);
    const gridlines = { horizontal: gridlinesHorizontal, vertical: gridlinesVertical };
    const rowDataLayout = getRowDataLayout(rows, { ...rowResolvedVars, ...taskResolvedVars }, gridlines, { selectedIds, selectionMode });
    // Row axis layout
    const rowAxisResolvedVars = getResolvedRowAxisVars(resolvedVars);
    const rowAxisLayout = {
        labelPaddingInlineStart: rowAxisResolvedVars.rowLabelPaddingInlineStart,
        labelPaddingInlineEnd: rowAxisResolvedVars.rowLabelPaddingInlineEnd,
        rowData: rowDataLayout.rowData,
        rowObjs: rowDataLayout.rowObjs,
        idRowObjMap: rowDataLayout.idRowObjMap,
        isHorizontalGridlinesVisible: gridlinesHorizontal === 'on'
    };
    // Horizontal scrollbar layout
    const getHorizontalScrollbarLayout = getResolvedHorizontalScrollbarLayout(viewportStartTime ?? startTime, viewportEndTime ?? endTime, startTime, endTime, isRTL);
    const onHorizontalScrollChange = (newViewStartTime, newViewEndTime) => {
        onViewportChange?.({
            viewportStart: getISOString(newViewStartTime),
            viewportEnd: getISOString(newViewEndTime),
            majorAxisScale: majorAxis?.scale,
            minorAxisScale: minorAxis.scale
        });
    };
    // Vertical scrollbar layout
    const getVerticalScrollbarLayout = getResolvedVerticalScrollbarLayout(scrollPosition, undefined, 0, rowDataLayout.totalRowsHeight);
    const onVerticalScrollChange = (newScrollPosition) => {
        onScrollPositionChange?.({ y: newScrollPosition });
    };
    return {
        scrollPosition,
        panZoomLayout,
        withRowAxisLayout,
        getTimeAxesLayout,
        zoomParameters: viewportStartTime !== undefined && viewportEndTime !== undefined
            ? {
                viewportStartTime,
                viewportEndTime,
                minorAxisZoomOrderIndex: resolvedMinorAxisProps.zoomOrderIndex,
                majorAxisZoomOrder: resolvedMajorAxisProps?.zoomOrder,
                majorAxisZoomOrderIndex: resolvedMajorAxisProps?.zoomOrderIndex,
                ...zoomParameters
            }
            : undefined,
        rowDataLayout,
        rowAxisLayout,
        getResolvedViewportLayout,
        getHorizontalScrollbarLayout,
        onHorizontalScrollChange,
        getVerticalScrollbarLayout,
        onVerticalScrollChange,
        isRTL,
        layoutContent,
        isValidConfig,
        isReady: true
    };
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook that handles various Time Component gestures.
 */
const useTimeComponentEvents = ({ rootRef, overlayControlsContainerRef, isDisabled = false }) => {
    const isFocused = useRef(false);
    const dispatchControlsShow = () => {
        const e = new Event('ControlsShow');
        overlayControlsContainerRef.current?.dispatchEvent(e);
    };
    const dispatchControlsHide = () => {
        const e = new Event('ControlsHide');
        overlayControlsContainerRef.current?.dispatchEvent(e);
    };
    const onFocus = () => {
        isFocused.current = true;
        dispatchControlsShow();
    };
    const onBlur = (e) => {
        if (!e.relatedTarget || !rootRef.current?.contains(e.relatedTarget)) {
            isFocused.current = false;
            dispatchControlsHide();
        }
    };
    const onPointerDown = (e) => {
        if (e.pointerType !== 'mouse') {
            // Ensure component is focused upon interaction
            // e.g. on touch devices, if the component is not initially focused
            // then one tries to drag pan the component, the component is still
            // not focused. This is not a problem with mouse devices.
            rootRef.current?.focus();
        }
    };
    const onPointerOver = (e) => {
        if (e.pointerType === 'mouse') {
            dispatchControlsShow();
        }
    };
    const onPointerOut = (e) => {
        if (e.pointerType === 'mouse') {
            if (!isFocused.current)
                dispatchControlsHide();
        }
    };
    return isDisabled
        ? {}
        : {
            onFocus,
            onBlur,
            onPointerDown,
            onPointerOver,
            onPointerOut
        };
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const DEFAULT_PAN_UP_RANGE_RATIO = 0.25;
const DEFAULT_PAN_DOWN_RANGE_RATIO = -0.25;
const DEFAULT_PAN_START_RANGE_RATIO = 0.25;
const DEFAULT_PAN_END_RANGE_RATIO = -0.25;
const createKbPanUpEvent = () => new CustomEvent('KbPanVertical', { detail: { rangeRatio: DEFAULT_PAN_UP_RANGE_RATIO } });
const createKbPanDownEvent = () => new CustomEvent('KbPanVertical', { detail: { rangeRatio: DEFAULT_PAN_DOWN_RANGE_RATIO } });
const createKbPanStartEvent = () => new CustomEvent('KbPanHorizontal', { detail: { rangeRatio: DEFAULT_PAN_START_RANGE_RATIO } });
const createKbPanEndEvent = () => new CustomEvent('KbPanHorizontal', { detail: { rangeRatio: DEFAULT_PAN_END_RANGE_RATIO } });
const createKbZoomInEvent = () => new CustomEvent('KbZoomIn', { detail: { zoomFactor: DEFAULT_ZOOM_IN_FACTOR } });
const createKbZoomOutEvent = () => new CustomEvent('KbZoomIn', { detail: { zoomFactor: DEFAULT_ZOOM_OUT_FACTOR } });

/**
 * Hook that handles various Time Component keyboard gestures.
 */
const useTimeComponentKeyboard = ({ visRef, isDisabled = false }) => {
    const onKeyDown = (event) => {
        const key = event.key;
        switch (key) {
            case '=':
            case '+': {
                const e = createKbZoomInEvent();
                visRef.current?.dispatchEvent(e);
                cancelEvent(event);
                break;
            }
            case '-':
            case '_': {
                const e = createKbZoomOutEvent();
                visRef.current?.dispatchEvent(e);
                cancelEvent(event);
                break;
            }
            case 'PageUp': {
                const e = event.shiftKey ? createKbPanStartEvent() : createKbPanUpEvent();
                visRef.current?.dispatchEvent(e);
                cancelEvent(event);
                break;
            }
            case 'PageDown': {
                const e = event.shiftKey ? createKbPanEndEvent() : createKbPanDownEvent();
                visRef.current?.dispatchEvent(e);
                cancelEvent(event);
                break;
            }
        }
    };
    return isDisabled ? {} : { onKeyDown };
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook that handles row labels keyboard navigation.
 */
const useGanttTaskNavigation = ({ rowDataLayout, currentTask, onCurrentTaskChange, isRTL, isDisabled = false }) => {
    const onKeyDown = (event) => {
        const key = event.key;
        switch (key) {
            case 'ArrowRight': {
                const nextTaskId = currentTask &&
                    (!isRTL
                        ? getNextTaskNavigable(currentTask.id, rowDataLayout)
                        : getPrevTaskNavigable(currentTask.id, rowDataLayout));
                if (nextTaskId !== undefined) {
                    onCurrentTaskChange({ id: nextTaskId, isFocused: true });
                }
                cancelEvent(event);
                break;
            }
            case 'ArrowLeft': {
                const prevTaskId = currentTask &&
                    (!isRTL
                        ? getPrevTaskNavigable(currentTask.id, rowDataLayout)
                        : getNextTaskNavigable(currentTask.id, rowDataLayout));
                if (prevTaskId !== undefined) {
                    onCurrentTaskChange({ id: prevTaskId, isFocused: true });
                }
                cancelEvent(event);
                break;
            }
            case 'ArrowUp': {
                const aboveTaskId = currentTask && getAboveTaskNavigable(currentTask.id, rowDataLayout);
                if (aboveTaskId !== undefined) {
                    onCurrentTaskChange({ id: aboveTaskId, isFocused: true });
                }
                cancelEvent(event);
                break;
            }
            case 'ArrowDown': {
                const belowTaskId = currentTask && getBelowTaskNavigable(currentTask.id, rowDataLayout);
                if (belowTaskId !== undefined) {
                    onCurrentTaskChange({ id: belowTaskId, isFocused: true });
                }
                cancelEvent(event);
                break;
            }
        }
    };
    return isDisabled ? {} : { onKeyDown };
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
/**
 * Hook that handles row labels keyboard navigation.
 */
const useGanttRowLabelNavigation = ({ rowDataLayout, currentRowLabel, onCurrentRowLabelChange, isDisabled = false }) => {
    const onKeyDown = (event) => {
        const key = event.key;
        switch (key) {
            case 'ArrowUp': {
                const aboveRowId = currentRowLabel && getAboveRowLabelNavigable(currentRowLabel.id, rowDataLayout);
                if (aboveRowId !== undefined) {
                    onCurrentRowLabelChange({ id: aboveRowId, isFocused: true });
                }
                cancelEvent(event);
                break;
            }
            case 'ArrowDown': {
                const belowRowId = currentRowLabel && getBelowRowLabelNavigable(currentRowLabel.id, rowDataLayout);
                if (belowRowId !== undefined) {
                    onCurrentRowLabelChange({ id: belowRowId, isFocused: true });
                }
                cancelEvent(event);
                break;
            }
        }
    };
    return isDisabled ? {} : { onKeyDown };
};

/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
const useGanttKeyboard = ({ visRef, rowAxisRef, rowDataLayout, navigationModes, selectionProps, isRTL, isDisabled = false }) => {
    const currentNavMode = useRef('tasks');
    const idExtracter = (event) => {
        if (currentNavMode.current !== 'tasks' || event.type !== 'keyup')
            return;
        return navigationModes.tasks.currentItem?.id;
    };
    const { onKeyUp: selectionKeyup } = useSelection({
        idExtracter,
        selection: selectionProps.selectedIds,
        selectionMode: selectionProps.selectionMode,
        onChange: selectionProps.onSelectionChange,
        // TODO: rowDataLayout is undefined when isDisabled is true. Let's reevalute the lifecycle when we work on JET-62889
        getDataById: rowDataLayout?.getTaskDataById || (() => undefined)
    }).selectionProps;
    const selectionKeyboardProps = currentNavMode.current === 'tasks' ? { onKeyUp: selectionKeyup } : {};
    const keyboardProps = useTimeComponentKeyboard({
        visRef,
        isDisabled
    });
    const taskNavProps = useGanttTaskNavigation({
        rowDataLayout,
        currentTask: navigationModes.tasks.currentItem,
        onCurrentTaskChange: navigationModes.tasks.onCurrentItemChange,
        isRTL
    });
    const rowLabelNavProps = useGanttRowLabelNavigation({
        rowDataLayout,
        currentRowLabel: navigationModes.rowLabels.currentItem,
        onCurrentRowLabelChange: navigationModes.rowLabels.onCurrentItemChange
    });
    const onKeyDown = (event) => {
        let stopImmediatePropagation = false;
        const applyFocus = (item) => {
            const { onCurrentItemChange } = navigationModes[item.type];
            onCurrentItemChange({ id: item.id, isFocused: true });
        };
        const removeFocus = (navType) => {
            const { currentItem, onCurrentItemChange } = navigationModes[navType];
            currentItem && onCurrentItemChange({ id: currentItem.id, isFocused: false });
        };
        const enterRowLabelsNavigation = () => {
            const id = getRowLabelNavigableFromTask(navigationModes.tasks.currentItem.id, rowDataLayout);
            applyFocus({ id, type: 'rowLabels' });
            removeFocus('tasks');
            currentNavMode.current = 'rowLabels';
            stopImmediatePropagation = true;
            cancelEvent(event);
        };
        const enterTasksNavigation = () => {
            const id = getTaskNavigableFromRowLabel(navigationModes.rowLabels.currentItem.id, rowDataLayout, navigationModes.tasks.currentItem?.id);
            id !== undefined && applyFocus({ id, type: 'tasks' });
            removeFocus('rowLabels');
            currentNavMode.current = 'tasks';
            stopImmediatePropagation = true;
            cancelEvent(event);
        };
        const key = event.key;
        switch (key) {
            case 'Tab': {
                // Tab OUT of component
                // Remove focus visuals
                removeFocus(currentNavMode.current);
                break;
            }
            case 'ArrowLeft': {
                if (event.altKey) {
                    if (!isRTL && currentNavMode.current === 'tasks') {
                        enterRowLabelsNavigation();
                    }
                    else if (isRTL && currentNavMode.current === 'rowLabels') {
                        enterTasksNavigation();
                    }
                }
                break;
            }
            case 'ArrowRight': {
                if (event.altKey) {
                    if (!isRTL && currentNavMode.current === 'rowLabels') {
                        enterTasksNavigation();
                    }
                    else if (isRTL && currentNavMode.current === 'tasks') {
                        enterRowLabelsNavigation();
                    }
                }
                break;
            }
        }
        if (!stopImmediatePropagation) {
            switch (currentNavMode.current) {
                case 'tasks':
                    taskNavProps.onKeyDown?.(event);
                    break;
                case 'rowLabels':
                    rowLabelNavProps.onKeyDown?.(event);
                    break;
                default: {
                    const _exhaustiveCheck = currentNavMode.current;
                    return _exhaustiveCheck;
                }
            }
        }
    };
    const onKeyUp = (event) => {
        const key = event.key;
        switch (key) {
            case 'Tab': {
                // Tab INTO component
                const { currentItem, onCurrentItemChange } = navigationModes[currentNavMode.current];
                // currentItem should only ever be undefined on first Tab
                const itemToFocus = currentItem ? currentItem : getDefaultInitialFocusTask(rowDataLayout);
                itemToFocus && onCurrentItemChange({ id: itemToFocus.id, isFocused: true });
                cancelEvent(event);
                break;
            }
        }
    };
    // TODO: JET-62887: Avoid this temporary hack to get keyboard datatip to work (until we find a way to get rid of all these dispatchEvents)
    const focusDatatipProps = {
        onFocus: () => {
            const e = new Event('ShowFocusDatatip');
            visRef.current?.dispatchEvent(e);
            rowAxisRef.current?.dispatchEvent(e);
        }
    };
    return isDisabled
        ? {}
        : mergeProps(keyboardProps, focusDatatipProps, { onKeyDown, onKeyUp }, selectionKeyboardProps);
};

/**
 * A gantt displays scheduling information graphically, making it easier to plan, coordinate, and track various tasks and resources.
 */
function Gantt({ width, height, testId, ...props }) {
    const ref = useRef(null);
    const { scrollPosition, panZoomLayout, withRowAxisLayout, getTimeAxesLayout, zoomParameters, rowDataLayout, rowAxisLayout, getResolvedViewportLayout, getHorizontalScrollbarLayout, onHorizontalScrollChange, getVerticalScrollbarLayout, onVerticalScrollChange, isRTL, layoutContent, isValidConfig, isReady } = useGanttLayout(props);
    const ariaProps = {
        'aria-label': props['aria-label'],
        'aria-describedby': props['aria-describedby'],
        'aria-labelledby': props['aria-labelledby'],
        role: 'application'
    };
    const isViewportDefined = props.viewportStart !== undefined && props.viewportEnd !== undefined;
    const [ariaActive, setAriaActive] = useState();
    const [currentTaskInteraction, setCurrentTaskInteraction] = useState('none');
    const [hoveredTaskId, setHoveredTaskId] = useState();
    const onTaskHoverChange = (detail) => {
        detail.id !== undefined &&
            setAriaActive({ dataId: detail.id, ariaId: getRandomId(), type: 'task' });
        setCurrentTaskInteraction(detail.id !== undefined ? 'hover' : 'none');
        setHoveredTaskId(detail.id);
    };
    const [currentRowLabelInteraction, setCurrentRowLabelInteraction] = useState('none');
    const [hoveredRowLabelId, setHoveredRowLabelId] = useState();
    const onRowLabelHoverChange = (detail) => {
        detail.id !== undefined &&
            setAriaActive({ dataId: detail.id, ariaId: getRandomId(), type: 'rowLabel' });
        setCurrentRowLabelInteraction(detail.id !== undefined ? 'hover' : 'none');
        setHoveredRowLabelId(detail.id);
    };
    const [currentTask, setCurrentTask] = useState();
    const onCurrentTaskChange = (detail) => {
        if (detail.isFocused) {
            const e = new CustomEvent('KbPanTaskIntoView', { detail: { id: detail.id } });
            visRef.current?.dispatchEvent(e);
            setAriaActive({ dataId: detail.id, ariaId: getRandomId(), type: 'task' });
            setCurrentTaskInteraction('focus');
        }
        setCurrentTask(detail);
    };
    const [currentRowLabel, setCurrentRowLabel] = useState();
    const onCurrentRowLabelChange = (detail) => {
        if (detail.isFocused) {
            const e = new CustomEvent('KbPanRowIntoView', { detail: { id: detail.id } });
            visRef.current?.dispatchEvent(e);
            setAriaActive({ dataId: detail.id, ariaId: getRandomId(), type: 'rowLabel' });
            setCurrentRowLabelInteraction('focus');
        }
        setCurrentRowLabel(detail);
    };
    const visRef = useRef(null);
    const rowAxisRef = useRef(null);
    const overlayControlsContainerRef = useRef(null);
    const eventProps = useTimeComponentEvents({
        rootRef: ref,
        overlayControlsContainerRef,
        isDisabled: !isViewportDefined
    });
    const keyboardProps = useGanttKeyboard({
        visRef,
        rowAxisRef,
        navigationModes: {
            tasks: { currentItem: currentTask, onCurrentItemChange: onCurrentTaskChange },
            rowLabels: { currentItem: currentRowLabel, onCurrentItemChange: onCurrentRowLabelChange }
        },
        rowDataLayout: rowDataLayout,
        selectionProps: {
            selectedIds: props.selectedIds,
            selectionMode: props.selectionMode,
            onSelectionChange: props.onSelectionChange
        },
        isRTL,
        isDisabled: !isViewportDefined
    });
    // TODO: Move check to util and call in corepack to decide whether to render invalid data state?
    if (!isReady || !isValidConfig) {
        return (jsx(GanttContainer, { innerRef: ref, width: width, height: height, ...ariaProps, children: layoutContent }));
    }
    const ganttView = (jsx(GanttView, { visRef: visRef, overlayControlsContainerRef: overlayControlsContainerRef, isRTL: isRTL, isViewportDefined: isViewportDefined, scrollPosition: scrollPosition, onScrollPositionChange: props.onScrollPositionChange, onViewportChange: props.onViewportChange, rowAxisSeparator: !!withRowAxisLayout, zoomParameters: zoomParameters, zooming: props.zooming, panZoomLayout: panZoomLayout, getTimeAxesLayout: getTimeAxesLayout, getHorizontalScrollbarLayout: getHorizontalScrollbarLayout, onHorizontalScrollChange: onHorizontalScrollChange, getVerticalScrollbarLayout: getVerticalScrollbarLayout, onVerticalScrollChange: onVerticalScrollChange, getResolvedViewportLayout: getResolvedViewportLayout, rowDataLayout: rowDataLayout, datatip: props.datatip, selectedIds: props.selectedIds, selectionMode: props.selectionMode, onSelectionChange: props.onSelectionChange, hoveredTaskId: hoveredTaskId, onTaskHoverChange: onTaskHoverChange, currentTask: currentTask, onCurrentTaskChange: onCurrentTaskChange, currentTaskInteraction: currentTaskInteraction, ariaActive: ariaActive?.type === 'task' ? ariaActive : undefined }));
    const ganttViewWithRowAxis = withRowAxisLayout && (jsx(GanttWithRowAxisLayout, { ...withRowAxisLayout, rowAxis: (resolvedWidth, resolvedMaxWidth) => (jsx(GanttRowAxis, { innerRef: rowAxisRef, resolvedWidth: resolvedWidth, resolvedMaxWidth: resolvedMaxWidth, currentRowLabel: currentRowLabel, hoveredRowLabelId: hoveredRowLabelId, onRowLabelHoverChange: onRowLabelHoverChange, currentRowLabelInteraction: currentRowLabelInteraction, ariaActive: ariaActive?.type === 'rowLabel' ? ariaActive : undefined, layoutObj: rowAxisLayout, scrollPosition: scrollPosition, children: withRowAxisLayout.label })), ganttView: ganttView }));
    return (jsxs(GanttContainer, { innerRef: ref, width: width, height: height, testId: testId, ...ariaProps, ...mergeProps(keyboardProps, eventProps), "aria-activedescendant": ariaActive?.ariaId, children: [ganttViewWithRowAxis || ganttView, layoutContent] }));
}

export { Gantt as G };
//# sourceMappingURL=Gantt-b21af627.js.map
