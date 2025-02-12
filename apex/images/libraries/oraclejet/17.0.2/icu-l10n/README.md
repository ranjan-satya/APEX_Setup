# JET ICU Message Format Parser

This utility parses message bundles written in ICU format and converts them to
formatter functions to be called by the application to get localized strings.

## Message Bundle Restrictions

- Message bundle files must be JSON, and only top-level properties are supported
  (no nesting). The string values must follow the ICU format described at
  http://userguide.icu-project.org/formatparse/messages

- Any keys which start with "@" will be ignored, and will not be written to the
  output file(s).

### Ex. app-strings.json

```json
{
  "greeting": "Hello {name}",
  "invitation": "{gender_of_host, select, female {{num_guests, plural, ..."
}
```

## Usage

Run the `l10nBundleBuilder.js` script with arguments:

```sh
$ l10nBundleBuilder.js &lt;root-message-bundle.json> &lt;root-bundle-locale> &lt;output-dir>
```

### Example, running with a root bundle in en-US locale

```sh
$ l10nBundleBuilder.js --rootDir=resources/nls --bundleName=app-strings.json --locale=en-US --outDir=dist
```

## Output

The parser reads the given root bundle and converts the message to a TS module
containing a single default export object. Within the object, each message
name will be the key to the formatter function.

### Ex. app-strings.ts

```javascript
const bundle = {
  "greeting": function(p) { ... },
  "invitation": function(p) { ... }
};
export default bundle;
```

The AMD output would be

```javascript
define(["require", "exports"], function (require, exports) {
  const bundle = {
    "greeting": function(p) { ... },
    "invitation": function(p) { ... }
  };
  exports.default = bundle;
});
```

In addition to the root bundle, the parser will traverse all directories at the
same level, looking for other NLS directories which contain message bundle files
whose name matches that of the root bundle. If found, it combines all messages
starting from the root bundle up to the most specific bundle, with the most specific
ones taking precendence.

## Custom Hooks

Custom hooks allows an external script to alter the output of the generated bundle.
For example, if you want each bundle key to return a custom type rather than
just the plain translation string, define a custom hook JS file and pass it using
the `--hooks` switch:

```sh
$ l10nBundleBuilder.js --rootDir=resources/nls --bundleName=app-strings.json --outDir=dist --hooks=./custom-hooks.js
```

`custom-hooks.js`

```javascript
module.exports = {
  typeImport: {
    CustomMessageType: '../../resources/CustomMessageType'
  },
  otherImports: {
    escape: '../../str',
    ext: '../../utils'
  },
  // remap some of the parameter names to different keys
  convertor:
    '(args: ParamsType): CustomMessageType => ({bundle: ext(args.bundleId), key: escape(args.id), params: args.params, value: args.translation})'
};
```

The `typeImport` field defines the custom type import that will be added to the
Typescript file generated. This should use a single key:value mapping that contains
the type definition for your custom type begin returned.

You can optionally define `otherImports` to include other imports into the bundle.
This map can contain an unlimited number of imports. In the example above, the
functions `escape` and `ext` are imported because they're used by the convertor.

The `convertor` string defines the _contents_ of your convertor function that'll
be run in place of the default behavior of returning just the translation string.
The return of this function should match the custom type defined by `typeImport`.

> Note the use of the `ParamsType` as the argument to the convertor. This type
> is automatically added by the bundler to help your convertor understand the type
> of parameters that it can expect to be called with.
> `ParamsType` is defined as such, and is included in each bundle file
>
> ```javascript
> type ParamsType = {
>   bundleId: string,
>   id: string,
>   params: { [key: string]: any } | undefined,
>   translation: string
> };
> ```

`CustomMessageType.d.ts`

```typescript
export declare type CustomMessageType = {
  bundle: string;
  key: string;
  params: { [key: string]: any } | undefined;
  value: string;
};
```

This will produce a bundle with key/values similar to

```javascript
  "welcome": ():CustomMessageType => convert({bundleId:ext("app-strings.json"),id:escape("welcome"),params:undefined,translation:"Welcome"}),
```

The `convertor` function takes `ParamsType` and returns a custom object type
conforming to `CustomMessageType`.

## Options

### **rootDir**

The root directory of your ICU bundles

> ex. `--rootDir=resources/nls`

### **bundleName**

The bundle file name that should be processed

> ex. `--bundleName=app-strings.json`

### **hooks**

A path to a file containing custom hooks

