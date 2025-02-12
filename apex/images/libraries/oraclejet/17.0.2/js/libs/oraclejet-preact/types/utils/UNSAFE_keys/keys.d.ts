/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
export type ImmutableSet<V> = {
    size: number;
    has(value: V): boolean;
    values(): IterableIterator<V>;
};
/**
 * Type for key set used mainly for selection and expansion
 */
export type Keys<K> = {
    all: true;
    keys?: never;
    deletedKeys: ImmutableSet<K>;
} | {
    all: false;
    keys: ImmutableSet<K>;
    deletedKeys?: never;
};
/**
 * Returns true if the key is contains in keys, false otherwise
 */
export declare const containsKey: <K>(keys: Keys<K> | undefined, key: K) => boolean;
/**
 * Returns a new Keys that includes the specified key.
 * If the key is already in keys, then just return keys.
 */
export declare const addKey: <K>(keys: Keys<K>, key: K) => Keys<K>;
/**
 * Returns a new Keys that excludes the specified key.
 * If the key is already in keys, then just return keys.
 * disallowEmpty if set to true, will ensure that the returning keys will not be empty.
 */
export declare const removeKey: <K>(keys: Keys<K>, key: K, disallowEmpty: boolean) => Keys<K>;
/**
 * Helper function for checking for an undefined key
 * Keys can be null or undefined when not set, but falsey check is not appropriate for this as 0 is a legitimate key
 */
export declare const isKeyDefined: <K>(key: K) => boolean;
/**
 * Compares two Keys and return true if the keys inside each are the same including
 * having the same order.
 */
export declare const isSameKey: <K>(key1?: Keys<K>, key2?: Keys<K>) => boolean;
