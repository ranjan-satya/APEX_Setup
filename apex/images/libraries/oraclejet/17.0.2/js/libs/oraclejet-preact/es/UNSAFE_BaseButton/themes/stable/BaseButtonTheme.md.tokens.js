/* @oracle/oraclejet-preact: undefined */
import { x as xUnits, b as max, d as densityUnits } from '../../../utils-6eab3a64.js';
import { baseVars, typographyVars } from '../../../Common/themes/themeContract.css.js';
import '../../../colorUtils-16eb823f.js';
import '../../../_curry1-25297e59.js';

const scaleSchemeMd = {
    borderRadius: baseVars.borderRadius.md,
    fontSize: typographyVars.body.md.fontSize,
    sizes: {
        xs: {
            textToEdgePadding: xUnits(4.57),
            // 24px x 24px is the minimum size per WCAG Success Criterion 2.5.8 Target Size (Minimum)
            height: max(`calc(${xUnits(6.86)} + ${densityUnits(3)})`, '24px')
        },
        sm: {
            textToEdgePadding: xUnits(4),
            // 24px x 24px is the minimum size per WCAG Success Criterion 2.5.8 Target Size (Minimum)
            height: max(`calc(${xUnits(9)} + ${densityUnits(3)})`, '24px')
        },
        md: {
            textToEdgePadding: xUnits(4),
            height: `calc(${xUnits(11)} + ${densityUnits(2)})`
        },
        lg: {
            textToEdgePadding: xUnits(6),
            height: `calc(${xUnits(13)} + ${densityUnits(2)})`
        }
    }
};

export { scaleSchemeMd };
//# sourceMappingURL=BaseButtonTheme.md.tokens.js.map
