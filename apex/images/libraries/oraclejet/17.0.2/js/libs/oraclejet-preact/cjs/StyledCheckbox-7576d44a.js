/* @oracle/oraclejet-preact: undefined */
'use strict';

var jsxRuntime = require('preact/jsx-runtime');
var compat = require('preact/compat');
var Check = require('./Check-f72ac53c.js');
var CheckboxOff = require('./CheckboxOff-9a4efabf.js');
var CheckboxOn = require('./CheckboxOn-9b9aa373.js');
var CheckboxMixed = require('./CheckboxMixed-7728d6aa.js');
var HiddenAccessible = require('./HiddenAccessible-087eb49a.js');
var useComponentTheme = require('./useComponentTheme-082fc8e4.js');
var UNSAFE_Checkbox_themes_CheckboxIconContract_css = require('./UNSAFE_Checkbox/themes/CheckboxIconContract.css.js');
var UNSAFE_Checkbox_themes_redwood_CheckboxIconTheme = require('./UNSAFE_Checkbox/themes/redwood/CheckboxIconTheme.js');
require('./TabbableModeContext-e99d527e.js');
var useTabbableMode = require('./useTabbableMode-5c8fd9e5.js');

var useCollectionGestureContext = require('./useCollectionGestureContext-daada886.js');

var hoverStyle = 'StyledCheckbox_hoverStyle__gne78f0';

/**
 * StyledCheckbox is a controlled component that displays a stylized checkbox for 'checked',
 * 'unchecked', and 'partial'. It passes intrinsic props to the native input element. This should be used
 * in conjunction with a label and be passed an onChange handler. If used within a collection use
 * 'useCollectionFocusRing', or use 'useCheckboxRadioContext' within RadioSet/CheckboxSet, to determine if you
 * should display the focus ring using keyboard navigation.
 */
const StyledCheckbox = compat.forwardRef(({ onClick, isActive, isFocusRingShown, isDisabled, isReadonly, isRequired, isChecked: propIsChecked = 'unchecked', 
// Remaining props should be intrinsic input props only. If you need additional input props exposed,
// add to the picked items from InputProps.
id, name, value, onKeyUp, onKeyDown, onChange, onFocus, onBlur, 'aria-label': ariaLabel, 'aria-labelledby': ariaLabelledBy, 'aria-describedby': ariaDescribedBy, isHover }, ref = null) => {
    const { isTabbable } = useTabbableMode.useTabbableMode();
    const isPartial = propIsChecked === 'partial';
    const isChecked = propIsChecked === 'checked' || isPartial;
    const ariaChecked = isChecked ? (isPartial ? 'mixed' : true) : false;
    const { classes } = useComponentTheme.useComponentTheme(UNSAFE_Checkbox_themes_redwood_CheckboxIconTheme.CheckboxIconRedwoodTheme, {
        disabled: isDisabled ? 'isDisabled' : 'notDisabled',
        checked: isChecked ? 'isChecked' : 'notChecked',
        readonly: isReadonly ? 'isReadonly' : 'notReadonly',
        active: isActive ? 'isActive' : 'notActive',
        focus: isFocusRingShown ? 'isFocused' : 'notFocused',
        iconSize: '4xUnits'
    });
    const IconComp = isReadonly
        ? isChecked
            ? Check.SvgCheck
            : CheckboxOff.SvgCheckboxOff
        : isChecked
            ? isPartial
                ? CheckboxMixed.SvgCheckboxMixed
                : CheckboxOn.SvgCheckboxOn
            : CheckboxOff.SvgCheckboxOff;
    const spanClass = isHover ? classes + ' ' + hoverStyle : classes;
    // JET-65187 oatb: Interactive controls must not be nested
    // For accessibility, we want aria-hidden to be true and disabled to be true when
    // the checkbox is 'embedded' in a collection in the dropdown of a SelectMultiple component.
    const isEmbedded = useCollectionGestureContext.useCollectionGestureContext() === 'embedded';
    return (jsxRuntime.jsxs(jsxRuntime.Fragment, { children: [jsxRuntime.jsx(HiddenAccessible.HiddenAccessible, { children: jsxRuntime.jsx("input", { ...(isReadonly ? { 'aria-readonly': true } : {}), "aria-checked": ariaChecked, ...(isEmbedded ? { 'aria-hidden': true } : {}), "aria-label": ariaLabel, "aria-labelledby": ariaLabelledBy, "aria-describedby": ariaDescribedBy, "aria-required": isRequired, ref: ref, name: name, value: value, onKeyUp: onKeyUp, onKeyDown: onKeyDown, onBlur: onBlur, onChange: onChange, onFocus: onFocus, id: id, type: "checkbox", disabled: isDisabled || isEmbedded, checked: isChecked, tabIndex: isTabbable ? 0 : -1 }) }), jsxRuntime.jsx("span", { className: spanClass, "aria-hidden": "true", onClick: onClick, role: "img", children: jsxRuntime.jsx(IconComp, { size: UNSAFE_Checkbox_themes_CheckboxIconContract_css.checkboxIconVars.iconSize, color: "currentColor" }) })] }));
});

exports.StyledCheckbox = StyledCheckbox;
//# sourceMappingURL=StyledCheckbox-7576d44a.js.map
