/* @oracle/oraclejet-preact: undefined */
import { useState, useRef, useMemo, useCallback } from 'preact/hooks';

const DefaultSettings = {
    isDisabled: false,
    isRepeat: false,
    repeatDelay: 500,
    repeatInterval: 40
};
/**
 * Returns a click handler that can make a target element either clickable or keyboard pressable.
 *
 * @param onPressHandler function
 * @param isRepeat boolean
 * @param repeatInterval number number of ms between events for mouse and touch
 * @param repeatDelay number number of ms before repeat events initiates
 * @param isDisabled boolean
 * @returns
 */
function usePress(onPressHandler, settings = DefaultSettings) {
    const [isClickable, setIsClickable] = useState(true);
    const [isPressed, setIsPressed] = useState(false);
    const intervalID = useRef();
    const isRepeating = useRef(false);
    const mergedSettings = useMemo(() => {
        return { ...DefaultSettings, ...settings };
    }, [settings]);
    const repeatHandler = useCallback((event) => {
        if (isRepeating.current) {
            onPressHandler(event);
        }
        intervalID.current = setInterval(onPressHandler, mergedSettings.repeatInterval, event); // @HTMLUpdateOK
    }, [mergedSettings.repeatInterval, onPressHandler]);
    const onKeyDown = useCallback((event) => {
        if ((event.code === 'Space' || event.code === 'Enter') &&
            (mergedSettings.isRepeat || !event.repeat)) {
            event.preventDefault();
            setIsPressed(true);
            if (mergedSettings.isRepeat) {
                onPressHandler(event);
            }
        }
    }, [mergedSettings.isRepeat, onPressHandler, setIsPressed]);
    const onKeyUp = useCallback((event) => {
        if (event.code === 'Space' || event.code === 'Enter') {
            setIsPressed(false);
            event.preventDefault();
            if (!mergedSettings.isRepeat) {
                onPressHandler(event);
            }
        }
    }, [mergedSettings.isRepeat, onPressHandler, setIsPressed]);
    const onBlur = useCallback(() => {
        setIsPressed(false);
    }, [setIsPressed]);
    const onPointerDown = useCallback((event) => {
        setIsClickable(false);
        if (mergedSettings.isRepeat) {
            isRepeating.current = true;
            event.preventDefault();
            onPressHandler(event);
            intervalID.current = setTimeout(repeatHandler, mergedSettings.repeatDelay, event);
        }
    }, [mergedSettings, onPressHandler, intervalID, setIsClickable, repeatHandler]);
    const onPointerUp = useCallback((event) => {
        if (mergedSettings.isRepeat && intervalID.current) {
            isRepeating.current = false;
            clearInterval(intervalID.current);
            intervalID.current = undefined;
        }
        else {
            onPressHandler(event);
        }
    }, [mergedSettings.isRepeat, intervalID, onPressHandler]);
    // Keep this to permit automated invocation of target via click event
    // Need to ignore this for manual invocation whereby browser generates click
    // pointerdown/pointerup/click -> ignore click
    // keydown/keyup/click -> ignore click
    // click without pointerup or keyup -> invoke
    const onClick = useCallback((event) => {
        // There are use cases where pressable/clickable components (eg. Buttons) are nested inside of other
        // components that also process bubbling click events (eg. Collapsible). In order to avoid conflicting
        // processing of clicks (eg. in order to avoid the click both activating a Button as well as toggling the
        // ancestor Collapsible), we stop propagation here. That way, only the child component handles the
        // click and the ancestor component is oblivious to the fact that the click even occurred.
        event.stopPropagation();
        if (isClickable && !isPressed && intervalID.current) {
            onPressHandler(event);
        }
        setIsClickable(true);
    }, [setIsClickable, onPressHandler, isClickable, intervalID, isPressed]);
    const onClickSingle = useCallback((event) => {
        // See note above about why propagation is stopped: to prevent nested component bubbling clicks issue
        event.stopPropagation();
        if (!isPressed) {
            onPressHandler(event);
        }
    }, [onPressHandler, isPressed]);
    const onPointerOut = useCallback(() => {
        setIsClickable(true);
        if (mergedSettings.isRepeat && intervalID.current) {
            clearInterval(intervalID.current);
        }
    }, [mergedSettings.isRepeat, intervalID, setIsClickable]);
    const onPointerCancel = useCallback(() => {
        setIsClickable(true);
        if (mergedSettings.isRepeat && intervalID.current) {
            clearInterval(intervalID.current);
        }
    }, [mergedSettings.isRepeat, intervalID, setIsClickable]);
    const onContextMenu = useCallback((event) => {
        setIsClickable(true);
        if (mergedSettings.isRepeat) {
            event.preventDefault();
        }
    }, [mergedSettings.isRepeat, setIsClickable]);
    const pressProps = mergedSettings.isDisabled
        ? {}
        : mergedSettings.isRepeat
            ? {
                onPointerUp,
                onPointerDown,
                onPointerOut,
                onPointerCancel,
                onKeyDown,
                onKeyUp,
                onContextMenu,
                onClick,
                onBlur
            }
            : {
                onKeyDown,
                onKeyUp,
                onBlur,
                onClick: onClickSingle
            };
    return {
        pressProps
    };
}

export { usePress as u };
//# sourceMappingURL=usePress-97fc1cf1.js.map
