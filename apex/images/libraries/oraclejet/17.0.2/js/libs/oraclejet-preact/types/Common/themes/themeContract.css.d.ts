declare const PREFIX = "oj-c-EXPERIMENTAL-DO-NOT-USE";
declare const baseVars: {
    cursor: {
        clickable: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    boxShadow: {
        xs: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    borderRadius: {
        sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
};
declare const colorSchemeVars: {
    palette: {
        neutral: {
            '0': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '10': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '20': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '30': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '40': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '50': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '60': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '70': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '80': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '90': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '100': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '110': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '120': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '130': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '140': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '150': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '160': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '170': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '180': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '190': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '200': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        danger: {
            '10': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '20': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '30': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '40': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '50': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '60': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '70': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '80': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '90': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '100': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '110': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '120': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '130': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '140': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '150': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '160': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '170': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '180': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '190': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        success: {
            '10': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '20': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '30': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '40': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '50': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '60': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '70': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '80': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '90': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '100': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '110': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '120': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '130': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '140': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '150': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '160': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '170': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '180': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '190': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        warning: {
            '10': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '20': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '30': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '40': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '50': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '60': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '70': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '80': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '90': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '100': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '110': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '120': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '130': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '140': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '150': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '160': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '170': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '180': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '190': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        info: {
            '10': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '20': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '30': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '40': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '50': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '60': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '70': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '80': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '90': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '100': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '110': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '120': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '130': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '140': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '150': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '160': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '170': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '180': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '190': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        brand: {
            '10': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '20': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '30': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '40': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '50': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '60': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '70': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '80': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '90': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '100': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '110': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '120': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '130': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '140': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '150': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '160': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '170': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '180': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '190': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    overlay: {
        hover: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        active: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        dangerHover: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        dangerActive: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        scrim: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        inverseHover: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        inverseActive: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    pageBackground: {
        neutral0: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral10: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral20: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral30: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral40: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    surface: {
        neutral0: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral10: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral20: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral30: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        selected: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        disabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        popup: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral: {
            low: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            subtle: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            strong: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        success: {
            low: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            subtle: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            strong: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        info: {
            low: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            subtle: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            strong: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        warning: {
            low: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            subtle: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            strong: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        danger: {
            low: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            subtle: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            strong: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    border: {
        enabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        disabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        divider: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        selected: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        dropLine: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        selectedNeutral: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        warning: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        danger: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        keyboardFocus: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    boxshadow: {
        shadowcolor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    textIcon: {
        primary: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        secondary: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        disabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        inverse: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        onColor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        link: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        success: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        info: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        warning: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        danger: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    textfield: {
        surface: {
            enabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        border: {
            enabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    collection: {
        header: {
            text: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            surface: {
                selected: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                partialSelected: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
    };
    collectionGrid: {
        cell: {
            surfaceEdit: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    measure: {
        track: {
            enabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            disabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        fill: {
            enabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            disabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        thumb: {
            surface: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        reference: {
            line: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            lineContrast: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            area: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    dvt: {
        contrastLine: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        paletteQualitative: {
            1: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            2: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            3: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            4: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            5: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            6: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            7: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            8: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            9: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            10: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            11: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            12: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        threshold: {
            success: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            warning: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            danger: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        marquee: {
            border: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            surface: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        referenceObject: {
            area: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            line: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        overview: {
            background: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            windowBackground: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            windowBorder: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
};
declare const typographyVars: {
    heading: {
        xs: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        sm: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        md: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        lg: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        xl: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        '2xl': {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    subheading: {
        '2xs': {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        xs: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        sm: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        md: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        lg: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        xl: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        '2xl': {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    body: {
        '2xs': {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: {
                regular: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                semibold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                bold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        xs: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: {
                regular: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                semibold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                bold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        sm: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: {
                regular: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                semibold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                bold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        md: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: {
                regular: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                semibold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                bold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        lg: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: {
                regular: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                semibold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                bold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        xl: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: {
                regular: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                semibold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                bold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
    };
};
declare const animationVars: {
    easing: {
        enter: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        persist: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        exit: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        linear: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    anchor: {
        default: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        startTopCorner: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        top: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        endTopCorner: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        start: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        end: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        startBottomCorner: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        bottom: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        endBottomCorner: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    duration: {
        '2xs': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        xs: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        '2xl': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    delay: {
        none: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    slide: {
        up: {
            sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        down: {
            sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        start: {
            sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        end: {
            sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    scale: {
        down: {
            sm: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            md: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            full: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        up: {
            sm: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            md: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            full: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
    };
    fade: {
        in: {
            sm: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            full: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        out: {
            sm: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            full: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
    };
};
declare const scaleVars: {
    size: {
        units: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
};
declare const densityVars: {
    density: {
        units: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
};
declare const htmlVars: {
    font: {
        family: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        size: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
};
declare const bodyVars: {
    bg: {
        color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
};
declare const dvtVars: {
    label: {
        sm: {
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        md: {
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        lg: {
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    dimmedOpacity: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
};
declare const globalVars: {
    currentBackgroundColor: string;
    gutterStart: string;
    gutterEnd: string;
};
declare const vars: {
    label: {
        sm: {
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        md: {
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        lg: {
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    dimmedOpacity: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    bg: {
        color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    font: {
        family: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        size: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    density: {
        units: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    size: {
        units: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    easing: {
        enter: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        persist: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        exit: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        linear: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    anchor: {
        default: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        startTopCorner: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        top: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        endTopCorner: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        start: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        end: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        startBottomCorner: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        bottom: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        endBottomCorner: {
            vertical: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            horizontal: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    duration: {
        '2xs': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        xs: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        '2xl': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    delay: {
        none: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    slide: {
        up: {
            sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        down: {
            sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        start: {
            sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        end: {
            sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    scale: {
        down: {
            sm: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            md: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            full: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        up: {
            sm: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            md: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            full: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
    };
    fade: {
        in: {
            sm: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            full: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        out: {
            sm: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
            full: {
                to: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                from: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
    };
    heading: {
        xs: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        sm: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        md: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        lg: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        xl: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        '2xl': {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    subheading: {
        '2xs': {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        xs: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        sm: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        md: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        lg: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        xl: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        '2xl': {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    body: {
        '2xs': {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: {
                regular: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                semibold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                bold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        xs: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: {
                regular: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                semibold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                bold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        sm: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: {
                regular: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                semibold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                bold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        md: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: {
                regular: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                semibold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                bold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        lg: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: {
                regular: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                semibold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                bold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
        xl: {
            lineHeight: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontSize: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            fontWeight: {
                regular: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                semibold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                bold: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
    };
    palette: {
        neutral: {
            '0': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '10': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '20': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '30': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '40': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '50': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '60': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '70': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '80': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '90': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '100': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '110': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '120': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '130': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '140': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '150': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '160': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '170': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '180': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '190': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '200': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        danger: {
            '10': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '20': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '30': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '40': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '50': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '60': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '70': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '80': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '90': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '100': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '110': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '120': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '130': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '140': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '150': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '160': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '170': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '180': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '190': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        success: {
            '10': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '20': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '30': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '40': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '50': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '60': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '70': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '80': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '90': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '100': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '110': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '120': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '130': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '140': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '150': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '160': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '170': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '180': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '190': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        warning: {
            '10': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '20': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '30': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '40': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '50': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '60': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '70': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '80': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '90': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '100': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '110': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '120': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '130': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '140': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '150': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '160': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '170': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '180': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '190': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        info: {
            '10': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '20': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '30': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '40': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '50': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '60': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '70': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '80': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '90': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '100': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '110': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '120': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '130': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '140': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '150': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '160': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '170': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '180': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '190': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        brand: {
            '10': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '20': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '30': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '40': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '50': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '60': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '70': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '80': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '90': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '100': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '110': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '120': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '130': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '140': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '150': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '160': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '170': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '180': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            '190': `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    overlay: {
        hover: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        active: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        dangerHover: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        dangerActive: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        scrim: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        inverseHover: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        inverseActive: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    pageBackground: {
        neutral0: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral10: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral20: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral30: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral40: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    surface: {
        neutral0: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral10: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral20: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral30: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        selected: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        disabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        popup: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        neutral: {
            low: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            subtle: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            strong: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        success: {
            low: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            subtle: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            strong: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        info: {
            low: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            subtle: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            strong: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        warning: {
            low: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            subtle: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            strong: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        danger: {
            low: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            subtle: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            strong: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    border: {
        enabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        disabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        divider: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        selected: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        dropLine: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        selectedNeutral: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        warning: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        danger: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        keyboardFocus: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    boxshadow: {
        shadowcolor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    textIcon: {
        primary: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        secondary: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        disabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        inverse: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        onColor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        link: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        success: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        info: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        warning: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        danger: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    textfield: {
        surface: {
            enabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        border: {
            enabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    collection: {
        header: {
            text: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            surface: {
                selected: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
                partialSelected: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            };
        };
    };
    collectionGrid: {
        cell: {
            surfaceEdit: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    measure: {
        track: {
            enabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            disabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        fill: {
            enabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            disabled: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        thumb: {
            surface: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        reference: {
            line: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            lineContrast: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            area: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    dvt: {
        contrastLine: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        paletteQualitative: {
            1: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            2: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            3: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            4: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            5: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            6: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            7: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            8: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            9: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            10: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            11: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            12: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        threshold: {
            success: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            warning: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            danger: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        marquee: {
            border: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            surface: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        referenceObject: {
            area: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            line: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
        overview: {
            background: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            windowBackground: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            windowBorder: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        };
    };
    cursor: {
        clickable: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    boxShadow: {
        xs: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    borderRadius: {
        sm: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        md: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        lg: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        xl: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
};
export { vars, baseVars, colorSchemeVars, typographyVars, PREFIX, animationVars, scaleVars, densityVars, htmlVars, bodyVars, dvtVars, globalVars };
