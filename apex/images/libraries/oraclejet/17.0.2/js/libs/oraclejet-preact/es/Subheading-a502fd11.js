/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { multiVariantStyles } from './UNSAFE_Subheading/themes/SubheadingStyles.css.js';

const subheadingElementTypes = ['h1', 'h2', 'h3', 'h4', 'h5', 'h6', 'div', 'span'];
const headingsizeMap = {
    h1: '2xl',
    h2: 'xl',
    h3: 'lg',
    h4: 'md',
    h5: 'sm',
    h6: 'xs',
    div: 'md',
    span: 'md'
};
const sizeOptions = ['2xs', 'xs', 'sm', 'md', 'lg', 'xl', '2xl', 'inherit'];
/**
 * A Subheading is a title given to a subsection.
 */
const Subheading = ({ children, as, size, id, variant = 'primary' }) => {
    const Component = as;
    //@ts-ignore
    size = size ?? headingsizeMap[Component];
    const classes = multiVariantStyles({ size, variant });
    return (jsx(Component, { className: classes, id: id, children: children }));
};

export { Subheading as S, sizeOptions as a, subheadingElementTypes as s };
//# sourceMappingURL=Subheading-a502fd11.js.map
