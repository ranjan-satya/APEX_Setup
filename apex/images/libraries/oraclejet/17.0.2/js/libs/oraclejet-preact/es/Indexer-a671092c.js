/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs } from 'preact/jsx-runtime';
import { Fragment, createRef } from 'preact';
import { useRef, useState, useCallback, useEffect } from 'preact/hooks';
import { F as Flex } from './Flex-24628925.js';
import { m as mergeProps } from './mergeProps-88ea8306.js';
import { u as useSingleSelection } from './useSingleSelection-405a3d03.js';
import { u as useCurrentKey } from './useCurrentKey-db7d3bb9.js';
import { u as useCollectionFocusRing } from './useCollectionFocusRing-d0c80397.js';
import { m as getPrevNextKey, k as keyExtractor, p as isMobile } from './collectionUtils-d72c7c40.js';
import { u as useId } from './useId-03dbfdf0.js';
import { u as useTranslationBundle } from './useTranslationBundle-cd815e10.js';
import { H as HiddenAccessible } from './HiddenAccessible-61197e7c.js';
import { C as Collection } from './Collection-c4f2f3ea.js';
import { c as classNames } from './classNames-4e12b00d.js';
import { forwardRef } from 'preact/compat';
import { u as useComponentTheme } from './useComponentTheme-d2f9e47f.js';
import { IndexerRedwoodTheme } from './UNSAFE_Indexer/themes/redwood/IndexerTheme.js';
import { u as useTestId } from './useTestId-adde554c.js';

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
const SectionItem = forwardRef((props, ref) => {
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const { context, selectedKey } = props;
    const isSelected = context.data.key === selectedKey;
    const commonProps = getCommonProps(props, ref);
    const { classes } = useComponentTheme(IndexerRedwoodTheme, {
        focused: commonProps.ref && commonProps.isFocusRingVisible ? 'isFocused' : 'notFocused',
        disabled: context.data.isDisabled ? 'isDisabled' : 'notDisabled',
        selected: isSelected ? 'isSelected' : 'notSelected'
    });
    const itemClasses = classNames([classes]);
    const sectionLabel = context.data.label || context.data.key;
    const valueText = context.data.isDisabled
        ? translations.indexer_disabledLabel({ SECTION: `${sectionLabel}` })
        : `${sectionLabel}`;
    return (jsx("li", { ...commonProps, class: itemClasses, "data-oj-valuetext": valueText, "data-oj-disabled": context.data.isDisabled, children: context.data.label || context.data.key }));
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
const LastSectionItem = forwardRef(({ lastValueNow, ...sectionProps }, ref) => {
    const commonProps = { ...sectionProps, ref };
    return (jsxs(Fragment, { children: [jsx(SectionItem, { ...commonProps }), jsx(OthersItem, { ...commonProps, ref: ref, context: { index: -1, data: SECTION_OTHERS }, valueNow: lastValueNow })] }));
});
const OthersItem = forwardRef((props, ref) => {
    const { context, selectedKey } = props;
    const commonProps = getCommonProps(props, ref);
    const isSelected = context.data.key === selectedKey;
    const { classes } = useComponentTheme(IndexerRedwoodTheme, {
        focused: commonProps.ref && commonProps.isFocusRingVisible ? 'isFocused' : 'notFocused',
        selected: isSelected ? 'isSelected' : 'notSelected'
    });
    const othersClasses = classNames([classes]);
    const othersValueText = SECTION_OTHERS.label;
    return (jsx("li", { ...commonProps, class: othersClasses, "data-oj-valuetext": othersValueText, children: context.data.label }));
});
const SeparatorItem = forwardRef((props, ref) => {
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const { context, sections } = props;
    const commonProps = getCommonProps(props, ref);
    const { from, to } = getSeparatorRange(props);
    const { classes, styles: { dotStyle } } = useComponentTheme(IndexerRedwoodTheme, {
        focused: commonProps.ref && commonProps.isFocusRingVisible ? 'isFocused' : 'notFocused'
    });
    if (!isInSeparatorMiddle(context.index, from, to)) {
        return null;
    }
    const fromText = sections[from].label || sections[from].key;
    const toText = sections[to].label || sections[to].key;
    const separatorClasses = classNames([classes]);
    const separatorValueText = translations.indexer_separatorLabel({
        FROM_SECTION: `${fromText}`,
        TO_SECTION: `${toText}`
    });
    return (jsx("li", { ...commonProps, class: separatorClasses, "data-oj-valuetext": separatorValueText, children: jsx(Flex, { align: "center", justify: "center", children: jsx("div", { class: dotStyle }) }) }));
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
    const rootRef = useRef(null);
    const ulRef = useRef(null);
    const currElementRef = createRef();
    const [current, setCurrent] = useState(sections[0]?.key);
    // the number of sections in each truncation
    const [sectionsPerTruncation, setSectionsPerTruncation] = useState(-1);
    // the total number of rendered sections and separators
    const renderedSectionsCount = useRef(-1);
    const itemHeightRef = useRef(0);
    // the id for aria describedby
    const uniqueId = useId();
    const [showFocusRing, focusRingProps] = useCollectionFocusRing(rootRef, ['ArrowUp', 'ArrowDown']);
    const { currentKeyProps } = useCurrentKey((element) => keyExtractor(element, ITEM_SELECTOR), true, getPrevNextKey(rootRef.current, current, true, ITEM_SELECTOR), getPrevNextKey(rootRef.current, current, false, ITEM_SELECTOR), undefined, undefined, current, (detail) => setCurrent(detail.value));
    const { selectionProps } = useSingleSelection((element) => handleKeyExtract(element, ulRef, current), 
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
            return jsx(LastSectionItem, { ...commonProps, lastValueNow: renderedSectionsCount.current + 1 });
        }
        // render a section, in the non-truncation case or when it is the first in a truncation
        if (sectionsPerTruncation <= 1 || context.index % sectionsPerTruncation === 0) {
            return jsx(SectionItem, { ...commonProps });
        }
        // render the separator in the middle of a truncation
        const separatorProps = { ...commonProps, sectionsPerTruncation, last, sections };
        if (hasSeparator(separatorProps)) {
            return jsx(SeparatorItem, { ...separatorProps });
        }
        // remove the count for truncated sections
        renderedSectionsCount.current -= 1;
        return null;
    };
    // truncate the Indexer during resize
    const handleResize = useCallback((entries) => {
        for (const entry of entries) {
            updateSectionsPerTruncation(entry.contentRect.height, itemHeightRef.current, sections.length, sections[0]?.key, sectionsPerTruncation, setSectionsPerTruncation, setCurrent);
        }
    }, [sections, sectionsPerTruncation]);
    useEffect(() => {
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
    useEffect(() => {
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
    useEffect(() => {
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
    const translations = useTranslationBundle('@oracle/oraclejet-preact');
    const { styles: { baseStyle, innerStyle } } = useComponentTheme(IndexerRedwoodTheme);
    const testIdProps = useTestId(testId);
    return (jsxs("div", { ref: rootRef, class: baseStyle, ...testIdProps, children: [jsx(Flex, { align: "center", width: "6x", height: "100%", children: jsx("ul", { ...mergeProps(currentKeyProps, focusRingProps, selectionProps), ref: ulRef, tabIndex: 0, "aria-label": "Indexer", "aria-orientation": "vertical", "aria-valuemin": 0, "aria-describedby": uniqueId, role: "slider", class: innerStyle, children: jsx(Collection, { items: sections, children: itemRenderer }) }) }), jsx(HiddenAccessible, { children: jsx("span", { id: uniqueId, children: getIndexerDescription(translations) }) })] }));
}
// A function to extract key for selection
const handleKeyExtract = (element, rootRef, current) => {
    if (element === rootRef.current) {
        return current === undefined ? null : current;
    }
    return keyExtractor(element, ITEM_SELECTOR);
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
    if (isMobile()) {
        return translations.indexer_touchInstructionText();
    }
    else {
        return translations.indexer_keyboardInstructionText();
    }
}

export { Indexer as I, SECTION_OTHERS as S };
//# sourceMappingURL=Indexer-a671092c.js.map
