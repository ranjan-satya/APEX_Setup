import { ComponentThemeType, CompoundVariantStyles, VariantOptions } from '../../UNSAFE_Theme';
type TabBarItemVariant = typeof variants;
type TabBarItemVariantOptions = VariantOptions<TabBarItemVariant>;
type TabBarItemStyles = typeof styles;
type TabBarItemTheme = ComponentThemeType<TabBarItemVariant, TabBarItemStyles>;
declare const tabBarItemBase: string;
declare const variants: {
    selection: {
        isSelected: {
            color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
            borderLeft: string;
            borderBottom: string;
            borderRight: string;
        };
        notSelected: string;
    };
    focusRing: {
        showFocusRing: string;
        noFocusRing: string;
    };
    current: {
        isCurrent: string;
        notCurrent: string;
    };
    edgeBottom: {
        isBottom: string;
        notBottom: string;
    };
};
declare const compoundVariants: CompoundVariantStyles<TabBarItemVariantOptions>;
declare const styles: {
    tabBarItemBase: string;
    tabBarItemSelectedDefaultTop: {
        color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        borderLeft: string;
        borderBottom: string;
        borderRight: string;
    };
    tabBarItemFocused: {
        outlineStyle: string;
        outlineOffset: string;
        outlineWidth: string;
        outlineColor: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
        color: `var(--${string})` | `var(--${string}, ${string})` | `var(--${string}, ${number})`;
    };
    tabBarItemIcon: string;
    tabBarItemIconStacked: string;
    tabBarItemMetadata: string;
    tabBarItemStackedBadge: string;
    tabBarItemStackedBadgeRtl: string;
    tabBarItemRemoveIcon: string;
};
export type { TabBarItemStyles, TabBarItemTheme, TabBarItemVariantOptions };
export { variants, compoundVariants, tabBarItemBase, styles };
