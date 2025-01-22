/* @oracle/oraclejet-preact: undefined */
import { m as mergeProps } from './mergeProps-88ea8306.js';
import { u as useHover } from './useHover-d5088fcd.js';
import { u as useActive } from './useActive-7d9737a5.js';
import { u as useFocus } from './useFocus-38c95977.js';
import { u as usePress } from './usePress-97fc1cf1.js';

const DefaultActionableOptions = {
    isDisabled: false,
    isRepeat: false
};
/**
 * A hook that can add actionable support to a target element, turning it into a
 * clickable button, div, card, etc.
 * If isHover, isFocus, and isActive are only used for changing visual rendering, it would be
 * faster to not use this hook, and instead use :hover, :focus-visible, :active and usePress.
 * @param onActionHandler
 * @returns
 */
function useActionable(onActionHandler, settings = DefaultActionableOptions) {
    const mergedSettings = { ...DefaultActionableOptions, ...settings };
    const { pressProps } = usePress(onActionHandler, mergedSettings);
    const { hoverProps, isHover } = useHover({ isDisabled: mergedSettings.isDisabled });
    const { focusProps, isFocus } = useFocus({ isDisabled: mergedSettings.isDisabled });
    const { activeProps, isActive } = useActive({ isDisabled: mergedSettings.isDisabled });
    const actionableProps = mergeProps(pressProps, hoverProps, activeProps, focusProps);
    return { actionableProps, isActive, isHover, isFocus };
}

export { useActionable as u };
//# sourceMappingURL=useActionable-706fa57b.js.map