> ex. `--hooks=./hooks.js`

### **locale**

The locale of the root bundle

> ex. `--locale=en-US`

### **outDir**

The directory where the resource bundles will be written

> ex. `--outDir=src/resources/nls`

### **module** _(optional)_

The type of module to produce for the bundles. Supported values are `esm`, `amd`, or `legacy-amd`.
If not specified, only the original Typescript source files will be produced, and
no transpilation is performed.

> ex. `--module=esm`

> For backwards compatibility with previous forms of the bundle in AMD, the `legacy-amd` format
> will produce a bundle with all keys at the root, similar to using named exports. There will also be no
> TypeScript or type definitions present for the bundle.
> This option overrides the `--exportType` argument.

### **exportType** _(optional)_

The type of export to be used. Possible values `named` or `default`. If not given,
`default` is used.

> ex. `--exportType=named`
>
> Note that in v2.0.0 of the builder, default exports are used, causing TypeScript
> to place all of the keys into an object named "default" at the top level. If
> you want all of the bundle keys at the top-level, use `--exportType=named` to
> produce
>
> ```javascript
> export greeting = bundle.greeting;
> export invitation = bundle.invitation;
> ```
>
> and the resulting AMD output

```javascript
define(['require', 'exports'], function (require, exports) {
  exports.greeting = bundle.greeting;
  exports.invitation = bundle.invitation;
});
```

### **override** _(optional)_

Indicates the bundle is an override, and only the root locale and those explicitly stated in
`--supportedLocales` will be built. All other NLS directories will not be processed.

> ex. `--optional --supportedLocales=en`

### **supportedLocales** _(optional)_

A comma-separated list of additional locales to build. If a given locale doesn't
have a corresponding NLS directory underneath `rootDir`, then it will be built
using the root bundle.

> ex. `--supportedLocales=en,en-XB`

## Changes in 2.0.0

### AMD output

In 1.0.0, AMD bundles were constructed with

```javascript
define({ ...bundle contents... })
```

Default exports now follow ES module format, and contents are underneath the
`default` property

```javascript
define(["require", "exports"], function (require, exports) {
    "use strict";
    exports.__esModule = true;
    exports.default = {
      ...bundle contents...
    };
});
```

### Typescript

All bundles are now created in Typescript and transpiled to their target module
formats. The TS sources replace the `d.ts` files previously created in 1.0.0, and
an additional `BundleType` is exported. This type can be imported for type-safe
usage during design-time.

```javascript
import type { BundleType as App1Bundle } from './resources/nls/app1bundle';
import type { BundleType as App2Bundle } from './resources/nls/app2bundle';
```

Typescript [type imports](https://www.typescriptlang.org/docs/handbook/release-notes/typescript-3-8.html#type-only-imports-and-export)
are only used during design-time, and removed from the output when transpiled.

## Changes in 2.0.1

### supportedLocales.ts

A new module file is created in `<outDir>/supportedLocales.ts` which exports an
array of all the supported locales built for the bundle. See `--supportedLocales`
option above. The array can be imported
with

```javascript
import supportedLocales from './&lt;rootDir>/supportedLocales';
```

## Changes in 2.2.0

Custom hooks implemented. See [Custom Hooks](#custom-hooks) above.

## Changes in 2.3.0

Add the option to declare `--exportType=named` to generate keys at the top level
of the exports instead of the `default` export type.

## Changes in 16.0.0

### Types in Metadata

Parameter types can be defined in metadata instead of just inferred from the root bundle.
Keys starting with the `@` character are used to specify metadata, and is associated with the key whose name follows it:

```
"input_message_error": "Error: {MESSAGE}",
"@input_message_error": {
    "placeholders": {
       "MESSAGE": {
          "type": "text",
          "description": "translated error message"
       }
    },
    "description": "Error with an embedded message"
}
```

Metadata is optional. It should be supplied in the following cases:

1. The usage of the text placeholder is going to be unclear to the translators, and supplying extra description in the metadata is going to help translators with translating the rest of the message.
1. A particular placeholder is not being used in the message included in the root/development bundle, but the corresponding parameter should be settable for some other locales
   1. v2 translation build process will derive parameter type information from the message in the root/development bundle. Type information for any parameters used only in other locales will have to come from metadata.

### Date Time String Format

Date values are to be passed as string parameters to the message bundle. They can be any valid string,
as defined by [Date time string format](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Reference/Global_Objects/Date#date_time_string_format).
