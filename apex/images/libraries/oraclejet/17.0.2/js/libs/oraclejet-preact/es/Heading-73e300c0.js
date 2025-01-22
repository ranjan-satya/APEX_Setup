/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { multiVariantStyles } from './UNSAFE_Heading/themes/HeadingStyles.css.js';

const headingElementTypes = ['h1', 'h2', 'h3', 'h4', 'h5', 'h6'];
const headingsizeMap = {
    h1: '2xl',
    h2: 'xl',
    h3: 'lg',
    h4: 'md',
    h5: 'sm',
    h6: 'xs'
};
const sizeOptions = ['xs', 'sm', 'md', 'lg', 'xl', '2xl', 'inherit'];
/**
 * A Heading is a title at the head of a page or section.
 */
function Heading({ children, as, size, id, variant = 'primary' }) {
    const Component = as;
    //@ts-ignore
    size = size ?? headingsizeMap[Component];
    const classes = multiVariantStyles({ size, variant });
    return (jsx(Component, { className: classes, id: id, children: children }));
}

export { Heading as H, headingElementTypes as h, sizeOptions as s };
//# sourceMappingURL=Heading-73e300c0.js.map
