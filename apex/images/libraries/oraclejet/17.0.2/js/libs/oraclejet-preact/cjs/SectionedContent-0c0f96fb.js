/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var hooks = require('preact/hooks');
var Dropdown = require('./Dropdown-820dc3fe.js');
var Flex = require('./Flex-fbba4ad6.js');
var FocusTrap = require('./FocusTrap-0a03f5a2.js');
var keyboardUtils = require('./keyboardUtils-f835e1ee.js');
var useTestId = require('./useTestId-8234ec1e.js');
var View = require('./View-011404a7.js');

const DEFAULT_PLACEMENT = 'bottom-start';
/**
 * StickyPositioningDropdown is used to display content which supports conditional rendering,
 * or other cases where the size of the content can change and cause the dropdown to rerender
 * in a different placement. This component ensures the repositioning happens only once,
 * until there is a collision, instead of allowing the dropdown to keep trying to
 * move back to its default position on every render.
 */
const StickyPositioningDropdown = ({ children, isOpen, onPosition, ...rest }) => {
    const [placement, setPlacement] = hooks.useState(DEFAULT_PLACEMENT);
    const [prevIsOpen, setPrevIsOpen] = hooks.useState(isOpen);
    if (prevIsOpen !== isOpen) {
        setPrevIsOpen(isOpen);
        // reset the placement to the default when the dropdown closes, not opens, so that it doesn't
        // initially open in the previous position and then move to the default position on the
        // rerender after the state is updated
        if (!isOpen) {
            setPlacement(DEFAULT_PLACEMENT);
        }
    }
    const handlePosition = hooks.useCallback((positionData) => {
        // update the placement so that the dropdown stays where it is until there is a collision,
        // i.e. it no longer fits, instead of letting it try to move back to the default position
        // on every render
        setPlacement(positionData.placement);
        // call the callback that was passed in through props
        onPosition?.(positionData);
    }, [onPosition, setPlacement]);
    return (jsxRuntime.jsx(Dropdown.Dropdown, { isOpen: isOpen, onPosition: handlePosition, placement: placement, ...rest, children: children }));
};

/**
 * The SectionedContent component has slots for header, main, and footer content.
 * It is meant to be used in a floating or modal type container and includes
 * conditional support for focus trapping, so that you can tab between components
 * and sections while the container remains open.
 */
const SectionedContent = ({ 'aria-label': ariaLabel, contentRef: propRef, gap, footer, hasFocusTrap = false, header, main, paddingBlockEnd = '4x', paddingBlockStart = '4x', paddingInlineEnd = '4x', paddingInlineStart = '4x', role, testId }) => {
    const testIdProps = useTestId.useTestId(testId);
    const cRef = hooks.useRef(null);
    const contentRef = propRef ?? cRef;
    const handleKeyDown = hooks.useCallback((event) => {
        if (event.code === keyboardUtils.KEYS.TAB) {
            event.stopPropagation();
        }
    }, []);
    const sections = (jsxRuntime.jsxs(Flex.Flex, { direction: "column", gap: gap, children: [header, jsxRuntime.jsx(View.View, { paddingBlockEnd: paddingBlockEnd, paddingBlockStart: paddingBlockStart, paddingInlineEnd: paddingInlineEnd, paddingInlineStart: paddingInlineStart, children: main }), footer] }));
    // Use a FocusTrap around the content if hasFocusTrap is true.
    const childContent = hasFocusTrap ? (jsxRuntime.jsx(FocusTrap.FocusTrap, { restoreFocusRef: false, children: sections })) : ({ sections });
    return (jsxRuntime.jsx("div", { "aria-label": ariaLabel, onKeyDown: hasFocusTrap ? handleKeyDown : undefined, ref: contentRef, role: role, ...testIdProps, children: childContent }));
};

exports.SectionedContent = SectionedContent;
exports.StickyPositioningDropdown = StickyPositioningDropdown;
//# sourceMappingURL=SectionedContent-0c0f96fb.js.map
