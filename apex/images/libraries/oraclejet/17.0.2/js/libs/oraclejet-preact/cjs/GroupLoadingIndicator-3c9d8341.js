/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var hooks = require('preact/hooks');
var classNames = require('./classNames-c14c6ef3.js');
var keys = require('./keys-a4b54295.js');
var useId = require('./useId-6c0eeb27.js');
var useViewportIntersect = require('./useViewportIntersect-ca1f958b.js');
var TabbableModeContext = require('./TabbableModeContext-e99d527e.js');
var useComponentTheme = require('./useComponentTheme-082fc8e4.js');
var useInteractionStyle = require('./useInteractionStyle-442c6a12.js');
var mergeInterpolations = require('./mergeInterpolations-6727b536.js');
var flexitem = require('./flexitem-fee13e26.js');
var PRIVATE_List_themes_ListStyles_css = require('./PRIVATE_List/themes/ListStyles.css.js');
var UNSAFE_GroupedList_themes_redwood_GroupedListTheme = require('./UNSAFE_GroupedList/themes/redwood/GroupedListTheme.js');
var Flex = require('./Flex-fbba4ad6.js');
var Skeleton = require('./Skeleton-f0f86df2.js');
var List = require('./List-bd9ecebb.js');

// default style class for items in ListView
const GROUP_SELECTOR = '[data-oj-listview-group]';
const STICKY_SELECTOR = '[data-oj-listview-sticky]';
/**
 * The internal component used to render a group header in ExpandableList and GroupedList.
 */
function ListGroupHeader({ ariaDescribedBy, children, itemKey, itemIndex, itemDepth, isFocused, isFocusRingVisible, isActive, isGridlineVisible, isExpandable, expandedKeys, viewportConfig }) {
    const [isStuck, setStuck] = hooks.useState(false);
    const { classes: groupedListThemeClasses, styles: groupedListStyles } = useComponentTheme.useComponentTheme(UNSAFE_GroupedList_themes_redwood_GroupedListTheme.GroupedListRedwoodTheme);
    const { interactionProps, applyHoverStyle, applyPseudoHoverStyle, applyActiveStyle } = useInteractionStyle.useInteractionStyle();
    const variantClasses = PRIVATE_List_themes_ListStyles_css.listGroupHeaderMultiVariantStyles({
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
    const classes = classNames.classNames(baseClasses);
    const styleInterpolations = mergeInterpolations.mergeInterpolations([
        ...Object.values(flexitem.flexitemInterpolations)
    ]);
    const { class: cls, ...cellStyles } = styleInterpolations({
        alignSelf: 'center',
        flex: '1 0 auto'
    });
    useViewportIntersect.useViewportIntersect({
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
    return (jsxRuntime.jsx("div", { id: useId.useId(), role: "row", "aria-rowindex": itemIndex + 1, "aria-level": isNaN(itemDepth) ? undefined : itemDepth + 1, "data-oj-key": itemKey, class: classes, ...(typeof itemKey === 'number' && { 'data-oj-key-type': 'number' }), ...interactionProps, children: jsxRuntime.jsx("div", { id: useId.useId(), role: "gridcell", "aria-describedby": ariaDescribedBy, "aria-colindex": 1, "aria-expanded": keys.containsKey(expandedKeys, itemKey), style: cellStyles, children: jsxRuntime.jsx(TabbableModeContext.TabbableModeContext.Provider, { value: { isTabbable: false }, children: children }) }) }));
}

const GroupLoadingIndicator = () => (jsxRuntime.jsx(List.SkeletonContainer, { minimumCount: 3, children: (index) => {
        const padding = { paddingLeft: index * 10 + 'px' };
        return (jsxRuntime.jsxs(Flex.Flex, { height: "12x", align: "center", children: [jsxRuntime.jsx("span", { style: padding }), jsxRuntime.jsx(Skeleton.Skeleton, { height: "4x" })] }));
    } }));

exports.GROUP_SELECTOR = GROUP_SELECTOR;
exports.GroupLoadingIndicator = GroupLoadingIndicator;
exports.ListGroupHeader = ListGroupHeader;
exports.STICKY_SELECTOR = STICKY_SELECTOR;
//# sourceMappingURL=GroupLoadingIndicator-3c9d8341.js.map
