/* @oracle/oraclejet-preact: undefined */
import { useCallback } from 'preact/hooks';
import { k as keyExtractor } from './collectionUtils-d72c7c40.js';

const useItemAction = (currentKey, dataState, onItemAction, itemSelector, allowSpacebar) => {
    const onClick = useCallback((event) => {
        const key = keyExtractor(event.target, itemSelector);
        if (handleItemAction(event, key, dataState, onItemAction)) {
            event.stopPropagation();
        }
    }, [dataState, onItemAction, itemSelector]);
    const onKeyDown = useCallback((event) => {
        if (event.key === 'Enter') {
            handleItemAction(event, currentKey, dataState, onItemAction);
        }
        else if (allowSpacebar && event.key === ' ') {
            handleItemAction(event, currentKey, dataState, onItemAction);
            event.preventDefault();
        }
    }, [dataState, onItemAction, currentKey, allowSpacebar]);
    return !dataState || !onItemAction
        ? {}
        : {
            onClick,
            onKeyDown
        };
};
const handleItemAction = (event, key, dataState, onItemAction) => {
    if (key !== undefined) {
        const context = findItemContext(key, dataState);
        context && onItemAction({ context: context, target: event.target });
        return context !== undefined;
    }
    return false;
};
// returns a ListItemContext based on key
const findItemContext = (key, dataState) => {
    const index = dataState?.data?.findIndex((d) => d.metadata.key === key) ?? -1;
    if (index > -1) {
        const context = {
            index: index + (dataState?.offset || 0),
            data: dataState?.data[index].data,
            metadata: dataState?.data[index].metadata
        };
        return context;
    }
    return undefined;
};

export { findItemContext as f, useItemAction as u };
//# sourceMappingURL=useItemAction-044c6369.js.map
