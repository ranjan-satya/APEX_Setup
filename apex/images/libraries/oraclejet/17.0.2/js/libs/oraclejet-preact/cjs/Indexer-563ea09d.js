/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var preact = require('preact');
var hooks = require('preact/hooks');
var Flex = require('./Flex-fbba4ad6.js');
var mergeProps = require('./mergeProps-e3da7237.js');
var useSingleSelection = require('./useSingleSelection-d52a0dbf.js');
var useCurrentKey = require('./useCurrentKey-3b4c8a44.js');
var useCollectionFocusRing = require('./useCollectionFocusRing-ca37785b.js');
var collectionUtils = require('./collectionUtils-1535080e.js');
var useId = require('./useId-6c0eeb27.js');
var useTranslationBundle = require('./useTranslationBundle-9da032d6.js');
var HiddenAccessible = require('./HiddenAccessible-087eb49a.js');
var Collection = require('./Collection-9880039f.js');
var classNames = require('./classNames-c14c6ef3.js');
var compat = require('preact/compat');
var useComponentTheme = require('./useComponentTheme-082fc8e4.js');
var UNSAFE_Indexer_themes_redwood_IndexerTheme = require('./UNSAFE_Indexer/themes/redwood/IndexerTheme.js');
var useTestId = require('./useTestId-8234ec1e.js');

/**
 * The others section variable that application could use
 * to compare value
 */
// const translations = useTranslationBundle<BundleType>('@oracle/oraclejet-preact');
const SECTION_OTHERS = Object.freeze({
    key: '__others__',
    label: '#'
});
const ITEM_SELECTOR = '[data-oj-key]';
const SectionItem = compat.forwardRef((props, ref) => {
    const translations = useTranslationBundle.useTranslationBundle('@oracle/oraclejet-preact');
    const { context, selectedKey } = props;
    const isSelected = context.data.key === selectedKey;
    const commonProps = getCommonProps(props, ref);
    const { classes } = useComponentTheme.useComponentTheme(UNSAFE_Indexer_themes_redwood_IndexerTheme.IndexerRedwoodTheme, {
        focused: commonProps.ref && commonProps.isFocusRingVisible ? 'isFocused' : 'notFocused',
        disabled: context.data.isDisabled ? 'isDisabled' : 'notDisabled',
        selected: isSelected ? 'isSelected' : 'notSelected'
    });
    const itemClasses = classNames.classNames([classes]);
    const sectionLabel = context.data.label || context.data.key;
    const valueText = context.data.isDisabled
        ? translations.indexer_disabledLabel({ SECTION: `${sectionLabel}` })
        : `${sectionLabel}`;
    return (jsxRuntime.jsx("li", { ...commonProps, class: itemClasses, "data-oj-valuetext": valueText, "data-oj-disabled": context.data.isDisabled, children: context.data.label || context.data.key }));
});
function getCommonProps({ context, currentKey, valueNow, isFocusRingVisible }, ref) {
    const isCurrent = context.data.key === currentKey;
    return {
        ...(isCurrent && { ref }),
        key: context.data.key,
        'data-oj-key': context.data.key,
        'data-oj-key-type': typeof context.data.key,
        'data-oj-valuenow': valueNow,
        isFocusRingVisible: !!isFocusRingVisible
    };
}
// render the last section, that contains the last character and others character
const LastSectionItem = compat.forwardRef(({ lastValueNow, ...sectionProps }, ref) => {
    const commonProps = { ...sectionProps, ref };
    return (jsxRuntime.jsxs(preact.Fragment, { children: [jsxRuntime.jsx(SectionItem, { ...commonProps }), jsxRuntime.jsx(OthersItem, { ...commonProps, ref: ref, context: { index: -1, data: SECTION_OTHERS }, valueNow: lastValueNow })] }));
});
const OthersItem = compat.forwardRef((props, ref) => {
    const { context, selectedKey } = props;
    const commonProps = getCommonProps(props, ref);
    const isSelected = context.data.key === selectedKey;
    const { classes } = useComponentTheme.useComponentTheme(UNSAFE_Indexer_themes_redwood_IndexerTheme.IndexerRedwoodTheme, {
        focused: commonProps.ref && commonProps.isFocusRingVisible ? 'isFocused' : 'notFocused',
        selected: isSelected ? 'isSelected' : 'notSelected'
    });
    const othersClasses = classNames.classNames([classes]);
    const othersValueText = SECTION_OTHERS.label;
    return (jsxRuntime.jsx("li", { ...commonProps, class: othersClasses, "data-oj-valuetext": othersValueText, children: context.data.label }));
});
const SeparatorItem = compat.forwardRef((props, ref) => {
    const translations = useTranslationBundle.useTranslationBundle('@oracle/oraclejet-preact');
    const { context, sections } = props;
    const commonProps = getCommonProps(props, ref);
    const { from, to } = getSeparatorRange(props);
    const { classes, styles: { dotStyle } } = useComponentTheme.useComponentTheme(UNSAFE_Indexer_themes_redwood_IndexerTheme.IndexerRedwoodTheme, {
        focused: commonProps.ref && commonProps.isFocusRingVisible ? 'isFocused' : 'notFocused'
    });
    if (!isInSeparatorMiddle(context.index, from, to)) {
        return null;
    }
    const fromText = sections[from].label || sections[from].key;
    const toText = sections[to].label || sections[to].key;
    const separatorClasses = classNames.classNames([classes]);
    const separatorValueText = translations.indexer_separatorLabel({
        FROM_SECTION: `${fromText}`,
        TO_SECTION: `${toText}`
    });
    return (jsxRuntime.jsx("li", { ...commonProps, class: separatorClasses, "data-oj-valuetext": separatorValueText, children: jsxRuntime.jsx(Flex.Flex, { align: "center", justify: "center", children: jsxRuntime.jsx("div", { class: dotStyle }) }) }));
});
function hasSeparator(props) {
    const { from, to } = getSeparatorRange(props);
    return isInSeparatorMiddle(props.context.index, from, to);
}
function getSeparatorRange({ context, sectionsPerTruncation, last }) {
    const from = context.index - (context.index % sectionsPerTruncation) + 1;
    let to = from + sectionsPerTruncation - 2;
    to = to >= last ? last - 1 : to;
    return { from, to };
}
function isInSeparatorMiddle(index, from, to) {
    return index === Math.floor((from + to) / 2);
}

