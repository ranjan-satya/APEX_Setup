/*!
 * Copyright (c) 2019, 2022, Oracle and/or its affiliates.
 */

(function( $, lang, message, util ) {
    "use strict";

    const hasOwnProperty = util.hasOwnProperty;

    /**
     * Constants that will not change at any point after page load.
     */
    const TABS_TEMPLATE = '<div class="apex-rds-container" id="apex_lto_rds">' +
                        '<ul class="apex-rds"></ul>' +
                        '</div>';
    const INFO_TEMPLATE = '<div class="a-DevTools--info">' +
                            '<span class="t-Icon fa fa-info-circle"></span>' +
                            '<span class="a-DevTools--info-message">' +
                            '</span>' +
                        '</div>';
    const IMAGES_DIRECTORY = apex.env.APEX_FILES;
    const STYLES_TO_IMPORT = [
        'apex_ui/css/DevTools.css'
    ];
    const msgKeys = [
        'APEX.LTO.COMMON',
        'APEX.LTO.ADVANCED',
        'APEX.LTO.NO_OPTIONS_FOUND',
        'APEX.LTO.NOT_APPLICABLE',
        'APEX.LTO.LIVE_TEMPLATE_OPTIONS',
        'APEX.LTO.CANCEL',
        'APEX.LTO.SAVE'
    ];
    let liveTemplateOptionsCount = 0;
    let preloaded = false;
    let waitingPreload = [];
    let lastPosition =  false;
    const componentPrototype = {
        getValues: function() {
            return apex.templateOptionsHelper.getValuesFromDialog(this.properties, this.propertyEditor.el$).join(":");
        },
        // Used to restore the old class.
        // (when user made a change in Live Template Options, but clicked Cancel.)
        resetClasses: function() {
            if ( typeof this.el$[0] !== "undefined" ) {
                this.el$[0].className = this.originalClassName;
            }
        },
        destroy: function() {
            if (this.hasOptions) {
                this.propertyEditor.el$.propertyEditor("destroy");
            }
            this.propertyEditor.el$.remove();
        }
    };
    const LiveTemplateOptionComponent = function( options ) {
        for (var key in options) {
            if ( hasOwnProperty( options, key ) ) {
                this[key] = options[key];
            }
        }
    };

    LiveTemplateOptionComponent.prototype = componentPrototype;

    $.widget("apex.liveTemplateOptions", {
        options: {
            componentId: "",
            data: {},
            onSave: function( callback ) {
                callback();
            }
        },
        //components: {}, Don't declare variables here that you don't want in the prototype
        _resetClassNames: function() {
            this.components.forEach(function( component ) {
                component.resetClasses();
            });
        },
        _destroyComponents: function() {
            this.components.forEach(function( component ) {
                component.destroy();
            });
            // Remove Live Template Options RDS when destroying components
            $("#apex_lto_rds").remove();
        },
        _buildComponents: function() {
            var options = this.options;
            var me = this;
            var built = true;
            this.components = [];

            for ( const [ i, data ] of Object.entries( options.data ) ) {
                var findClassElement = function () {
                    var classElement$ = $(".lto" + options.componentId + "_" + i);
                    if (classElement$.length <= 0 ) {
                        // Try to find the class in Modal Dialog.
                        // It's OK if the component class is not found as it is handled later when used.
                        classElement$ = $(".lto" + options.componentId + "_" + i, $("iframe").contents());
                    }
                    return classElement$;
                };

                var classElement$ = findClassElement(me.element);
                var lProperties = apex.templateOptionsHelper.getProperties(
                    data,
                    (data.currentValues || "").split(":")
                );

                // Handles class name is not found case.
                // APEX engine doesn't generate HTML class for classic report "no data found" message.
                // e.g. ".lto502393979160579419_1"
                // In this case, We can simply treat it as empty string, instead of throwing an error.
                // Also, the class name is only used when resetClasses() for discarded changes.
                var getClassName = function () {
                    return classElement$[0] ? classElement$[0].className : '';
                };

                var component =  new LiveTemplateOptionComponent({
                    title: data.title,
                    defaultValues: data.defaultValues,
                    properties: lProperties,
                    propertyEditor: {
                        el: "",
                        options: {
                            propertySet: [
                                {
                                    displayGroupId:    "common",
                                    displayGroupTitle: lang.getMessage('APEX.LTO.COMMON'),
                                    properties:        lProperties.common
                                },
                                {
                                    displayGroupId:    "advanced",
                                    displayGroupTitle: lang.getMessage('APEX.LTO.ADVANCED'),
                                    properties:        lProperties.advanced
                                }
                            ]
                        }
                    },
                    el$: classElement$,
                    originalClassName: getClassName(),
                    hasOptions: lProperties.common[0].metaData.lovValues.length > 0
                });
                me.components.push(component);
            }
            return built;
        },
        _render: function() {
            var parentElement$ = this.element;
            var me = this;
            var newEl$ = $( TABS_TEMPLATE );
            var info$ = $( INFO_TEMPLATE );
            $("body").append(newEl$);
            var tabUl$ = newEl$.find(".apex-rds");
            for ( let component of this.components ) {
                var element$ = component.el$;
                var id = "liveTemplateOptionsTab" + liveTemplateOptionsCount;
                liveTemplateOptionsCount = liveTemplateOptionsCount + 1;
                tabUl$.append("<li><a href='#"  + id +  "'>" + component.title   + "</a></li>");
                var prop$ = component.propertyEditor.el$ = $("<div id='" + id +  "'>");
                newEl$.append(prop$);
                if (!component.hasOptions) {
                    prop$.html("<div class='a-DevTools--inner-message'>" +
                    lang.getMessage("APEX.LTO.NO_OPTIONS_FOUND") +
                    "</div>");
                    continue;
                }
                prop$.propertyEditor( {
                    data: component.propertyEditor.options,
                    change: function( pEvent, pData ) {
                        var getClasses = function( value ) {
                            var hasDefault = false;
                            var classes = (value || "").split(":").filter(function(className) {
                                if (className === "#DEFAULT#") {
                                    hasDefault = true;
                                    return false;
                                }
                                return true;
                            }).join(" ");
                            if (hasDefault) {
                                classes += " " + component.defaultValues.join(" ");
                            }
                            return classes;
                        };
                        var applyStatusStyling = function() {
                            var applyStatusToProperty = function (property$) {
                                if (pData.property.value === pData.property.originalValue) {
                                    property$.removeClass("is-changed").removeClass("has-warning");
                                } else {
                                    property$.addClass("is-changed");
                                    if (pData.property.requires_reload) {
                                        property$.addClass("has-warning");
                                    }
                                }
                            };
                            applyStatusToProperty( pData.property$ );
                        };
                        var newClasses = getClasses( pData.property.value );
                        var oldClasses = getClasses( pData.property.oldValue );
                        applyStatusStyling();
                        element$.removeClass(oldClasses);
                        element$.addClass(newClasses);
                    }
                });

                if ( component.originalClassName === '' ) {
                    prop$.html("<div class='a-DevTools--inner-message'>" + lang.getMessage("APEX.LTO.NOT_APPLICABLE") + "</div>");
                    continue;
                }
            }
            if (this.components.length > 1) {
                tabUl$.aTabs({ classPrefix: "apex-rds", showAllScrollOffset: function() { return false; } });
            } else {
                tabUl$.hide();
            }
            var saved = false;
            var options = this.options;
            var dialog$;
            newEl$.dialog({
                resizable: true,
                draggable: true,
                modal: true,
                width: 400,
                maxHeight: 640,
                minWidth: 280,
                height: 640,
                dialogClass: "a-DevTools",
                title: lang.getMessage('APEX.LTO.LIVE_TEMPLATE_OPTIONS'),
                position: lastPosition || { my: "left top", at: "right top", of: parentElement$, collision: "flipfit" },
                create: function() {
                    $( this ).closest( ".ui-dialog" ).attr( "aria-modal", true );
                },
                close: function() {
                    apex.navigation.endFreezeScroll();
                    parentElement$.css({
                        "z-index": "",
                        "position": ""
                    });
                    parentElement$.parentsUntil("body").each(function() {
                        var el$ = $(this);
                        if (el$.css("position") === "fixed") {
                            el$.css("z-index", "");
                        }
                    });
                    if (!saved) {
                        me._resetClassNames();

                    } else {
                        $(window).trigger("apexwindowresized");
                    }
                    me.destroy();
                    $("#apexDevToolbar").css("z-index", "");
                    me._destroyComponents();
                    dialog$.remove();
                },
                beforeClose: function() {
                    var offset = dialog$.offset();
                    lastPosition = [offset.left - $(window).scrollLeft(), offset.top - $(window).scrollTop()];
                },
                open: function() {
                    if (!dialog$) {
                        dialog$ = newEl$.parents(".ui-dialog");
                    }
                    apex.navigation.beginFreezeScroll();

                    // make the selected element be in front of ui-front overlay by adding one.
                    var parentZindex = parseInt( dialog$.next('.ui-front').css("z-index"), 10 ) + 1;

                    parentElement$.css({
                        "z-index": parentZindex,
                        "position": "relative"
                    });

                    parentElement$.parentsUntil("body").each(function() {
                        var el$ = $(this);
                        if (el$.css("position") === "fixed") {
                            el$.css("z-index", parentZindex);
                        }
                    });
                    // Live template options dialog should be on very top.
                    dialog$.css("z-index", parentZindex + 1);
                    $("#apexDevToolbar").css("z-index", parentZindex - 2);
                },
                buttons: [
                    {
                        text:  lang.getMessage( "APEX.LTO.CANCEL" ),
                        class: 'a-Button a-DevTools-toolbar-item a-DevTools-toolbar-item--push a-DevTools-toolbar-item--right a-DevTools-toolbar-button a-DevTools-container__button',
                        click: function() {
                            newEl$.dialog( "close" );
                        }
                    },
                    {
                        text:     lang.getMessage( "APEX.LTO.SAVE" ),
                        class: 'a-Button a-Button--hot ui-button--hot a-DevTools-toolbar-item a-DevTools-toolbar-item--right a-DevTools-toolbar-button a-DevTools-container__button',
                        click:    function() {
                            var submitted = [];
                            me.components.forEach(function( component ) {
                                if (component.hasOptions) {
                                    submitted.push(
                                        component.getValues()
                                    );
                                }
                            });
                            options.onSave(
                                submitted,
                                function() {
                                    saved = true;
                                    newEl$.dialog("close");
                                }, function( err, msg, fullMessage ) {
                                    message.alert( JSON.parse(err.responseText).addInfo || JSON.parse(err.responseText).error || fullMessage );
                                    apex.debug(err);
                                });
                        }
                    }
                ]
            });

            //if (this.components.length === 1 &&
            //    this.components[0].properties.common.length === 1 &&
            //    this.components[0].properties.advanced.length === 0) {
            //    info$.show().find(".a-LiveTemplateOptions--info-message").html('No other template options detected.'); //TODO: Translate this string? Right now it's unclear how "warnings" should be issued here.
            //}
            newEl$.parents(".ui-dialog").first().find(".ui-dialog-buttonpane").append(
                info$
            );
        },
        _create: function() {
            var me = this;
            var cr = function () {
                if (!me._buildComponents()) {
                    me.destroy();
                    return;
                }
                me._render();
            };
            if (!preloaded || !jQuery().propertyEditor || !jQuery().aTabs || !apex.templateOptionsHelper) {
                waitingPreload.push( cr );
                if (!preloaded) {
                    preload();
                }
            } else {
                cr();
            }
        }
    });

    /**
     * Idempotent means for resolving various style and JS dependencies for liveTemplateOptions.
     */
    var preload = $.apex.liveTemplateOptions.preload = function( ) {
        if ( preloaded ) {
            return;
        }
        preloaded = true;
        var head$ = $("head"),
            debugDisabled = apex.debug.getLevel() === 0;
        //LiveTemplateOptions will likely never be used in the builder, so it is okay
        //not to check for duplicate styles and just append.
        var appendStyle = function ( style ) {
            head$.append(
                "<link rel='stylesheet' href='" + IMAGES_DIRECTORY + style + "' />"
            );
        };
        STYLES_TO_IMPORT.forEach(appendStyle);
        // If themeRoller has already been loaded
        /* test removing this because we're sharing a stylesheet now
        if ( $('link[href$="apex_ui/theme_roller/utr.css"]').length <= 0 ) {
            appendStyle("apex_ui/theme_roller/utr.css");
        }
        */

        lang.loadMessagesIfNeeded(msgKeys, function(){
            $.when(
                apex.server.loadScript( {
                    path: IMAGES_DIRECTORY + "apex_ui/js/" +
                        ( debugDisabled ? "minified/widget.propertyEditor.min.js" : "widget.propertyEditor.js" ) } ),

                apex.server.loadScript( {
                    path: IMAGES_DIRECTORY + "libraries/apex/" +
                        ( debugDisabled ? "minified/widget.apexTabs.min.js" : "widget.apexTabs.js" ) } ),

                apex.server.loadScript( {
                    path: IMAGES_DIRECTORY + "apex_ui/js/" +
                        ( debugDisabled ? "minified/templateOptionsHelper.min.js" : "templateOptionsHelper.js" ) } )
            ).done(function () {
                apex.templateOptionsHelper.addGeneralPropertyType();
                while (waitingPreload.length > 0) {
                    var deferredCreate = waitingPreload.pop();
                    if (deferredCreate) {
                        deferredCreate();
                    }
                }
            });
        });
    };

})( apex.jQuery, apex.lang, apex.message, apex.util );