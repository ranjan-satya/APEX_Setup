/*!
 Copyright (c) 2015, 2018 Oracle and/or its affiliates. All rights reserved.
*/
/**
 * @fileOverview
 * The apex.theme42 namespace is used to store all JavaScript functions used by theme 42.
 *
 * This defines all the Universal Theme/theme42/UT logic which is shared between modules.
 *
 **/
/*global apex, window, ToggleCore*/
apex.theme42 = {};
(function( ut, $ ) {
    "use strict";

    /**
     * Constants for various parts of the page.
     */
    var
    TREE_NAV             = ut.TREE_NAV                     = "#t_TreeNav",
    PAGE_BODY            = ut.PAGE_BODY                    = "#t_PageBody",
    PAGE_TITLE           = ut.PAGE_TITLE                   = "#t_Body_title",
    HEADER               = ut.HEADER                       = "#t_Header",
    FOOTER               = ut.FOOTER                       = ".t-Footer",
    SIDE_COL             = ut.SIDE_COL                     = "#t_Body_side",
    BODY_CONTENT         = ut.BODY_CONTENT                 = "#t_Body_content",
    BODY_CONTENT_OFFSET  = ut.BODY_CONTENT_OFFSET          = "#t_Body_content_offset",
    ACTIONS_COL          = ut.ACTIONS_COL                  = "#t_Body_actions",
    T_MODAL_BODY         = ut.T_MODAL_BODY                 = '.t-Dialog-body',
    T_ALERT_SUCCESS      = '#t_Alert_Success',
    APEX_SUCCESS_MESSAGE = "#APEX_SUCCESS_MESSAGE",
    ITEM_DROPZONE        = 'span.apex-item-file-dropzone';

    /**
     * Resize Optimization for Dialogs to recall previous dialog height
     */
    var     dialogHeight = ut.dialogHeight   = 0;

    /**
     * Global elements that may or may not be present on the page.
     */
    var treeNav$,
        pageTitle$,
        pageBody$,
        bodyContent$,
        bodyContentOffset$,
        mainBody$,
        sideCol$,
        header$,
        footer$,
        actionsCol$,
        marqueeRDS$ = $( ".t-Body-info .apex-rds-container"),
        baseRDS$ = $( ".apex-rds-container"),
        init = ut.init = {};

    /**
     * // todo: move common functions to ut.util as an effort to improve code organization
     */
    ut.util = {};

    /**
     * <p>Scroll to the anchor smoothly, taking sticky top height into account.</p>
     *
     * @param {string} id could be the ID of a region.
     */
    ut.util.scrollTo = function( id ){
        var anchor,
            elem$,
            elemOffset;

        if ( id ) {
            anchor = id.indexOf( '#' ) > -1 ? id : '#' + id;
            elem$ = $( anchor );
            if ( elem$[0] ) {
                elemOffset = elem$.offset().top - apex.theme.defaultStickyTop();
                $( 'html, body', apex.gPageContext$ ).animate({
                    scrollTop: elemOffset
                });
            }
        }
    };

    /**
     * Returns boolean for media query
     * @param {string} media query string, e.g. (min-width: 400px)
     * @return {boolean}
     */
    ut.util.mq = function( mediaQueryString ) {
        var matchMedia = window.matchMedia || window.msMatchMedia;
        if ( matchMedia ) {
            return matchMedia( mediaQueryString ).matches;
        } else {
            return false;
        }
    };

    /**
     * @type {Function}
     * @returns true if the page has a left sidebar and screen is smaller than 992 pixels,
     * or if the screen is smaller than 640px;
     */
    var screenIsSmall = ut.screenIsSmall = function () {
        var pageHasTreeView =  !!treeNav$ && treeNav$.length > 0,
        pageHasLeftAndIsTooSmall = pageHasTreeView && pageBody$.hasClass( 't-PageBody--showLeft' ) && ut.util.mq( '(max-width: 992px)'),
            pageIsSimplyTooSmall = ut.util.mq( '(max-width: 640px)' );
        return  pageHasLeftAndIsTooSmall || pageIsSimplyTooSmall;
    };

    /**
     * @returns an integer value that is the page title height OR will be altered if the page title height is currently
     * animation and is therefore incorrect.
     */
    ut.getTitleHeight = function() {
        return pageTitle$.outerHeight();
    };

    /**
     * Determine the base window Y value for all stickied elements to stick.
     * @type {Function}
     */
    var getFixedHeight = ut.getFixedHeight = function() {
        /**
         * The height is always present on an a UT page.
         */
        var headerHeight = $( "header" ).outerHeight(),
            rdsHeight = 0;
        /**
         * If there is an RDS in the .t-Body-info container, we know it is stuck and must be included in the calculations.
         */
        if (marqueeRDS$.length > 0) {
            rdsHeight += marqueeRDS$.outerHeight();
        }

        if (screenIsSmall()) {
            // the page title is not fixed when the screen is small.
            if (pageBody$.hasClass("js-HeaderContracted")) {
                // a contracted header means that it is no longer visible, which means that the RDS height
                // (if it exists) is the only Y base that needs to be returned.
                return rdsHeight;
            }

            return headerHeight + rdsHeight;
        }

        if ($(".js-stickyTableHeader").length > 0) {
            rdsHeight -= 1;
        }
        // If the screen is not small, we know that the page title is
        return ut.getTitleHeight() + headerHeight + rdsHeight;
    };

    apex.theme.defaultStickyTop = getFixedHeight;

    /**
     * Shorthand for stickying an element in UT.
     * @param selector a Jquery selector that you wish to sticky.
     */
    ut.sticky = function( selector) {
        $( selector ).stickyWidget(
                {
                    zIndexStart: 200,
                    toggleWidth: true,
                    stickToEnd: true
                }
        );
    };

    ut.renderBadges = function( children$, labelClass ) {
        children$.each(function() {
            var label = this.innerHTML;
            if ( label.indexOf("<span class='" + labelClass + "'>") !== -1) {
                // Ignore any labels which already have a badge!
                // TODO: Consider making this more efficient by caching the nodes which have had this transformation applied on them.
                return;
            }
            var regex = /\[(.*)\]/,
                match = regex.exec( label );
            if (match !== null && match.length > 1) {
                if (match[1] === "") {
                    this.innerHTML = label.replace(regex, "");
                } else {
                    label = label.replace(/\[.*\]/, "") + "<span class='" + labelClass + "'>" + match[1] + "</span>";
                    this.innerHTML = label;
                }
            }
        });
    };

    /**
     * Resets all the core page element offsets.
     * Notice that this needs to be done dynamically since the pageTitle and the header are two different divs
     * that just happen to be fixed on top of each other.
     *
     * TODO:    There is no good reason (other than complexity) why the constant (0 or some fixed value) "resets"
     *          are applied here in the JS instead of the CSS. Future Developer, consider refactoring.
     *
     * @type {Function}
     */
    var resetHeaderOffset =  ut.resetHeaderOffset = function() {
        var pageTitleHeight = ut.getTitleHeight(),
            headerHeight    = header$.outerHeight(),
            contentOffset,
            sideColTop;

        if (ut.util.mq('(min-width: 641px)')) {
            // Big screen has a minimum of 641 pixels
            // Certain page elements need to include the pageTitle height
            contentOffset = pageTitleHeight;
            sideColTop    = headerHeight + pageTitleHeight;
        } else {
            // Small screen handles things differently based on nav style:
            contentOffset = 0;
            sideColTop    = 0;
        }
        // Finally set the correct margins and height to handle the header offset
        mainBody$.css(          { "margin-top": headerHeight  });
        bodyContentOffset$.css( { "height":     contentOffset });
        sideCol$.css(           { "top":        sideColTop    });
        actionsCol$.css(        { "top":        headerHeight  });
        pageTitle$.css(         { "top":        headerHeight  });
    };

    /**
     * Configure the display behavior of success message.
     * User may use this API to programmatically determine how long the success message gets to be displayed.
     *
     * For example, on DOM ready:
     *
     * apex.theme42.configureSuccessMessages({
     *   autoDismiss: true,
     *   duration: 5000
     * });
     *
     * @param {Object} [pOptions]       possible values are:
     *                                    - "autoDismiss":  Boolean to specify if the success message should be dismissed
     *                                                      after displaying for certain duration.
     *                                    - "duration":     Number. Default is 3000. Duration in milliseconds.
     *
     *                                    If the message div is clicked, has focus, or on mouse over,
     *                                    it won't get dismissed, while clicking out side, and on mouse out will resume
     *                                    the dismissing behavior.
     */
    ut.configureSuccessMessages = function( pOptions ) {
        var suc$ = $( T_ALERT_SUCCESS ),
            timeOut;

        if ( pOptions && pOptions.autoDismiss && suc$[0] ) {
            var hide = function () {
                timeOut = setTimeout( function () {
                    apex.message.hidePageSuccess();
                    suc$.off();
                    $(document).off( 'click', hide );
                }, pOptions.duration || 3000);
            };

            var clear = function () {
                clearTimeout( timeOut );
            };

            // start dismissing the success message after above duration.
            hide();

            suc$.on( 'click', function (e) {
                // stop hiding if it is clicked.
                e.stopPropagation();
                ut.configureSuccessMessages.clicked = true;
                clear();
            })
                // stop hiding when mouse over the message.
                .on( 'mouseover', clear )
                .on( 'mouseout', function () {
                    // if message was not clicked before, start hiding.
                    if ( !ut.configureSuccessMessages.clicked ) {
                        hide();
                    }
                });

            // hide message if clicked elsewhere on the page.
            $(document).on( 'click', hide );

            // stop hiding when focus is inside.
            suc$.find( '.t-Button--closeAlert' ).on( 'focus', clear );

            // save options, in case user wants to use JS to invoke another success message,
            // which should still honor these options.
            ut.configureSuccessMessages.options = pOptions;
        }
    };

    /**
     * IIVE that allows modules to define page behavior.
     */
    (function() {
        /**
         * A list of all the possible page templates. If you create a new template, you must call
         * apex.theme42.pages.<your template name here>() prior to the jQuery onReady event
         */
        var pages = ut.pages = {
            "masterDetail": {},
            "leftSideCol": {},
            "rightSideCol" : {},
            "noSideCol": {},
            "appLogin": {},
            "wizardPage": {},
            "wizardModal": {},
            "bothSideCols": {},
            "popUp": {},
            "modalDialog": {}
        };

        /**
         * Prepares all the different page modules for DOM load.
         */
        ut.initializePage = function() {
            var wrapFunc = function( key ) {
                return function() {
                    var onReady = pages[key].onReady,
                        onTheme42Ready = pages[key].onTheme42Ready;
                    if (onReady !== undefined) {
                        onReady();
                    }
                    if (onTheme42Ready !== undefined) {
                        $( window ).on("theme42ready", function() {
                            onTheme42Ready();
                        });
                    }
                };
            };
            var returnPages = {};

            for (var key in pages) {
                if ( pages.hasOwnProperty(key) ) {
                    returnPages[key] = wrapFunc( key );
                }
            }
            return returnPages;
        }();

    })();

    (function() {
        // Stored in an anonymous function, just so that delayResize cannot be used anywhere else.
        var delayResize;
        /**
         * A special theme42 resize event  invoked whenever a page layout is expected to be different than the
         * current 201ms from now.  Typically this is for when a left side nav column or a right actions column
         * expands or collapses.
         */
        ut.delayResize = function() {
            // Debounce the resize.
            clearTimeout( delayResize );
            delayResize = function() {
                $("body").trigger("theme42delayresizefinish"); // signals that the delayed resize event for the page is
                                                               // finished.
                //TODO: Use John's protocol in the future.
                $(".js-stickyWidget-toggle").each(function() {
                    $( this ).trigger( "forceresize" );
                });
                $(".js-stickyTableHeader").each(function() {
                    $( this ).trigger("forceresize" );
                });
                $( ".a-MenuBar" ).menu( "resize" );
            };
            setTimeout(delayResize, 201);
        };
    }());

    // Wrapper for legacy code. TODO: Consider using the other arguments to achieve some
    window.openModal = function(pDialogId, pDialogTriggerId, pSetFocusId, pClear ) {
        $( "#" + pDialogId ).dialog("open");
    };

    window.closeModal = function closeModal() {
        $( ".ui-dialog-content" ).dialog("close");
    };

    // Initialization code for small widgets. Anything that gets too large should be moved into its init own module.
    init.carousel = function() {
        if ( $.fn.carousel ) {
            $(".t-Region--carousel").carousel({containerBodySelect: ".t-Region-carouselRegions", html:true});
        }
    };

    init.tabs = function() {
        if ( $.apex.aTabs ) {
            $(".t-TabsRegion").utTabs();
        }
    };

    init.verticalRDS = function() {
        if (baseRDS$.length > 0) {
            $('.apex-rds').aTabs().data('apex-aTabs')._getScrollOffset = function(){
                return $('.apex-rds').offset().top;
            };
        }
    };

    init.rdsSticky = function() {
        if (marqueeRDS$.length > 0) {
            marqueeRDS$.stickyWidget(
                {
                    toggleWidth: true,
                    top: function () {
                        return getFixedHeight() - marqueeRDS$.outerHeight();
                    }
                }
            );
        }
    };

    init.apexDebug = function() {
        $(document)
            .on("apex-devbar-grid-debug-on", function(){
                $("body").addClass("grid-debug-on");
            })
            .on("apex-devbar-grid-debug-off", function(){
                $("body").removeClass("grid-debug-on");
            });
    };

    init.topMenu = function() {
        if ( treeNav$.length > 0 && $.menu ) {
            return;
        }
        var render = function() {
            ut.renderBadges($(".t-Header-nav .a-MenuBar-label"), "t-Menu-badge");
        };
        var menubar$ = $(".t-Header-nav-list", "#t_Header");
        if (!menubar$.is( ":data('ui-menu')" )) {
            $( window ).on("menucreate apexwindowresized", menubar$, function() {
               render();
            });
        } else {
            render();
        }
    };

    init.successMessage = function () {
        var msg$ = $( APEX_SUCCESS_MESSAGE );

        apex.message.setThemeHooks( {
            beforeHide: function( pMsgType ){
                if ( pMsgType === apex.message.TYPE.SUCCESS ) {
                    msg$.addClass( 'animate-hide' );
                }
            },
            beforeShow: function( pMsgType ){
                if ( pMsgType === apex.message.TYPE.SUCCESS ) {
                    var opt = ut.configureSuccessMessages.options;
                    msg$.removeClass( 'animate-hide' );
                    if ( opt ) {
                        // When user choose to invoke a success message using JS,
                        // this message should follow the options in configureSuccessMessages, if any.
                        ut.configureSuccessMessages(opt);
                    }
                }
            }
        });
    };

    init.items = function () {
        // File upload
        $( 'input[type=file].apex-item-file--native' )
            .each(function() {
                var that$ = $( this );
                that$.after('<span id="' + apex.util.escapeHTMLAttr( that$.attr('id') ) + '_DROPZONE" class="apex-item-file-dropzone" aria-hidden="true"></span>');
                that$
                    .next( ITEM_DROPZONE )
                    .html('<span class="apex-item-file-dropzone-label">'+that$.data( 'caption' )+'</span>'+
                        '<span class="apex-item-file-dropzone-icon"><span class="fa fa-folder-search" aria-hidden="true"></span></span>');
            })
            .on( 'change', function ( e ) {
                var files = this.files,
                    fileName = '',
                    that$ = $( this ),
                    dropZoneLabel$ = that$.next( ITEM_DROPZONE ).find(".apex-item-file-dropzone-label");

                if ( files && files.length > 1 ) {
                    fileName = ( that$.data( 'multiple-caption' ) || '' ).replace( '{count}', files.length );
                } else {
                    if ( files[0] ) {
                        fileName = files[0].name;
                    }
                }

                if ( fileName ) {
                    dropZoneLabel$.text( fileName );
                } else {
                    dropZoneLabel$.text( that$.data( 'caption' ) );
                }
            });

        // Quick Picks to be moved below input
        var quickPicks$ = $( 'span.apex-quick-picks' );
        quickPicks$.each(function () {
            var that$ = $( this );
            that$.insertAfter( that$.parent() );
        });
    };


    init.miscellaneous = function(){
        // Handle anchor links scroll when there's # in URL, considering sticky tops.
        var scrollToAnchor = function() {
            ut.util.scrollTo(  window.location.hash );
        };
        scrollToAnchor();

        $( window ).on( 'hashchange', function( e ) {
            e.preventDefault();
            scrollToAnchor();
        });

        /**
         * Template Option: Hide pagination links when there is no pagination available
         */
        var hidePagination = function( regionId ){
            /* Determine whether pagination exists for the report by checking for links or select lists */
            var pagination$ = $( '#' + regionId ).find( '.t-Report-pagination' );
            if ( pagination$.find( 'td' ).length > 0 && !(pagination$.find( 'td.pagination > a' ).length > 0 || pagination$.find( 'td.pagination > select' ).length > 0) ) {
                pagination$.addClass( 'u-hidden' );
            }
        };

        /* Handle paginaiton for each report which has the template option set */
        $( ".t-Report--hideNoPagination" ).each(function(){
            var regionId = $( this ).data( "region-id" );
            hidePagination( regionId );
            /* Handle partial report refresh by $( '#myRgionId' ).trigger( 'apexrefresh') */
            $( "#" + regionId ).on( "apexafterrefresh" , function(){
                hidePagination( regionId );
            });
        });

        /**
         * Template Option: Sticky Mobile Header
         */

    /**
     * Makes the body title sticky on small screens
     */
        if ( $( "body" ).hasClass( "js-pageStickyMobileHeader" ) ) {
            var stickyMobileHeader = function () {
                var title$ = ut.pageTitle$;

                var stickyMobileTitle = function(){
                    var isSticky = title$.data( 'apexStickyWidget' ) ? true : false;
                    if ( ut.util.mq( '(max-width: 640px)' ) ) {
                        if ( !isSticky ) {
                            title$.stickyWidget();
                        }
                    } else {
                        if ( isSticky ) {
                            title$.stickyWidget( 'destroy' );
                            setTimeout( ut.resetHeaderOffset, 50 );
                        }
                    }
                 };

                stickyMobileTitle();
                $( window ).on( 'theme42layoutchanged apexwindowresized', stickyMobileTitle );
            };
            stickyMobileHeader();
        }

        var navTabs$ = $( ".t-NavTabs" );
        /**
         * Utility to return height of navTabs
         */
        var getNavTabsHeight = function(padding) {
            var navHeight = 0,
                navPadding = padding || 0;
            /* If on a small screen, take into account height of the nav tabs when anchored to bottom */
            if ( ut.util.mq( "(max-width: 768px)" ) ) {
                navHeight = navTabs$.outerHeight() || 0;
            }
            if ( navHeight > 0 ) {
                navHeight += navPadding;
            }
            return navHeight;
        }

        /**
         * Template Option: Stick to Bottom for button container region
         */
        var stickyButtonContainer$ = $( ".t-ButtonRegion--stickToBottom" );
        if ( stickyButtonContainer$[0] ) {

            var stickyMobileFooter = function(){

                /* First, get the nav tabs height if they are on the page */
                var footerBottomOffset = getNavTabsHeight();

                /* Account for the navigation tabs being at the bottom so footer text is still visible */
                footer$.css( "padding-bottom" , footerBottomOffset || "" );

                /* on small screens, anchor the button region and update footer padding to take into account the button region */
                if ( ut.util.mq( '(max-width: 768px)' ) ) {
                    stickyButtonContainer$.addClass( "is-anchored" ).css( "bottom" , footerBottomOffset );
                    footer$.css( "padding-bottom" , footerBottomOffset + stickyButtonContainer$.outerHeight() + 16 );
                } else {
                    /* when not on a small screen, restore the button region and footer as they were */
                    stickyButtonContainer$.removeClass( "is-anchored" ).css( "bottom" , "" );
                    footer$.css( "padding-bottom" , "" );
                }
            };

            /* invoke sticky mobile footer, then listen for resize */
            stickyMobileFooter();
            $( window ).on( 'apexwindowresized', stickyMobileFooter );

        }

        /**
         * When using the Nav Tabs footer, add sufficient padding to footer on small screens
         * but only if we don't already handle this with sticky mobile footer
         */
        if ( navTabs$[0] && !stickyButtonContainer$[0] ) {
            footer$.css( "padding-bottom" , getNavTabsHeight(16) || "" );
            $( window ).on( "apexwindowresized" , function() {
                footer$.css( "padding-bottom" , getNavTabsHeight(16) || "" );
            })
        }

    };

    /**
     * Initialization logic for UT that has to come at the end of other page init logic
     */
    $( document ).on( "apexreadyend", function() {
        // init.verticalRDS();
        $( window ).trigger( "theme42ready" );
        // The page content is now ready to be shown after all the other JS has been executed.
        $( "body" ).removeClass( "no-anim" );
        resetHeaderOffset();
        init.alert();
        $( ".a-MenuBar" ).menu( "resize" );
        init.carousel();
        init.tabs();
        init.floatingLabels();
        init.miscellaneous();
        // todo: ut.init should not be exposed in the first place. Improve code organization.
        delete ut.init;
        init = {};
    });

    /**
     * The main initialization logic for universal theme.
     */
    $( function() {
        /**
         * If a developer needs to execute any javascript prior to theme42's initialization, they just need to add a
         * listener to the theme42preload event.
         */
        $( window ).trigger( "theme42preload" );

        /**
         * Append Body Offset Holder
         */

        /**
         * This could occur at an earlier point since all these elements are present on the page on load.
         */
        ut.pageBody$    = pageBody$     = $( PAGE_BODY );
        ut.mainBody$    = mainBody$     = $( ".t-Body-main" );
        ut.header$      = header$       = $( HEADER );
        ut.footer$      = footer$       = $( FOOTER );
        ut.sideCol$     = sideCol$      = $( SIDE_COL );
        ut.bodyContent$ = bodyContent$  = $( BODY_CONTENT );
        ut.actionsCol$  = actionsCol$   = $( ACTIONS_COL );
        ut.treeNav$     = treeNav$      = $( TREE_NAV );
        ut.pageTitle$   = pageTitle$    = $( PAGE_TITLE );

        bodyContent$.prepend('<div id="t_Body_content_offset"></div>');
        ut.bodyContentOffset$ = bodyContentOffset$  = $( BODY_CONTENT_OFFSET );

        //TODO: Consider if this should be fixed on the template/server level.
        if ( $( "body" ).hasClass( "t-PageBody--noNav" ) ) {
            $( "body" ).removeClass("apex-side-nav");
        }
        // Initializes the menu widget in the right corner.
        $( ".t-NavigationBar-menu", apex.gPageContext$ ).menu();
        actionsCol$.show();
        init.backToTop();
        init.hideShow();
        init.apexDebug();
        init.handleScrollTop();
        init.maximize();
        apex.theme.initResponsiveDialogs();
        init.treeNav();
        init.topMenu();
        ut.toggleWidgets.initialize();
        init.dialogAutoHeight();
        init.successMessage();

        init.items();
        resetHeaderOffset();
    });
})( apex.theme42, apex.jQuery);

