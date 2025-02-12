/**
 * @license
 * Copyright (c) %FIRST_YEAR% %CURRENT_YEAR%, Oracle and/or its affiliates.
 * The Universal Permissive License (UPL), Version 1.0
 * as shown at https://oss.oracle.com/licenses/upl/
 * @ignore
 */
import { ComponentChildren } from 'preact';
import { Item, ItemMetadata } from '../utils/UNSAFE_dataProvider';
import { type TestIdProps } from "../hooks/UNSAFE_useTestId";
declare const positions: readonly ["top", "top-left", "top-right", "top-start", "top-end", "bottom", "bottom-left", "bottom-right", "bottom-start", "bottom-end"];
type Position = (typeof positions)[number];
type Offset = number | {
    horizontal?: number;
    vertical?: number;
};
/**
 * An object representing a single message in MessageToast component.
 */
export type MessageToastItem = {
    /**
     * Defines whether or not to include the close icon for the message
     *
     * @default 'on'
     */
    closeAffordance?: 'on' | 'off';
    /**
     * Defines the detail text of the message
     */
    detail?: string;
    /**
     * Defines the severity of the message
     *
     * @default 'error'
     */
    severity?: 'none' | 'error' | 'warning' | 'confirmation' | 'info';
    /**
     * Defines the sound to be played when opening the message
     *
     * @default 'none'
     */
    sound?: 'default' | 'none' | string;
    /**
     * Defines the primary text of the message
     */
    summary?: string;
    /**
     * Defines the time after which the message is to be closed automatically
     *
     * on - default of 5s
     * off - no auto timeout, manually dismissed
     * number - seconds in milliseconds format
     *
     * @default 'off'
     */
    autoTimeout?: 'on' | 'off' | number;
};
/**
 * Structure of data item passed to the renderers
 */
export type MessageToastRendererDataItem<K, D> = {
    /**
     * The data for the current message
     */
    data: D;
    /**
     * The key for the current message
     */
    key: K;
    /**
     * The metadata for the current message
     */
    metadata?: ItemMetadata<K>;
};
type Props<Key, Data> = TestIdProps & {
    /**
     * Defines the fixed position where the notifications will to be placed on the screen.
     * - top-start resolves to top-left in LTR (top-right in RTL)
     * - top-end resolves to top-right in LTR (top-left in RTL)
     * - bottom-start resolves to bottom-left in LTR (bottom-right in RTL)
     * - bottom-end resolves to bottom-right in LTR (bottom-left in RTL)
     *
     * default bottom
     */
    position?: Position;
    /**
     * Defines an offset (in pixels) in the placement. Value can be supplied as a number or
     * an object with horizontal and vertical values.
     *
     * default 0
     */
    offset?: Offset;
    /**
     * Data for the MessageToast component. This data is used for rendering each toast message.
     * The key for each message will be configured using the key of the corresponding item. This way,
     * the component will know whether a new message is being added or an existing message is being updated/removed
     * when the new data comes in.
     */
    data: Item<Key, Data>[];
    /**
     * Triggered when a user tries to close a message through UI interaction. The application
     * should listen to this event and remove the corresponding message item from the data
     * which would then result in the message closed. If the application
     * fails to remove the message item from the data, then no change will be done in the
     * UI by the component and the message will stay in the UI opened.
     */
    onClose?: (item: Item<Key, Data>) => void;
    /**
     * Applications can use this property to provide the key of a renderer or a function that
     * returns the key of a renderer to use for rendering the detail content.
     *
     * When a renderer key is provided as a value for this property, the corresponding renderer
     * will be used for rendering the detail content for all the messages. If applications want
     * to use a different renderer for different messages, they can provide a function that
     * returns a renderer key instead.
     *
     * The provided function should accept an Item and return a key to a renderer for
     * rendering the corresponding message's detail content. The value returned from this function
     * should be a key to one of the renderers provided. If the returned value is not
     * one of the keys of the provided renderers, the component will throw an Error.
     *
     * If the function returns undefined, the component then will perform default rendering
     * of the detail content using the detail property of the corresponding message.
     *
     * If an application specifies both detail and a valid detailRendererKey, the detailRendererKey will
     * take precedence and the corresponding renderer will be used for rendering the detail content.
     */
    detailRendererKey?: string | ((item: Item<Key, Data>) => string | undefined);
    /**
     * Applications can use this property to provide the key of a renderer or a function that
     * returns the key of the renderer to use for rendering the start icon.
     *
     * When a renderer key is provided as a value for this property, the corresponding renderer
     * will be used for rendering the start icon for all the messages. If applications want
     * to use a different renderer for different messages, they can provide a function that
     * returns a renderer key instead.
     *
     * The provided function should accept an Item and return a key to a renderer for
     * rendering the corresponding message's start icon. The value returned from this function
     * should be a key to one of the renderers provided. If the returned value is not
     * one of the keys of the provided renderers, the component will throw an Error.
     *
     * If the function returns undefined, the component then will perform default rendering
     * of the start icon using the severity property of the corresponding message.
     *
     * If an application specifies both severity and a valid iconRendererKey, the iconRendererKey will
     * take precedence and the corresponding renderer will be used for rendering the start icon.
     */
    iconRendererKey?: string | ((item: Item<Key, Data>) => string | undefined);
    /**
     * A set of available renderers for rendering the message content. Which renderer is used
     * for rendering which content will be decided by specific properties in the row data.
     */
    renderers?: Record<string, (data: MessageToastRendererDataItem<Key, Data>) => ComponentChildren>;
};
/**
 * Message toasts are short, non-critical, auto-dismissible messages that communicate non-disruptive contextual messages.
 */
export declare function MessageToast<K extends string | number, D extends MessageToastItem>({ data, detailRendererKey, iconRendererKey, renderers, onClose, offset, position, testId }: Props<K, D>): import("preact").JSX.Element;
export {};
