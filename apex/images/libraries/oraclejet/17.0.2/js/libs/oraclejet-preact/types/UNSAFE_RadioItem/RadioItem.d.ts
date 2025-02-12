type Props = {
    /**
     * Text to provide guidance to help the user understand what data to enter.
     */
    assistiveText?: string;
    /**
     * Text that describes the radio button value.
     */
    children: string;
    /**
     * Help source URL associated with the component.
     */
    helpSourceLink?: string;
    /**
     * Custom text to be rendered for the `helpSourceLink`.
     */
    helpSourceText?: string;
    /**
     * Value of the radio button.
     */
    value: string | number;
};
/**
 * RadioItem is an input element of type radio.
 */
export declare const RadioItem: ({ value, children, ...assistanceProps }: Props) => import("preact").JSX.Element;
export {};
