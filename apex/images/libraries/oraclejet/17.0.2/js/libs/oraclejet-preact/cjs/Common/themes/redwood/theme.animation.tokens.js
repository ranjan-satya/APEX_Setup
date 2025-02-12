/* @oracle/oraclejet-preact: undefined */
'use strict';

Object.defineProperty(exports, '__esModule', { value: true });

/**
 * These theme tokens are manually updated and are not generated from Figma tokens. These will eventually be generated.
 */
const animation = {
    easing: {
        enter: `cubic-bezier(0,0,0.2,1)`,
        persist: `cubic-bezier(.4,0,0.2,1)`,
        exit: `cubic-bezier(0.4,0,1,1)`,
        linear: `cubic-bezier(0,0,0,0)`
    },
    anchor: {
        default: {
            vertical: '0.5',
            horizontal: '0.5'
        },
        startTopCorner: {
            vertical: '0',
            horizontal: '1'
        },
        top: {
            vertical: '0.5',
            horizontal: '1'
        },
        endTopCorner: {
            vertical: '1',
            horizontal: '1'
        },
        start: {
            vertical: '0',
            horizontal: '0.5'
        },
        end: {
            vertical: '1',
            horizontal: '0.5'
        },
        startBottomCorner: {
            vertical: '0',
            horizontal: '0'
        },
        bottom: {
            vertical: '0.5',
            horizontal: '0'
        },
        endBottomCorner: {
            vertical: '1',
            horizontal: '0'
        }
    },
    duration: {
        '2xs': '25ms',
        xs: '50ms',
        sm: '100ms',
        md: '150ms',
        lg: '250ms',
        xl: '300ms',
        '2xl': '500ms'
    },
    delay: {
        none: '0ms',
        sm: '20ms',
        md: '30ms',
        lg: '50ms'
    },
    slide: {
        up: {
            sm: '0.25',
            md: '0.5',
            lg: '0.75',
            xl: '1'
        },
        down: {
            sm: '0.25',
            md: '0.5',
            lg: '0.75',
            xl: '1'
        },
        start: {
            sm: '0.25',
            md: '0.5',
            lg: '0.75',
            xl: '1'
        },
        end: {
            sm: '0.25',
            md: '0.5',
            lg: '0.75',
            xl: '1'
        }
    },
    scale: {
        down: {
            sm: {
                to: '1',
                from: '0.9'
            },
            md: {
                to: '1',
                from: '0.7'
            },
            full: {
                to: '1',
                from: '0'
            }
        },
        up: {
            sm: {
                to: '0.9',
                from: '1'
            },
            md: {
                to: '0.7',
                from: '1'
            },
            full: {
                to: '0',
                from: '1'
            }
        }
    },
    fade: {
        in: {
            sm: {
                to: '0.6',
                from: '1'
            },
            full: {
                to: '0',
                from: '1'
            }
        },
        out: {
            sm: {
                to: '1',
                from: '0.6'
            },
            full: {
                to: '1',
                from: '0'
            }
        }
    }
};

exports.animation = animation;
//# sourceMappingURL=theme.animation.tokens.js.map
