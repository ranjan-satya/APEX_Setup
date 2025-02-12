type Props = {
    /**
     * Specifies how messages and assistive text are shown.
     */
    userAssistanceDensity?: 'reflow' | 'efficient' | 'compact';
    /**
     * Id to use for the help icon in compact user assistance density.
     */
    helpIconId?: string;
    /**
     * Help source link for compact user assistance density.
     */
    helpSourceLink?: string;
    /**
     * Help source text for compact user assistance density.
     */
    helpSourceText?: string;
    /**
     * Specifies whether to show an indicator on screen that a value is required, for example
     * before the user has committed a value.
     */
    isRequiredShown?: boolean;
    /**
     * The text to be used for the label
     */
    children?: string;
    /**
     * The id to set on the label
     */
    id?: string;
    /**
     * The id of the form control for which this label will be used
     */
    forId?: string;
    /**
     * Determines how the label is going to be styled
     */
    variant?: 'inside' | 'start' | 'top';
    /**
     * Determines how the label is going to be styled in based on parent component.
     */
    parentComponentVariant?: 'textField' | 'radioSet' | 'checkboxSet';
    /**
     * Handler called when the label is clicked.
     */
    onClick?: (e: MouseEvent) => void;
};
export declare const Label: ({ forId, ...props }: Props) => import("preact").JSX.Element;
export {};
