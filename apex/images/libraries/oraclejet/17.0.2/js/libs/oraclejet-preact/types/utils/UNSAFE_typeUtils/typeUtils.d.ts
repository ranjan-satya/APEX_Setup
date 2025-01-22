import { ComponentProps, ComponentType, JSX, Ref } from 'preact';
import { ExcludeSignalLike, HTMLAttributesSignalExcluded } from '../../utils/UNSAFE_attributeUtils';
/**
 * Extracts the type of the ref prop of the component
 * @typedef C The type of the component
 * @typedef P The property of the component that holds the handle ref
 */
export type Handle<C extends ComponentType<any>, P extends keyof ComponentProps<C>> = Pick<ComponentProps<C>, P>[P] extends Ref<infer T> | undefined ? T : never;
export type Obj = Record<string, unknown>;
export type Merge<P1 = Obj, P2 = Obj> = Omit<P1, keyof P2> & P2;
export type Entries<T> = {
    [P in keyof T]: [P, T[P]];
}[keyof T];
export type Convert<V, O extends object> = {
    [K in keyof O]: O[K] extends object ? Convert<V, O[K]> : V;
};
export type ElementType = keyof JSX.IntrinsicElements;
export type IntrinsicElement<T extends ElementType> = ExcludeSignalLike<JSX.IntrinsicElements[T]>;
export type StyleProps = Pick<HTMLAttributesSignalExcluded, 'class' | 'className' | 'style'>;
export type StyledComponentProps<E extends ElementType, OwnProps = Obj> = Merge<IntrinsicElement<E>, OwnProps & StyleProps>;
export type IntrinsicElementWithoutStyles<T extends ElementType> = Omit<IntrinsicElement<T>, 'class' | 'className' | 'style'>;
export type NestedKeyOf<ObjectType extends object> = {
    [Key in keyof ObjectType & (string | number)]: ObjectType[Key] extends object ? keyof ObjectType[Key] : Key;
};
export type WithRequired<T, K extends keyof T> = T & {
    [P in K]-?: T[P];
};
type Enumerate<N extends number, Acc extends number[] = []> = Acc['length'] extends N ? Acc[number] : Enumerate<N, [...Acc, Acc['length']]>;
export type Range<F extends number, T extends number> = Exclude<Enumerate<T>, Enumerate<F>>;
export {};
