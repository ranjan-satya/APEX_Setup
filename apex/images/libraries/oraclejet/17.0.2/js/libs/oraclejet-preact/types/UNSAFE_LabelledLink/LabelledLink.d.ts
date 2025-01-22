import { Link } from "../UNSAFE_Link";
import { UserAssistanceDensityType } from "../UNSAFE_UserAssistance";
import { Size } from "../utils/UNSAFE_size";
import { LayoutColumnSpan } from "../utils/UNSAFE_styles/Layout";
import { ComponentProps } from 'preact';
type PickedLinkProps = Pick<ComponentProps<typeof Link>, 'aria-describedby' | 'href' | 'onClick' | 'target'>;
export type LabelledLinkProps = PickedLinkProps & {
    /**
     * Specifies the text that should appear in the field. If this property
     * is not provided, then the URL provided using the `href` property
     * will be used as the text in the field.
     */
    children?: string;
    /**
     * Specifies how many columns to span in a FormLayout with direction === 'row'
     */
    columnSpan?: LayoutColumnSpan;
    /**
     * Specifies the label associated with the field.
     */
    label: string;
    /**
     * Specifies where the label is positioned relative to the field.
     * @default 'inside'
     */
    labelEdge?: 'inside' | 'start' | 'top' | 'none';
    /**
     * Specifies the width of the label when <code>labelEdge</code> is <code>"start"</code>.
     */
    labelStartWidth?: Size;
    /**
     * Specifies how to align text within the field.
     */
    textAlign?: 'start' | 'end' | 'right';
    /**
     * The component does not support any assistive text. But, this property can be used to specify
     * whether or not the component should reserve space to be consistent with the other form components
     * in the Form Layout. It can be set to:
     * <ul>
     * <li><code>'efficient'</code>: Reserve space to prevent layout reflow.</li>
     * <li><code>'reflow'</code>: Do not reserve space.</li>
     * <li><code>'compact'</code>: Do not reserve space. </li>
     * </ul>
     */
    userAssistanceDensity?: UserAssistanceDensityType;
};
/**
 * LabelledLink component can be used to render a readonly form control field that
 * has a link for its content.
 */
export declare const LabelledLink: ({ "aria-describedby": ariaDescribedBy, children, columnSpan, href, label, labelEdge: propLabelEdge, labelStartWidth: propLabelStartWidth, onClick, target, textAlign: propTextAlign, userAssistanceDensity: propUserAssistanceDensity }: LabelledLinkProps) => import("preact").JSX.Element;
export {};
