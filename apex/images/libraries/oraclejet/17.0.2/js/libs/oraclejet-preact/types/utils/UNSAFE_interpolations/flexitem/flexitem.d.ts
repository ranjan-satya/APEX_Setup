import { Property } from 'csstype';
import { flexitemAlignSelf } from './flexitem.css';
type AlignSelf = Parameters<typeof flexitemAlignSelf>[0];
export type FlexitemProps = {
    alignSelf?: AlignSelf['alignSelf'];
    flex?: Property.Flex;
    order?: Property.Order;
};
declare const flexitemInterpolations: {
    alignSelf: ({ alignSelf }: Pick<FlexitemProps, 'alignSelf'>) => {
        class?: undefined;
    } | {
        class: string;
    };
    flex: ({ flex }: Pick<FlexitemProps, 'flex'>) => {
        flex?: undefined;
    } | {
        flex: Property.Flex<0 | (string & {})>;
    };
    order: ({ order }: Pick<FlexitemProps, 'order'>) => {
        order?: undefined;
    } | {
        order: Property.Order;
    };
};
export { flexitemInterpolations };
