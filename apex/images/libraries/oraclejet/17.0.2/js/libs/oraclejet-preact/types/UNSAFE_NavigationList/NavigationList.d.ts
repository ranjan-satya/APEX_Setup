import { Ref } from 'preact';
import { TestIdProps } from '../hooks/UNSAFE_useTestId';
import { NavigationListProps } from '../UNSAFE_NavigationListCommon';
export { RemovableNavigationListItem } from '../UNSAFE_NavigationListCommon';
export type FocusableHandle = {
    focus: () => void;
    blur: () => void;
};
export declare const NavigationList: import("preact").FunctionalComponent<import("preact/compat").PropsWithoutRef<NavigationListProps<string | number> & TestIdProps> & {
    ref?: Ref<FocusableHandle> | undefined;
}>;