const defaultSections = [
    { key: 'A' },
    { key: 'B' },
    { key: 'C' },
    { key: 'D' },
    { key: 'E' },
    { key: 'F' },
    { key: 'G' },
    { key: 'H' },
    { key: 'I' },
    { key: 'J' },
    { key: 'K' },
    { key: 'L' },
    { key: 'M' },
    { key: 'N' },
    { key: 'O' },
    { key: 'P' },
    { key: 'Q' },
    { key: 'R' },
    { key: 'S' },
    { key: 'T' },
    { key: 'U' },
    { key: 'V' },
    { key: 'W' },
    { key: 'X' },
    { key: 'Y' },
    { key: 'Z' }
];
/**
 * Pure Preact based component that consumes Collection component
 * and renders an indexer.
 */
function Indexer({ sections = defaultSections, value, onCommit = () => { }, testId }) {
    const rootRef = hooks.useRef(null);
    const ulRef = hooks.useRef(null);
    const currElementRef = preact.createRef();
    const [current, setCurrent] = hooks.useState(sections[0]?.key);
    // the number of sections in each truncation
    const [sectionsPerTruncation, setSectionsPerTruncation] = hooks.useState(-1);
    // the total number of rendered sections and separators
    const renderedSectionsCount = hooks.useRef(-1);
    const itemHeightRef = hooks.useRef(0);
    // the id for aria describedby
    const uniqueId = useId.useId();
    const [showFocusRing, focusRingProps] = useCollectionFocusRing.useCollectionFocusRing(rootRef, ['ArrowUp', 'ArrowDown']);
    const { currentKeyProps } = useCurrentKey.useCurrentKey((element) => collectionUtils.keyExtractor(element, ITEM_SELECTOR), true, collectionUtils.getPrevNextKey(rootRef.current, current, true, ITEM_SELECTOR), collectionUtils.getPrevNextKey(rootRef.current, current, false, ITEM_SELECTOR), undefined, undefined, current, (detail) => setCurrent(detail.value));
    const { selectionProps } = useSingleSelection.useSingleSelection((element) => handleKeyExtract(element, ulRef, current), 
    // pass in undefined so onCommit handler will be called
    // no matter whether the Section was selected before or not
    undefined, (detail) => handleSelection(detail, onCommit, sections));
    /**
     * Item renderer that will return a section item or a section separator
     * based on the sectionsPerTruncation and item context index.
     * @param context item context
     */
    const itemRenderer = (context) => {
        const last = sections.length - 1;
        renderedSectionsCount.current += 1;
        const commonProps = {
            context,
            ref: currElementRef,
            currentKey: current,
            selectedKey: value,
            valueNow: renderedSectionsCount.current,
            isFocusRingVisible: !!showFocusRing
        };
        // render the last and the others character, they are always present
        if (context.index === last) {
            return jsxRuntime.jsx(LastSectionItem, { ...commonProps, lastValueNow: renderedSectionsCount.current + 1 });
        }
        // render a section, in the non-truncation case or when it is the first in a truncation
        if (sectionsPerTruncation <= 1 || context.index % sectionsPerTruncation === 0) {
            return jsxRuntime.jsx(SectionItem, { ...commonProps });
        }
        // render the separator in the middle of a truncation
        const separatorProps = { ...commonProps, sectionsPerTruncation, last, sections };
        if (hasSeparator(separatorProps)) {
            return jsxRuntime.jsx(SeparatorItem, { ...separatorProps });
        }
        // remove the count for truncated sections
        renderedSectionsCount.current -= 1;
        return null;
    };
    // truncate the Indexer during resize
    const handleResize = hooks.useCallback((entries) => {
        for (const entry of entries) {
            updateSectionsPerTruncation(entry.contentRect.height, itemHeightRef.current, sections.length, sections[0]?.key, sectionsPerTruncation, setSectionsPerTruncation, setCurrent);
        }
    }, [sections, sectionsPerTruncation]);
    hooks.useEffect(() => {
        if (ulRef.current) {
            // Get aria values from IndexerItem to update aria values on Indexer ul element
            ulRef.current.setAttribute('aria-valuemax', renderedSectionsCount.current + 1 + '');
            ulRef.current.setAttribute('aria-valuetext', currElementRef.current?.dataset?.['ojValuetext'] || '');
            ulRef.current.setAttribute('aria-valuenow', currElementRef.current?.dataset?.['ojValuenow'] || '');
        }
        renderedSectionsCount.current = -1;
    });
    /**
     * Set up the initial values for sectionsPerTruncation and event listeners
     */
    hooks.useEffect(() => {
        const root = rootRef.current;
        if (root) {
            itemHeightRef.current = root.querySelector('li')?.offsetHeight || 0;
            updateSectionsPerTruncation(root.offsetHeight, itemHeightRef.current, sections.length, sections[0]?.key, sectionsPerTruncation, setSectionsPerTruncation, setCurrent);
        }
    }, [sections, sectionsPerTruncation]);
    /**
     * Set up resize observer and refresh the resize observer when
     * sectionsPerTruncation is changed, otherwise it will only have the
     * old copy of sectionsPerTruncation.
     */
    hooks.useEffect(() => {
        const root = rootRef.current;
        if (root) {
            const resizeObserver = new ResizeObserver((entries) => {
                handleResize(entries);
            });
            resizeObserver.observe(root);
            return () => {
                resizeObserver.unobserve(root);
            };
        }
        return undefined;
    }, [sectionsPerTruncation, handleResize]);
    const translations = useTranslationBundle.useTranslationBundle('@oracle/oraclejet-preact');
    const { styles: { baseStyle, innerStyle } } = useComponentTheme.useComponentTheme(UNSAFE_Indexer_themes_redwood_IndexerTheme.IndexerRedwoodTheme);
    const testIdProps = useTestId.useTestId(testId);
    return (jsxRuntime.jsxs("div", { ref: rootRef, class: baseStyle, ...testIdProps, children: [jsxRuntime.jsx(Flex.Flex, { align: "center", width: "6x", height: "100%", children: jsxRuntime.jsx("ul", { ...mergeProps.mergeProps(currentKeyProps, focusRingProps, selectionProps), ref: ulRef, tabIndex: 0, "aria-label": "Indexer", "aria-orientation": "vertical", "aria-valuemin": 0, "aria-describedby": uniqueId, role: "slider", class: innerStyle, children: jsxRuntime.jsx(Collection.Collection, { items: sections, children: itemRenderer }) }) }), jsxRuntime.jsx(HiddenAccessible.HiddenAccessible, { children: jsxRuntime.jsx("span", { id: uniqueId, children: getIndexerDescription(translations) }) })] }));
}
// A function to extract key for selection
const handleKeyExtract = (element, rootRef, current) => {
    if (element === rootRef.current) {
        return current === undefined ? null : current;
    }
    return collectionUtils.keyExtractor(element, ITEM_SELECTOR);
};
const handleSelection = (detail, onCommit, sections) => {
    if (detail.value === SECTION_OTHERS.key) {
        onCommit({ value: SECTION_OTHERS.key });
    }
    else {
        const selectedSection = sections.find((section) => section.key === detail.value);
        onCommit({ value: selectedSection.key });
    }
};
/**
 * A function that calculates the section count, based on
 * the container height and the number of sections
 * @param height height of Indexer container
 */
