/*!
 * Copyright (c) 2012, 2024, Oracle and/or its affiliates. All rights reserved.
 */

/* global $u_js_temp_drop */

/*
 * The report namespace is used to store functions used by reports and tabular forms in Oracle APEX.
 */

/**
 * @namespace apex.widget.report
 **/

apex.widget.report = {};

( function( region, report, server, $, actions, navigation, item ) {
    "use strict";

    // Initialise global maps used to store report information. Maps are used to support > 1 report per page.
    report.gRowActive           = {};
    report.gStyleMouseOver      = {};
    report.gStyleChecked        = {};
    report.gPageItemsToSubmit   = {};

    var gAjaxIdentifiers = {};

    /**
     * FOR INTERNAL USE ONLY!!!
     *
     * Function to handle initialisation of classic report regions. Also called by tabular form initialisation
     *
     * @param {String} pRegionId        The main region ID (either Static ID or 'R' + Internal region ID if no Static)
     * @param {Object} pOptions         Following options are supported:
     *                                  - "internalRegionId"    Internal ID for the region.
     *                                  - "styleMouseOver"      Background color applied for current row (Optional).
     *                                  - "styleChecked"        Background color applied for checked row. Defaults to
     *                                                          #dddddd in engine if null in report template.
     *                                  - "pageItems"           To set page item values in session state, during an Ajax
     *                                                          call (Optional).
     *                                  - "lazyLoading"         Defer the loading of the report data until the region
     *                                                          becomes visible. This can speed up the display of pages
     *                                                          since the data is not loaded until after the page has
     *                                                          been rendered.
     *
     *
     *
     * @private
     * @memberOf apex.widget.report
     */
    report.init = function( pRegionId, pAjaxIdentifier, pOptions ) {

        // Internal region ID used frequently and as the index to the global arrays for a particular report
        const lInternalRegionId = pOptions.internalRegionId,
              report$ = $( "#" + apex.util.escapeCSS( pRegionId ), apex.gPageContext$ );

        let lContext,
            lActionContext;

        apex.util.setPCTGraphStyles();

        // memorize AJAX identifier for the report region. This is needed by the "sort" function to work
        // without the AJAX identifier being passed in.
        gAjaxIdentifiers[ lInternalRegionId ] = pAjaxIdentifier;

        // Initialise namespace globals
        if ( pOptions.pageItems !== undefined ) {
            report.gPageItemsToSubmit[ lInternalRegionId ] = pOptions.pageItems;
        }

        /* Get all descendants of report region, with a class of "highlight-row",
         * and set their corresponding gRowActive array value to N.
         */
        report.gRowActive[ lInternalRegionId ]      = [];
        report.gStyleChecked[ lInternalRegionId ]   = pOptions.styleChecked;
        $( "#report_" + pRegionId + " .highlight-row", apex.gPageContext$ ).each( function ( i ) {
            report.gRowActive[ lInternalRegionId ][ i ] = 'N';
        });
        // If we have a mouse over style, register the event handling hover code.
        if ( pOptions.styleMouseOver !== undefined ) {
            report.gStyleMouseOver[ lInternalRegionId ] = pOptions.styleMouseOver;

            // Register hover event code to deal with row highlighting
            $( "#" + pRegionId, apex.gPageContext$ ).on( "hover", "#report_" + pRegionId + " .highlight-row", function ( pEvent ) {
                if ( pEvent.type === "mouseenter" ) {
                    $( this )
                        .closest( "tr" )
                        .children( "td" )
                        .css( "background-color", report.gStyleMouseOver[ lInternalRegionId ]);
                } else if (pEvent.type === "mouseleave" ) {

                    // This check will only ever evaluate to true for tabular forms with a checked row
                    if ( report.gRowActive[ lInternalRegionId ][ $( "#report_" + pRegionId + " .highlight-row", apex.gPageContext$ ).index( this ) ] === "Y" ) {
                        $( this )
                            .closest( "tr" )
                            .children( "td" )
                            .css( "background-color", report.gStyleChecked[ lInternalRegionId ] );
                    } else {
                        $( this )
                            .closest( "tr" )
                            .children( "td" )
                            .css( "background-color", "" );
                    }
                }
            });
        }


        // Only proceed if an element with the given ID is actually found on the page
        // Legacy themes may have templates missing the ID. See #34064688
        if ( report$.length ) {
            // if we're lazy, refresh when we become visible
            if ( pOptions.lazyLoading ) {
                apex.widget.util.whenBecomesVisible( report$, function( ) {
                    report.reset( lInternalRegionId, pAjaxIdentifier );
                });
            }

            // Add WAI-ARIA 'aria-live' attribute, to signal the region as a 'live' region,
            // such that screen reader users will be informed when PPR takes place (sort, paginate,
            // refresh).
            report$.attr( "aria-live", "polite" );

            region.create( pRegionId, {
                type: "ClassicReport",
                filterRegionId: pOptions.filterRegionId,
                refresh: () => {
                    return report.reset( lInternalRegionId, pAjaxIdentifier );
                }
            } );

            // Register 'Refresh' event for current report, ready to be triggered
            // by a 'Refresh' dynamic action, or manually in JS via the apexrefresh event.
            report$.on( "apexrefresh", () => {
                region( pRegionId ).refresh();
            } );

            lContext = report$[ 0 ];

        } else {
            // lReport$ doesn't exist

            // Use an alternative context
            // find the outer element that is part of PPR and use its parent (bug 37195161)
            lContext = $( `#report_${ apex.util.escapeCSS( lInternalRegionId ) }_catch` ).parent()[ 0 ];

        }

        lActionContext = actions.createContext( "ClassicReport", lContext, pRegionId );

        lActionContext.add([
            {
                name: "sort",
                action: function( event, focusElement, args ) {
                    report.sort( event.target, pAjaxIdentifier, args.by );
                }
            },
            {
                name: "paginate",
                choices: [],
                action: function( event, focusElement, args ) {
                    let lData;
                    if ( args ) {
                        lData = {
                            min: args.min,
                            max: args.max,
                            fetched: args.fetched
                        };
                    } else {
                        // Data must be coming from a select list
                        lData = $( event.target ).val();

                        // if PPR is enabled, it's JSON, else it's a URL
                        try {
                            lData = JSON.parse( lData );
                        } catch ( error ) {
                            return navigation.redirect( lData );
                        }
                    }
                    if ( lData ) {
                        report.paginate( lInternalRegionId, pAjaxIdentifier, lData );
                    }
                }
            },
            {
                name: "download",
                action: function( event, focusElement, args ) {
                    let lOptions = {
                        p_widget_action: args.widgetAction,
                        pageItems: pOptions.pageItems
                    };

                    if ( args.formatItem ) {
                        lOptions.x01 = item( args.formatItem ).getValue();
                    }

                    navigation.redirect(server.pluginUrl(
                        pAjaxIdentifier,
                        lOptions ), args.ignoreUnsavedChanges );
                }
            }
        ]);

        $('[data-col-width]', report$).each(function() {
            let colWidth = $(this).attr('data-col-width');
            $(this).css('inline-size', colWidth);
        });
    };


    /**
     * FOR INTERNAL USE ONLY!!!
     *
     * Function that resets a classic report via Ajax
     *
     * @example
     *
     * report.reset ( "region_id" );
     *
     * @private
     * @memberOf apex.widget.report
     */

    report.reset = function ( pId, pAjaxIdentifier ) {
        var lData = {};

        // Set reset specific data attributes
        lData.p_widget_action   = "reset";

        return _refresh( pId, pAjaxIdentifier, lData );
    };


    /**
     * FOR INTERNAL USE ONLY!!!
     *
     * Function to handle classic report sorting, via Ajax
     *
     * @param {Object} pThis            calling object
     * @param {String} pSortData        Simple sorting value eg "fsp_sort_1" or "fsp_sort_1_desc"
     *
     * @example
     *
     * report.sort ( this, "fsp_sort_1" );
     *
     * @private
     * @memberOf apex.widget.report
     */

    report.sort = function ( pThis, pAjaxIdentifier, pSortData ) {
        let lData = {},
            lAjaxIdentifier = pAjaxIdentifier;

        const anchorID = pThis.id,
              // get id of the report from sort link id
              reportID = anchorID.substring( 1, anchorID.lastIndexOf( '_' ) );

        if ( !lAjaxIdentifier || lAjaxIdentifier === "" || lAjaxIdentifier === null ) {
            lAjaxIdentifier = gAjaxIdentifiers[ reportID ];
        }

        // Set additional data attributes for the widget action and sort data
        lData.p_widget_action       = "sort";
        lData.p_widget_action_mod   = pSortData;
        lData.p_clear_cache         = "RP";
        lData.p_fsp_region_id       = reportID;
        lData.p_focus_element_sel   = "#" + anchorID;

        _refresh( reportID, lAjaxIdentifier, lData );
    };


    /**
     * FOR INTERNAL USE ONLY!!!
     *
     * Function to handle classic report pagination, via Ajax.
     *
     * @param {String} pId              The region ID
     * @param {Object} pPaginationData  Object used to set pagination attributes, supports the following:
     *                                  - "min"         First row to display
     *                                  - "max"         Rows per page
     *                                  - "fetched"     Rows fetched
     *                                  Note: Also accepts an object in the above format, but as a string. This is
     *                                  required by pagination schemes that use a select list, where the pagination data
     *                                  is stored as the select list option value.
     *
     * @example
     *
     * report.paginate ( "region_id", {
     *     min   : 1,
     *     max   : 5,
     *     fetch : 5
     *     }
     * );
     *
     * @private
     * @memberOf apex.widget.report
     */

    report.paginate = function ( pId, pAjaxIdentifier, pPaginationData ) {
        var lData = pPaginationData;

        // First deal with when the pagination data has come from a select list based pagination scheme
        if ( typeof lData === "string" ) {

            /* In case the "current" displayed paginated set is somehow selected, we just exit the function,
             * otherwise we evaluate to get a JavaScript object in the format {min:x,max:x,fetched:x}. */
            if ( lData !== "current" ) {
                lData = apex.jQuery.parseJSON( lData );
            } else {
                return;
            }
        }

        // Set additional data attributes for the widget action and pagination data
        lData.p_widget_action   = "paginate";
        lData.p_pg_min_row      = lData.min;
        lData.p_pg_max_rows     = lData.max;
        lData.p_pg_rows_fetched = lData.fetched;

        // Remove data that doesn't need to transmitted
        delete lData.min;
        delete lData.max;
        delete lData.fetched;

        _refresh( pId, pAjaxIdentifier, lData );
    };

    /**
     * @TODO add documentation
     */
    function _refresh ( pId, pAjaxIdentifier, pData ) {
        var lData       = pData || {},
            lOptions    = {};

        // register callback for success
        function _success( pResponse ) {
            // This looks a little bit complicated and it is! To avoid screen flicker
            // when the HTML code is inserted into the DOM and JavaScript code modifies the
            // code afterwards (which takes some time), we are injecting the HTML code in
            // a temporary hidden area and do all our modifications and after that we
            // are replacing the existing report_xxx_catch with the new version.
            var lTemp = $u_js_temp_drop();
            $( "#report_" + pId + "_catch", apex.gPageContext$ ).attr( "id", "report_" + pId + "_catch_old" );
            $( lTemp ).html( pResponse );
            $( "#report_" + pId + "_catch_old", apex.gPageContext$ ).replaceWith( $( "#report_" + pId + "_catch", apex.gPageContext$ ) );
            $( lTemp ).empty();

            // after refresh set the focus to the header that triggers refresh for sort
            if ( pData.p_focus_element_sel ) {
                $( pData.p_focus_element_sel ).trigger( "focus" );
            }

            // Note: No need to trigger after refresh event here, handled by base server.widget call.
        }

        // Pass region ID via x01 parameter
        lData.x01 = pId;

        // Set the components page items to submit, if they are defined
        if ( report.gPageItemsToSubmit[ pId ] !== undefined ) {
            lData.pageItems = report.gPageItemsToSubmit[ pId ];
        }

        // Register success callback
        lOptions.success = _success;

        // TODO Add support for an appropriate loading indicator

        // Set HTML data type, that's what we want here
        lOptions.dataType = "html";

        // Set the refreshObject so that server.widget triggers the before and after refresh events
        // refreshObject is set to the table element with the ID equal to "report_" + pID + "_catch".
        // This element is not exposed in any templates and output by our engine, so is safe to
        // use.
        // Event handlers can be bound to this element in conjunction with the jQuery "live"
        // bind type, or can be bound to higher element (such as the main region ID) and use
        // the regular bind type. The latter works because the event bubbles and is how this
        // is handled within the dynamic action framework.
        lOptions.refreshObject            = "#report_" + apex.util.escapeCSS( pId ) + "_catch";

        // Set refresh data to region ID, for convenience
        lOptions.refreshObjectData = pId;

        // Show loading indicator
        lOptions.loadingIndicator         = lOptions.refreshObject;
        lOptions.loadingIndicatorPosition = "centered";

        return server.plugin ( pAjaxIdentifier, lData, lOptions );
    }

})( apex.region, apex.widget.report, apex.server, apex.jQuery, apex.actions, apex.navigation, apex.item );
