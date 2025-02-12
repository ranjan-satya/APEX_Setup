/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * Licensed under The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { MenuValueUpdateDetail } from './menuUtils';
type SelectSingleMenuGroupContextProps = {
    isMultiple: false;
    value?: string;
    onCommit?: (detail: MenuValueUpdateDetail<string>) => void;
};
type SelectMultipleMenuGroupContextProps = {
    isMultiple: true;
    value?: string[];
    onCommit?: (detail: MenuValueUpdateDetail<string[]>) => void;
};
type SelectMenuGroupContextProps = SelectSingleMenuGroupContextProps | SelectMultipleMenuGroupContextProps;
declare const SelectMenuGroupContext: import("preact").Context<SelectMenuGroupContextProps>;
export { SelectMenuGroupContext };
export type { SelectMenuGroupContextProps };