const updateSectionsPerTruncation = (height, itemHeight, sectionsLength, firstSectionKey, sectionsPerTruncation, setSectionsPerTruncation, setCurrent) => {
    if (height === 0 || itemHeight === 0) {
        return;
    }
    const maxSections = height / itemHeight;
    const last = sectionsLength - 1;
    // when the container size is too small to hold two sections
    if (maxSections < 2) {
        if (sectionsPerTruncation !== last) {
            setSectionsPerTruncation(last);
            setCurrent(firstSectionKey);
        }
        // no truncation
        // compare with < 0.01 for the deviation from calculation, when sectionsLength and maxSections
        // are about the same, maxNum === sectionsLength doesn't work
    }
    else if (maxSections > sectionsLength || sectionsLength - maxSections < 0.01) {
        if (sectionsPerTruncation > 1) {
            setSectionsPerTruncation(1);
            setCurrent(firstSectionKey);
        }
        // need truncation
    }
    else {
        const tempSectionCount = findSectionCount(maxSections, last);
        if (tempSectionCount !== sectionsPerTruncation && tempSectionCount < sectionsLength) {
            setSectionsPerTruncation(tempSectionCount);
            setCurrent(firstSectionKey);
        }
    }
};
/**
 * A helper function to find the best section count
 * in a truncation
 *
 * @param maxSections maximum number of sections allowed in a truncation
 * @param last the index of last section
 */
