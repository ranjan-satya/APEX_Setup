/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentProps } from 'preact';
import { Ref } from 'preact/hooks';
import { DataState, SelectionDetail } from '../UNSAFE_Collection';
import { Item } from '../utils/UNSAFE_dataProvider';
import { ValueUpdateDetail } from '../utils/UNSAFE_valueUpdateDetail';
import { SelectMultiple } from './SelectMultiple';
import { SelectedValuesCount } from './SelectedValuesCount';
type PickedPropsFromSelectMultiple = Pick<ComponentProps<typeof SelectMultiple>, 'addToList' | 'aria-describedby' | 'isDisabled' | 'isReadonly' | 'onAddToListAction' | 'onFilter' | 'onLoadRange'>;
type RenamedPropsFromSelectMultiple = Omit<PickedPropsFromSelectMultiple, 'aria-describedby'> & {
    ariaDescribedBy: PickedPropsFromSelectMultiple['aria-describedby'];
};
export type UseSelectMultipleProps<K, D> = RenamedPropsFromSelectMultiple & {
    data?: DataState<K, D> | null;
    inputRef: Ref<HTMLElement>;
    isFocused?: boolean;
    onCommit: (detail: ValueUpdateDetail<Set<K>>) => void;
    valueItems?: Item<K, D>[];
};
type SelectedValuesCountToggleType = ComponentProps<typeof SelectedValuesCount>['onToggle'];
type SelectedValuesCountToggleDetailType = Parameters<Exclude<SelectedValuesCountToggleType, undefined>>[0];
/**
 * Hook that manages SelectMultiple state and behavior.  This hook creates state variables and
 * event listeners, returning properties to apply to components internally rendered by
 * SelectMultiple, as well as state information.
 *
 * @param ariaDescribedBy Specifies the ID of elements that describe the input.
 * @param data Specifies data for the dropdown list.
 * @param inputRef Ref to the input element (this can be an input in desktop and a div in mobile).
 * @param isDisabled Specifies whether the component is disabled.
 * @param isFocused Specifies whether the component has focus.
 * @param isReadonly Specifies whether the component is readonly.
 * @param onCommit Callback invoked when the selected values are committed.
 * @param onFilter Callback function to trigger loading data for the dropdown list,
 * which may or may not be filtered by user entered text.
 * @param onLoadRange Callback function to handle when the viewport of the dropdown list has
 * changed, including the case where the user scrolls to the end of the list and there are more
 * items to load.  The function should set a new DataState on the component for the specified
 * range.
 * @param valueItems Specifies the keys, data, and optional metadata for the selected values.
 *
 * @returns Properties to apply to internal components that SelectMultiple renders, and component
 * state.
 */
export declare function useSelectMultiple<K, D>({ addToList, ariaDescribedBy, data: propData, inputRef, isDisabled, isFocused: propIsFocused, isReadonly, onAddToListAction, onCommit, onFilter, onLoadRange: propOnLoadRange, valueItems }: UseSelectMultipleProps<K, D>): {
    addToListEventHandlers: {
        onAction: () => void;
    };
    ariaProps: {
        ariaDescribedBy: string | undefined;
    };
    collectionProps: {
        currentKey: K | undefined;
        data: DataState<K, D> | null | undefined;
        onCurrentKeyChange: (detail: import("../UNSAFE_Collection").CurrentKeyDetail<K>) => void;
        onSelectionChange: (detail: SelectionDetail<K>) => void;
        onLoadRange: ((range: import("../UNSAFE_Collection").Range) => void) | undefined;
        selectedKeys: Set<K> | undefined;
    };
    data: DataState<K, D> | null | undefined;
    dropdownArrowEventHandlers: {
        onClick: () => void;
    };
    dropdownEventHandlers: {
        onAutoDismiss: ((event?: Event | undefined) => void) | ((event?: Event) => void);
        onPosition: (data: import("../UNSAFE_Floating").PositionData) => void;
    };
    dropdownRef: Ref<HTMLDivElement>;
    hasSelectedValuesCount: boolean;
    inputEventHandlers: {
        onInput: (detail: ValueUpdateDetail<string>) => void;
        onKeyDown: ((event: KeyboardEvent) => void) | ((event: KeyboardEvent) => void);
        onKeyUp: (event: KeyboardEvent) => void;
    };
    inputRef: Ref<HTMLElement>;
    isAddToListShown: boolean;
    isDataFetched: boolean;
    isDropdownAbove: boolean;
    isDropdownOpen: boolean;
    isDropdownSelectedOnlyView: boolean;
    isEmptyResults: boolean;
    isFocused: boolean;
    isUserFiltering: boolean;
    mainFieldRef: Ref<HTMLDivElement>;
    mouseProps: {
        onMouseDown?: undefined;
    } | {
        onMouseDown: (event: MouseEvent) => void;
    };
    searchText: string | undefined;
    selectedValuesCountProps: {
        onKeyDown: (event: KeyboardEvent) => void;
        onKeyUp: (event: KeyboardEvent) => void;
        onMouseDown: (event: MouseEvent) => void;
        onToggle: (detail: SelectedValuesCountToggleDetailType) => void;
    };
    selectedValuesDescriptionId: string;
    selectedValuesKeyboardNavDescriptionId: string;
    setDropdownOpen: import("preact/hooks").Dispatch<import("preact/hooks").StateUpdater<boolean>>;
    setUserInput: import("preact/hooks").Dispatch<import("preact/hooks").StateUpdater<string | undefined>>;
    stopFiltering: () => void;
    textTagListProps: {
        textTagListRef: Ref<{
            focus: () => void;
            blur: () => void;
        }>;
        onExitNavigation: () => void;
        onRemove: (keys: K[]) => void;
    };
    userInput: string | undefined;
};
export {};
