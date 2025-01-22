/* @oracle/oraclejet-preact: undefined */
import { jsx, jsxs } from 'preact/jsx-runtime';
import { useState, useCallback, useRef } from 'preact/hooks';
import { D as Dropdown } from './Dropdown-717319bb.js';
import { F as Flex } from './Flex-24628925.js';
import { F as FocusTrap } from './FocusTrap-8ddd383f.js';
import { K as KEYS } from './keyboardUtils-4db21770.js';
import { u as useTestId } from './useTestId-adde554c.js';
import { V as View } from './View-6013acac.js';

const DEFAULT_PLACEMENT = 'bottom-start';
/**
 * StickyPositioningDropdown is used to display content which supports conditional rendering,
 * or other cases where the size of the content can change and cause the dropdown to rerender
 * in a different placement. This component ensures the repositioning happens only once,
 * until there is a collision, instead of allowing the dropdown to keep trying to
 * move back to its default position on every render.
 */
const StickyPositioningDropdown = ({ children, isOpen, onPosition, ...rest }) => {
    const [placement, setPlacement] = useState(DEFAULT_PLACEMENT);
    const [prevIsOpen, setPrevIsOpen] = useState(isOpen);
    if (prevIsOpen !== isOpen) {
        setPrevIsOpen(isOpen);
        // reset the placement to the default when the dropdown closes, not opens, so that it doesn't
        // initially open in the previous position and then move to the default position on the
        // rerender after the state is updated
        if (!isOpen) {
            setPlacement(DEFAULT_PLACEMENT);
        }
    }
    const handlePosition = useCallback((positionData) => {
        // update the placement so that the dropdown stays where it is until there is a collision,
        // i.e. it no longer fits, instead of letting it try to move back to the default position
        // on every render
        setPlacement(positionData.placement);
        // call the callback that was passed in through props
        onPosition?.(positionData);
    }, [onPosition, setPlacement]);
    return (jsx(Dropdown, { isOpen: isOpen, onPosition: handlePosition, placement: placement, ...rest, children: children }));
};

/**
 * The SectionedContent component has slots for header, main, and footer content.
 * It is meant to be used in a floating or modal type container and includes
 * conditional support for focus trapping, so that you can tab between components
 * and sections while the container remains open.
 */
const SectionedContent = ({ 'aria-label': ariaLabel, contentRef: propRef, gap, footer, hasFocusTrap = false, header, main, paddingBlockEnd = '4x', paddingBlockStart = '4x', paddingInlineEnd = '4x', paddingInlineStart = '4x', role, testId }) => {
    const testIdProps = useTestId(testId);
    const cRef = useRef(null);
    const contentRef = propRef ?? cRef;
    const handleKeyDown = useCallback((event) => {
        if (event.code === KEYS.TAB) {
            event.stopPropagation();
        }
    }, []);
    const sections = (jsxs(Flex, { direction: "column", gap: gap, children: [header, jsx(View, { paddingBlockEnd: paddingBlockEnd, paddingBlockStart: paddingBlockStart, paddingInlineEnd: paddingInlineEnd, paddingInlineStart: paddingInlineStart, children: main }), footer] }));
    // Use a FocusTrap around the content if hasFocusTrap is true.
    const childContent = hasFocusTrap ? (jsx(FocusTrap, { restoreFocusRef: false, children: sections })) : ({ sections });
    return (jsx("div", { "aria-label": ariaLabel, onKeyDown: hasFocusTrap ? handleKeyDown : undefined, ref: contentRef, role: role, ...testIdProps, children: childContent }));
};

export { StickyPositioningDropdown as S, SectionedContent as a };
//# sourceMappingURL=SectionedContent-815e377a.js.map
