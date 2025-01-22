/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs } from 'preact/jsx-runtime';
import { useState } from 'preact/hooks';
import { c as classNames } from './classNames-4e12b00d.js';
import { c as containsKey } from './keys-df361af9.js';
import { u as useId } from './useId-03dbfdf0.js';
import { u as useViewportIntersect } from './useViewportIntersect-2a2be24b.js';
import { T as TabbableModeContext } from './TabbableModeContext-7d8ad946.js';
import { u as useComponentTheme } from './useComponentTheme-d2f9e47f.js';
import { u as useInteractionStyle } from './useInteractionStyle-d65c72b6.js';
import { m as mergeInterpolations } from './mergeInterpolations-e2db2a66.js';
import { f as flexitemInterpolations } from './flexitem-7b7f7920.js';
import { listGroupHeaderMultiVariantStyles } from './PRIVATE_List/themes/ListStyles.css.js';
import { GroupedListRedwoodTheme } from './UNSAFE_GroupedList/themes/redwood/GroupedListTheme.js';
import { F as Flex } from './Flex-24628925.js';
import { S as Skeleton } from './Skeleton-c1d24eea.js';
import { S as SkeletonContainer } from './List-9026206d.js';

// default style class for items in ListView
const GROUP_SELECTOR = '[data-oj-listview-group]';
const STICKY_SELECTOR = '[data-oj-listview-sticky]';
/**
 * The internal component used to render a group header in ExpandableList and GroupedList.
 */
function ListGroupHeader({ ariaDescribedBy, children, itemKey, itemIndex, itemDepth, isFocused, isFocusRingVisible, isActive, isGridlineVisible, isExpandable, expandedKeys, viewportConfig }) {
    const [isStuck, setStuck] = useState(false);
    const { classes: groupedListThemeClasses, styles: groupedListStyles } = useComponentTheme(GroupedListRedwoodTheme);
    const { interactionProps, applyHoverStyle, applyPseudoHoverStyle, applyActiveStyle } = useInteractionStyle();
    const variantClasses = listGroupHeaderMultiVariantStyles({
        expandable: isExpandable ? 'isExpandable' : 'notExpandable',
        needsEventsHover: applyHoverStyle ? 'isNeedsEventsHover' : 'notNeedsEventsHover',
        pseudoHover: applyPseudoHoverStyle ? 'isPseudoHover' : 'notPseudoHover',
        active: applyActiveStyle || isActive ? 'isActive' : 'notActive',
        focusRingVisible: isFocusRingVisible && isFocused ? 'isFocusRingVisible' : 'notFocusRingVisible',
        gridlineTop: itemIndex > 0 ? 'visible' : 'hidden',
        gridlineBottom: isGridlineVisible ? 'visible' : 'hidden'
    });
    const baseClasses = [variantClasses];
    if (isStuck) {
        baseClasses.push(groupedListThemeClasses);
        baseClasses.push(groupedListStyles.stuckHeader);
    }
    const classes = classNames(baseClasses);
    const styleInterpolations = mergeInterpolations([
        ...Object.values(flexitemInterpolations)
    ]);
    const { class: cls, ...cellStyles } = styleInterpolations({
        alignSelf: 'center',
        flex: '1 0 auto'
    });
    useViewportIntersect({
        scroller: () => {
            if (isExpandable) {
                return null;
            }
            if (viewportConfig == null) {
                return document.body;
            }
            return viewportConfig.scroller();
        }
    }, 0, 1, '[data-oj-key=' + itemKey + ']', () => {
        setStuck(false);
    }, (entry) => {
        if (entry.boundingClientRect.y !== entry.intersectionRect.y) {
            setStuck(true);
        }
    });
    return (jsx("div", { id: useId(), role: "row", "aria-rowindex": itemIndex + 1, "aria-level": isNaN(itemDepth) ? undefined : itemDepth + 1, "data-oj-key": itemKey, class: classes, ...(typeof itemKey === 'number' && { 'data-oj-key-type': 'number' }), ...interactionProps, children: jsx("div", { id: useId(), role: "gridcell", "aria-describedby": ariaDescribedBy, "aria-colindex": 1, "aria-expanded": containsKey(expandedKeys, itemKey), style: cellStyles, children: jsx(TabbableModeContext.Provider, { value: { isTabbable: false }, children: children }) }) }));
}

const GroupLoadingIndicator = () => (jsx(SkeletonContainer, { minimumCount: 3, children: (index) => {
        const padding = { paddingLeft: index * 10 + 'px' };
        return (jsxs(Flex, { height: "12x", align: "center", children: [jsx("span", { style: padding }), jsx(Skeleton, { height: "4x" })] }));
    } }));

export { GROUP_SELECTOR as G, ListGroupHeader as L, STICKY_SELECTOR as S, GroupLoadingIndicator as a };
//# sourceMappingURL=GroupLoadingIndicator-9c995e99.js.map