(function( ut, init, $) {

/**
 * @fileOverview
 *
 * It does two things:
 *
 * 1. Stretch both the width and height of a Modal Dialog
 *    when the option "Stretch to Fit Window" is checked in Template Options.
 *    If not, goes to the following step.
 *
 * 2. Automatically set the height of the Modal Dialog based on its contents
 *    if user choose to leave the Height attribute empty in Page Designer.
 *    Also, it calls ut.observeModalSize() at the end of resizing to monitor
 *    its contents, which can be changed dynamically.
 *
 * @Notes
 *  var dialogHeight is stored outside of this function to keep track of the
 *  old value to avoid unnecessary execution when newHeight is the same.
 *
 * @param {string} elem - A class in Modal Dialog to calculate content height.
 * @returns {null}
 */

ut.modalAutoSize = function(elem) {
    // If Page Mode is "Non-Modal Dialog" (a popup window)
    // simply display page and return.
    if (window.parent === window.self) {
        $("body").addClass("js-dialogReady");
        return null;
    }

    // shortcut of the parent jQuery.
    var l$ = apex.util.getTopApex().jQuery,
    // get the DIV with id = "apex_dialog_n" in parent window,
    // The height of its parent will be set later to resize.
        boxId = "#" + window.frameElement.parentNode.id,
        box$ = l$(boxId) || $(boxId);

    var reCenter = function () {
        box$.dialog("option", "position", {
            my: "center",
            at: "center",
            of: l$( window.parent )
        });
    };

    // add a class so iframe loading feels smoother
    var dialogReadyClass = function () {
        $("body").addClass("js-dialogReady");
        box$.addClass("js-dialogReady");
    };

    // Stretch both height and width to 95%, then re-center,
    // if has class .ui-dialog--stretch (from template option)
    if ( $(".ui-dialog--stretch").length !== 0 ) {
        box$.parent().css({
            "height": "95%",
            "width": "95%"
        });
        reCenter();
        dialogReadyClass();
        // stop execution because the following height resizing is not needed,
        // if user choose to stretch dialog.
        return null;
    }
    // Do the following if stretch dialog is NOT set in template options
    //
    // parentWH is used as default value of dMaxHeight,
    // and is smaller than window size to leave a bit of space on top and bottom.
    var parentWH    = l$(parent.window).height() - 20,
        dMinHeight  = parseInt( box$.dialog("option", "minHeight"), 10 ), // 150 is default dMinHeight somewhere
        dMaxHeight  = parseInt( box$.dialog("option", "maxHeight"), 10 ) || parentWH,
    // get height setting in Page Designer auto
        heightAttr  = box$.dialog("option", "height") || "auto";
    // Calculate content height inside iFrame.
    var newHeight = function () {
        var boxBody     = $(elem).outerHeight(),
            boxTitle    = box$.parent().find(".ui-dialog-titlebar").outerHeight(),
            boxFooter   = $(".t-Dialog-footer").outerHeight(),
            boxSteps    = $(".t-Dialog-header").outerHeight(),
            boxHeight   = boxBody + boxTitle + boxFooter + boxSteps;

        if ( boxHeight > dMinHeight ) {
            if (boxHeight < dMaxHeight ) {
                return boxHeight;
            } else {
                return dMaxHeight;
            }
        } else {
            return dMinHeight;
        }
    }();

    var isResizeHeightRequired = function () {
        if (typeof heightAttr === "number") {
            return false;
        } else {
            return heightAttr.toLowerCase() === "auto" && newHeight !== ut.dialogHeight;
        }

    }();

    if ( isResizeHeightRequired ) {
        // Resize, then re-center.
        box$.parent().css( "height", newHeight );
        if ( box$.dialog( "option", "position" ).my === 'center' ) {
            // Dialog has not been moved by user, therefore Re-center dialog after height changed.
            reCenter();
        }

        // Keep the latest height to be used isResizeHeightRequired() to avoid overhead.
        ut.dialogHeight = newHeight;
        // observe content change on the iframe page and resize if needed.
        ut.observeModalSize(ut.T_MODAL_BODY, ut.modalAutoSize);
    }
    dialogReadyClass();
};

/**
 * @fileOverview
 *  Monitors content changes using MutationObserver, then resize Modal Dialog.
 *
 *  See doc:
 *  https://msdn.microsoft.com/en-us/library/dn265034(v=vs.85).aspx
 *
 * @param {string} elem - Content of the Modal Dialog to be monitored.
 * @param {function} callback - function to run after mutation.
 * @returns {MutationObserver} - therefore disconnect() method may be used.
 */
ut.observeModalSize = function (elem, callback) {
    var target = document.querySelector(elem),
        debounceMutationObserver,
        config = {
            attributes: true,
            childList: true,
            characterData: true,
            subtree: true,
            attributeOldValue: false,
            characterDataOldValue: false,
            attributeFilter: ["class", "id", "style"]
        };
    var act = function () {
        callback(elem);
    };

    var observer = new MutationObserver(function(mutations) {
        clearTimeout(debounceMutationObserver);
        debounceMutationObserver = setTimeout(act, 50);
    });

    observer.observe(target, config);
    return observer;
};

(function() {
    var TABS_REGION_REGEX = /t-TabsRegion-mod--([^\s]*)/;
    $.fn.utTabs = function( options ) {
        var that$ = $(this);
        that$.each(function() {
            var tabClasses = [];
            var classes = this.className.split(/\s+/);
            classes.forEach(function( clazz ) {
                var match = clazz.match(TABS_REGION_REGEX);
                if (match !== null && match.length > 0) {
                    tabClasses.push("t-Tabs--" + match[1]);
                }
            });
            var ul$ = $( "<ul class='t-Tabs " + tabClasses.join(" ") +  "' role='tablist'>" );
            var tabs$ = $(this);
            var items$ = tabs$.find(".t-TabsRegion-items").first();
            items$.prepend( ul$ );
            items$.children().filter("div").each(function() {
                var tab$ = $(this);
                var tabId = tab$.attr("id");
                var tabLabel = tab$.attr("data-label");
                ul$.append(
                    '<li class="t-Tabs-item" aria-controls="' + tabId + '" role="tab">' +
                    '<a href="#' + tabId + '" class="t-Tabs-link" tabindex="-1">' +
                    '<span>' + tabLabel + '</span>' +
                    '</a>' +
                    '</li>'
                );
            });
            ul$.aTabs({
                tabsContainer$: items$,
                optionalSelectedClass: "is-active",
                showAllScrollOffset: false,
                onRegionChange: function( mode,  activeTab ) {
                    if ( !activeTab ) {
                        return;
                    }
                    activeTab.el$.find(".js-stickyWidget-toggle").trigger("forceresize");
                },
                useSessionStorage: that$.hasClass("js-useLocalStorage")
            });
        });

    };
}());

/**
 *
 * Widgets that are "toggled" to active or not active depending on the state of the page.
 *
 */
ut.toggleWidgets = function() {
    var RIGHT_CONTROL_BUTTON    = "#t_Button_rightControlButton",
        A_CONTROLS              = "aria-controls",
        A_EXPANDED              = "aria-expanded",
        A_HIDDEN                = "aria-hidden",
        TREE_NAV_WIDGET_KEY     = "nav",
        RIGHT_WIDGET_KEY        = "right";

    var isCollapsedByDefault = $( '#t_TreeNav' ).hasClass( 'js-defaultCollapsed' ),  // comes from APEX template options
        pushModal,
        toggleWidgets = {};

    /**
     * Checks if the toggleWidget specified by key has been built, if it has then call its collapse event.
     * @param key
     */
    var collapseWidget = function (pKey, pSaveUserPreference) {
        if (pKey in toggleWidgets) {
            toggleWidgets[pKey].collapse(pSaveUserPreference);
        }
    };

    /**
     * Checks if the toggleWidget specified by key has been built, if it has then call its expand event.
     * @param key
     */
    var expandWidget = function (pKey, pSaveUserPreference) {
        if (pKey in toggleWidgets) {
            toggleWidgets[pKey].expand(pSaveUserPreference);
        }
    };

    /**
     * To recognize that a toggle widget exists and to initialize so that it works in the context of the current page
     * i.e. "build" it, pass in an object literal to buildToggleWidgets with the following key/values.
     *      "key",                  allows this widget to be expanded or collapsed during run time
     *                              from any other function using collapseWidget(YOUR_KEY) or expandWidget(YOUR_KEY)
     *      "checkForElement",      the element id, class (or arbitrary jquery selector)
     *                              which must exist for this toggleWidget to be initialized.
     *
     *                              All other attributes are used for ToggleCore.
     *
     * NOTE: Right now buildToggleWidget assumes that none of these key/values will be null or undefined!
     *
     * @param options
     * @returns {boolean} true if the element to check for exists on the page and the toggle widget has been built, false if otherwise.
     */
    var buildToggleWidget = function ( options ) {
        var checkForElement = options.checkForElement,
            key             = options.key,
            button$          = $(options.buttonId),
            widget,
            expandOriginal = options.onExpand,
            collapseOriginal = options.onCollapse;
        var element$ = $( checkForElement );
        if ( !element$ || element$.length <= 0 ) {
            return false;
        }
        options.controllingElement = button$;
        button$.attr( A_CONTROLS, element$.attr("id") );

        options.content = ut.pageBody$;
        options.contentClassExpanded = "js-" + key + "Expanded";
        options.contentClassCollapsed = "js-" + key + "Collapsed";
        options.onExpand = function() {
            expandOriginal();
            button$.addClass("is-active").attr(A_EXPANDED, "true");
            pushModal.notify();
        };
        options.onCollapse = function() {
            collapseOriginal();
            button$.removeClass("is-active").attr(A_EXPANDED, "false");
            pushModal.notify();
        };

        widget = ToggleCore(options);
        toggleWidgets[key] = widget;
        return true;
    };

    var initialize = function() {
        if (ut.pageBody$.length <= 0 &&
            ut.mainBody$.length <= 0 &&
            ut.header$.length <= 0 &&
            ut.bodyContent$.length <= 0 ) {
            // If these elements do not exist, ToggleWidgets cannot be run.
            return;
        }
        var treeNav$ = ut.treeNav$;
        var pageBody$ = ut.pageBody$;
        /**
         *
         */
        var pushModal$ = $( "<div id='pushModal' style='width: 100%; display:none; height: 100%;' class='u-DisplayNone u-Overlay--glass'></div>" );
        $( 'body' ).append( // While jsLint will notice duplicate jQuery selectors; it is only important to cache
                            // those that are not at the top of the DOM. body is accessed through document.body
                            // so it is fine to reuse it like this.
            pushModal$
        );
        $( window ).bind('apexwindowresized', function() {
            for (var key in toggleWidgets) {
                if ( toggleWidgets.hasOwnProperty(key) ) {
                    toggleWidgets[ key ].resize();
                }
            }
            pushModal.notify();
        });

        pushModal = {
            el$: pushModal$,
            "collapse": function() {
            },
            "expand": function() {
            },
            "shouldShow": ut.screenIsSmall,
            "notify": function() {
            }
        };
        var  NAV_CONTROL_BUTTON      = "#t_Button_treeNavControl";
        if ( $( "#t_Button_navControl" ).length > 0 ) {
            if ($(".t-Header-nav-list.a-MenuBar").length <= 0) {
                NAV_CONTROL_BUTTON = "#t_Button_navControl";
            }
        }
        var treeShouldBeHidden = function() {
            return ut.util.mq( '(max-width: 480px)' );
        };
        var treeIsHidden = function() {
            return treeNav$.css("visibility") === "hidden";
        };
        var showTree = function() {
            treeNav$.css("visibility", "inherit").attr(A_HIDDEN, "false");
        };
        var collapseTree = function () {
            collapseWidget(TREE_NAV_WIDGET_KEY);
        };
        var treeIsHiding = false;
        var handleTreeVisibility = function() {
            var screenIsTooSmallForTheTree = treeShouldBeHidden();
            if ( screenIsTooSmallForTheTree  && !treeIsHidden() && !treeIsHiding ) {
                treeIsHiding = true;
                setTimeout(function() {
                    treeIsHiding = false;
                    if ( !toggleWidgets[ TREE_NAV_WIDGET_KEY ].isExpanded() ) {
                        treeNav$.css("visibility", "hidden").attr( A_HIDDEN , "true");
                    }
                }, 400);
                $( '.t-Body-main' ).off( 'click', collapseTree );
            } else if ( !screenIsTooSmallForTheTree ) {
                showTree();
            }
        };
        var hasTree = buildToggleWidget({
            key: TREE_NAV_WIDGET_KEY,
            checkForElement: ut.TREE_NAV,
            buttonId: NAV_CONTROL_BUTTON,
            defaultExpandedPreference: !isCollapsedByDefault,
            isPreferenceGlobal: true,
            onClick: function() {
                if (ut.util.mq('(max-width: 992px)') &&
                    RIGHT_WIDGET_KEY in toggleWidgets &&
                    toggleWidgets[RIGHT_WIDGET_KEY].isExpanded()) {
                    toggleWidgets[RIGHT_WIDGET_KEY].toggle();
                }
            },
            onExpand: function() {
                if (ut.util.mq('(max-width: 992px)')) {
                    collapseWidget(RIGHT_WIDGET_KEY);
                }
                treeNav$.treeView("expand", treeNav$.treeView("getSelection"));
                showTree();
                ut.delayResize();
                treeNav$.trigger("theme42layoutchanged", {action: "expand"});
                // Enable clicking on main content to collapse left menu on small screen
                if ( !ut.util.mq('(min-width: 640px)') ) {
                    $( '.t-Body-main' ).on( 'click', collapseTree );
                }
            },
            onCollapse: function() {
                treeNav$.treeView("collapseAll");
                ut.delayResize();
                handleTreeVisibility();
                treeNav$.trigger("theme42layoutchanged", {action: "collapse"});
                $( '.t-Body-main' ).off( 'click', collapseTree );
            },
            onResize: function() {
                var usingTreeNav = pageBody$.hasClass('t-PageBody--leftNav');
                if (usingTreeNav) {
                    if (ut.util.mq('(max-width: 992px)')) {
                        this.collapse();
                    } else {
                        if (this.doesUserPreferExpanded()) {
                            this.expand();
                        }
                    }
                }
                handleTreeVisibility();
                ut.resetHeaderOffset();
            },
            onInitialize: function() {
                var preferExpanded = this.doesUserPreferExpanded();
                if ( ut.util.mq('(min-width: 992px)') ) {
                    if ( preferExpanded ) {
                        this.expand();
                    } else {
                        this.forceCollapse();
                    }
                } else {
                    // screen is small
                    this.forceCollapse();
                }
            }
        });

        // If the tree widget does not exist, the page MUST be using a MENU_NAV_WIDGET_KEY.
        if ( !hasTree ) {

            var headerCore = null;

            var peekHeaderInit = function() {
                // Initialize the peeking header for small screens only
                if ( ut.util.mq( '(max-width: 640px)' ) && headerCore === null ) {

                    var lastScrollTop = 0,
                        handlerId = null;

                    var recal = function() {
                            $( ".js-stickyWidget-toggle" ).stickyWidget( "reStick" );
                        };

                    // configure the toggle core behavior
                    headerCore = ToggleCore({
                        content: pageBody$,
                        contentClassExpanded: "js-HeaderExpanded",
                        contentClassCollapsed: "js-HeaderContracted",
                        useSessionStorage: false,
                        defaultExpandedPreference: true,
                        onCollapse: recal,
                        onExpand: recal
                    });

                    // initialize toggle core widget
                    headerCore.initialize();

                    var peekingHeader = function() {
                        handlerId = null;
                        var scrollTop = $( this ).scrollTop();
                        if (lastScrollTop > scrollTop || scrollTop < 100) {
                            headerCore.expand();
                        } else {
                            headerCore.collapse();
                        }
                        lastScrollTop = scrollTop;
                    };
                    
                    $( window ).scroll( function() {
                        if ( !handlerId ) {
                            handlerId = apex.util.invokeAfterPaint( peekingHeader );
                        }
                    } );
                }
            };

            // listen to resize event and initialize peeking header
            $( window ).on( 'apexwindowresized', peekHeaderInit );

            // also call peekheader directly on page load
            peekHeaderInit();

            // Update the classes when using the no nav page template
            var body$ = $( "body" );
            if ( !body$.hasClass( 't-PageBody--noNav' ) ) {
                body$.addClass( 't-PageBody--topNav' );
            }

            $( window ).on("apexwindowresized", ut.resetHeaderOffset);
        } else {
            treeNav$.on("treeviewexpansionstatechange", function(jqueryEvent, treeViewEvent) {
                if (treeViewEvent.expanded) {
                    toggleWidgets[TREE_NAV_WIDGET_KEY].expand();
                }
            });
        }
        var rightShouldBeOpenOnStart = ut.util.mq('(min-width: 992px)');
        var actionsContent$ = $( ".t-Body-actionsContent" );
        buildToggleWidget({
            key: RIGHT_WIDGET_KEY,
            checkForElement: ".t-Body-actionsContent",
            buttonId: RIGHT_CONTROL_BUTTON,
            defaultExpandedPreference: rightShouldBeOpenOnStart,
            onClick: function() {
                if (ut.util.mq('(max-width: 992px)') &&
                    TREE_NAV_WIDGET_KEY in toggleWidgets &&
                    toggleWidgets[TREE_NAV_WIDGET_KEY].isExpanded()) {
                    toggleWidgets[TREE_NAV_WIDGET_KEY].toggle();
                }

            },
            onExpand: function() {
                if (ut.util.mq('(max-width: 992px)')) {
                    if (pageBody$.hasClass('js-navExpanded')) {
                        collapseWidget(TREE_NAV_WIDGET_KEY);
                    }
                }
                actionsContent$.css("visibility", "inherit").attr(A_HIDDEN, "false");
                ut.delayResize();
            },
            onCollapse: function() {
                ut.delayResize();
                actionsContent$.attr(A_HIDDEN, "true");
                setTimeout( function() {
                    if ( !toggleWidgets[RIGHT_WIDGET_KEY].isExpanded() ) {
                        actionsContent$.css("visibility", "hidden");
                    }
                }, 400);
            },
            onResize: function() {
                // Window resize should have nothing to do with right action column
                // Typing in text field may trigger resize in some mobile browser,
                // therefore collapsing the column, which is unexpected behavior.
                // See Bug 27911046
            },
            onInitialize: function() {
                if (TREE_NAV_WIDGET_KEY in toggleWidgets &&
                    toggleWidgets[TREE_NAV_WIDGET_KEY].isExpanded() &&
                    ut.util.mq('(max-width: 992px)')) {
                    this.forceCollapse();
                } else {
                    if (this.doesUserPreferExpanded()) {
                        this.forceExpand();
                    } else {
                        this.forceCollapse();
                    }
                }
            }
        });

        for (var key in toggleWidgets) {
            if ( toggleWidgets.hasOwnProperty(key) ) {
                toggleWidgets[key].initialize();
            }
        }
    };

    return {
        "initialize": initialize,
        "expandWidget": expandWidget,
        "collapseWidget": collapseWidget,
        "setPreference": function (key, value) {
            if (key in toggleWidgets){
                toggleWidgets[key].setUserPreference(value);
            }
        },
        "isExpanded": function (key) {
            if (key in toggleWidgets) {
                return toggleWidgets[key].isExpanded();
            }
        }
    };
}();

init.alert = function () {
    var closeAlert$ =  $( ".t-Alert .t-Button--closeAlert" );
    var parent$ = closeAlert$.closest( ".t-Alert" );

    closeAlert$.click(function() {
        ut.delayResize();
    });
};

init.backToTop = function( ) {
    var backToTop$ = $('#t_Footer_topButton');
    backToTop$
        .attr("title", apex.lang.getMessage("APEX.UI.BACK_TO_TOP"))
        .click(function() {
            $("html,body").animate( {scrollTop: 0}, 500 );
            $('a.t-Header-logo-link').focus();
            return false;
        });
};

/**
 * @fileOverview
 *
 * Sets the height of Inline Dialog automatically,
 * if Template option: "Auto Height" is checked
 * (CSS class .js-dialog-autoheight will be added using this Template Option).
 * Works for both inline dialogs and inline popups.
 */

init.dialogAutoHeight = function() {
    var dlg$ = $(".js-dialog-autoheight"),
        obs; // for disconnecting observer when resize.

    var setAutoHeight = function ( id ){
        var elem$       = $( id ),
            widget      = elem$.hasClass("js-regionPopup") ? "popup" : "dialog",

            // Store original position, which happens to be centered by default.
            originalPos = elem$[ widget ]( "option", "position" ),

            // a popup has a hidden title
            hTitle      = widget === "popup" ? 0 : elem$.prev().outerHeight(),
            hContent    = $( id + ' .t-DialogRegion-body').outerHeight(),
            hBottom     = elem$.find(".t-DialogRegion-buttons").outerHeight(),
            hTotal      = hTitle + hContent + hBottom,
            hWin        = $(window).height() - 48,
            newHeight   = hTotal > hWin ? hWin : hTotal;

        var hasMoved = function () {
            var opt = elem$[ widget ]( "option", "position" );
            return opt.my !== 'center';
        };

        // Prevent infinite loop in Firefox by checking if height is already auto
        // (Observer observes style attribute changes).
        if ( elem$[0].style.height === 'auto' ) {
            return;
        }

        if (!newHeight || newHeight === 0) {
            return;
        }

        elem$
            .css("height", 'auto')
            .parent()
            .css("height", newHeight);

        // center this dialog when it opens, if dialog is not moved by user.
        if ( !hasMoved() && originalPos) {
            elem$[ widget ]("option", "position", originalPos);
        }

        // Start observing for DOM changes.
        if (!obs) {
            obs = ut.observeModalSize(id, setAutoHeight);
        }

        // Stop observing if user resizes or closes dialog
        elem$.on( widget + "resizestart " + widget + "close", function() {
            if (obs !== null) {
                obs.disconnect();
                obs = null;
            }
        });
    };

    dlg$.on( "dialogopen popupopen", function() {
        setAutoHeight('#' + $(this).attr('id'));
    });
};

init.dialogResize = function() {
    function resizeDialog( dialog$ ) {
        var footerheight = dialog$.find( ".t-DialogRegion-buttons" ).height();
        dialog$.find(".t-DialogRegion-body").css( "bottom",  footerheight );
    }

    $( document.body )
        .on( "dialogopen dialogresizestop", ".t-DialogRegion", function() {
            resizeDialog($(this));
        });
};

// Supports "Floating" style form labels that shrinks or expand based on it's focus or value.
init.floatingLabels = function(){
    // todo: put create function getContainer to reuse the frequently called closest( CL_CONTAINER ).
    var CL_ACTIVE      = 'is-active',
        CL_DISABLED    = 'is-disabled',
        CL_REQUIRED    = 'is-required',
        CL_SHOW_LABEL  = 'js-show-label',
        CL_FLOAT       = '.t-Form-fieldContainer--floatingLabel',
        CL_CONTAINER   = '.t-Form-fieldContainer',
        CL_PRE         = ' .t-Form-itemText--pre',
        CL_HTML5_DATE  = '.apex-item-wrapper--date-picker-html5';

    var containers$ = $( CL_FLOAT );

    // Regular inputs and select lists
    var tags    = CL_FLOAT + ' .apex-item-text, ' +
                  CL_FLOAT + ' .apex-item-select, ' +
                  CL_FLOAT + ' .apex-item-textarea',

    // LOV and Calendar pickers are special and don't get focus like regular ones.
        lov_cal = CL_FLOAT + ' .apex-item-popup-lov, ' +
                  CL_FLOAT + ' .apex-item-datepicker';

    var needLabel = function( item$ ){
        return item$.val() ||
               item$.attr( 'placeholder' ) ||
               item$.children( 'option' ).first().text();
    };

    var shrink = function( elem$ ){
        elem$.closest( CL_CONTAINER ).addClass( CL_ACTIVE );
    };

    // move pre text before the label
    $( CL_FLOAT + CL_PRE ).each(function(){
        var preText$ = $( this ),
            field$ = preText$.closest( CL_CONTAINER );
        preText$.detach().prependTo( field$ );
    });

    containers$.each(function(){
        var cont$ = $( this );
        if ( cont$.find( 'span.apex-item-display-only' ).length > 0 ) {
            cont$.addClass( 'apex-item-wrapper--display-only' );
        }
    });

    $( tags )
        .on( 'focus change', function( e ) {
            var that$ = $( this );
            if ( !that$.val() ) {
                shrink( that$ );
            }
            else {
                if ( e.type === 'change' ) {
                    shrink( that$ );
                }
            }
        })
        .each(function(){  // Initialize all inputs on load
            var item$ = $( this ),
                label$ = item$.closest( CL_CONTAINER );

            if( needLabel( item$ ) ){
              label$.addClass( CL_SHOW_LABEL );
            } else {
              label$.removeClass( CL_SHOW_LABEL );
            }
            if( item$.is( ':disabled' ) ) {
                label$.addClass( CL_DISABLED );
            } else {
                label$.removeClass( CL_DISABLED );
            }
            if( item$.attr( 'required' ) ) {
                label$.addClass( CL_REQUIRED );
            }
        })
        .not( lov_cal )  // Exclude Calendar items to fix shrinking and expanding behavior.
        .on( 'blur', function() {
            var item$ = $( this ),
                label$ = item$.closest( CL_CONTAINER ).removeClass( CL_ACTIVE );
            if( needLabel( item$ ) ){
                label$.addClass( CL_SHOW_LABEL );
            } else {
                label$.removeClass( CL_SHOW_LABEL );
            }
        });

    $( lov_cal )
        .on( 'change', function() {
            var item$ = $( this ),
                label$ = item$.closest( CL_CONTAINER ).addClass( CL_SHOW_LABEL );
            if( !needLabel( item$ ) ){
                label$.removeClass( CL_SHOW_LABEL + ' ' + CL_ACTIVE );
            }
        })
        .each(function () {
            var that$ = $( this );
            // Always shrink the label of Date Picker (HTML5) item,
            // as it has shadow DOM as placehoder, which appears to overlap with input label.
            if ( !that$.closest( CL_CONTAINER ).hasClass( CL_HTML5_DATE ) ) {
                shrink( that$ );
            }
        });
};

init.handleScrollTop = function() {
    var pageTitle$ = ut.pageTitle$;

    if ( $( '.t-BreadcrumbRegion--compactTitle' ).length > 0 || $(".t-BreadcrumbRegion").length < 0 || pageTitle$.length < 0 || !$.trim( pageTitle$.html() ) ) {
        return;
    }
    var expandRecal = ut.resetHeaderOffset;

    var collapseRecal = function() {
        ut.resetHeaderOffset();
        $(".t-Body-info .apex-rds-container").css({
            "top": ut.getTitleHeight() + $(".t-Header").outerHeight()
        });
        // Sticky widgets can stick properly after header collapsing.
        $( window ).trigger( 'apexwindowresized' );
    };

    var shrinkCore = ToggleCore({
        content: pageTitle$,
        contentClassExpanded: "",
        contentClassCollapsed: "t-Body-title-shrink",
        useSessionStorage: false,
        defaultExpandedPreference: true,
        onExpand: expandRecal,
        onCollapse: collapseRecal
    });

    shrinkCore.initialize();

    var shrinkThreshold = function() {
        // The threshold for shrinkage, if expanded, is the tBodyInfo height or 400 pixels, if the height is less than 100.
        if ( shrinkCore.isExpanded() ) {
            var tBodyInfoHeight = $( ".t-Body-info" ).outerHeight() - 100;
            if (tBodyInfoHeight > 100) {
                return tBodyInfoHeight;
            }
            return 400;
        } else {
            return 0;
        }
    };
    var handlerId = null;
    var addTop = function() {
        var scrollTop = $( window ).scrollTop();
            handlerId = null;
        /* only shrink the breadcrumbs when on a large display,
           otherwise they are always displayed in compact styles */
        if ( ut.util.mq( '(min-width: 641px)' ) ) {
            var top = shrinkThreshold();
            if ( scrollTop <= top ) {
                shrinkCore.expand();
            } else if ( scrollTop > top ) {
                shrinkCore.collapse();
            }
        } else {
            shrinkCore.expand();
        }
    };
    $( window ).scroll( function() {
        if ( !handlerId ) {
            handlerId = apex.util.invokeAfterPaint( addTop );
        }
    } );

    /* finally handle breadcrumb auto shrink on page load */
    addTop();
};

init.hideShow = function() {
    $( ".t-Region--hideShow" ).each( function() {
        var collapsible$ = $( this );
        var useLocalStorage = collapsible$.hasClass("js-useLocalStorage");
        if ( !collapsible$.hasClass( "is-expanded" ) && !collapsible$.hasClass( "is-collapsed" ) ) {
            collapsible$.addClass( "is-expanded" );
        }
        collapsible$.collapsible({
            content: $( this ).find( ".t-Region-body" ).first(),
            collapsed: collapsible$.hasClass( "is-collapsed" ),
            rememberState: useLocalStorage
        });
    });
};

init.maximize = function() {
    var maximizeKey = 0;
    var current;
    var maximizableRegions$ =  $( ".js-showMaximizeButton" );
    var applyJqueryUiFocusableFix = function () {
        var focusable = function(element, isTabIndexNotNaN) {
            var nodeName = element.nodeName.toLowerCase();
            return ( /^(input|select|textarea|button|object)$/.test( nodeName ) ?
                    !element.disabled :
                    "a" === nodeName ?
                    element.href || isTabIndexNotNaN :
                        isTabIndexNotNaN) && $.expr.filters.visible( element );
        };
        $.extend($.expr[':'], {
            // jQuery UI core focusable and tabbable are broken. They return false on elements that have a parent which has
            // a "visibility: hidden" style applied on it. This is not true in any of the browsers we support:
            // a child element that has a "visibility: visible" style will still be shown even if one of its parents
            // has a "visibility: hidden" style.
            focusable: focusable,
            tabbable: function( element ) {
                var tabIndex = $.attr( element, "tabindex" ), isTabIndexNaN = isNaN( tabIndex );
                return ( isTabIndexNaN || tabIndex >= 0 ) && focusable( element, !isTabIndexNaN );
            }
        });
    };
    var hideAllExceptChildren = function( content$ ) {
        maximizableRegions$.css( "visibility", "hidden" );
        content$
            .css( "visibility", "visible" )
            .find (".js-showMaximizeButton" )
            .css( "visibility" , "visible" );
    };
    var makeCurrent = function( core, content$, top ) {
        var buildCurrent = function() {
            var tabbable$ = content$.find(":tabbable");
            return {
                "core": core,
                "content$": content$,
                "top": top,
                "first": tabbable$.first()[0],
                "last": tabbable$.last()[0]
            };
        };
        if ( !current ) {
            current = buildCurrent();
            ut.pageBody$.addClass( "js-regionIsMaximized" );
        } else {
            var old = current;
            current.next = buildCurrent();
            current = current.next;
            current.previous = old;
        }
        apex.theme.defaultStickyTop = top;
        hideAllExceptChildren( current.content$ );
    };
    if ( maximizableRegions$.length > 0) {
        applyJqueryUiFocusableFix();
    }
    maximizableRegions$.each(function() {
        var content$ = $( this );
        var isIRR = content$.hasClass( "t-IRR-region" );
        var fthOnResize;
        var injectButtonSelector = ".js-maximizeButtonContainer";
        if (isIRR) {
            injectButtonSelector = ".a-IRR-buttons";
            if ( content$.find( injectButtonSelector ).length <= 0 ) {
                content$.find( ".a-IRR-toolbar" ).append( "<div class='a-IRR-buttons'></div>" );
            }
        }
        var maximize$ = content$.find( injectButtonSelector ).first();
        var regionId = content$.attr( "id" );
        var maximizeButton$ =
            $('<button ' +
                'class="t-Button t-Button--noLabel t-Button--icon t-Button--iconOnly t-Button--noUI" ' +
                'aria-expanded="false"' +
                'aria-controls="' + regionId + '" type="button">' +
                '<span class="t-Icon a-Icon" aria-hidden="true"></span>' +
                '</button>');
        maximize$.append( maximizeButton$ );
        var switchToPrevious = function() {
            if (current) {
                if ( current.previous ) {
                    current.previous.next = null;
                    content$
                        .find(".js-stickyWidget-toggle")
                        .stickyWidget("forceScrollParent", content$.parents(".t-Region-bodyWrap").first());
                    hideAllExceptChildren( current.previous.content$ );
                    apex.theme.defaultStickyTop = current.previous.top;
                } else {
                    apex.theme.defaultStickyTop = ut.getFixedHeight;
                    $(".js-stickyWidget-toggle").stickyWidget( "forceScrollParent" , null);
                    ut.pageBody$.removeClass( "js-regionIsMaximized" );
                    maximizableRegions$.css("visibility", "visible");
                }
                $( window ).trigger( "apexwindowresized" );
                current = current.previous;
            }
        };
        var getCollapsible = function() {
            return content$.find( ".a-IRR-controlsContainer.a-Collapsible").first();
        };
        var resetIRRHeight = function( fthBody$ ) {
            content$.css("overflow", "auto");
            fthBody$.css("height", "auto");
        };
        var fthOnResizeDebouncer;
        var forceIRRHeight = function() {
            fthOnResize = function() {
                clearTimeout(fthOnResizeDebouncer); // Need to debounce this b
                var safeHeight = function(element$) {
                    return element$.length > 0 ? element$.outerHeight() : 0;
                };
                setTimeout(function() {
                    var fthBody$ = content$.find( ".t-fht-tbody" ); // Only used when fixed table headers is active on an IRR!!!
                    if (fthBody$.length > 0) {
                        content$.css("overflow", "hidden");
                        var head = safeHeight(content$.find(".t-fht-thead"));
                        var pagWrap = safeHeight(content$.find(".a-IRR-paginationWrap"));
                        var irrToolBar = safeHeight(content$.find(".a-IRR-toolbar"));
                        var controlsContainer = safeHeight(content$.find(".a-IRR-controlsContainer"));
                        if (ut.util.mq('(min-width: 769px)')) {
                            var height = $( window ).height();
                            fthBody$.css("height", height - irrToolBar - controlsContainer - pagWrap - head - 2);
                        } else {
                            resetIRRHeight(fthBody$);
                        }
                    }
                }, 200);
            };
            getCollapsible().on( "collapsibleexpand", fthOnResize ).on( "collapsiblecollapse", fthOnResize );
            $( window ).on( "apexwindowresized", fthOnResize );
        };
        var disableForcedIrrHeight = function() {
            if (current && isIRR && content$) {
                resetIRRHeight( content$.find(".t-fht-tbody") );
                $( window ).off("apexwindowresized", fthOnResize);
                getCollapsible().off( "collapsibleexpand", fthOnResize ).off( "collapsiblecollapse", fthOnResize );
            }
        };
        var forceResize = function() {
            $( window ).trigger("apexwindowresized")
                .trigger("resize"); // For plugins that are not hooked into the apexwindowresized debouncer.
        };
        var header$ = content$.find(".t-Region-header");
        var maximizeCore = ToggleCore({
            key: "maximize_" + ++maximizeKey,
            content: content$,
            contentClassExpanded: "is-maximized",
            useSessionStorage: false,
            defaultExpandedPreference: false,
            controllingElement: maximizeButton$,
            onExpand: function() {
                apex.navigation.beginFreezeScroll();
                maximizeButton$
                    .attr("title", apex.lang.getMessage("RESTORE"))
                    .attr("aria-label", apex.lang.getMessage("RESTORE"))
                    .attr("aria-expanded", true)
                    .find(".t-Icon").removeClass("icon-maximize").addClass("icon-restore");
                var top = function() {
                    var height = header$.outerHeight();
                    if ( !height ) {
                        return 0;
                    }
                    return height;
                };
                var scrollParent$;
                if ( isIRR ) {
                    scrollParent$ = content$;
                    forceIRRHeight();
                    content$.find(".container").first().hide();
                } else {
                    scrollParent$ = content$.find(".t-Region-bodyWrap").first();
                }
                content$
                    .find(".js-stickyWidget-toggle")
                    .stickyWidget("forceScrollParent", scrollParent$);
                forceResize();
                makeCurrent( maximizeCore, content$, top );
            },
            onCollapse: function() {
                // This presumes that any collapse is always the active one!
                // We can get away with this because the maximized regions are structured to overlay on top of each other
                // completely.
                apex.navigation.endFreezeScroll();
                maximizeButton$
                    .attr("title", apex.lang.getMessage("MAXIMIZE"))
                    .attr("aria-label", apex.lang.getMessage("MAXIMIZE"))
                    .attr("aria-expanded", false)
                    .find(".t-Icon").addClass("icon-maximize").removeClass("icon-restore");
                disableForcedIrrHeight();
                if ( isIRR ) {
                    content$.find(".container").first().show();
                }
                forceResize();
                switchToPrevious();

            }
        });
        maximizeCore.initialize();
    });
    $( document ).on("keydown", function(event) {
        if ( current) {
            if ( event.which === $.ui.keyCode.ESCAPE ) {
                current.core.collapse();
                event.preventDefault();
                return false;
            } else if ( event.which === $.ui.keyCode.TAB ) {
                if ( event.shiftKey && event.target === current.first ) {
                    event.preventDefault();
                    current.first.focus();
                } else if ( !event.shiftKey ) {
                    if (current.last === event.target) {
                        event.preventDefault();
                        current.last.focus();
                    }
                }
            }
        }
    });
};

init.treeNav = function() {
    var ignoreActivateTreeStart = true;
    var treeNav$ = ut.treeNav$;
    if ( treeNav$.length === 0 ) {
        return;
    }
    treeNav$.treeView({
        showRoot: false,
        iconType: "fa",
        useLinks: true,
        navigation: true,
        autoCollapse: true
    });
    treeNav$.treeView( "getSelection" )
        .parents()
        .children(".a-TreeView-content")
        .addClass("is-current");
    treeNav$.treeView( "getSelection" )
        .parents( ".a-TreeView-node--topLevel").children(".a-TreeView-content, .a-TreeView-row" )
        .removeClass("is-current")
        .addClass("is-current--top");
    $( ".t-TreeNav .a-TreeView-node--topLevel > .a-TreeView-content" ).each(function() {
        if ($(this).find( ".fa" ).length <= 0) {
            $(this).prepend( '<span class="fa fa-file-o"></span>' );
        }
    });
    ut.renderBadges(  $(".a-TreeView-label"), 'a-TreeView-badge' );
    // Since the tree is lazily loaded, the badges needed to be rendered on expansion.
    treeNav$.on("treeviewexpansionstatechange", function(jqueryEvent, treeViewEvent) {
        if (treeViewEvent.expanded) {
            ut.renderBadges( treeViewEvent.nodeContent$.parent().find( ".a-TreeView-label" ), 'a-TreeView-badge' );
        }
    });
};

ut.pages.masterDetail = {
    "onTheme42Ready": function() {
        var rds$ = $( ".t-Body-info .apex-rds" );
        rds$.on( "tabschange" , function ( activeTab, mode ) {
            if (mode !== 'jump') {
                $(".t-StatusList-blockHeader,.js-stickyTableHeader").trigger( "forceresize" );
            }
        });
        ut.sticky( ".t-Body-contentInner .t-StatusList .t-StatusList-blockHeader" );
        $(".t-Body-contentInner .t-Report-tableWrap").setTableHeadersAsFixed();
        ut.sticky( ".js-stickyTableHeader" );

        rds$.aTabs( "option", "showAllScrollOffset" , function() {
            /* when on mobile screens, handle offset differently than desktop */
            var rdsOffset = ut.util.mq('(min-width: 641px)') ? rds$.outerHeight() : 0,
                tHeight = $( "#t_Body_info" ).outerHeight() - rdsOffset;

            if ($( window ).scrollTop() > tHeight) {
                return tHeight;
            }
            return false;
        });

        /* initialize stickty RDS */
        init.rdsSticky();
    }
};

// Comment to explain what T_MODAL_BODY is
ut.pages.modalDialog = {
    "onTheme42Ready": function() {
        ut.modalAutoSize(ut.T_MODAL_BODY);
    }
};

// Comment to explain what T_MODAL_BODY is
ut.pages.wizardModal = {
    "onReady": function() {
        ut.modalAutoSize(ut.T_MODAL_BODY);
    }
};
}( apex.theme42, apex.theme42.init, apex.jQuery ));