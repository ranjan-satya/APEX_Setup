/* @oracle/oraclejet-preact: undefined */
'use strict';

var hooks = require('preact/hooks');

/**
 * Use to associate a popup menu with a target that supports onAction
 *
 * @returns
 */
function useMenuAction({ isDisabled, isMenuOpen, onToggleMenu, anchorRef }) {
    const [initialFocus, setInitialFocus] = hooks.useState('menu');
    const handleAction = hooks.useCallback((details) => {
        if (details.reason === 'keyboard') {
            setInitialFocus('firstItem');
        }
        else {
            setInitialFocus('menu');
        }
        onToggleMenu?.({
            value: !isMenuOpen
        });
    }, [onToggleMenu, isMenuOpen, setInitialFocus]);
    const handleClose = hooks.useCallback((detail) => {
        if (detail.reason === 'outsideClick' && anchorRef.current?.contains(detail.target)) {
            return;
        }
        //Focus has to be set on the launcher when menu is dismissed or
        //item is "selected"
        if (detail.reason === 'dismissed' || detail.reason === 'itemAction') {
            anchorRef.current?.focus();
        }
        onToggleMenu?.({
            value: false
        });
    }, [onToggleMenu, anchorRef]);
    // DOWN ARROW invokes menu
    const onKeyDown = hooks.useCallback((event) => {
        if (event.key == 'ArrowDown') {
            !isDisabled && onToggleMenu?.({ value: !isMenuOpen });
            // Prevent page scroll for down arrow, user definitely wanted to show menu in this case.
            // Don't prevent other keypress defaults, as user may want to hold SPACE down to scroll page.
            event.preventDefault();
        }
    }, [isDisabled, isMenuOpen, onToggleMenu]);
    const menuProps = {
        anchorRef: anchorRef,
        isOpen: isMenuOpen,
        onClose: handleClose,
        initialFocus: initialFocus
    };
    const triggerProps = isDisabled
        ? {}
        : {
            onAction: handleAction,
            onKeyDown,
            'aria-haspopup': 'true',
            'aria-expanded': isMenuOpen
        };
    return {
        triggerProps: triggerProps,
        menuProps: menuProps
    };
}

exports.useMenuAction = useMenuAction;
//# sourceMappingURL=useMenuAction-191c66a9.js.map
