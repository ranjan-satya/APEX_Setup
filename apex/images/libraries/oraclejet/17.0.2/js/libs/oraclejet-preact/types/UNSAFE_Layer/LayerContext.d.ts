export type LayerLevel = 'nearestAncestor' | 'topLevel';
export type LayerPriority = 'popup' | 'dialog' | 'messages';
export type LayerContextProps = {
    getRootLayerHost?: (priority?: LayerPriority) => Element;
    getLayerHost?: (priority?: LayerPriority) => Element;
    onLayerUnmount?: (element: HTMLElement) => void;
};
export declare const LayerContext: import("preact").Context<LayerContextProps>;