const findSectionCount = (maxSections, last) => {
    // need truncation
    maxSections -= 2; // minus the last character and the others character
    maxSections /= 2; // each truncation has a section and a separator
    const newSectionCount = Math.round(last / maxSections) + 1;
    const truncationLeftover = last % newSectionCount;
    const truncationCount = Math.floor(last / newSectionCount) + (truncationLeftover > 1 ? 1 : 0);
    // When the sectionCount becomes greater, it will result in
    // same truncations but with different sections appearing.
    // The following is to find the best sectionCount in this case
    // and prevent unnecessary truncations.
    let tempLeftover = last - (truncationCount - 1) * newSectionCount;
    let tempSectionCount = newSectionCount;
    while (tempSectionCount > tempLeftover) {
        tempSectionCount -= 1;
        tempLeftover = last - (truncationCount - 1) * tempSectionCount;
    }
    if (tempSectionCount != newSectionCount) {
        tempSectionCount += 1;
    }
    return tempSectionCount;
};
/**
 * Helper function to find the aria description for Indexer,
 * based on whether current device is a mobile device
 */
function getIndexerDescription(translations) {
    if (collectionUtils.isMobile()) {
        return translations.indexer_touchInstructionText();
    }
    else {
        return translations.indexer_keyboardInstructionText();
    }
}

exports.Indexer = Indexer;
exports.SECTION_OTHERS = SECTION_OTHERS;
//# sourceMappingURL=Indexer-563ea09d.js.map
