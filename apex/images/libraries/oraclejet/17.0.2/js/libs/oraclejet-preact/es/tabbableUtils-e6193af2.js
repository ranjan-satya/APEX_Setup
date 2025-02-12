/* @oracle/oraclejet-preact: undefined */
import { jsx } from 'preact/jsx-runtime';
import { render } from '@testing-library/preact';
import { m as matchTranslationBundle } from './matchTranslationBundle-d9e64706.js';
import './LayerHost-45f545d7.js';
import { R as RootEnvironmentProvider } from './EnvironmentProvider-f543a463.js';
import { T as TabbableModeContext } from './TabbableModeContext-7d8ad946.js';
import 'preact/hooks';

function __variableDynamicImportRuntime0__(path) {
  switch (path) {
    case '../../resources/nls/ar/bundle.ts': return import('./resources/nls/ar/bundle.js');
    case '../../resources/nls/ar-XB/bundle.ts': return import('./resources/nls/ar-XB/bundle.js');
    case '../../resources/nls/bg/bundle.ts': return import('./resources/nls/bg/bundle.js');
    case '../../resources/nls/bs/bundle.ts': return import('./resources/nls/bs/bundle.js');
    case '../../resources/nls/bs-Cyrl/bundle.ts': return import('./resources/nls/bs-Cyrl/bundle.js');
    case '../../resources/nls/cs/bundle.ts': return import('./resources/nls/cs/bundle.js');
    case '../../resources/nls/da/bundle.ts': return import('./resources/nls/da/bundle.js');
    case '../../resources/nls/de/bundle.ts': return import('./resources/nls/de/bundle.js');
    case '../../resources/nls/el/bundle.ts': return import('./resources/nls/el/bundle.js');
    case '../../resources/nls/en/bundle.ts': return import('./resources/nls/en/bundle.js');
    case '../../resources/nls/en-XA/bundle.ts': return import('./resources/nls/en-XA/bundle.js');
    case '../../resources/nls/en-XC/bundle.ts': return import('./resources/nls/en-XC/bundle.js');
    case '../../resources/nls/es/bundle.ts': return import('./resources/nls/es/bundle.js');
    case '../../resources/nls/et/bundle.ts': return import('./resources/nls/et/bundle.js');
    case '../../resources/nls/fi/bundle.ts': return import('./resources/nls/fi/bundle.js');
    case '../../resources/nls/fr/bundle.ts': return import('./resources/nls/fr/bundle.js');
    case '../../resources/nls/fr-CA/bundle.ts': return import('./resources/nls/fr-CA/bundle.js');
    case '../../resources/nls/he/bundle.ts': return import('./resources/nls/he/bundle.js');
    case '../../resources/nls/hr/bundle.ts': return import('./resources/nls/hr/bundle.js');
    case '../../resources/nls/hu/bundle.ts': return import('./resources/nls/hu/bundle.js');
    case '../../resources/nls/is/bundle.ts': return import('./resources/nls/is/bundle.js');
    case '../../resources/nls/it/bundle.ts': return import('./resources/nls/it/bundle.js');
    case '../../resources/nls/ja/bundle.ts': return import('./resources/nls/ja/bundle.js');
    case '../../resources/nls/ko/bundle.ts': return import('./resources/nls/ko/bundle.js');
    case '../../resources/nls/lt/bundle.ts': return import('./resources/nls/lt/bundle.js');
    case '../../resources/nls/lv/bundle.ts': return import('./resources/nls/lv/bundle.js');
    case '../../resources/nls/ms/bundle.ts': return import('./resources/nls/ms/bundle.js');
    case '../../resources/nls/nl/bundle.ts': return import('./resources/nls/nl/bundle.js');
    case '../../resources/nls/no/bundle.ts': return import('./resources/nls/no/bundle.js');
    case '../../resources/nls/pl/bundle.ts': return import('./resources/nls/pl/bundle.js');
    case '../../resources/nls/pt/bundle.ts': return import('./resources/nls/pt/bundle.js');
    case '../../resources/nls/pt-PT/bundle.ts': return import('./resources/nls/pt-PT/bundle.js');
    case '../../resources/nls/ro/bundle.ts': return import('./resources/nls/ro/bundle.js');
    case '../../resources/nls/ru/bundle.ts': return import('./resources/nls/ru/bundle.js');
    case '../../resources/nls/sk/bundle.ts': return import('./resources/nls/sk/bundle.js');
    case '../../resources/nls/sl/bundle.ts': return import('./resources/nls/sl/bundle.js');
    case '../../resources/nls/sr/bundle.ts': return import('./resources/nls/sr/bundle.js');
    case '../../resources/nls/sr-Latn/bundle.ts': return import('./resources/nls/sr-Latn/bundle.js');
    case '../../resources/nls/sv/bundle.ts': return import('./resources/nls/sv/bundle.js');
    case '../../resources/nls/th/bundle.ts': return import('./resources/nls/th/bundle.js');
    case '../../resources/nls/tr/bundle.ts': return import('./resources/nls/tr/bundle.js');
    case '../../resources/nls/uk/bundle.ts': return import('./resources/nls/uk/bundle.js');
    case '../../resources/nls/vi/bundle.ts': return import('./resources/nls/vi/bundle.js');
    case '../../resources/nls/zh-Hans/bundle.ts': return import('./resources/nls/zh-Hans/bundle.js');
    case '../../resources/nls/zh-Hant/bundle.ts': return import('./resources/nls/zh-Hant/bundle.js');
    default: return new Promise(function(resolve, reject) {
      (typeof queueMicrotask === 'function' ? queueMicrotask : setTimeout)(
        reject.bind(null, new Error("Unknown variable dynamic import: " + path))
      );
    })
   }
 }
const setupTabbableComponent = async (component, isTabbable) => {
    const locale = matchTranslationBundle(['en'], new Set(['en-US', 'en']));
    const { default: translations } = await __variableDynamicImportRuntime0__(`../../resources/nls/${locale}/bundle.ts`);
    const env = {
        translations: { '@oracle/oraclejet-preact': translations }
    };
    if (isTabbable !== undefined) {
        return render(jsx(RootEnvironmentProvider, { environment: env, children: jsx(TabbableModeContext.Provider, { value: { isTabbable: isTabbable }, children: component }) }));
    }
    else {
        return render(jsx(RootEnvironmentProvider, { environment: env, children: component }));
    }
};

export { setupTabbableComponent as s };
//# sourceMappingURL=tabbableUtils-e6193af2.js.map
