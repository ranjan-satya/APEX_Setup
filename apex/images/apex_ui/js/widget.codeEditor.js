/*!
 * Copyright (c) 2013, 2024, Oracle and/or its affiliates.
 */

/**
 * Turns an empty div into code editor for css, javascript, html and pl/sql
 *   apex.jQuery( "#myEditor" ).codeEditor( {...} );
 */

/* global monaco */
/* eslint-disable no-bitwise */

/// <reference path="../../libraries/monaco-editor/0.51.0/monaco.d.ts"/>

( function( $, util, lang, locale, debug, actions, server, env, ai, apexMessage ) {
    "use strict";

    const
        msg = key => lang.getMessage( "CODE_EDITOR." + key ),
        debugTrace = function(){
            debug.trace( "Code Editor:", ...arguments );
        },
        debugWarn = function(){
            debug.warn( "Code Editor:", ...arguments );
        },
        debugError = function(){
            debug.error( "Code Editor:", ...arguments );
        };

    // constants
    const C_ACTIVE = "is-active",
          C_TOOLBAR_GROUP = "a-Button--toolbarOutline",
          EVENT_CLICK = "click";

    const
        LANG_SQL = "sql",
        LANG_PLSQL = "plsql",
        LANG_JAVASCRIPT = "javascript",
        LANG_JAVASCRIPT_MLE_SNIPPET = "mle-javascript-snippet",
        LANG_JAVASCRIPT_MLE_MODULE = "mle-javascript-module",
        LANG_CSS = "css",
        LANG_QUICKSQL = "quicksql",
        LANG_FILE_URLS_JAVASCRIPT = "file-urls-javascript",
        LANG_FILE_URLS_CSS = "file-urls-css",
        LANG_HTML = "html",
        LANG_XML = "xml",
        LANG_PLAINTEXT = "plaintext",
        LANG_YAML = "yaml",
        MONACO_LANG_JAVASCRIPT = "javascript";

    const JS_LANGS = [
        LANG_JAVASCRIPT,
        LANG_JAVASCRIPT_MLE_SNIPPET,
        LANG_JAVASCRIPT_MLE_MODULE ];

    // suppported languages in the chat (needed for the code highlighting and system prompts)
    const AI_LANGS = [
        LANG_SQL,
        LANG_PLSQL,
        LANG_JAVASCRIPT,
        LANG_CSS,
        LANG_HTML,
        LANG_JAVASCRIPT_MLE_SNIPPET,
        LANG_JAVASCRIPT_MLE_MODULE ];

    const CONTEXT_KEY_VALIDATE = "validate",
        CONTEXT_KEY_DBHINT = "dbHint";

    const ACTION_SAVE_PAGE = "save-page",
        ACTION_SAVE_AND_RUN_PAGE = "save-and-run-page",
        ACTION_SWITCH_PANE_FOCUS = "switch-pane-focus",
        ACTION_AI = "ai-enable-assistant",
        ACTION_AI_MODE = "ai-mode-selector",
        ACTION_AI_NL2SQL = "ai-nl2sql-assistant",
        ACTION_AI_GENERAL = "ai-general-assistance",
        ACTION_AI_SEND_SELECTION = "ai-send-selection",
        ACTION_AI_SEND_CODE_MESSAGE = "ai-send-code-message",
        ACTION_AI_CLEAR_CHAT = "ai-clear-history";

    // text messages
    const MSG_CLOSE = msg( "CLOSE" ),
        MSG_FIND = msg( "FIND" ),
        MSG_HINT = msg( "HINT" ),
        MSG_INDENTATION = msg( "INDENTATION" ),
        MSG_INDENT_SIZE = msg( "INDENT_SIZE" ),
        MSG_INDENT_WITH_TABS = msg( "INDENT_WITH_TABS" ),
        MSG_MINIMAP = msg( "MINIMAP" ),
        MSG_MINIMAP_CONDITIONAL = msg( "MINIMAP_CONDITIONAL" ),
        MSG_QUERY_BUILDER = msg( "QUERY_BUILDER" ),
        MSG_REDO = msg( "REDO" ),
        MSG_SETTINGS = msg( "SETTINGS" ),
        MSG_SHOW_LINE_NUMBERS = msg( "SHOW_LINE_NUMBERS" ),
        MSG_SHOW_RULER = msg( "SHOW_RULER" ),
        MSG_SUGGESTIONS = msg( "SUGGESTIONS" ),
        MSG_TAB_SIZE = msg( "TAB_SIZE" ),
        MSG_THEMES = msg( "THEMES" ),
        MSG_THEME_AUTOMATIC = msg( "THEME_AUTOMATIC" ),
        MSG_THEME_LIGHT = msg( "THEME_LIGHT" ),
        MSG_THEME_DARK = msg( "THEME_DARK" ),
        MSG_THEME_HIGH_CONTRAST_DARK = msg( "THEME_HIGH_CONTRAST_DARK" ),
        MSG_TRANSFORM_CODE_CASE = msg( "TRANSFORM_CODE_CASE" ),
        MSG_UNDO = msg( "UNDO" ),
        MSG_UTIL_OFF = msg( "UTIL_OFF" ),
        MSG_UTIL_ON = msg( "UTIL_ON" ),
        MSG_VALIDATE = msg( "VALIDATE" ),
        MSG_VALIDATION_SUCCESS = msg( "VALIDATION_SUCCESS" ),
        MSG_WHITESPACE = msg( "WHITESPACE" ),
        MSG_BRACKET_PAIR_COLORIZATION = msg( "BRACKET_PAIR_COLORIZATION" ),
        MSG_ROLE_DESC = msg( "ROLE_DESCRIPTION" ),
        MSG_ROLE_DESC_READONLY = msg( "ROLE_DESCRIPTION_READONLY" ),
        MSG_PREVIOUS_CHANGE = msg( "PREVIOUS_CHANGE" ),
        MSG_NEXT_CHANGE = msg( "NEXT_CHANGE" ),
        // AI
        // Quick-actions
        MSG_IMPROVE_SEL_TITLE = msg( "CHAT.IMPROVE_SELECTION" ),
        MSG_IMPROVE_TITLE = msg( "CHAT.IMPROVE" ),
        MSG_IMPROVE_MSG = msg( "CHAT.IMPROVE_MSG" ),
        MSG_EXPLAIN_SEL_TITLE = msg( "CHAT.EXPLAIN_SELECTION" ),
        MSG_EXPLAIN_TITLE = msg( "CHAT.EXPLAIN" ),
        MSG_EXPLAIN_MSG = msg( "CHAT.EXPLAIN_MSG" ),
        MSG_USE_SELECTION = msg( "CHAT.USE_SELECTION" ),
        // AI messages
        MSG_AI_QUICK_ACTION_QUESTION = msg( "CHAT.QUICK_ACTION_QUESTION" ),
        MSG_AI_USE_THIS_WARNING = msg( "CHAT.USE_THIS_WARNING" ),
        MSG_AI_GENERAL_WELCOME = msg( "CHAT.GENERAL_WELCOME" ),
        MSG_AI_QUERY_BUILDER_WELCOME = msg( "CHAT.QUERY_BUILDER_WELCOME" ),
        MSG_AI_DEBUG_MESSAGE = msg( "CHAT.AI_DEBUG_MESSAGE" ),
        // Mode
        MSG_AI_GENERAL_ASSISTANCE = msg( "CHAT.GENERAL_ASSISTANCE" ),
        MSG_AI_QUERY_BUILDER = msg( "CHAT.QUERY_BUILDER" ),
        // Code block buttons
        MSG_INSERT = msg( "CHAT.INSERT" ),
        MSG_INSERTED = msg( "CHAT.INSERTED" ),
        // misc
        MSG_APEX_ASSISTANT = msg( "CHAT.APEX_ASSISTANT" ),
        MSG_DISCLAIMER = msg( "CHAT.DISCLAIMER" ),
        MSG_AI_DEBUG_HELP_LABEL = msg( "CHAT.DEBUG_HELP_LABEL" ),
        MSG_DEBUG_MESSAGE = msg( "CHAT.DEBUG_MESSAGE" ),
        MSG_CONTENT_TOO_LONG = msg( "CHAT.CONTENT_TOO_LONG" ),
        MSG_AI_ERROR_MESSAGE = msg( "CHAT.ERROR_CODE_MESSAGE" ),
        MSG_AI_WARNING_MESSAGE = msg( "CHAT.WARNING_CODE_MESSAGE" ),
        MSG_NEW_CONVERSATION = msg( "CHAT.NEW_CONVERSATION" ),
        MSG_CLEAR_CHAT = msg( "CHAT.CLEAR_CHAT" );
    // additionally there is another message ITEM_DOES_NOT_EXIST
    // which takes a parameter, and is used further down

    // dialog button labels
    const MSG_SAVE_AND_RUN_PAGE = lang.getMessage( "PD.SAVE_AND_RUN_PAGE" ),
        MSG_SAVE_PAGE = lang.getMessage( "PD.SAVE" );

    let currentTheme;
    let hasSelection = false;   // it shows if the send-selection action actually added code to the chat
    let lastSelection = null;   // used check if the selection has changed between chatlock and chatunlock
    let chatLocked = false;     // shows the chat state to the actions
    let isConversation = false; // shows if we are having a conversation in the chat, so no need to add quick-actions
    let surpressCursorPositionChange = false; // used in the chat code blocks' insert action
    // indicates if one of the save actions is called
    // used in validateCode to suppress the success message
    let isSave = false;

    /**
     * To add a new editor preference:
     *  - extend the PREF object
     *  - extend the jQuery widget options under "settings which can be overridden by user preference"
     *  - reference the widget option in the appropriate place
     *  - extend the widget's _setOption
     *  - extend _populateContext
     *  - extend _initToolbar
     *  - extend $.apex.codeEditor.preferencesObjectFromString
     */

    // Editor User Preferences
    // these values are stored on the server as serialized JSON in a user preference, and they transcend APEX upgrades. change carefully
    const PREF = {
        THEME: "theme",
        TABS_INSERT_SPACES: "tabsInsertSpaces",
        INDENT_SIZE: "indentSize",
        TAB_SIZE: "tabSize",
        RULER: "ruler",
        MINIMAP: "minimap",
        LINE_NUMBERS: "lineNumbers",
        WHITESPACE: "whitespace",
        SHOW_SUGGESTIONS: "showSuggestions",
        BRACKET_PAIR_COLORIZATION: "bracketPairColorization"
        // SEMANTIC_HIGHLIGHTING: "semanticHighlighting",
    };

    const OPTIONS_THEME = [
        // automatic will be either vs or vs-dark depending on the builder setting
        { label: MSG_THEME_AUTOMATIC, value: "automatic" },
        { label: MSG_THEME_LIGHT, value: "vs" },
        { label: MSG_THEME_DARK, value: "vs-dark" },
        { label: MSG_THEME_HIGH_CONTRAST_DARK, value: "hc-black" }
    ],
        MINIMAP_OFF = "off",
        MINIMAP_ON = "on",
        MINIMAP_CONDITIONAL = "conditional",
        OPTIONS_MINIMAP = [
            { label: MSG_UTIL_ON, value: MINIMAP_ON },
            { label: MSG_UTIL_OFF, value: MINIMAP_OFF },
            { label: MSG_MINIMAP_CONDITIONAL, value: MINIMAP_CONDITIONAL },
        ],
        OPTIONS_TAB_SIZE = [
            { label: "2", value: "2" },
            { label: "3", value: "3" },
            { label: "4", value: "4" },
            { label: "8", value: "8" }
        ],
        OPTIONS_INDENT_SIZE = [
            { label: "2", value: "2" },
            { label: "3", value: "3" },
            { label: "4", value: "4" },
            { label: "8", value: "8" }
        ];

    // absolute paths are needed by the webworkers
    // if the image directory starts with "/" or ".", it is a relative path which must be made absolute
    const
        MIN_EXT = debug.getLevel() === debug.LOG_LEVEL.OFF ? ".min" : "",
        ABSOLUTE_PATH = (() => {
            const location = window.location,
                firstChar = env.APEX_FILES[ 0 ];
            if ( firstChar === "/" ) {
                return location.protocol + "//" + location.host + env.APEX_FILES;
            } else if ( firstChar === "." ) {
                return location.href.slice( 0, location.href.lastIndexOf( "/" ) + 1 ) + env.APEX_FILES;
            } else {
                return env.APEX_FILES;
            }
        })(),
        MONACO_BASE_PATH = ABSOLUTE_PATH + `libraries/monaco-editor/${ apex.libVersions.monacoEditor }/min`,
        MONACO_CUSTOM_LANGUAGES_PATH = ABSOLUTE_PATH + "libraries/monaco-editor-apex/custom-languages",
        QUICKSQL_PATH = `${ABSOLUTE_PATH}libraries/monaco-editor-apex/quicksql${MIN_EXT}.js?v=${env.APEX_VERSION}`;

    // Disposable keys
    const
        DISP_MLE_ENV = "mle-env",
        DISP_MINIMAP = "minimap";

    // everything else will be defaulted to the base "item" or "region" type
    // should be kept in sync with the currently documented item/region types
    const DTS_TYPES = {
        ITEM: {
            NATIVE_NUMBER_FIELD: "numberFieldItem"
        },
        REGION: {
            NATIVE_FACETED_SEARCH: "facetsRegion",
            NATIVE_SMART_FILTERS: "facetsRegion",
            NATIVE_MAP_REGION: "mapRegion",
            NATIVE_CARDS: "cardsRegion",
            // template components have special handling in CONTEXT_MANAGER
            NATIVE_TEMPLATE_COMPONENT: "templateReportRegion"
        }
    };

    // registers languages File URLs - JavaScript / CSS
    const _registerFileUrlsLanguages = () => {

        [ LANG_FILE_URLS_JAVASCRIPT, LANG_FILE_URLS_CSS ].forEach( langId => {

            monaco.languages.register( { id: langId } );

            // the same language config for both languages
            monaco.languages.setLanguageConfiguration( langId, {
                // needed by the Comment Out shortcuts
                comments: {
                    lineComment: "--",
                    blockComment: [ "/*", "*/" ],
                },
                brackets: [ [ "[", "]" ] ]
            } );

            // the same syntax highlighting for both languages
            monaco.languages.setMonarchTokensProvider( langId, {
                tokenizer: {
                    root: [
                        { include: "@whitespace" },
                        [ /^\[.+?\]/, "variable" ] // highlight the url hints [...]
                    ],
                    whitespace: [
                        [ /\/\*/, "comment", "@comment" ],
                        [ /^--.*$/, "comment" ],
                        [ /#(MIN|MIN_DIRECTORY)#/, "string" ],
                        [ /#(APEX|APP|WORKSPACE|PLUGIN|THEME|THEME_DB)_FILES#/, "string" ],
                        [ /#APP_VERSION#/, "string" ],
                    ],
                    comment: [
                        // slightly over-escaping on purpose
                        // else the syntax highlighting for this file would be broken in some IDEs
                        // eslint-disable-next-line no-useless-escape
                        [ /[^\/\*]+/, "comment" ],
                        [ /\*\//, "comment", "@pop" ],
                        // eslint-disable-next-line no-useless-escape
                        [ /[\/\*]/, "comment" ]
                    ]
                }
            } );

            // the same hash autocomplete for both languages
            monaco.languages.registerCompletionItemProvider( langId, {
                triggerCharacters: [ "#" ],
                provideCompletionItems: function( model, position, context ) {
                    // only suggest when # is pressed
                    if( context.triggerCharacter === "#" ) {
                        const wordUntilPosition = model.getWordUntilPosition( position );
                        return {
                            suggestions: [
                                "#MIN#",
                                "#MIN_DIRECTORY#",
                                "#APEX_FILES#",
                                "#APP_FILES#",
                                "#WORKSPACE_FILES#",
                                "#PLUGIN_FILES#",
                                "#THEME_FILES#",
                                "#THEME_DB_FILES#",
                                "#APP_VERSION#"
                            ].map( sub => {
                                return {
                                    label: sub,
                                    insertText: sub,
                                    kind: monaco.languages.CompletionItemKind.Keyword,
                                    range: {
                                        startLineNumber: position.lineNumber,
                                        endLineNumber: position.lineNumber,
                                        startColumn: wordUntilPosition.startColumn - 1,
                                        endColumn: wordUntilPosition.endColumn
                                    }
                                };
                            } )
                        };
                    } else {
                        return undefined;
                    }
                }
            } );

            // slightly different URL hints for the two languages
            monaco.languages.registerCompletionItemProvider( langId, {
                triggerCharacters: [ "[", ",", " " ],
                provideCompletionItems: function( model, position ) {
                    const
                        lineContent = model.getLineContent( position.lineNumber ),
                        wordUntilPosition = model.getWordUntilPosition( position );

                    // only suggest when the line is in the form of [...]...
                    // and the current position is in the starting bracket pair
                    if( !lineContent.slice( 0, position.column - 1 ).startsWith( "[" ) ||
                        !lineContent.slice( position.column - 1 ).includes( "]" ) ) {
                        return undefined;
                    }

                    if( langId === LANG_FILE_URLS_JAVASCRIPT ) {
                        // url hints already present
                        let currentHints = [];
                        const match = lineContent.match( /^\[(.*)\].*/ );
                        if( match ) {
                            currentHints = match[ 1 ].split( "," ).map( hint => hint.trim() );
                        }

                        const suggestions = [
                            { label: "module",              insertText: "module" },
                            { label: "async",               insertText: "async" },
                            { label: "defer",               insertText: "defer" },
                            { label: "require requirejs",   insertText: "require requirejs" },
                            { label: "require jet",         insertText: "require jet" },
                            { label: "define",              insertText: "define ${1:moduleName}=${2:globalObject}" }
                        ].filter( hint => !currentHints.includes( hint.label ) );

                        return {
                            suggestions: suggestions.map( suggestion => {
                                return {
                                    label: suggestion.label,
                                    insertText: suggestion.insertText,
                                    kind: monaco.languages.CompletionItemKind.Keyword,
                                    insertTextRules: suggestion.insertText.includes( "${" )
                                            ? monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet
                                            : undefined,
                                    range: {
                                        startLineNumber: position.lineNumber,
                                        endLineNumber: position.lineNumber,
                                        startColumn: wordUntilPosition.startColumn,
                                        endColumn: wordUntilPosition.endColumn
                                    }
                                };
                            } )
                        };
                    } else if( langId === LANG_FILE_URLS_CSS ) {
                        return {
                            suggestions: [ {
                                label: "media",
                                insertText: "media=\"${1}\"",
                                kind: monaco.languages.CompletionItemKind.Keyword,
                                insertTextRules: monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet,
                                range: {
                                    startLineNumber: position.lineNumber,
                                    endLineNumber: position.lineNumber,
                                    startColumn: wordUntilPosition.startColumn,
                                    endColumn: wordUntilPosition.endColumn
                                }
                            } ]
                        };
                    }
                }
            } );
        } );
    };

    /**
     * DISPOSABLE_MANAGER is a utility that helps keep track of editor specific as well as global disposable objects
     */
    const DISPOSABLE_MANAGER = ( () => {
        const DISPOSABLES = {
            GLOBAL: {} // for disposables shared across all instances, eg. javascript language defaults
            // other keys will be added as editors are created
        };

        return {
            // global disposables
            existsGlobally: key => {
                return DISPOSABLES.GLOBAL[ key ] !== undefined;
            },
            registerGlobally: ( key, disposable ) => {
                DISPOSABLES.GLOBAL[ key ] = disposable;
            },
            disposeGlobally: key => {
                if( DISPOSABLES.GLOBAL[ key ] ) {
                    DISPOSABLES.GLOBAL[ key ].dispose();
                    delete DISPOSABLES.GLOBAL[ key ];
                }
            },
            // editor specific disposables
            deregisterEditor: ( editorId ) => {
                if( DISPOSABLES[ editorId ] ) {
                    for( let key of Object.keys( DISPOSABLES[ editorId ] ) ) {
                        DISPOSABLES[ editorId ][ key ].dispose();
                        delete DISPOSABLES[ editorId ][ key ];
                    }
                    delete DISPOSABLES[ editorId ];
                }
            },
            existsForEditor: ( editorId, key ) => {
                return DISPOSABLES[ editorId ] && DISPOSABLES[ editorId ][ key ] !== undefined;
            },
            registerForEditor: ( editorId, key, disposable ) => {
                DISPOSABLES[ editorId ] = DISPOSABLES[ editorId ] || {};
                if( DISPOSABLES[ editorId ][ key ] ) {
                    DISPOSABLES[ editorId ][ key ].dispose();
                }
                DISPOSABLES[ editorId ][ key ] = disposable;
            },
            disposeForEditor: ( editorId, key ) => {
                if( DISPOSABLES[ editorId ] && DISPOSABLES[ editorId ][ key ] ) {
                    DISPOSABLES[ editorId ][ key ].dispose();
                    delete DISPOSABLES[ editorId ][ key ];
                }
            }
        };
    } )();

    /**
     * JAVASCRIPT_MANAGER is a utility that manages the global settings of the underlying JavaScript worker
     *
     * It takes care of loading the .d.ts file, and one-off snippets for a specific JavaScript flavor,
     * as well as toggling between these contexts as the user moves between editors.
     *
     * Its main entry point is the reevaluate function which should be called on editor initialization
     *  and when setting focus to a JavaScript editor.
     *
     * Further, the setContext and dropContext functions are exposed to allow ad hoc addition of context code.
     *  e.g used in Page Designer for the code in "Function and Global Variable Declaration"
     */
    const JAVASCRIPT_MANAGER = ( () => {

        /**
         *
         * CONTEXT_MANAGER is a sub-utility that manages contexts (snippets, .d.ts files) used for Autocomplete, Intellisense etc
         *
         * Notes:
         *  - The content of a JavaScript model is global.
         *      That means the variables it declares are made available to other models as intellisense.
         *      We leverage this to provide more "context" to JavaScript editors.
         *      E.g, each JavaScript editor in PD should be aware of the "Function and Global Variable Declaration" code.
         *  - a model unfortunately cannot be temporarily disabled. it must be disposed
         *  - a model unfortunately applies to both JavaScript and MLE JavaScript
         *      which is why we must reevaluate the manager on each editor focus
         *  - as far as Monaco is concerned, both regular JavaScript and MLE JavaScript editors are JavaScript editors
         *
         *  - Note that we choose to create models over an extra lib via javascriptDefaults.addExtraLib on purpose.
         *      see discussion here github.com/microsoft/monaco-editor/issues/2813
         *
         *  - TODO: investigate passing a model URI like monaco.Uri.parse( "ts://apex.d.ts" ) on model creation, which should help enable things like Go To Definition
         */
        const CONTEXT_MANAGER = ( () => {
            /**
             * Object holding all contexts, indexed by the context name
             *
             * A member context has the form:
             * name: {
             *  code,   // holds the code of the context, always up to data, no matter if enabled or disabled
             *  model,  // holds the monaco model instance. null if disabled
             *  lang    // LANG_JAVASCRIPT, LANG_JAVASCRIPT_MLE_SNIPPET or LANG_JAVASCRIPT_MLE_MODULE
             * }
             */
            const contexts = {};

            /**
             * flag that keeps track of the current manager language
             * if set, it also means the monaco and the typescript worker are ready to be configured
             */
            let managerLang;

            const _verifyLang = lang => {
                if( !JS_LANGS.includes( lang ) ) {
                    throw new Error( "Only JavaScript and MLE JavaScript are supported" );
                }
            };

            /**
             * Adds a new context or overrides an existing context by the same name
             * The model will only be updated if the context is enabled, and if the language matches the current manager language
             */
            const setContext = ( name, code, lang ) => {

                _verifyLang( lang );

                if( !contexts[ name ] ) {
                    contexts[ name ] = {
                        code: null,
                        model: null,
                        lang: lang
                    };
                }

                // the code is always set/ updated
                contexts[ name ].code = code;

                // only if enabled, do we create/ update the model
                if( managerLang === lang ) {
                    if( contexts[ name ].model ) {
                        contexts[ name ].model.setValue( code );
                    } else {
                        contexts[ name ].model = monaco.editor.createModel( code, MONACO_LANG_JAVASCRIPT );
                    }
                }

                debugTrace( "CONTEXT_MANAGER added context", name );
            };

            /**
             * Drops a context
             */
            const dropContext = name => {
                if( contexts[ name ] ) {
                    if( contexts[ name ].model ) {
                        contexts[ name ].model.dispose();
                        contexts[ name ].model = null;
                    }
                    contexts[ name ] = undefined;
                }

                debugTrace( "CONTEXT_MANAGER dropped context", name );
            };

            /**
             * Should be called when initializing, or focusing inside of a JavaScript or MLE JavaScript Editor
             */
            const _reevaluate = lang => {

                _verifyLang( lang );

                managerLang = lang;

                Object.keys( contexts ).forEach( name => {
                    const context = contexts[ name ];

                    if( managerLang !== context.lang ) {
                        // if the new language is not the same as the old language, disable the model
                        if( context.model ) {
                            context.model.dispose();
                            context.model = null;
                        }
                    } else {
                        // otherwise, update the model
                        if( context.model ) {
                            context.model.setValue( context.code );
                        } else {
                            context.model = monaco.editor.createModel( contexts[ name ].code, MONACO_LANG_JAVASCRIPT );
                        }
                    }
                } );

                debugTrace( "CONTEXT_MANAGER contexts reevaluated" );
            };

            return {
                setContext,
                dropContext,
                _reevaluate
            };
        } )();

        const LOAD = {
            ONCE: "once",
            FRESH: "fresh"
        };

        let latestJsLanguage;

        /**
         * Context data for the different JavaScript flavors
         *
         * A context has the form of:
         * {
         *     key: a unique context key, to be passed to the CONTEXT_MANAGER
         *     condition: a boolean indicating whether or not to load the context
         *     content / contentPath / contentFunction: the source of the actual code/dts file
         *     load: whether to be loaded each time on reevaluate, or just once
         *     isLoaded: flag used in case load is ONCE
         * }
         */
        const DTS_DATA = {
            [ LANG_JAVASCRIPT ]: {
                contexts: [ {
                    key: "DTS_JS",
                    contentPath: ABSOLUTE_PATH + "libraries/monaco-editor-apex/types/browser/types.d.ts?v=" + env.APEX_VERSION,
                    load: LOAD.ONCE,
                    isLoaded: false
                }, {
                    key: "JS_EXTRAS",
                    contentFunction: pageInfo => {
                        return pageInfo ? `
                        declare namespace apex {
                            var items: {
                                ${pageInfo.items.map( item => {
                                    let type = "item";
                                    if( DTS_TYPES.ITEM[ item.type ] ) {
                                        type = DTS_TYPES.ITEM[ item.type ];
                                    }
                                    return `${JSON.stringify( item.name )}: ${type};`;
                                } ).join( "\n" )}
                            };
                            var regions: {
                                ${pageInfo.regions.map( region => {
                                    let type = "region";
                                    if( DTS_TYPES.REGION[ region.type ] ) {
                                        type = DTS_TYPES.REGION[ region.type ];
                                    } else if ( region.type.startsWith( "TMPL_" ) ) {
                                        type = DTS_TYPES.REGION.NATIVE_TEMPLATE_COMPONENT;
                                    }
                                    return `${JSON.stringify( region.staticId )}: ${type};`;
                                } ).join( "\n" )}
                            };
                        }` : null;
                    },
                    // used in PD, where items and regions change often, so we wish to load it on each edior focus
                    load: LOAD.FRESH
                } ],
            },
            [ LANG_JAVASCRIPT_MLE_SNIPPET ]: {
                contexts: [ {
                    // both DB 21c and 23ai have their own types.d.ts file
                    key: "DTS_JS_MLE_SNIPPET_1",
                    condition: env.DB_VERSION >= 21,
                    contentPath: `${ABSOLUTE_PATH}libraries/monaco-editor-apex/types/mle/${env.DB_VERSION}/types.d.ts?v=${env.APEX_VERSION}`,
                    load: LOAD.ONCE,
                    isLoaded: false
                }, {
                    // for 21c, the apex namespace is already defined in the dts file
                    // for 23ai, we have it here inline for more flexibility
                    // todo. in the future, it should be its own static file generated from our typescript sources
                    key: "DTS_JS_MLE_SNIPPET_2",
                    condition: env.DB_VERSION >= 23,
                    content: `
                        import { defaultConnection, default as oracledb } from "mle-js-oracledb";
                        globalThis.apex = {
                            db: oracledb,
                            conn: oracledb.defaultConnection(),
                            env: {}
                        };
                    `,
                    load: LOAD.ONCE,
                    isLoaded: false
                } ],
            },
            [ LANG_JAVASCRIPT_MLE_MODULE ]: {
                contexts: [ {
                    key: "DTS_JS_MLE_MODULE",
                    condition: env.DB_VERSION >= 23,
                    contentPath: `${ABSOLUTE_PATH}libraries/monaco-editor-apex/types/mle/${env.DB_VERSION}/types.d.ts?v=${env.APEX_VERSION}`,
                    load: LOAD.ONCE,
                    isLoaded: false,
                } ]
            }
        };

        /**
         * Should be called when focusing inside of a JavaScript or MLE JavaScript Editor
         */
        const reevaluate = ( language, pageInfo ) => {

            DTS_DATA[ language ].contexts.forEach( context => {
                if( context.condition === undefined || context.condition ) {
                    if( ( context.load === LOAD.ONCE && !context.isLoaded ) || context.load === LOAD.FRESH ) {

                        ( async () => {
                            let finalContent;

                            if( context.content ) {
                                finalContent = context.content;
                            } else if( context.contentPath ) {
                                const response = await fetch( context.contentPath );
                                if( !response.ok ) {
                                    debugError( "Could not fetch file", response );
                                    return;
                                }
                                finalContent = await response.text();
                            } else if( context.contentFunction ) {
                                finalContent = context.contentFunction( pageInfo );
                            }

                            CONTEXT_MANAGER.setContext( context.key, finalContent, language );
                        } )();

                        if( context.load === LOAD.ONCE ) {
                            context.isLoaded = true;
                        }

                    }
                }
            } );

            // Note: as of monaco 0.32.1 whenever we touch javascriptDefaults, the entire worker gets loaded again
            // This seems to be a bug. https://github.com/microsoft/monaco-editor/issues/2960
            // We must therefore only do so when the language really has changed.
            if( latestJsLanguage !== language ) {
                latestJsLanguage = language;
                monaco.languages.typescript.javascriptDefaults.setCompilerOptions( {
                    target: monaco.languages.typescript.ScriptTarget.Latest,
                    allowJs: true,
                    allowNonTsExtensions: true,
                    // for MLE JavaScript, browser globals like window should be hidden
                    noLib: [ LANG_JAVASCRIPT_MLE_SNIPPET, LANG_JAVASCRIPT_MLE_MODULE ].includes( language )
                } );
                monaco.languages.typescript.javascriptDefaults.setDiagnosticsOptions( {
                    // do not mark nameless functions as errors
                    // needed for Init JS Code
                    diagnosticCodesToIgnore: [ 1003 ]
                } );
                CONTEXT_MANAGER._reevaluate( language );
            }
        };

        return {
            "reevaluate": reevaluate,
            "setContext": CONTEXT_MANAGER.setContext,
            "dropContext": CONTEXT_MANAGER.dropContext
        };
    } )();

    function loadLanguageDependencies ( language, options ) {
        return new Promise( resolve => {

            if( JS_LANGS.includes( language ) ) {
                JAVASCRIPT_MANAGER.reevaluate( language, options.pageInfo );
                resolve();
            } else if( language === LANG_QUICKSQL ) {
                if( !monaco.languages.getEncodedLanguageId( LANG_QUICKSQL ) ) {
                    server.loadScript( {
                        path: QUICKSQL_PATH
                    }, resolve );
                } else {
                    resolve();
                }
            } else {
                resolve();
            }
        } );
    }

    // should be called once, before monaco was loaded, but after requirejs was loaded
    function configureMonacoPreLoad () {
        // configuring monaco
        // https://github.com/microsoft/monaco-editor/blob/master/docs/integrate-amd-cross.md
        // Before loading vs/editor/editor.main, define a global MonacoEnvironment that overwrites
        // the default worker url location (used when creating WebWorkers). The problem here is that
        // HTML5 does not allow cross-domain web workers, so we need to proxy the instantiation of
        // a web worker through a same-domain script
        window.MonacoEnvironment = {
            getWorkerUrl: function() {
                return "data:text/javascript;charset=utf-8," + encodeURIComponent( `
                    self.MonacoEnvironment = {
                        baseUrl: "${MONACO_BASE_PATH}"
                    };
                    importScripts("${MONACO_BASE_PATH}/vs/base/worker/workerMain.js");
                `);
            }
        };
        require.config( {
            paths: {
                "vs": MONACO_BASE_PATH + "/vs",
                "custom-languages": MONACO_CUSTOM_LANGUAGES_PATH,
            },
            waitSeconds: 0
        } );
        // monaco supports en, de, es, fr, it, ja, ko, ru, zh-tw and zh-cn
        // if none is matched by the current locale, we default to english
        let browserLang = locale.getLanguage().toLowerCase();
        let monacoLang;
        // only ones for which we need to take into account the country
        if( [ "zh-tw", "zh-cn" ].includes( browserLang ) ) {
            monacoLang = browserLang;
        } else {
            // slicing off a possible country portion
            browserLang = browserLang.split( "-" )[ 0 ];
            if( [ "de", "es", "fr", "it", "ja", "ko", "ru" ].includes( browserLang ) ) {
                monacoLang = browserLang;
            }
        }
        // if a special language was matched, we set it. otherwise english stays
        if( monacoLang ) {
            require.config( {
                "vs/nls": {
                    availableLanguages: {
                        "*": monacoLang
                    }
                }
            } );
        }
    }

    // should be called once, after monaco was loaded
    function configureMonacoPostLoad () {

        // override sql language loader to point to the oracle-sql file
        monaco.languages.getLanguages().filter( lang => lang.id === "sql" )[ 0 ].loader = () => {
            return new Promise( ( resolve, reject ) => {
                require( [ `custom-languages/sql${MIN_EXT}` ], resolve, reject );
            } );
        };

        monaco.editor.defineTheme( "apex-vs", {
            inherit: true,
            base: "vs",
            rules: [
                // background color: fffffe
                // sql
                { token: "string.sql", foreground: "b26100" },          // 4.56  AA
                { token: "keyword.sql", foreground: "c74634" },         // 4.82  AA
                { token: "predefined.sql", foreground: "7e5e8a" },      // 5.44  AA
                { token: "operator.sql", foreground: "000000" },        // 20.99 AAA
                { token: "atom.sql", foreground: "398459" },            // 4.54  AA
                { token: "function.sql", foreground: "795E26" },        // 6.10  AA
                { token: "pageitem.sql", foreground: "008080", fontStyle: "bold" },
                // quicksql
                { token: "table.quicksql", foreground: "1E84BF", fontStyle: "bold" },   // 4.11 AA Large
                { token: "view.quicksql", foreground: "008855", fontStyle: "bold" },    // 4.51 AA
                { token: "list.quicksql", foreground: "b26100" },                       // 4.56 AA
                { token: "keywords.quicksql", foreground: "c74634" },                   // 4.82 AA
                { token: "types.quicksql", foreground: "398459" },                      // 4.54 AA
            ],
            colors: {
                // bracket pair colorization
                "editorBracketHighlight.foreground1": "#0431FA",    // 7.42
                "editorBracketHighlight.foreground2": "#008000",    // 5.13
                "editorBracketHighlight.foreground3": "#7B3814"     // 8.67
            }
        } );
        monaco.editor.defineTheme( "apex-vs-dark", {
            inherit: true,
            base: "vs-dark",
            rules: [
                // to be enabled in a future APEX version
                // semantic tokens. for now only JavaScript makes use of them
                /*
                // TODO add to other 2 themes
                { token: "function", foreground: "DCDCAA" },
                { token: "method", foreground: "DCDCAA" },
                { token: "keyword", foreground: "C586C0" },
                { token: "variable", foreground: "4FC1FF" },
                { token: "parameter", foreground: "9CDCFE" },
                { token: "class", foreground: "4EC9B0" },
                { token: "namespace", foreground: "9CDCFE" },
                { token: "property", foreground: "9CDCFE" },
                */
                // background color: 1e1e1e
                // sql
                { token: "string.sql", foreground: "ecbb76" },          // 9.48  AAA
                { token: "keyword.sql", foreground: "f14840" },         // 4.56  AA
                { token: "predefined.sql", foreground: "a687b3" },      // 5.35  AA
                { token: "operator.sql", foreground: "D4D4D4" },        // 11.25 AAA
                { token: "atom.sql", foreground: "259856" },            // 4.53  AA
                { token: "function.sql", foreground: "DCDCAA" },        // 11.80 AAA
                { token: "pageitem.sql", foreground: "3dc9b0", fontStyle: "bold" },
                // quicksql
                { token: "table.quicksql", foreground: "1E84BF", fontStyle: "bold" },   // 4.06 AA   Large
                { token: "view.quicksql", foreground: "259856", fontStyle: "bold" },    // 4.53 AA
                { token: "list.quicksql", foreground: "ecbb76" },                       // 9.48 AAA
                { token: "keywords.quicksql", foreground: "f14840" },                   // 4.56 AA
                { token: "types.quicksql", foreground: "A3CDFF" },                      // 4.53 AA
            ],
            colors: {
                // bracket pair colorization
                "editorBracketHighlight.foreground1": "#ffd700",    // 11.88
                "editorBracketHighlight.foreground2": "#da70d6",    // 5.77
                "editorBracketHighlight.foreground3": "#179fff"     // 5.9
            }
        } );
        monaco.editor.defineTheme( "apex-hc-black", {
            inherit: true,
            base: "hc-black",
            rules: [
                // background color: 000000
                // sql
                { token: "string.sql", foreground: "ecbb76" },          // 11.94 AAA
                { token: "keyword.sql", foreground: "f14840" },         // 5.74  AA
                { token: "predefined.sql", foreground: "a687b3" },      // 6.74  AA
                { token: "operator.sql", foreground: "D4D4D4" },        // 14.17 AAA
                { token: "atom.sql", foreground: "259856" },            // 5.70  AA
                { token: "function.sql", foreground: "DCDCAA" },        // 14.86 AAA
                { token: "pageitem.sql", foreground: "3dc9b0", fontStyle: "bold" },
                // quicksql
                { token: "table.quicksql", foreground: "1E84BF", fontStyle: "bold" },   // 5.11  AA
                { token: "view.quicksql", foreground: "259856", fontStyle: "bold" },    // 5.73  AA
                { token: "list.quicksql", foreground: "ecbb76" },                       // 11.94 AAA
                { token: "keywords.quicksql", foreground: "f14840" },                   // 5.74  AA
                { token: "types.quicksql", foreground: "259856" },                      // 5.73  AA
            ],
            colors: {
                // bracket pair colorization
                "editorBracketHighlight.foreground1": "#ffd700",    // 14.97
                "editorBracketHighlight.foreground2": "#da70d6",    // 7.26
                "editorBracketHighlight.foreground3": "#87cefa"     // 12.23
            }
        } );

        _registerFileUrlsLanguages();
    }

    // resolves when all dependencies have been loaded
    // 1) requirejs, can already be present on the page, if not, it will load async
    // 2) monaco, can already be present on the page, if not, it will load async
    const loadEditorDependencies = new Promise( mainResolve => {
        new Promise( requirejsresolve => {
            if( window.require === undefined ) {
                server.loadScript( {
                    path: MONACO_BASE_PATH + "/vs/loader.js"
                }, requirejsresolve );
            } else {
                requirejsresolve();
            }
        } )
            .then( () => {
                configureMonacoPreLoad();
                require( [ "vs/editor/editor.main" ], () => {
                    configureMonacoPostLoad();
                    mainResolve();
                } );
            } );
    } );

    // returns the external theme preference: vs or vs-dark
    function getThemeForAutomatic () {
        if( apex.builder ) {
            // if in the builder, respect the builder theme, which might or might not be based on the OS preference
            return apex.builder.isBuilderDarkMode() ? "vs-dark" : "vs";
        } else {
            // if outside of the builder, respect the OS preference
            return window.matchMedia && window.matchMedia( "(prefers-color-scheme: dark)" ).matches ? "vs-dark" : "vs";
        }
    }

    // sets the monaco theme
    // this can only be done globally
    // pass in any of the valid themes: automatic, vs, vs-dark or hc-black
    function setTheme ( theme ) {

        currentTheme = theme;

        let themeToSet;

        if( theme === "automatic" ) {
            themeToSet = getThemeForAutomatic();
        } else if( [ "vs", "vs-dark", "hc-black" ].includes( theme ) ) {
            themeToSet = theme;
        } else {
            themeToSet = getThemeForAutomatic();
            debugTrace( theme + " is not a valid Monaco theme. Using automatic instead." );
        }

        // ensures we only touch monaco once it's actually loaded
        loadEditorDependencies.then( () => {
            monaco.editor.setTheme( "apex-" + themeToSet );
        } );
    }

    // when running in the APEX builder, theme automatic is superseded by the builder theme
    //  which can itself be automatic
    // when running outside of the builder, theme automatic comes straight from the OS
    //
    // in both cases, on theme change, if the current editor theme is automatic, we reevaluate it
    if( apex.builder ) {
        // triggered by builder.js on theme change
        $( "body" ).on( "apex-builder-theme-changed", () => {
            if( currentTheme === "automatic" ) {
                setTheme( "automatic" );
            }
        } );
    } else {
        if( window.matchMedia ) {
            window.matchMedia( "(prefers-color-scheme: dark)" ).addListener( () => {
                if( currentTheme === "automatic" ) {
                    setTheme( "automatic" );
                }
            } );
        }
    }

    function isMac () {
        return /(Mac|iPhone|iPod|iPad)/i.test( navigator.platform );
    }

    function getUniversalCtrlKey () {
        // WinCtrl = Ctrl on Mac, WinKey on Windows
        // CtrlCmd = Cmd on Mac, Ctrl on Windows
        // this conditional will ensure Ctrl on both
        return isMac() ? monaco.KeyMod.WinCtrl : monaco.KeyMod.CtrlCmd;
    }

    // Tries to lowercase a string. If the string is already lower-cased, it will uppercase it
    // parts of the string contained enclosed in " ", " " (strings or case sensitive aliases) are *not* transformed
    function transformCodeCase ( str ) {

        if( !str ) {
            return str;
        }

        function getRangesToIgnore ( str ) {
            let arr = [];
            let matches = str.matchAll( /('|")[\s\S]*?(\1)/gm );
            for( let match of matches ) {
                arr.push( { start: match.index, end: match.index + match[ 0 ].length, ignore: true } );
            }
            return arr;
        }

        function completeRanges ( ranges, lastIndex ) {
            let finalRanges = [];
            let currentIndex = 0;

            function addRange ( start, end, ignore ) {
                finalRanges.push( { start: start, end: end, ignore: ignore } );
            }

            if( ranges.length === 0 ) {
                addRange( 0, lastIndex, false );
            } else {
                for( let i = 0; i < ranges.length; i++ ) {
                    let range = ranges[ i ];
                    if( currentIndex < range.start ) {
                        addRange( currentIndex, range.start - 1, false );
                    }
                    addRange( range.start, range.end, true );
                    currentIndex = range.end + 1;
                }
                if( currentIndex < lastIndex - 1 ) {
                    addRange( currentIndex, lastIndex, false );
                }

            }

            return finalRanges;
        }

        function applyFunction ( ranges, func ) {
            let i, range, strPart, result = "";
            for( i = 0; i < allRanges.length; i++ ) {
                range = allRanges[ i ];
                strPart = str.slice( range.start, range.end + 1 );
                result += range.ignore ? strPart : func( strPart );
            }
            return result;
        }

        function toLowerCase ( ranges ) {
            return applyFunction( ranges, function( str ) {
                return str.toLocaleLowerCase();
            } );
        }

        function toUpperCase ( ranges ) {
            return applyFunction( ranges, function( str ) {
                return str.toLocaleUpperCase();
            } );
        }

        let rangesToIgnore = getRangesToIgnore( str );
        let allRanges = completeRanges( rangesToIgnore, str.length - 1 );

        let strLowerCase = toLowerCase( allRanges );
        if( str !== strLowerCase ) {
            return strLowerCase;
        } else {
            return toUpperCase( allRanges );
        }
    }

    // maps the editor language to a monaco language
    const editorLangToMonacoLang = editorLang => {
        if ( editorLang === LANG_PLSQL) {
            return LANG_SQL;
        } else if  ( JS_LANGS.includes( editorLang ) ) {
            return MONACO_LANG_JAVASCRIPT;
        }
        return  editorLang;
    };

    /**
     * This function should be called on each editor focus.
     *
     * In case any accessibility-related extension or bookmarklet has updated the page's Font related settings
     *  we should tell Monaco to pick up the new values. Otherwise, the visual code and
     *  underlaying hidden textarea would be misaligned, causing an erratic typing experience.
     *
     * See WCAG 1.4.12: Text Spacing
     * See #33855415
     */
    const reevaluateFonts = (() => {

        // monaco.editor.remeasureFonts is not the cheapest operation
        // so let's only call it if any font-related values have actually changed
        let fontHash;

        const getFreshFontHash = () => [
            "font-family",
            "font-size",
            "line-height",
            "word-spacing",
            "letter-spacing"
        ].map( prop => {
            return $( "body" ).css( prop );
        } ).join( "-" );

        // set the initial font hash
        fontHash = getFreshFontHash();

        return () => {
            const newFontHash = getFreshFontHash();
            if( fontHash !== newFontHash ) {
                fontHash = newFontHash;
                debugTrace( "New font values detected. Remeasuring Monaco fonts." );
                monaco.editor.remeasureFonts();
            }
        };
    })();

    $.widget( "apex.codeEditor", {
        widgetEventPrefix: "codeEditor",
        options: {
            language: MONACO_LANG_JAVASCRIPT,
            // in non diff-mode: the value is a string
            // in diff mode: the value is a JSON of type: {"original":"...","modified":"..."}
            value: "",
            readOnly: false,
            autofocus: false,
            ariaLabel: "",
            /*
             * errors & warnings: an array of either strings, or objects of type:
             * {
             *      message string required
             *      line    number optional
             *      column  number optional
             * }
             */
            errors: [],
            warnings: [],
            /*
             * Editor specific suggestions
             * Can be an array of objects:
             *  [{
             *      label: "P1_FIRST_NAME (First Name)", // required
             *      insertText: "P1_FIRST_NAME",         // optional
             *      detail: "Page Item",                 // optional
             *      documentation: "some  text"          // optional
             *  }]
             *
             * Or a callback function that will be invoked on widget load and on language change
             * It must return the same kind of array
             * function(language){
             *      if(language == "sql"){ return [...];}
             *      else if(language == "javascript"){ return [...];}
             *      else { return []; }
             * }
             */
            suggestions: null,
            /*
             * pageInfo should provided only if in Page Designer
             * {
             *    pageId: 1,
             *    items: [{
             *      name: "P1_ID",
             *      type: "NATIVE_NUMBER_FIELD"
             *    }]
             *    regions: [{
             *      staitcId: "myFacetRegion",
             *      type: "NATIVE_FACETED_SEARCH"
             *    }]
             * }
             *
             * pageId is used by the item name validator
             * items and regions are used by the apex.items and apex.regions autocomplete
             * items.name is also used for the item name validator
             */
            pageInfo: {
                pageId: null,
                isPageDesigner: true,
                isGlobalPage: false,
                isDialogPage: false,
                applicationMessages: null,
                shortMsgSyntaxSupported: false,
                items: [],
                regions: []
            },
            showSuggestions: true,
            // should be passed as true in Page Designer, while also assuring the page items are returned by the suggestions function
            validatePageItems: false,
            // monaco options: exposing them here as opposed to arbitrarily passing them forward
            // to keep a list of all options used

            // "on", "off", "conditional" (only show when content >= 100 lines)
            minimap: MINIMAP_CONDITIONAL,
            lineNumbers: true,
            wordWrap: false,
            scrollBeyondLastLine: true,
            // wordBasedSuggestions are not scope-limited, so they can be more disturbing than useful
            wordBasedSuggestions: false,
            // toolbar is always available in the builder, but can be disabled for theme roller
            toolbar: true,
            whitespace: false,
            // settings which can be overridden by user preference
            theme: "automatic",
            tabsInsertSpaces: true,
            indentSize: "4",
            tabSize: "4",
            ruler: false,
            bracketPairColorization: false,
            // to be enabled in a future APEX version when they are stable enough
            //semanticHighlighting: true, // currently for JS only. might change with the SQL lang server
            // callback functions
            onInitialized: null,  // optional. function that runs after the editor is initialized. function(editor){}
            codeComplete: null,   // optional. function( options, callback )
            validateCode: null,   // optional. function( code, callback ) callback: function( {errors:[],warnings:[]} )
            queryBuilder: null,   // optional. function( editor, code )
            heightFn: null,       // optional. function returning editor height
            // optional. function that enables the save function(s) from the codeEditor dialog
            // if it's provided save/save-and-run action is created
            // function ( event, focusElement, isRun )
            dialogSave: null,
            // if provided, it will be called on initialization and subsequently at window resize
            // events/callbacks
            preferencesChanged: null,    // function( event )
            // async loading mechanism
            // render the initial div or textarea with data attribute "load-stop" to delay the editor loading
            // trigger "load-resume" on said div to resume it
            lazyLoad: false,
            // diff mode
            diffEditor: false,
            // APEX Assistant
            ai: null, // optional. object that MUST have ajax.ajaxId or ajax.ajaxCallback property
        },
        /*
         * Lifecycle methods
         */
        _create: function() {
            const self = this,
            o = this.options,
            editor$ = $( self.element[ 0 ] ).addClass( "a-MonacoEditor" ),
            monacoLanguage = editorLangToMonacoLang( o.language );

            editor$.append( $( `
                <div class="a-MonacoEditorContent">
                    <div class="a-MonacoEditorContent-left">
                        <div class="a-MonacoEditor-toolbar"></div>
                        <div class="a-MonacoEditor-notification" style="display:none;">
                            <div class="a-MonacoEditor-message"></div>
                            <button title="${util.escapeHTMLAttr(MSG_CLOSE)}" aria-label="${util.escapeHTMLAttr(MSG_CLOSE)}" class="a-Button a-Button--noLabel a-Button--withIcon a-Button--small a-CodeEditor-searchBar-closeButton" type="button">
                                <span class="a-Icon ui-icon-closethick" aria-hidden="true"></span>
                            </button>
                        </div>
                        <div class="a-MonacoEditor-editor" dir="ltr"></div>
                    </div>
                </div>
            `) );

            self.baseId = self.element[0].id;
            self._editor$ = editor$;
            self._toolbar$ = editor$.find( ".a-MonacoEditor-toolbar" ).first();
            self._notification$ = editor$.find( ".a-MonacoEditor-notification" ).first();
            self._monacoEditor$ = editor$.find( ".a-MonacoEditor-editor" ).first();

            self._container$ = editor$.find( ".a-MonacoEditorContent" );
            self._leftPanel$ = editor$.find( ".a-MonacoEditorContent-left" );

            if ( o.ai ) {
                self._container$.append( $( `
                    <div class="a-MonacoEditorContent-right">
                        <div class="a-MonacoEditor-toolbar"></div>
                        <div class="a-MonacoEditor-ai"></div>
                    </div>
                ` ) );

                self._rightPanel$ = editor$.find( ".a-MonacoEditorContent-right" );

                self._chatEl$ = self._rightPanel$.find( ".a-MonacoEditor-ai" );
                self._chatToolbar$ = self._rightPanel$.find( ".a-MonacoEditor-toolbar" );

                // we need to add an id to this element, becuase it is hidden by default
                // and its visiblity is controlled by the "apex assistant" toggle button in the toolbar
                // this button references the panel element by the element's id through the aria-controls attribute
                self._rightPanelId = util.getTopApex().jQuery({}).uniqueId()[0].id;
                self._rightPanel$.attr( "id", self._rightPanelId );

                self._aiEnabled = false; // flag to show if the chat is open or closed
                self._currentAssistant = ACTION_AI_GENERAL; // chat mode(ACTION_AI_GENERAL or ACTION_AI_NL2SQL)
            }

            ( async () => {

                if( o.lazyLoad ) {
                    debugTrace( "Loading halted", editor$ );
                    await (new Promise( resolve => {
                        editor$.one( "load-resume", () => {
                            debugTrace( "Loading resumed", editor$ );
                            resolve();
                        } );
                    } ));
                }

                // load dependencies
                await loadEditorDependencies;
                await loadLanguageDependencies( self.options.language, self.options );

                // initialize notifications area
                self._notification$.find( "button" ).on( EVENT_CLICK, () => { self.resetNotification(); } );

                // monaco themes are set globally
                setTheme( o.theme );

                const editorOptions = {
                    detectIndentation: false,
                    insertSpaces: o.tabsInsertSpaces,
                    indentSize: o.indentSize,
                    tabSize: o.tabSize,
                    rulers: o.ruler ? [ 80 ] : [],
                    scrollBeyondLastLine: o.scrollBeyondLastLine,
                    lineNumbers: o.lineNumbers,
                    // slightly narrower line number column
                    lineNumbersMinChars: 4,
                    scrollbar: {
                        // allows page to scroll if bottom of editor was reached
                        alwaysConsumeMouseWheel: false
                    },
                    stickyScroll: {
                        enabled: false
                    },
                    fixedOverflowWidgets: true,
                    ariaLabel: o.ariaLabel,
                    wordBasedSuggestions: o.wordBasedSuggestions ? "currentDocument" : "off",
                    quickSuggestions: o.showSuggestions,
                    // as of 24.1, accessibilityMode is always on and no longer dependent on a user preference
                    accessibilitySupport: "on",
                    accessibilityVerbose: false,
                    inlineCompletionsAccessibilityVerbose: false,
                    renderWhitespace: o.whitespace ? "all" : "none",
                    // content should be copied plaintext for clean pasting in rich text contexts (Word, Jira etc)
                    copyWithSyntaxHighlighting: false,

                    // semanticHighlighting and bracket pair colorization to be enabled in a future APEX version
                    // enabled for all, but only JavaScript has the smarts to make use of it
                    // "semanticHighlighting.enabled": o.semanticHighlighting,
                    "bracketPairColorization.enabled": o.bracketPairColorization,

                    // TODO. could not get this option to work. either way it should be based on an editor setting
                    // "guides.bracketPairs.enabled": true,
                    mouseWheelZoom: true,

                    // automatically matches the size of its container
                    automaticLayout: true,

                    ...self._getLanguageDependentMonacoOptions()
                };

                let editor, model, modelOriginal;

                if( o.diffEditor ) {
                    const diffEditor = monaco.editor.createDiffEditor( self._monacoEditor$[ 0 ], {
                        ...editorOptions,
                        // diffEditor specific options:
                        renderSideBySide: true,
                        renderGutterMenu: false
                    } );

                    const
                        originalModel = monaco.editor.createModel( o.value.original, monacoLanguage ),
                        modifiedModel = monaco.editor.createModel( o.value.modified, monacoLanguage );

                    diffEditor.setModel( {
                        original: originalModel,
                        modified: modifiedModel
                    } );

                    diffEditor.revealFirstDiff();

                    editor = diffEditor.getModifiedEditor();
                    modelOriginal = originalModel;
                    model = modifiedModel;

                    this._diffEditor = diffEditor;
                } else {
                    model = monaco.editor.createModel( o.value, monacoLanguage );
                    editor = monaco.editor.create( self._monacoEditor$[ 0 ], editorOptions );
                    editor.setModel( model );
                }

                // during initializtion, the ariaLabel automatically gets appended
                // the accessibility info, which we consider too noisy and verbose
                // so we force update the setting again
                editor.updateOptions( {
                    ariaLabel: editorOptions.ariaLabel
                } );

                self._model = model;
                self._modelOriginal = modelOriginal;
                self._modelId = model.id;
                self._editor = editor;
                self._editorId = editor.getId();

                self._setReadOnly( !!o.readOnly );

                editor.onDidDispose( () => {
                    // editor-specific disposableManager logic
                    self._disposeAllDisposables();
                    model.dispose();
                    modelOriginal?.dispose();
                } );

                // initialize monaco context keys used as conditions for various actions
                self._evaluateContextKeys( o.language );

                // initialize toolbar
                if( o.toolbar ) {
                    self._context = actions.createContext( "codeEditor", this.element[ 0 ] );
                    self._populateContext();
                    self._initToolbar( self._toolbar$ );
                    self._updateNotifications();
                }

                // resizing logic
                window.addEventListener( "resize", util.debounce( () => { self.resize(); }, 200 ) );
                editor$.on( "resize", function( pEvent ) {
                    self.resize();
                    pEvent.stopPropagation();
                } );

                if( o.autofocus ) {
                    self.focus();
                }

                editor.onKeyDown( event => {
                    self.element.children( "textarea" ).trigger( "keypress", event );
                } );

                // Combine onDidFocusEditorWidget and onDidBlurEditorWidget to simulate change event
                let oldValue;
                editor.onDidFocusEditorWidget( function() {
                    oldValue = model.getValue();
                } );

                editor.onDidBlurEditorWidget( function() {
                    let textarea$ = self.element.children( "textarea" ),
                        newValue = model.getValue();
                    // Trigger blur on the textarea, so DA "blur" will work
                    textarea$.trigger( "blur" );
                    // Simulate "change" event (on blur and value changed), so DA "change" will work
                    if( oldValue !== newValue ) {
                        textarea$.val( newValue ).trigger( "change" );
                    }
                } );

                // initialize item name validator
                if( o.validatePageItems && o.pageInfo.pageId ) {
                    self._initializeItemValidator();
                }

                // editor specific suggestion provider based on o.suggestions and o.language
                self._configureCustomSuggestionProvider();

                // configures custom shortcuts and extra editor actions
                self._initializeCustomActions();

                self._setupMinimap();

                // monaco uses a textarea deep inside the widget, onto which at times a change event is triggered
                // this can cause issues when embedding the editor in other widgets, such as Theme Roller
                // a fix is to not let any internal change events propagate outside of the editor
                self._monacoEditor$.on( "change", function( e ) {
                    e.stopPropagation();
                } );

                if( self._tempValue !== undefined ) {
                    self.setValue( self._tempValue );
                    self._tempValue = undefined;
                }

                // actions that should take place on each editor focus
                editor.onDidFocusEditorWidget( () => {
                    if( JS_LANGS.includes( o.language ) ) {
                        JAVASCRIPT_MANAGER.reevaluate( o.language, o.pageInfo );
                    }

                    reevaluateFonts();
                } );

                self._on( self._eventHandlers );

                self.resetUndoRedoStack();

                if( o.onInitialized ) {
                    o.onInitialized( editor );
                }
            } )();
        },

        _eventHandlers: {
            resize: function( event ) {
                this.resize();
                event.stopPropagation();
            },
            focusin: function() {
                this.element.addClass( C_ACTIVE );
            },
            focusout: function() {
                this.element.removeClass( C_ACTIVE );
            }
        },

        _destroy: function() {
            if( this._editor ) {
                this._editor.dispose();
            }

            if ( this._chat ) {
                this._chat.destroy();
                this._chat = null;
            }

            if ( this._chatView ) {
                this._chatView.destroy();
                this._chatView = null;
            }

            // reset global (ai) variables
            hasSelection = false;
            lastSelection = null;
            isConversation = false;
            chatLocked = false;
            surpressCursorPositionChange = false;
        },

        _setOption: function( key, value ) {
            let self = this,
                o = self.options,
                editor = self._editor;
            self._super( key, value );
            if( key === "readOnly" ) {
                self._setReadOnly( !!value );
            } else if( [ "errors", "warnings" ].includes( key ) ) {
                self._updateNotifications();
            } else if( key === "language" ) {
                self._setLanguage( value );
            } else if( key === "tabsInsertSpaces" ) {
                editor.updateOptions( { insertSpaces: value } );
            } else if( key === "ruler" ) {
                editor.updateOptions( { rulers: value ? [ 80 ] : [] } );
            } else if( key === "theme" ) {
                o.theme = value;
                setTheme( value );
            } else if( key === "minimap" ) {
                self._setupMinimap();
            } else if( key === "lineNumbers" ) {
                editor.updateOptions( { lineNumbers: !!value } );
            } else if( key === "whitespace" ) {
                editor.updateOptions( { renderWhitespace: value ? "all" : "none" } );
            } else if( key === "showSuggestions" ) {
                editor.updateOptions( { quickSuggestions: !!value } );
            } else if( key === "bracketPairColorization" ) {
                editor.updateOptions( { "bracketPairColorization.enabled": !!value } );
            } else if( key === "diffEditor" ) {
                throw new Error( "Switching between regular editor and diffEditor is not supported." );
            } /* else if( key === "semanticHighlighting" ) {
                editor.updateOptions( { "semanticHighlighting.enabled": !!value } );
            }*/
        },

        setValue: function( value ) {
            if( this.options.diffEditor && this._modelOriginal && this._model ) {
                this._modelOriginal.setValue( value.original );
                this._model.setValue( value.modified );
                this._diffEditor.revealFirstDiff();
            } else if( !this.options.diffEditor && this._model ) {
                this._model.setValue( value );
            } else {
                this._tempValue = value;
            }
        },

        getValue: function() {
            if( this.options.diffEditor && this._modelOriginal && this._model ) {
                return {
                    original: this._modelOriginal.getValue(),
                    modified: this._model.getValue()
                };
            } else if( !this.options.diffEditor && this._model ) {
                return this._model.getValue();
            } else if( this._tempValue !== undefined ) {
                // the editor has not yet initialized, but a new value has already been set
                return this._tempValue;
            } else {
                // the editor has not yet initialized. returning original initial value
                return this.options.value;
            }
        },

        getValidity() {
            const validationStatus = {
                valid: true,
                valueMissing: false,
                tooLong: false
            };

            const value = this.getValue();

            if ( this.options.required && value === "" ) {
                validationStatus.valid = false;
                validationStatus.valueMissing = true;
                return validationStatus;
            }

            if ( this.options.maxLength && ( value.length > this.options.maxLength ) ) {
                validationStatus.valid = false;
                validationStatus.tooLong = true;
                return validationStatus;
            }

            return validationStatus;
        },

        getValidationMessage() {
            const validity = this.getValidity();

            if ( validity.valueMissing ) {
                return lang.getMessage( "APEX.PAGE_ITEM_IS_REQUIRED" );
            } else if ( validity.tooLong ) {
                return lang.formatMessage (
                    "APEX.CODE_EDITOR.MAXIMUM_LENGTH_EXCEEDED",
                    this.getValue().length,
                    this.options.maxLength
                );
            }

            return "";
        },

        getEditor: function() {
            return this._editor;
        },

        resize: function() {
            let self = this;

            if ( self.options.ai && self._aiEnabled ) {
                let editorWidth = self._editor$.width();
                self._leftPanel$.width( editorWidth * 0.6 );
                self._rightPanel$.width( editorWidth * 0.4 );
            }

            if( self.options.heightFn ) {
                self._editor$.outerHeight( self.options.heightFn() );
            }
        },

        getSelection: function() {
            return this._model.getValueInRange( this._editor.getSelection() );
        },

        /**
         * The caller is responsible for making sure that pMessage is escaped as needed.
         * @param pMessage may contain markup
         */
        showNotification: function( message ) {
            let container$ = this._notification$.show().children().first().empty();
            if( typeof message === "string" ) {
                container$.html( message );
            } else if( typeof message === "object" && message instanceof jQuery ) {
                container$.empty();
                const hasErrorOrWarning = this._hasSQLErrors();
                if ( this.options.ai && hasErrorOrWarning && this.options.language === LANG_SQL ) {
                    let link = $( `<button class="apex-assistant-link">
                                        <span aria-hidden="true" class="a-Icon icon-apex-assistant"></span>
                                        <span class="a-Button-label">${util.escapeHTML(MSG_AI_DEBUG_HELP_LABEL)}</span>
                                    </button>` );
                    link.on( "click keyup", ( e ) => {
                        e.preventDefault();
                        if ( e.type === "click" || ( e.type === "keyup" && e.code === "Enter" ) ) {
                            if ( this._aiEnabled ) {
                                this._sendDebugMessage();
                            } else {
                                this._context.set( ACTION_AI, true );
                            }
                        }
                    } );
                    message.find( "li" ).append( link );
                }
                container$.append( message );
            } else {
                debugError( "The notification message must be a string or a jQuery object" );
            }
            this.resize();
        },

        // removes the message content and hides the container
        resetNotification: function() {
            this.errors = [];
            this.warnings = [];
            this._notification$
                .hide()
                .children().first().empty();
            this.resize();
        },

        // the message must be escaped externally
        showSuccessNotification: function( message ) {
            this.showNotification( `<ul><li role="alert" class="is-success">${message}</li></ul>` );
        },

        focus: function() {
            this.element.addClass( C_ACTIVE );
            this._editor.focus();
        },

        // note that lineNumber and column are 1-based indexes
        setCursor: function( lineNumber, column ) {
            this._editor.setPosition( {
                lineNumber: lineNumber,
                column: column
            } );
        },

        setCursorToEnd: function( revealLine ) {
            let editor = this._editor,
                model = this._model,
                lastLine = model.getLineCount(),
                lastColumn = model.getLineMaxColumn( lastLine );

            this.setCursor( lastLine, lastColumn );

            if( revealLine ) {
                editor.revealLine( lastLine );
            }
        },

        changeGeneration: function() {
            return this._model.getAlternativeVersionId();
        },

        isClean: function( pGeneration ) {
            return this._model.getAlternativeVersionId() === pGeneration;
        },

        getPreferencesString: function() {
            let o = this.options,
                obj = {},
                prefKeys = Object.values( PREF );

            for( let i = 0; i < prefKeys.length; i++ ) {
                let key = prefKeys[ i ];
                obj[ key ] = o[ key ];
            }

            return JSON.stringify( obj );
        },

        _undoRedoDisposable: undefined,
        resetUndoRedoStack: function() {
            const self = this,
                editor = self._editor,
                model = self._model,
                context = self._context;

            if ( self._undoRedoDisposable) {
                self._undoRedoDisposable.dispose();
                self._undoRedoDisposable = undefined;
            }

            context?.disable( "undo" );
            context?.disable( "redo" );

            // save states for undo/redo button disabling logic
            let initialVersion = model.getAlternativeVersionId(),
                currentVersion = initialVersion,
                lastVersion = initialVersion;

            self._undoRedoDisposable = editor.onDidChangeModelContent( () => {
                const versionId = model.getAlternativeVersionId();
                // undoing
                if( versionId < currentVersion ) {
                    context?.enable( "redo" );
                    // no more undo possible
                    if( versionId === initialVersion ) {
                        context?.disable( "undo" );
                    }
                } else {
                    // redoing
                    if( versionId <= lastVersion ) {
                        // redoing the last change
                        if( versionId === lastVersion ) {
                            context?.disable( "redo" );
                        }
                    } else {
                        // adding new change, disable redo when adding new changes
                        context?.disable( "redo" );
                        if( currentVersion > lastVersion ) {
                            lastVersion = currentVersion;
                        }
                    }
                    context?.enable( "undo" );
                }
                currentVersion = versionId;
            } );
        },

        diffPrevious: function() {
            this._diffEditor.goToDiff( "previous" );
        },

        diffNext: function() {
            this._diffEditor.goToDiff( "next" );
        },

        /*
         * Private functions
         */

        // readOnly logic
        _setReadOnly: function( readOnly ){
            const self = this,
                editor = self._editor;
            if( editor ) {
                // update the main readOnly flag
                editor.updateOptions( { readOnly: readOnly } );
                // update the aria-readonly attribute. see #33856322
                // there doesn't appear to be an API to get the textarea
                const textarea = editor.getDomNode().querySelector( "textarea.inputarea" );
                if( textarea ) {
                    textarea.ariaReadOnly = readOnly;
                    // see #33856322
                    textarea.ariaRoleDescription = readOnly ? MSG_ROLE_DESC_READONLY : MSG_ROLE_DESC;
                }
                // Note that we do not, and should not use the readonly attribute,
                // as that breaks other monaco functionalitities
                // such as the "Cannot edit in read-only editor" popup
                // this is also the reason we do not use the "domReadOnly" option
            }
        },

        // editor-specific disposable logic
        _disposableExists: function( key ) {
            return DISPOSABLE_MANAGER.existsForEditor( this._editorId, key );
        },
        _registerDisposable: function( key, disposable ) {
            DISPOSABLE_MANAGER.registerForEditor( this._editorId, key, disposable );
        },
        _disposeDisposable: function( key ) {
            DISPOSABLE_MANAGER.disposeForEditor( this._editorId, key );
        },
        _disposeAllDisposables: function() {
            DISPOSABLE_MANAGER.deregisterEditor( this._editorId );
        },
        // triggers an internal monaco action
        _triggerMonacoAction: function( actionName ) {
            const editor = this._editor;

            // the editor must be in focus for the action to take effect
            this.focus();
            editor.trigger( null, actionName );
        },

        // to be called after widget initializtion and when the language changes
        _configureCustomSuggestionProvider: function() {
            let self = this,
                editor = self._editor,
                o = self.options,
                language = editorLangToMonacoLang( o.language ),
                suggestions = o.suggestions,
                finalSuggestions,
                word;

            if( suggestions ) {

                if( Array.isArray( suggestions ) ) {
                    finalSuggestions = suggestions;
                } else if( typeof suggestions === "function" ) {
                    finalSuggestions = suggestions( language );
                } else {
                    debugError( "Suggestions type not supported" );
                    return;
                }

                finalSuggestions = finalSuggestions.map( suggestion => {
                    suggestion.insertText = suggestion.insertText || suggestion.label;
                    return suggestion;
                } );

                self._registerDisposable( "global-suggestions", monaco.languages.registerCompletionItemProvider( language, {
                    provideCompletionItems: function( model, position ) {
                        // a completion item provider is unfortunately set to the entire language and is not editor specific
                        // to get around this, whenever this provider is invoked, we check if the editor has focus
                        // if not, it means another editor with this language has focus so we don't return any suggestions
                        if( editor.hasTextFocus() ) {
                            word = model.getWordUntilPosition( position );
                            const toReturn = finalSuggestions.map( suggestion => {
                                suggestion.range = {
                                    startLineNumber: position.lineNumber,
                                    endLineNumber: position.lineNumber,
                                    startColumn: word.startColumn,
                                    endColumn: word.endColumn
                                };
                                suggestion.kind = monaco.languages.CompletionItemKind.Constructor;
                                return suggestion;
                            } );
                            if( toReturn.length ) {
                                return { suggestions: toReturn };
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                } ) );

                if ( typeof o.pageInfo?.applicationMessages === "function" ) {
                    const triggerCharacters = [ "$", "{", "(" ];
                    o.pageInfo.applicationMessages().then( res => {
                        finalSuggestions = res;
                        self._registerDisposable( "message-suggestions", monaco.languages.registerCompletionItemProvider( language, {
                            triggerCharacters,
                            provideCompletionItems: function( model, position, context/* , token */ ) {
                                let toReturn = [];
                                if ( !editor.hasTextFocus()
                                    || ![ LANG_HTML, LANG_PLAINTEXT, LANG_JAVASCRIPT ].includes( language )
                                    || context.triggerKind !== monaco.languages.CompletionTriggerKind.TriggerCharacter
                                    || !triggerCharacters.includes( context.triggerCharacter )
                                ) {
                                    return undefined;
                                }
                                // set common props
                                const messageSuggestion = finalSuggestions.map( s => ( {
                                    ...s,
                                    range: {
                                        startLineNumber: position.lineNumber,
                                        endLineNumber: position.lineNumber,
                                        startColumn: position.column,
                                        endColumn: position.column
                                    },
                                    kind: monaco.languages.CompletionItemKind.Keyword,
                                } ) );
                                const lineContent = model.getLineContent( position.lineNumber );
                                // not in every language count the triggering characters("$" or "&") as part of a word, therefore the -1 column
                                const currentWord = model.getWordUntilPosition( { column: position.column - 1, lineNumber: position.lineNumber } );
                                if ( context.triggerCharacter === "$" ) {
                                    // there's nothing to show if it's not &APP_TEXT$ or if it's JS
                                    if ( language === LANG_JAVASCRIPT || currentWord.word !== "APP_TEXT" || lineContent.charAt( currentWord.startColumn - 2 ) !== "&" ) {
                                        return undefined;
                                    }
                                    toReturn = messageSuggestion.map( suggestion => {
                                        // if the key contains a "." we need to wrap the whole string into double quotes
                                        if ( suggestion.insertText.includes( "." ) ) {
                                            suggestion.additionalTextEdits = [ {
                                                text: '&"APP_TEXT',
                                                range: {
                                                    startLineNumber: position.lineNumber,
                                                    startColumn: currentWord.startColumn - 1,
                                                    endLineNumber: position.lineNumber,
                                                    endColumn: currentWord.endColumn,
                                                }
                                            } ];
                                            suggestion.insertText = suggestion.insertText + "\".";
                                        } else {
                                            suggestion.insertText = suggestion.insertText + ".";
                                        }
                                        return suggestion;
                                    } );
                                } else if ( o.pageInfo.shortMsgSyntaxSupported && context.triggerCharacter === "{" ) {
                                    let prevChar = lineContent.charAt( currentWord.startColumn - 2 );
                                    if ( language === LANG_JAVASCRIPT || prevChar !== "&" ) {
                                        return undefined;
                                    }
                                    toReturn = messageSuggestion.map( suggestion => {
                                        suggestion.insertTextRules = monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet;
                                        // also insert the placeholders (with tabstops)
                                        suggestion.placeholders?.forEach( ( p, idx ) => {
                                                suggestion.insertText = `${suggestion.insertText} ${p[1]}=\${${idx+1}:""}`;
                                            } );
                                        // if the closing brace is already in place, we just put a dot after it
                                        if ( lineContent.charAt( currentWord.startColumn ) === "}" ) {
                                            suggestion.additionalTextEdits = [ {
                                                text: ".",
                                                range: {
                                                    startLineNumber: position.lineNumber,
                                                    startColumn: currentWord.startColumn + suggestion.insertText.length + 1,
                                                    endLineNumber: position.lineNumber,
                                                    endColumn: currentWord.endColumn + suggestion.insertText.length + 1,
                                                }
                                            } ];
                                        } else {
                                            suggestion.insertText += "}.";
                                        }
                                        return suggestion;
                                    } );
                                } else if ( context.triggerCharacter === "(" ) {
                                    let endOfLine = lineContent.substring( 0, position.column - 2 );
                                    if ( language !== LANG_JAVASCRIPT
                                        || ![ "apex.lang.getMessage", "apex.lang.formatMessage", "apex.lang.formatMessageNoEscape" ].some( f => endOfLine.endsWith( f ) ) ) {
                                        return undefined;
                                    }
                                    toReturn = messageSuggestion.flatMap( suggestion => {
                                        if ( !suggestion.isJS ) {
                                            return [];
                                        }
                                        suggestion.insertText = `"${suggestion.insertText}"`;
                                        if ( currentWord.word !== "getMessage" ) {
                                            suggestion.insertTextRules = monaco.languages.CompletionItemInsertTextRule.InsertAsSnippet;
                                            // also insert the placeholders (with tabstops)
                                            suggestion.placeholders?.forEach( ( p, idx ) => {
                                                    suggestion.insertText = `${suggestion.insertText}, "\${${idx+1}:${p[ 0 ]}}"`;
                                                } );
                                        }
                                        return [ suggestion ];
                                    } );
                                }

                                if( toReturn.length ) {
                                    return {
                                        suggestions: toReturn
                                    };
                                } else {
                                    return undefined;
                                }
                            }
                        } ) );
                    } );
                }

                // if the language is mle-javascript-snippet, we also trigger the suggestions on the dot after apex.env
                if( o.language === LANG_JAVASCRIPT_MLE_SNIPPET ) {
                    self._registerDisposable( DISP_MLE_ENV, monaco.languages.registerCompletionItemProvider( MONACO_LANG_JAVASCRIPT, {
                        triggerCharacters: [ "." ],
                        provideCompletionItems: function( model, position, context ) {
                            if( // only if this is the editor in question
                                editor.hasTextFocus() &&
                                // only if "." was pressed
                                context.triggerKind === monaco.languages.CompletionTriggerKind.TriggerCharacter &&
                                context.triggerCharacter === "." &&
                                // only if the dot follows apex.env
                                model.getLineContent( position.lineNumber ).substr( 0, position.column - 2 ).endsWith( "apex.env" )
                            ) {
                                word = model.getWordUntilPosition( position );
                                const toReturn = finalSuggestions.map( suggestion => {
                                    suggestion.range = {
                                        startLineNumber: position.lineNumber,
                                        endLineNumber: position.lineNumber,
                                        startColumn: word.startColumn,
                                        endColumn: word.endColumn
                                    };
                                    suggestion.kind = monaco.languages.CompletionItemKind.Constructor;
                                    return suggestion;
                                } );
                                if( toReturn.length ) {
                                    return {
                                        suggestions: toReturn
                                    };
                                } else {
                                    return;
                                }
                            } else {
                                return;
                            }
                        }
                    } ) );
                }
            }
        },

        // start of minimap logic
        _setupMinimap: function() {
            const self = this,
                o = self.options,
                editor = self._editor,
                model = self._model;

            if( self._disposableExists( DISP_MINIMAP ) ) {
                self._disposeDisposable( DISP_MINIMAP );
            }

            function showHideMinimap () {
                if( editor && model && !model.isDisposed() ) {
                    editor.updateOptions( {
                        minimap: {
                            enabled: o.minimap === MINIMAP_ON || ( o.minimap === MINIMAP_CONDITIONAL && ( model.getLineCount() >= 100 ) )
                        }
                    } );
                }
            }

            if( o.minimap === MINIMAP_CONDITIONAL ) {
                self._registerDisposable( DISP_MINIMAP, model.onDidChangeContent( util.debounce( showHideMinimap, 1000 ) ) );
            }

            showHideMinimap();
        },
        // end of minimap logic

        _normalizeNotificationObject: function( obj ) {
            if( typeof obj === "object" ) {
                return obj;
            } else if ( typeof obj === "string" ) {
                const newObject = {
                    message: obj
                };
                // An error message can optionally have the form "...ORA-06550: line xx, column yy: Error Message...""
                // in which case we're able to extract the line and column numbers
                // todo. should not be the code editor's responsibility to do this
                const index = newObject.message.indexOf( "ORA-06550" );
                if( index > -1 ) {
                    const str = newObject.message.slice( index ),
                        parsedError = str.match( /\d{1,}/g ),
                        lineNumber = parseInt( parsedError[ 1 ], 10 ),
                        columnNumber = parseInt( parsedError[ 2 ], 10 );

                    if( !isNaN( lineNumber ) ) {
                        newObject.lineNumber = lineNumber;
                    }
                    if( !isNaN( columnNumber ) ) {
                        newObject.columnNumber = columnNumber;
                    }
                }
                return newObject;
            } else {
                throw new Error( "error/warning must be an object or a string" );
            }
        },

        // reveals line in center and sets the cursor at the given position
        // line and column must be 1-based
        // pass focus = false, if the editor should not be focused after the position was set
        //      this can avoid console errors in cases where the focus is trapped somewhere else,
        //      like alert dialogs. see bug #33264302
        gotoPosition: function( line, column, focus = true ) {
            let self = this,
                editor = self._editor;

            if( editor ) {
                editor.revealLineInCenter( line );
                editor.setPosition( {
                    lineNumber: line,
                    column: column
                } );
                if( focus ) {
                    setTimeout( function() {
                        if( editor ) {
                            editor.focus();
                        }
                    }, 100 );
                }
            }
        },

        _updateNotifications: function() {
            let self = this,
                options = self.options,
                list$ = $( "<ul/>" );

            function pushItem( notificationObject, cls ) {
                const obj = self._normalizeNotificationObject( notificationObject ),
                    listItem$ = $( `<li role="alert" class="${ cls }" style="cursor: pointer;"></li>` );

                if( obj.lineNumber && obj.columnNumber ) {
                    listItem$.append( $( `<a data-line="${obj.lineNumber}" data-column="${obj.columnNumber}"></a>` ).text( obj.message ) );
                } else {
                    listItem$.text( obj.message );
                }

                list$.append( listItem$ );
            }

            options.errors.forEach( errorObject => {
                pushItem( errorObject, "is-error" );
            } );

            options.warnings.forEach( warningObject => {
                pushItem( warningObject, "is-warning" );
            } );

            if( list$.children().length ) {
                self.showNotification( list$ );

                $( "a[data-line]", list$ ).on( "click", function() {
                    self.gotoPosition( $( this ).data( "line" ), $( this ).data( "column" ) );
                } );
            } else {
                self.resetNotification();
            }

            self._updateInlineMessages();
        },

        _updateInlineMessages: function() {
            let self = this,
                options = self.options,
                model = self._model,
                lineMessages = [];

            // errors might have format:    ORA-20999: Failed to parse SQL query! <p>ORA-06550: line 6, column 5: ORA-00942: table or view does not exist</p>
            // warnings might have format:  ORA-06550: line 1, column 78: PL/SQL: ORA-00942: table or view does not exist
            // if they do, we wish to make clean up this message as much as possible
            // we do this by only keeping the content after the last ORA|PLS-NNNNN:, and removing any html tags
            // todo. should not be the code editor's responsibility to do this
            function cleanMessageForInline( message ) {
                return util.stripHTML( message.match( /.*(ORA|PLS)-\d+:(?<msg>.*)/s )?.groups?.msg || message ).trim();
            }

            function pushItem( notificationObject, severity ) {
                const obj = self._normalizeNotificationObject( notificationObject );

                if( obj.lineNumber && obj.columnNumber ) {
                    lineMessages.push( {
                        startLineNumber: obj.lineNumber,
                        endLineNumber: obj.lineNumber,
                        startColumn: obj.columnNumber,
                        endColumn: 1000,
                        message: cleanMessageForInline( obj.message ),
                        severity: severity
                    } );
                }
            }

            options.errors.forEach( errorObject => {
                pushItem( errorObject, monaco.MarkerSeverity.Error );
            } );

            options.warnings.forEach( warningObject => {
                pushItem( warningObject, monaco.MarkerSeverity.Warning );
            } );

            monaco.editor.setModelMarkers( model, "lineMessages", lineMessages );

            if( lineMessages.length ) {
                self.gotoPosition( lineMessages[ 0 ].startLineNumber, lineMessages[ 0 ].startColumn );
            }
        },

        _queryBuilder: function() {
            let fn = this.options.queryBuilder;
            if( fn ) {
                fn( this, this.getValue() );
            }
        },

        _codeComplete: function() {

            // ajax-based code complete is only allowed for sql and mle-javascript-snippet, and only if a callback has been provided
            if( !( this.options.codeComplete && [ LANG_SQL, LANG_PLSQL, LANG_JAVASCRIPT_MLE_SNIPPET ].includes( this.options.language ) ) ) {
                return;
            }

            let self = this,
                language = self.options.language,
                editor = self._editor,
                model = self._model,
                currentPosition = editor.getPosition(),
                lineValue = model.getLineContent( currentPosition.lineNumber ),
                word, parts, search, parent, grantParent,
                isItem = false,
                $spinner,
                elem = self.element[ 0 ];

            // the builtin model.getWordAtPosition and getWordAroundPosition functions
            // to not return values such as "x.y.z", only "z"
            // so we use our own function
            function getWordAround ( s, pos ) {
                // make pos point to a character of the word
                while( s[ pos ] === " " ) {
                    pos = pos - 1;
                }
                // find the space before that word
                // (add 1 to be at the begining of that word)
                // (note that it works even if there is no space before that word)
                pos = s.lastIndexOf( " ", pos ) + 1;
                // find the end of the word
                let end = s.indexOf( " ", pos );
                if( end === -1 ) {
                    end = s.length; // set to length if it was the last word
                }
                // return the result
                return s.substring( pos, end );
            }

            word = getWordAround( lineValue, currentPosition.column - 1 );
            parts = word.split( "." );

            if( [ LANG_SQL, LANG_PLSQL ].includes( language ) ) {
                if( parts.length === 1 && [ ":", "&" ].includes( word.charAt( 0 ) ) ) {
                    isItem = true;
                    search = word.slice( 1 );
                } else {
                    parent = parts[ parts.length - 2 ];
                    grantParent = parts[ parts.length - 3 ];
                }
            } else if( language === LANG_JAVASCRIPT_MLE_SNIPPET ) {
                if( parts.length === 3 && parts[ 0 ] === "apex" && parts[ 1 ] === "env" ) {
                    isItem = true;
                    search = parts[ 2 ];
                    parent = undefined;
                    grantParent = undefined;
                } else {
                    self._triggerMonacoAction( "editor.action.triggerSuggest" );
                    return;
                }
            }

            // function invoked when the autocomplete items are returned
            // pData has to be in the format:
            //   [
            //     type:      "string", (template, application_item, page_item, package, procedure, function, constant, variable, type, table, view)
            //     title:     "string",
            //     className: "string",
            //     completions: [
            //       { d: "string", r: "string" } or "string"
            //     ]
            //   ]
            function _success ( pData ) {

                apex.util.delayLinger.finish( "autocompleteSpinner", function() {
                    if( $spinner ) {
                        $spinner.remove();
                        $spinner = null;
                    }
                } );

                let kinds = monaco.languages.CompletionItemKind;

                // There is currently no built-in way to provide our own icons
                // do not use kinds.File! as it's disabled for JavaScript
                let monacoTypes = {
                    template: kinds.Constructor,
                    application_item: kinds.Constructor,
                    page_item: kinds.Constructor,
                    package: kinds.Constructor,
                    procedure: kinds.Method,
                    function: kinds.Function,
                    constant: kinds.Constructor,
                    variable: kinds.Constructor,
                    type: kinds.Constructor,
                    table: kinds.Constructor,
                    view: kinds.Constructor,
                    keyword: kinds.Constructor,
                    sequence: kinds.Constructor
                };

                let type,
                    completion,
                    completions = [];
                for( let i = 0; i < pData.length; i++ ) {
                    type = pData[ i ];

                    for( let j = 0; j < type.completions.length; j++ ) {
                        completion = type.completions[ j ];
                        let text = completion.r || completion;

                        completions.push( {
                            label: ( completion.d || completion ),
                            insertText: text,
                            detail: type.title,
                            kind: monacoTypes[ type.type ]
                        } );
                    }
                }

                // alreadyShown ensures temporary completions are only used by the completionItemProvider once: now.
                // it would be more elegant to dispose the registerCompletionItemProvider disposable when we're done with the autocomplete
                // but we don't have enough info on this, risking to hide the popup right after it was shown
                let alreadyShown = false;
                self._registerDisposable( "ajax-suggestions", monaco.languages.registerCompletionItemProvider( model.getLanguageId(), {
                    provideCompletionItems: function() {
                        if( self.element.hasClass( C_ACTIVE ) && !alreadyShown ) {
                            alreadyShown = true;
                            if( completions.length ) {
                                return {
                                    suggestions: completions
                                };
                            } else {
                                return;
                            }
                        } else {
                            return;
                        }
                    }
                } ) );

                // show the completion suggestions menu by force
                self._triggerMonacoAction( "editor.action.triggerSuggest" );
            } // _success


            util.delayLinger.start( "autocompleteSpinner", function() {
                $spinner = util.showSpinner( elem );
            } );

            self.options.codeComplete( {
                type: isItem ? "item" : "",
                search: isItem ? search : parts[ parts.length - 1 ],
                parent: parent,
                grantParent: grantParent
            }, _success );
        },

        validateCode: function() {
            if( !this.options.validateCode ) {
                return;
            }

            let self = this;

            self.options.validateCode( self.getValue(), function( results ) {
                results = $.extend( {}, { errors: [], warnings: [] }, results );
                self._setOption( "errors", results.errors );
                self._setOption( "warnings", results.warnings );
                if( !isSave && results.errors.length === 0 && results.warnings.length === 0 ) {
                    // indicate that all is well
                    self.showSuccessNotification( util.escapeHTML( MSG_VALIDATION_SUCCESS ) );
                }
            } );
            isSave = false;
        },

        _notifyPreferenceChange: function() {
            let self = this,
                element = self.element[ 0 ];
            self._trigger( "preferencesChanged", $.Event( "click", { target: element } ) );
        },

        _populateContext: function() {
            let self = this,
                o = self.options,
                language = o.language,
                editor = self._editor,
                model = self._model,
                context = self._context;

            function updateIndentation () {
                model.updateOptions( {
                    insertSpaces: o.tabsInsertSpaces,
                    tabSize: o.tabSize,
                    indentSize: o.indentSize
                } );
            }

            context.add( [ {
                name: "undo",
                action: function() {
                    self._triggerMonacoAction( "undo" );
                }
            }, {
                name: "redo",
                action: function() {
                    self._triggerMonacoAction( "redo" );
                }
            }, {
                name: "find",
                action: function() {
                    // findReplace does not exist in readOnly mode, so we must invoke the regular find
                    self._triggerMonacoAction( o.readOnly ? "actions.find" : "editor.action.startFindReplaceAction" );
                }
            }, {
                name: "theme",
                get: function() {
                    return o.theme;
                },
                set: function( v ) {
                    o.theme = v;
                    setTheme( v );
                    self._notifyPreferenceChange();
                },
                choices: OPTIONS_THEME
            }, {
                name: "minimap",
                get: function() {
                    return o.minimap;
                },
                set: function( v ) {
                    o.minimap = v;
                    self._setupMinimap();
                    self._notifyPreferenceChange();
                },
                choices: OPTIONS_MINIMAP
            }, {
                name: "tabs-insert-spaces",
                label: MSG_INDENT_WITH_TABS,
                get: function() {
                    return o.tabsInsertSpaces;
                },
                set: function( v ) {
                    o.tabsInsertSpaces = v;
                    updateIndentation();
                    self._notifyPreferenceChange();
                }
            }, {
                name: "tab-size",
                get: function() {
                    return o.tabSize;
                },
                set: function( v ) {
                    o.tabSize = v;
                    updateIndentation();
                    self._notifyPreferenceChange();
                },
                choices: OPTIONS_TAB_SIZE
            }, {
                name: "indent-size",
                get: function() {
                    return o.indentSize;
                },
                set: function( v ) {
                    o.indentSize = v;
                    updateIndentation();
                    self._notifyPreferenceChange();
                },
                choices: OPTIONS_INDENT_SIZE
            }, {
                name: "show-ruler",
                label: MSG_SHOW_RULER,
                get: function() {
                    return o.ruler;
                },
                set: function( v ) {
                    self._setOption( "ruler", v );
                    self._notifyPreferenceChange();
                }
            }, {
                name: "line-numbers",
                label: MSG_SHOW_LINE_NUMBERS,
                get: function() {
                    return o.lineNumbers;
                },
                set: function( v ) {
                    self._setOption( "lineNumbers", v );
                    self._notifyPreferenceChange();
                }
            }, {
                name: "whitespace",
                label: MSG_WHITESPACE,
                get: function() {
                    return o.whitespace;
                },
                set: function( v ) {
                    self._setOption( "whitespace", v );
                    self._notifyPreferenceChange();
                }
            }, {
                name: "show-suggestions",
                label: MSG_SUGGESTIONS,
                get: function() {
                    return o.showSuggestions;
                },
                set: function( v ) {
                    self._setOption( "showSuggestions", v );
                    self._notifyPreferenceChange();
                }
            }, {
                name: "bracket-pair-colorization",
                label: MSG_BRACKET_PAIR_COLORIZATION,
                get: function() {
                    return o.bracketPairColorization;
                },
                set: function( v ) {
                    self._setOption( "bracketPairColorization", v );
                    self._notifyPreferenceChange();
                }
            },/* {
                name: "semantic-highlighting",
                label: "Semantic Highlighting", // TODO localize
                get: function() {
                    return o.semanticHighlighting;
                },
                set: function( v ) {
                    self._setOption( "semanticHighlighting", v );
                    self._notifyPreferenceChange();
                }
            } */ ] );

            if( o.queryBuilder ) {
                context.add( {
                    name: "query-builder",
                    hide: ![ LANG_SQL, LANG_PLSQL ].includes( language ),    // initial hidden state
                    action: function() {
                        self._queryBuilder();
                    }
                } );
            }

            if( o.codeComplete ) {
                context.add( {
                    name: "code-complete",
                    hide: ![ LANG_SQL, LANG_PLSQL, LANG_JAVASCRIPT_MLE_SNIPPET ].includes( language ),    // initial hidden state
                    action: function() {
                        self._codeComplete();
                    }
                } );

                editor.addAction( {
                    id: "apex-code-complete",
                    label: MSG_HINT,
                    keybindings: [ getUniversalCtrlKey() | monaco.KeyCode.Space ],
                    precondition: CONTEXT_KEY_DBHINT,
                    run: function() {
                        self._codeComplete();
                    }
                } );
            }

            if( o.validateCode ) {
                context.add( {
                    name: "validate",
                    hide: !this._hasValidate(),    // initial hidden state
                    action: function() {
                        self.validateCode();
                    }
                } );
                editor.addAction( {
                    id: "apex-code-validate",
                    label: MSG_VALIDATE,
                    keybindings: [ getUniversalCtrlKey() | monaco.KeyMod.Alt | monaco.KeyCode.KeyV ],
                    precondition: CONTEXT_KEY_VALIDATE,
                    run: function() {
                        self.validateCode();
                    }
                } );
            }

            if( o.diffEditor ) {
                context.add( [ {
                    name: "diff-previous",
                    action: function() {
                        self.diffPrevious();
                    },
                    title: MSG_PREVIOUS_CHANGE,
                    label: MSG_PREVIOUS_CHANGE,
                    shortcut: "Alt+Shift+F5"
                }, {
                    name: "diff-next",
                    action: function() {
                        self.diffNext();
                    },
                    title: MSG_NEXT_CHANGE,
                    label: MSG_NEXT_CHANGE,
                    shortcut: "Alt+F5"
                } ] );
            }

            if( o.dialogSave ) {
                if ( ( ( o.pageInfo.isGlobalPage || o.pageInfo.isDialogPage ) && o.pageInfo.isPageDesigner ) || !o.pageInfo.isPageDesigner ) {
                    context.add( {
                        name: ACTION_SAVE_PAGE,
                        action: function( event, element) {
                            isSave = true;
                            o.dialogSave( event, element );
                        }
                    } );
                    editor.addAction( {
                        id: "apex-" + ACTION_SAVE_PAGE,
                        label: lang.format( MSG_SAVE_PAGE, [] ),
                        keybindings: [ monaco.KeyMod.Alt | monaco.KeyCode.F8, monaco.KeyMod.Alt | monaco.KeyCode.F7 ],
                        run: function ( editor ) {
                            isSave = true;
                            o.dialogSave( {}, editor.getDomNode());
                        }
                    } );
                } else {
                    context.add( {
                        name: ACTION_SAVE_AND_RUN_PAGE,
                        action: function( event, element ) {
                            isSave = true;
                            o.dialogSave( event, element, true );
                        }
                    } );
                    editor.addAction( {
                        id: "apex-" + ACTION_SAVE_AND_RUN_PAGE,
                        label: lang.format( MSG_SAVE_AND_RUN_PAGE, [] ),
                        keybindings: [ monaco.KeyMod.Alt | monaco.KeyCode.F7, monaco.KeyMod.Alt | monaco.KeyCode.F8 ],
                        run: function( editor ) {
                            isSave = true;
                            o.dialogSave( {}, editor.getDomNode(), true );
                        }
                    } );
                }
            }

            if( o.ai ) {
                context.add( {
                    name: ACTION_AI,
                    label: MSG_APEX_ASSISTANT,
                    ariaControls: self._rightPanelId,
                    get: () => {
                        return self._aiEnabled;
                    },
                    set: ( value ) => {
                        self._aiEnabled = value;
                        if ( value ) {
                            if ( !self._chat ) {
                                this._aiCallback();
                            } else {
                                self._chatView.show();
                                self.resize();
                                self._chatToolbar$.css( "visibility", "visible" );
                                self._toggleQuickActions();
                                self._context.enable( ACTION_AI_SEND_SELECTION );
                            }
                        } else {
                            if ( self._chat ) {
                                self._chatView.hide();
                                self._rightPanel$.width( 0 );
                                self._chatToolbar$.css( "visibility", "hidden" );
                                self.resize();
                                self._editor.focus();
                                self._context.disable( ACTION_AI_SEND_SELECTION );
                                self._chatView.removeQuickActions();
                            }
                        }
                    },
                } );

                context.add( {
                    name: ACTION_AI_SEND_SELECTION,
                    action: ( event, focusElement, { showAiMessage = true, isNewConversation = true } = {} ) => {
                        hasSelection = this._hasSelection();
                        if ( hasSelection ) {
                            isConversation = false;
                            if ( isNewConversation ) {
                                const messages = self._chat.getHistory().messages;
                                // we don't want to show the "New conversation started" message
                                // if only the welcome message is displayed (ie the second message is uncommitted)
                                // (the first message is always the hidden language)
                                if ( messages.length > 2
                                    || ( messages.length === 2
                                        && !messages[ 1 ].excludeFromCommits
                                    )
                                ) {
                                    self._expireConversation();
                                }
                            }

                            self._chatContext.invoke( ACTION_AI_SEND_CODE_MESSAGE, null, null, self.getSelection() );

                            if ( showAiMessage ) {
                                self._chat.addAiMessage( {
                                    content: MSG_AI_QUICK_ACTION_QUESTION,
                                } );
                            }
                            // only available in General Assistance mode
                            if ( self._currentAssistant === ACTION_AI_GENERAL ) {
                                self._chat.setViewQuickActions( self._chatView, [ {
                                    title: MSG_IMPROVE_TITLE,
                                    message: MSG_IMPROVE_MSG,
                                }, {
                                    title: MSG_EXPLAIN_TITLE,
                                    message: MSG_EXPLAIN_MSG,
                                } ] );
                            }

                            self._toggleQuickActions();
                            isConversation = true;
                        } else {
                            self._chat.addAiMessage( {
                                content: MSG_AI_USE_THIS_WARNING,
                            } );
                        }
                        return true;
                    }
                } );

                context.add( {
                    name: ACTION_SWITCH_PANE_FOCUS,
                    shortcut: "F6",
                    action: () => {
                        if ( self._aiEnabled ) {
                            if ( !self._editor.hasTextFocus() ) {
                                self.focus();
                            } else {
                                self._chatView.el.querySelector( "textarea" ).focus();
                            }
                            return true;
                        }
                    }
                } );
            }
        },

        _expireConversation() {
            this._chat.expireMessages();

            this._chat.addAiMessage( {
                content: MSG_NEW_CONVERSATION,
                excludeFromCommits: true,
                cssClasses: "a-ChatItem-row--context",
            } );

            // need to remove the inbound class from the context messages, otherwise the avatar is not visible on the next message
            const messageViews = this._chat.getViews()[ 0 ].getMessageViews();
            messageViews[ messageViews.length - 1 ].el.classList.remove( "a-ChatItem-row--inbound" );

            // must re-send the language
            this.sendLanguageMessage();
        },

        _toggleQuickActions() {
            if ( !this._aiEnabled || chatLocked || surpressCursorPositionChange ) {
                surpressCursorPositionChange = false;
                return;
            }
            if ( isConversation ) {
                isConversation = false;
                this._addSelectionQuickActions();
                return;
            }

            const quickActions = this._chat.getAllViewsQuickActionsButtons().get( this._chatView );

            if ( quickActions?.length ) {
                if ( !this._hasSelection() ) {
                    quickActions.forEach( action => action.button.disabled = true );
                } else {
                    // currently we treat all quick-actions the same way, therefore it's enough just to check the first one
                    if ( quickActions[ 0 ].button.disabled ) {
                        this._scrollToBottom = this._chatView.isTranscriptScrolledToBottom();
                        quickActions.forEach( action => action.button.disabled = false );
                    }
                }
            }
        },

        _addSelectionQuickActions() {
            const self = this;
            const disabled = !this._hasSelection();
            const quickActions = [ {
                title: MSG_USE_SELECTION,
                disabled,
                action: function(){
                    self._context.invoke( ACTION_AI_SEND_SELECTION, null, null, {
                        showAiMessage: self._currentAssistant === ACTION_AI_GENERAL
                    } );
                },
            } ];

            if ( self._currentAssistant === ACTION_AI_GENERAL ) {
                quickActions.push( {
                    title: MSG_IMPROVE_SEL_TITLE,
                    disabled,
                    action: function(){
                        self._context.invoke( ACTION_AI_SEND_SELECTION, null, null, {
                            showAiMessage: false,
                        } );
                        if ( hasSelection ) {
                            self._chatView.removeQuickActions();
                            self._chat.addUserMessage( {
                                content: MSG_IMPROVE_MSG,
                            } );
                            self._chat.commit();
                        }
                    },
                }, {
                    title: MSG_EXPLAIN_SEL_TITLE,
                    disabled,
                    action: function(){
                        self._context.invoke( ACTION_AI_SEND_SELECTION, null, null, {
                            showAiMessage: false,
                        } );
                        if ( hasSelection ) {
                            self._chatView.removeQuickActions();
                            self._chat.addUserMessage( {
                                content: MSG_EXPLAIN_MSG,
                            } );
                            self._chat.commit();
                        }
                    },
                } );
            }

            self._chat.setViewQuickActions( self._chatView, quickActions );
        },

        _hasSQLErrors() {
            let { errors, warnings } = this.options;
            // filter out the "value required" error (the ai can't help with that)
            errors = errors.filter( error => error !== lang.getMessage( "PD.PE.IS_REQUIRED" ) );
            return ( !!errors.length || !!warnings.length );
        },

        _hasSelection() {
            return this.getSelection().trim() !== "";
        },

        _getChatInitMessage( mode ) {
            return mode === ACTION_AI_GENERAL ? MSG_AI_GENERAL_WELCOME : MSG_AI_QUERY_BUILDER_WELCOME;
        },

        _aiCallback: function() {
            const self = this;
            const content = this.getValue();
            let hasSelection = this._hasSelection();
            let hasErrorOrWarning;

            self._currentAssistant = self.options.language === LANG_SQL ? ACTION_AI_NL2SQL : ACTION_AI_GENERAL;

            const getChatLanguage = () => {
                const language = this.options.language;
                return AI_LANGS.includes( language ) ? language : LANG_PLAINTEXT;
            };

            const getFormattedCodeMessage = ( code, codeLanguage ) => {
                let language = codeLanguage || getChatLanguage();
                // plsql should stay plsql, the syntax highlighting is added in the highlightCode
                if ( language !== LANG_PLSQL ) {
                    language = editorLangToMonacoLang( language );
                }
                return lang.formatNoEscape( "```%0\n%1\n```", language, code );
            };

            const sendLanguageMessage = () => {
                let chatLanguage = getChatLanguage();
                // if we are in the query-assistant, we need a special identifier as the language
                if ( self._currentAssistant === ACTION_AI_NL2SQL ) {
                    // *** keep it in sync with the check in wwv_flow_ai.augment_system_propmpt ***
                    chatLanguage = "sql-query";
                }
                // send the language, so the system prompt can be selected
                self._chat.addUserMessage( {
                    content: chatLanguage,
                    hidden: true,
                } );
            };

            self.sendLanguageMessage = sendLanguageMessage;

            const sendCodeMessage = ( code, hidden = false ) => {
                self._chat.addUserMessage( {
                    content: getFormattedCodeMessage( code ),
                    type: self._chat.constructor.messageTypes.MARKDOWN,
                    cssClasses: "a-ChatItem-row--context",
                    hidden,
                } );
                // need to remove the outbound class from the context messages, otherwise the avatar is not visible on the next message
                const messageViews = self._chat.getViews()[ 0 ].getMessageViews();
                messageViews[ messageViews.length - 1 ].el.classList.remove( "a-ChatItem-row--outbound" );
            };

            const sendNotificationMessage = () => {
                let { errors, warnings } = self.options;
                errors = errors.filter( error => error !== lang.getMessage( "PD.PE.IS_REQUIRED" ) );
                let code, message;
                if ( errors.length > 0 ) {
                    code = errors.join( ", " );
                    message = MSG_AI_ERROR_MESSAGE;
                } else {
                    code = warnings.join( ", " );
                    message = MSG_AI_WARNING_MESSAGE;
                }
                const content = lang.format( message, getFormattedCodeMessage( code, LANG_PLAINTEXT ) );
                self._chat.addUserMessage( {
                    content,
                    type: self._chat.constructor.messageTypes.MARKDOWN,
                    hidden: true,
                } );
            };

            const processMessage = ( chatApp, messageModel ) => {
                // no need to process the user messages
                if ( chatApp.getCurrentUser() === messageModel.user ) {
                    return {};
                }
                // to the ai code-blocks always add a copy button
                const codeBlockQuickActions = [ chatApp.constructor.actions.COPY ];
                // and if the editor is not read-only, an insert button too
                if ( !self._editor.getOption( monaco.editor.EditorOption.readOnly ) ) {
                    codeBlockQuickActions.push( {
                        label: MSG_INSERT,
                        iconClasses: "icon-clipboard",
                        action: ( mainView, chatView, messageView, actionObj, buttonEl, codeBlockEl ) => {
                            const cls = "is-inserted";
                            const newIconClasses = "ui-icon-check";
                            const datasetName = "insertTimeoutId";
                            const { iconClasses } = actionObj;
                            const labelEl = buttonEl.querySelector( ".a-ChatItem-buttonLabel" );
                            const iconEl = buttonEl.querySelector( ".a-ChatItem-buttonIcon" );
                            const runningTimeout = parseInt( buttonEl.dataset[ datasetName ], 10 );

                            // if the insert-button has been clicked already and the timeout is running, return
                            if ( runningTimeout ) {
                                return;
                            }

                            buttonEl.classList.add( cls );
                            // show the new label
                            labelEl.innerText = MSG_INSERTED;

                            // add the code into the editor (and also update the editor change history)
                            surpressCursorPositionChange = true;
                            self._editor.pushUndoStop();
                            self._editor.executeEdits( "", [ {
                                    range: self._editor.getSelection(), // either a selection or the cursor position
                                    text: codeBlockEl.innerText.trim().replaceAll( /\u00A0/g, " " ),
                                } ]
                            );
                            self._editor.pushUndoStop();

                            // show the new icon
                            if ( iconEl ) {
                                if ( iconClasses ) {
                                    iconEl.classList.toggle( ...iconClasses.split( " " ) );
                                }
                                if ( newIconClasses ) {
                                    iconEl.classList.toggle( ...newIconClasses.split( " " ) );
                                }
                            }

                            // show the original label and icon
                            buttonEl.dataset[datasetName] = setTimeout( () => {
                                delete buttonEl.dataset[ datasetName ];
                                buttonEl.classList.remove( cls );
                                if ( labelEl ) {
                                    labelEl.innerText = MSG_INSERT;
                                }
                                if ( iconEl ) {
                                    if ( iconClasses ) {
                                        iconEl.classList.toggle (...iconClasses.split( " " ) );
                                    }
                                    if ( newIconClasses ) {
                                        iconEl.classList.toggle( ...newIconClasses.split( " " ) );
                                    }
                                }
                            }, 3000 );
                        }
                    } );
                }
                return { codeBlockQuickActions };
            };

            const initChatToolbar = () => {
                // create the chat action context and define belonging actions
                self._chatContext = actions.createContext( "chatEditor", self.element[ 0 ] );
                self._chatContext.add( [ {
                    name: ACTION_AI_MODE,
                    get: () => {
                        return self._currentAssistant;
                    },
                    set: ( value, silent ) => {
                        if ( ![ ACTION_AI_NL2SQL, ACTION_AI_GENERAL ].includes( value ) ) {
                            return;
                        }
                        self._currentAssistant = value;
                        self._chatContext.invoke( ACTION_AI_CLEAR_CHAT );
                        isConversation = false;
                        if ( !silent ) {
                            // when we explicitly change modes, first check if there's a selection
                            // if there is, then set it as the context message, otherwise show the welcome message
                            if ( self._hasSelection() ) {
                                // in query builder we don't wamt to show the buttons
                                if ( self._currentAssistant === ACTION_AI_NL2SQL ) {
                                    self._chatView.removeQuickActions();
                                }
                                self._context.invoke( ACTION_AI_SEND_SELECTION, null, null, { showAiMessage: false } );
                            } else {
                                self._chat.addAiMessage( {
                                    content: self._getChatInitMessage( value ),
                                    excludeFromCommits: true
                                } );
                            }
                        }
                        // update the toolbar to display the new menu label
                        self._chatToolbar$.toolbar( "option", "data", toolbarData() );
                        // and since we-re recreating the toolbar, we must set the focus manually on the button
                        self._chatToolbar$.toolbar( "findElement", "chatModeSelector" ).focus();
                    },
                    choices: [
                        { label: MSG_AI_QUERY_BUILDER, value: ACTION_AI_NL2SQL },
                        { label: MSG_AI_GENERAL_ASSISTANCE, value: ACTION_AI_GENERAL },
                    ]
                }, {
                    name: ACTION_AI_CLEAR_CHAT,
                    action: () => {
                        self._chat.clearMessages();
                        self._addSelectionQuickActions();
                        // *** the first message in the history is always the language ***
                        // *** it is needed to decide which system propmpt we want to use ***
                        sendLanguageMessage();
                    }
                }, {
                    name: ACTION_AI_SEND_CODE_MESSAGE,
                    action: ( event, focusElement, data ) => {
                        sendCodeMessage( data );
                    }
                } ] );

                self._chatToolbar$.toolbar( {
                    actionsContext: self._chatContext,
                    simple: true,
                    data: toolbarData(),
                } );

                self.resize();
            };

            // used for the mode selector label
            const getCurrentModeName = () => {
                return self._currentAssistant === ACTION_AI_GENERAL ? MSG_AI_GENERAL_ASSISTANCE : MSG_AI_QUERY_BUILDER;
            };

            // it's a function because we need to re-evaluate the title&label on mode change
            const toolbarData = () => {
                const data = [];
                // only in SQL editors show the Mode selector
                if ( [ LANG_SQL, LANG_PLSQL ].includes( self.options.language ) ) {
                    data.push( {
                        id: "chatModeControls",
                        align: "start",
                        groupTogether: false,
                        customCSS: C_TOOLBAR_GROUP,
                        controls: [ {
                            type: "MENU",
                            id: "chatModeSelector",
                            title: getCurrentModeName(),
                            label: getCurrentModeName(),
                            menu: {
                                items: [ {
                                    type: "radioGroup",
                                    action: ACTION_AI_MODE,
                                } ]
                            },
                        } ]
                    } );
                }

                data.push( {
                    id: "chatControls",
                    align: "end",
                    groupTogether: false,
                    customCSS: C_TOOLBAR_GROUP,
                    controls: [ {
                        type: "BUTTON",
                        title: MSG_CLEAR_CHAT,
                        label: MSG_CLEAR_CHAT,
                        iconOnly: false,
                        iconBeforeLabel: true,
                        action: ACTION_AI_CLEAR_CHAT,
                    } ]
                } );

                return data;
            };

            self._sendDebugMessage = () => {
                const selection = self.getSelection();
                const editorContent = self.getValue();
                const content = selection !== "" ? selection : editorContent;
                // only one request can be sent at the same time
                if ( chatLocked ) {
                    return;
                }
                // switch back to the general assistance mode (this also clears the history)
                self._chatContext.set( ACTION_AI_MODE, ACTION_AI_GENERAL, true );
                // show an ai message to let the user now something is happening
                self._chat.addAiMessage( MSG_AI_DEBUG_MESSAGE );
                // send the error/warning text
                sendNotificationMessage();
                // send the selection/content(hidden!)
                sendCodeMessage( content, true );
                // and our debug prompt
                self._chat.addUserMessage( {
                    content: MSG_DEBUG_MESSAGE,
                    type: self._chat.constructor.messageTypes.MARKDOWN,
                    hidden: true,
                } );
                // clear the quick actions
                self._chatView.removeQuickActions();
                // forward it immediately to the server
                self._chat.commit();
            };

            // if there's an error and there's no selected code and the editor's content is longer than 4k chars,
            // ask the user to first select the relevant code (alert)
            if ( hasErrorOrWarning
                && !hasSelection
                && content.length > 4000
            ) {
                apexMessage.alert( MSG_CONTENT_TOO_LONG );
                return;
            }

            ai.getUserConsent().then( granted => {
                if ( granted ) {
                    // create the chat widget
                    self._chat = new ai.Chat( {
                        ...self.options.ai.ajax,
                        processMessage,
                    } );

                    // create the chat view
                    self._chatView = self._chat.createInlineView( {
                        el: self._chatEl$[ 0 ],
                        disclaimer: MSG_DISCLAIMER,
                        highlightCode: ( chatApp, mainView, messageView, el ) => {
                            // there's no syntax highlighter for plsql, we need to treat it as sql
                            if ( el.getAttribute( "data-lang" ) === LANG_PLSQL ) {
                                el.setAttribute( "data-lang", LANG_SQL );
                            }
                            monaco.editor.colorizeElement( el, { theme: this._editor._themeService._theme.themeName } ) ;
                         }
                    } );

                    // create the toolbar and the chat actions context
                    initChatToolbar();

                    // send the language message
                    sendLanguageMessage();

                    // if the chat is locked, disable the toolbar buttons and throw away the contex code
                    self._chat.on( "chatlocked", () => {
                        chatLocked = true;
                        isConversation = true;
                        lastSelection = self.getSelection();
                        self._chatToolbar$.find( "button" ).attr( "disabled", true );
                    } );

                    // once it's unlocked, enable the toolbar buttons and update the quick-actions
                    self._chat.on( "chatunlocked", () => {
                        chatLocked = false;
                        self._chatToolbar$.find( "button" ).attr( "disabled", false );
                        // wait until the widget finish with the quick-actions
                        setTimeout( () => {
                            // if the selection did not change, there's no reason to show
                            if ( self.getSelection() !== lastSelection ) {
                                self._addSelectionQuickActions();
                            }
                        }, 1 );
                    } );

                    // in a sql editor, the default mode is the nl2sql and if at the time of the initialisation
                    // there's an erorr/warning in the editor, we switch back immediately send the debug message to the ai
                    if ( self._currentAssistant === ACTION_AI_NL2SQL ) {
                        hasErrorOrWarning = this._hasSQLErrors();
                        if ( hasErrorOrWarning ) {
                            self._sendDebugMessage();
                        // if there are no errors/warnings - and no selection, we select editor the content
                        // and set it as the context code
                        } else if ( content !== "" && !hasSelection ) {
                            const range = self._editor.getModel().getFullModelRange();
                            self._editor.setSelection( range );
                            hasSelection = true;
                        }
                    }

                    // add listener on the selection change in the editor to update the state of the quick-actions
                    self._editor.onDidChangeCursorSelection( util.debounce( self._toggleQuickActions.bind( self ) ), 250 );

                    // the quick-actions push the transcript content, we need to set the scroll once they're displayed
                    self._chatEl$[ 0 ].addEventListener( "transitionend", ( e ) => {
                        if ( e.target.classList.contains( "a-ChatActions-quickPicks" ) ) {
                            if ( self._scrollToBottom ) {
                                self._chatView.scrollTranscriptToBottom();
                                self._scrollToBottom = false;
                            }
                        }
                    } );

                    // if we didn't send the debug message, set the selection as the context message or show the welcome message
                    if ( !hasErrorOrWarning ) {
                        if ( hasSelection ) {
                            self._context.invoke( ACTION_AI_SEND_SELECTION, null, null, {
                                showAiMessage: false,
                                isNewConversation: false,
                            } );
                        } else {
                            // we need to delay this initial message so JAWS can recognise it
                            setTimeout( () => {
                                self._chat.addAiMessage( {
                                    content: self._getChatInitMessage( self._currentAssistant ),
                                    excludeFromCommits: true
                                } );
                                self._addSelectionQuickActions();
                            }, 1 );
                        }
                    }
                } else {
                    debugWarn( "The User has not consented to the use of AI." );
                    self._context.set( ACTION_AI, false );
                }
            } );
        },

        _initToolbar: function( container$ ) {
            let o = this.options,
                helper;

            let config = {
                actionsContext: this._context,
                simple: true,
                data: [],
                label: MSG_ROLE_DESC // "Editor"
            };

            function getKeyDisplay( str ) {
                return isMac() ? str.replace( "Alt", "Option" ).replace( "Ctrl", "Control" ) : str;
            }

            let undoControls = [];

            undoControls.push( {
                type: "BUTTON",
                title: MSG_UNDO,
                label: MSG_UNDO,
                iconOnly: true,
                icon: "icon-undo",
                action: "undo"
            } );

            undoControls.push( {
                type: "BUTTON",
                title: MSG_REDO,
                label: MSG_REDO,
                iconOnly: true,
                icon: "icon-redo",
                action: "redo"
            } );

            config.data.push( {
                id: "undoControls",
                align: "start",
                groupTogether: true,
                controls: undoControls
            } );

            let searchControls = [];
            searchControls.push( {
                type: "BUTTON",
                title: MSG_FIND,
                label: MSG_FIND,
                iconOnly: true,
                icon: "icon-cm-find",
                action: "find"
            } );

            config.data.push( {
                id: "searchControls",
                align: "start",
                groupTogether: true,
                controls: searchControls
            } );

            if( o.queryBuilder || o.codeComplete || o.validateCode || o.ai ) {
                let helperGroup = {
                    id: "helperControls",
                    align: "start",
                    groupTogether: true,
                    controls: []
                };

                if( o.queryBuilder ) {
                    helperGroup.controls.push( {
                        type: "BUTTON",
                        title: MSG_QUERY_BUILDER,
                        label: MSG_QUERY_BUILDER,
                        iconOnly: true,
                        icon: "icon-cm-query-builder",
                        action: "query-builder"
                    } );
                }

                if( o.codeComplete ) {
                    helper = MSG_HINT + " - " + getKeyDisplay( "Ctrl+Space" );
                    helperGroup.controls.push( {
                        type: "BUTTON",
                        title: helper,
                        label: helper,
                        iconOnly: true,
                        icon: "icon-cm-autocomplete",
                        action: "code-complete"
                    } );
                }

                if( o.validateCode ) {
                    helper = MSG_VALIDATE + " - " + getKeyDisplay( "Ctrl+Alt+V" );
                    helperGroup.controls.push( {
                        type: "BUTTON",
                        title: helper,
                        label: helper,
                        iconOnly: true,
                        icon: "icon-cm-validate",
                        action: "validate"
                    } );
                }

                let aiGroup = {
                    id: "aiControls",
                    align: "start",
                    groupTogether: true,
                    controls: []
                };

                if( o.ai ) {
                    aiGroup.controls.push( {
                        type: "TOGGLE",
                        title: MSG_APEX_ASSISTANT,
                        label: MSG_APEX_ASSISTANT,
                        iconOnly: false,
                        iconBeforeLabel: true,
                        icon: "icon-apex-assistant",
                        action: ACTION_AI,
                    } );
                }

                config.data.push( helperGroup );
                config.data.push( aiGroup );
            }

            if( o.diffEditor ) {
                const helperGroup = {
                    id: "diffControls",
                    align: "end",
                    groupTogether: true,
                    controls: []
                };

                helperGroup.controls.push( {
                    type: "BUTTON",
                    action: "diff-previous",
                    icon: "icon-prev-change",
                    iconOnly: true
                } );

                helperGroup.controls.push( {
                    type: "BUTTON",
                    action: "diff-next",
                    icon: "icon-next-change",
                    iconOnly: true
                } );

                config.data.push( helperGroup );
            }

            if( o.dialogSave ) {
                let saveControls = [];
                if ( ( ( o.pageInfo.isGlobalPage || o.pageInfo.isDialogPage ) && o.pageInfo.isPageDesigner ) || !o.pageInfo.isPageDesigner ) {
                    helper = lang.format( MSG_SAVE_PAGE, "- " + getKeyDisplay( "Alt+F7" ) );
                    saveControls.push( {
                        type: "BUTTON",
                        title: helper,
                        label: lang.format( MSG_SAVE_PAGE, [] ),
                        iconOnly: !!o.ai, // hide label if ai is enabled
                        action: ACTION_SAVE_PAGE
                    });
                } else {
                    helper = lang.format( MSG_SAVE_AND_RUN_PAGE, "- " + getKeyDisplay( "Alt+F8" ) );
                    saveControls.push( {
                        type: "BUTTON",
                        title: helper,
                        label: lang.format( MSG_SAVE_AND_RUN_PAGE, [] ),
                        iconOnly: !!o.ai, // hide label if ai is enabled
                        iconBeforeLabel: true,
                        icon: "icon-run-page",
                        action: ACTION_SAVE_AND_RUN_PAGE
                    });
                }
                config.data.push( {
                    id: "saveControls",
                    align: "end",
                    groupTogether: false,
                    customCSS: C_TOOLBAR_GROUP,
                    controls: saveControls
                } );
            }

            config.data.push( {
                id: "menuControls",
                align: "end",
                groupTogether: false,
                controls: [ {
                    type: "MENU",
                    title: MSG_SETTINGS,
                    label: MSG_SETTINGS,
                    iconOnly: true,
                    icon: "icon-gear",
                    menu: {
                        items: [ /*{
                            type: "subMenu",
                            label: "Language Settings", // TODO localize
                            menu: {
                                items: [ {
                                    type: "subMenu",
                                    label: "JavaScript",
                                    menu: {
                                        items: [ {
                                            type: "toggle",
                                            action: "semantic-highlighting"
                                        }, {
                                            type: "toggle",
                                            action: "inlay-hints"
                                        } ]
                                    }
                                } ]
                            }
                        },*/ {
                                type: "subMenu",
                                label: MSG_INDENTATION,
                                menu: {
                                    items: [ {
                                        type: "toggle",
                                        action: "tabs-insert-spaces"
                                    }, {
                                        type: "subMenu",
                                        label: MSG_TAB_SIZE,
                                        menu: {
                                            items: [ {
                                                type: "radioGroup",
                                                action: "tab-size"
                                            } ]
                                        }
                                    }, {
                                        type: "subMenu",
                                        label: MSG_INDENT_SIZE,
                                        menu: {
                                            items: [ {
                                                type: "radioGroup",
                                                action: "indent-size"
                                            } ]
                                        }
                                    }
                                    ]
                                }
                            }, {
                                type: "subMenu",
                                label: MSG_THEMES,
                                menu: {
                                    items: [ {
                                        type: "radioGroup",
                                        action: "theme"
                                    } ]
                                }
                            }, {
                                type: "subMenu",
                                label: MSG_MINIMAP,
                                menu: {
                                    items: [ {
                                        type: "radioGroup",
                                        action: "minimap"
                                    } ]
                                }
                            }, {
                                type: "toggle",
                                action: "line-numbers"
                            }, {
                                type: "toggle",
                                action: "show-ruler"
                            }, {
                                type: "toggle",
                                action: "show-suggestions"
                            }, {
                                type: "toggle",
                                action: "whitespace"
                            }, {
                                type: "toggle",
                                action: "bracket-pair-colorization"
                            } ]
                    }
                } ]
            } );

            container$.toolbar( config );

            // the toolbar widget currently has an issue where it applies
            // the data-no-update prop, even though we don't want it
            // removing it again here so that the actions context can update the toolbar buttons
            // with the proper label, icon, shortcut, etc
            if( o.diffEditor ) {
                container$.find( "button[data-action*='diff']" ).removeAttr( "data-no-update" );
            }
        },

        // should be called on widget initialization and whenever the language changes
        // the language should not be sanatized. ie. we expect the mle- prefix in the case of mle-javascript
        _evaluateContextKeys: function( language ) {

            if( !this._contextKeys ) {
                this._contextKeys = {};
            }

            const keys = this._contextKeys,
                editor = this._editor;

            if( !keys[ CONTEXT_KEY_VALIDATE ] ) {
                // dummy assignment
                keys[ CONTEXT_KEY_VALIDATE ] = editor.createContextKey( CONTEXT_KEY_VALIDATE, true );
            }

            if( !keys[ CONTEXT_KEY_DBHINT ] ) {
                // dummy assignment
                keys[ CONTEXT_KEY_DBHINT ] = editor.createContextKey( CONTEXT_KEY_DBHINT, true );
            }

            keys[ CONTEXT_KEY_VALIDATE ].set( this._hasValidate() );
            keys[ CONTEXT_KEY_DBHINT ].set( [ LANG_SQL, LANG_PLSQL, LANG_JAVASCRIPT_MLE_SNIPPET ].includes( language ) );
        },

        _setLanguage: function( language ) {
            let self = this,
                model = self._model,
                editor = self._editor,
                o = self.options,
                context = self._context,
                monacoLanguage = editorLangToMonacoLang( language );

            // remove any error messages
            monaco.editor.setModelMarkers( model, "lineMessages", [] );
            self.resetNotification();

            // reconfigure editor specific suggestions
            self._configureCustomSuggestionProvider();

            function hide ( actionName ) {
                if( context.lookup( actionName ) ) {
                    context.hide( actionName );
                }
            }
            function show ( actionName ) {
                if( context.lookup( actionName ) ) {
                    context.show( actionName );
                }
            }

            if( [ LANG_SQL, LANG_PLSQL, LANG_JAVASCRIPT_MLE_SNIPPET ].includes( language ) ) {
                show( "code-complete" );
            } else {
                hide( "code-complete" );
            }

            if( [ LANG_SQL, LANG_PLSQL ].includes( language ) ) {
                show( "query-builder" );
            } else {
                hide( "query-builder" );
            }

            if( this._hasValidate() ) {
                show( "validate" );
            } else {
                hide( "validate" );
            }

            if ( self._chatContext ) {
                self._chatContext.set( ACTION_AI_MODE, ACTION_AI_GENERAL );
            }

            self._evaluateContextKeys( language );

            loadLanguageDependencies( language, o );

            monaco.editor.setModelLanguage( model, monacoLanguage );

            editor.updateOptions( self._getLanguageDependentMonacoOptions() );
        },

        _hasValidate: function() {
            const o = this.options,
                lang = o.language;

            return [ LANG_SQL, LANG_PLSQL, LANG_HTML, LANG_JAVASCRIPT_MLE_SNIPPET ].includes( lang ) && o.validateCode !== undefined;
        },

        /*
         * Add warnings to page item references which don't exist
         * This only takes into account page items of the current page and the global page
         * as these are the only ones we currently know about
         * We assume the conventional Pnnn_[alphanum_]* name types
         */
        _initializeItemValidator: function() {
            let self = this,
                model = self._model,
                o = self.options,
                pageId = o.pageInfo.pageId,
                itemRegex = new RegExp( "P(" + pageId + "|0)_[A-Z0-9_]*", "gi" ),
                warnings = [];

            let pageItems = o.pageInfo.items.map( item => item.name.toLowerCase() );

            let verify = util.debounce( function() {
                warnings = [];
                // always check if the model still exists as we work with debounced functions
                // which might fire after the editor was closed
                if( model && !model.isDisposed() ) {
                    // loop through each line
                    const lineCount = model.getLineCount();

                    for( let lineNumber = 1; lineNumber <= lineCount; lineNumber++ ) {
                        const lineContent = model.getLineContent( lineNumber );
                        const matches = lineContent.matchAll( itemRegex );

                        for( let match of matches ) {
                            let foundItem = match[ 0 ].toLowerCase(),
                                itemFoundAt = match.index + 1; // adjusting for 1-based index

                            if( !pageItems.includes( foundItem ) ) {
                                warnings.push( {
                                    startLineNumber: lineNumber,
                                    endLineNumber: lineNumber,
                                    startColumn: itemFoundAt,
                                    endColumn: itemFoundAt + foundItem.length,
                                    message: lang.formatMessage( "CODE_EDITOR.ITEM_DOES_NOT_EXIST", foundItem.toUpperCase() ),
                                    severity: monaco.MarkerSeverity.Warning
                                } );
                            }
                        }
                    }
                    monaco.editor.setModelMarkers( model, "itemValidations", warnings );
                }
            }, 100 );

            // validating whenever the editor changed content, but debounced at 100 ms
            model.onDidChangeContent( verify );

            // valiadating on editor load as well
            verify();
        },

        /*
         * Configuration of various shortcuts and extra editor actions
         */
        _initializeCustomActions: function() {
            let self = this,
                editor = self._editor,
                model = self._model,
                universalCtrlKey = getUniversalCtrlKey();

            // adds a keybinding to a specific action
            // see https://github.com/microsoft/monaco-editor/issues/102 for more
            // there is no official API to do this, so we add another action with the same id and info
            // the new action+keybinding will appear in the Command Palette
            // but if the old action had a keybinding itself, it will still work
            function overrideActionKeybinding ( actionId, newKeyBinding ) {
                let action = editor.getAction( actionId );
                editor.addAction( {
                    id: actionId,
                    label: action.label,
                    alias: action.alias,
                    keybindings: [ newKeyBinding ],
                    run: function() {
                        action.run();
                    }
                } );
            }

            // overriding the keybindings of the Transform to Upper/Lower actions
            overrideActionKeybinding( "editor.action.transformToUppercase", universalCtrlKey | monaco.KeyMod.Alt | monaco.KeyCode.KeyU );
            overrideActionKeybinding( "editor.action.transformToLowercase", universalCtrlKey | monaco.KeyMod.Alt | monaco.KeyCode.KeyL );

            // there are two default actions in the command palette: Go to Previous Difference and Go to Next Difference. however:
            //  - they have a different label than the one in our toolbar (Previous Change, Next Change)
            //  - they have a different shortcut (F7 / Shift+F7) which 1) doesn't actually work, and 2) is different than our own shortcut
            // so best to just remove them to avoid any confusion
            if( self.options.diffEditor ) {
                // there does not appear to be any official API to remove actions, but this will do
                // it's also internally what the action's .dispose() function does- which we don't have access to in this context
                // note that the actions are attached to the editor, and not the diffEditor!
                delete editor._actions[ "editor.action.diffReview.prev" ];
                delete editor._actions[ "editor.action.diffReview.next" ];
            }

            editor.addAction( {
                id: "editor.action.toggleSmartCase",
                label: MSG_TRANSFORM_CODE_CASE,
                alias: MSG_TRANSFORM_CODE_CASE,
                keybindings: [ universalCtrlKey | monaco.KeyMod.Alt | monaco.KeyCode.KeyC ],
                run: function() {
                    // adapted from linesOperators.ts AbstractCaseAction
                    let selections = editor.getSelections();
                    if( !selections.length ) {
                        return;
                    }
                    if( !model ) {
                        return;
                    }

                    let edits = [];

                    for( let i = 0; i < selections.length; i++ ) {
                        let selection = selections[ i ];
                        if( !selection.isEmpty() ) {
                            let text = model.getValueInRange( selection );
                            let transformedText = transformCodeCase( text );
                            edits.push( {
                                range: selection,
                                text: transformedText
                            } );
                        }
                    }

                    editor.pushUndoStop();
                    editor.executeEdits( null, edits );
                    editor.pushUndoStop();
                }
            } );

            // By default, the Command Palette is opened by hitting the F1 key
            // Also adding the CTRL/CMD+Shift+P shortcut to match VS Code
            // Intentionally not using universalCtrlKey here
            editor.addCommand( monaco.KeyMod.CtrlCmd | monaco.KeyMod.Shift | monaco.KeyCode.KeyP, () => {
                self._triggerMonacoAction( "editor.action.quickCommand" );
            } );
        },

        /*
         * Returns an object of Monaco editor options which are dependent on the current editor language.
         * To be used on the initial init, and on each subsequent language change.
         * See #35281964
         */
        _getLanguageDependentMonacoOptions: function() {
            const self = this,
                o = self.options,
                monacoLanguage = editorLangToMonacoLang( o.language );

            return {
                // when editing plaintext, enforce the wordWrap option
                // otherwise respect the passed in options
                wordWrap: o.language === LANG_PLAINTEXT ? true : ( o.wordWrap ? "on" : "off" ),
                // has side effect of not formatting multi-lines of SQL when indenting which is what we want
                useTabStops: [ LANG_SQL, LANG_PLSQL ].includes( o.language ) ? false : true,
                // fixes the terrible word-based-suggestions coming from monaco-typescript
                // see github.com/microsoft/monaco-editor/issues/1980
                suggest: monacoLanguage === MONACO_LANG_JAVASCRIPT ? { showFiles: false } : undefined
            };
        }
    } );

    $.apex.codeEditor = $.apex.codeEditor || {};
    $.apex.codeEditor.LANG_SQL = LANG_SQL;
    $.apex.codeEditor.LANG_PLSQL = LANG_PLSQL;
    $.apex.codeEditor.LANG_JAVASCRIPT = LANG_JAVASCRIPT;
    $.apex.codeEditor.LANG_JAVASCRIPT_MLE_SNIPPET = LANG_JAVASCRIPT_MLE_SNIPPET;
    $.apex.codeEditor.LANG_JAVASCRIPT_MLE_MODULE = LANG_JAVASCRIPT_MLE_MODULE;
    $.apex.codeEditor.LANG_CSS = LANG_CSS;
    $.apex.codeEditor.LANG_FILE_URLS_JAVASCRIPT = LANG_FILE_URLS_JAVASCRIPT;
    $.apex.codeEditor.LANG_FILE_URLS_CSS = LANG_FILE_URLS_CSS;
    $.apex.codeEditor.LANG_HTML = LANG_HTML;
    $.apex.codeEditor.LANG_XML = LANG_XML;
    $.apex.codeEditor.LANG_QUICKSQL = LANG_QUICKSQL;
    $.apex.codeEditor.LANG_PLAINTEXT = LANG_PLAINTEXT;
    $.apex.codeEditor.LANG_YAML = LANG_YAML;

    $.apex.codeEditor.registerJavaScriptContextCode = JAVASCRIPT_MANAGER.setContext;
    $.apex.codeEditor.deregisterJavaScriptContextCode = JAVASCRIPT_MANAGER.dropContext;
    $.apex.codeEditor.preferencesObjectFromString = function( optionsString ) {
        let rawOptions,
            finalOptions = {};

        if( !optionsString ) {
            return {};
        }

        try {
            rawOptions = JSON.parse( optionsString );
        } catch( e ) {
            debugWarn( "Could not parse optionsString" );
            return {};
        }

        Object.values( PREF ).forEach( item => {
            let value = rawOptions[ item ],
                key = item;

            if( key === PREF.THEME ) {
                if( !OPTIONS_THEME.map( option => option.value ).includes( value ) ) {
                    debugWarn( "Bad theme ignored: " + value );
                    return;
                }
            } else if( [ PREF.INDENT_SIZE, PREF.TAB_SIZE ].includes( key ) ) {
                if( ![ "2", "3", "4", "8" ].includes( value ) ) {
                    debugWarn( "Bad number ignored: " + value );
                    return;
                }
            } else if( key === "minimap" ) {
                if( !OPTIONS_MINIMAP.map( option => option.value ).includes( value ) ) {
                    debugWarn( "Bad minimap ignored: " + value );
                    return;
                }
            } else if( [
                // boolean preferences
                PREF.TABS_INSERT_SPACES,
                PREF.RULER,
                PREF.LINE_NUMBERS,
                PREF.WHITESPACE,
                PREF.SHOW_SUGGESTIONS,
                PREF.BRACKET_PAIR_COLORIZATION /*,
                PREF.SEMANTIC_HIGHLIGHTING,
                PREF.INLAY_HINTS */ ].includes( key )
            ) {
                value = !!value;
            } else {
                debugWarn( "Unknown preference: " + key );
                return;
            }

            finalOptions[ key ] = value;
        } );

        return finalOptions;
    };

} )( apex.jQuery, apex.util, apex.lang, apex.locale, apex.debug, apex.actions, apex.server, apex.env, apex.ai, apex.message );
