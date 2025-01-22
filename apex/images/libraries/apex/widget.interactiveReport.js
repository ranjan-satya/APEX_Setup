/*!
 Copyright (c) 2014, 2024, Oracle and/or its affiliates.
 */

/**
 * @fileOverview
 * A jQuery UI widget for the Interactive Report component of APEX
 *
 * Depends:
 *    jquery.ui.core.js
 *    jquery.ui.widget.js
 *    apex/util.js
 *    apex/region.js
 *    apex/debug.js
 *    apex/server.js
 *    apex/navigation.js
 *    apex/lang.js
 *
 */

/* global $x_Show,$x_Hide,$x_Show_Hide,$f_get_emptys,html_ReturnToTextSelection,$u_js_temp_drop,$d_Find,dhtml_ShuttleObject */

(function ( $, util, debug, server, navigation, lang, theme, message, date ) {
    "use strict";
    let scrollYPosition = null,
        regionScrollYPositions = {};

    function getMsg( pKey ) {
        return lang.getMessage( pKey );
    }
    function getIRMsg( pKey ) {
        return lang.getMessage( "APEXIR_" + pKey );
    }
    function formatNoEscape( pKey ) {
        var pattern = getIRMsg( pKey ),
            args = [ pattern ].concat( Array.prototype.slice.call( arguments, 1 ));
        return lang.formatNoEscape.apply( this, args );
    }
    function getIdSelector( pDomId ) {
        return "#" + util.escapeCSS( pDomId );
    }

    var C_IRR                           = "a-IRR",
        C_IRR_DIALOG                    = C_IRR + "-dialog",
        C_IRR_SORT_WIDGET               = C_IRR + "-sortWidget",
        C_IRR_SORT_WIDGET_BUTTON        = C_IRR_SORT_WIDGET + "-button",
        SEL_IRR_SORT_WIDGET_BUTTON      = "button." + C_IRR_SORT_WIDGET_BUTTON,
        C_IRR_GROUP_BY_COLUMN           = C_IRR + "-group-by-column",
        C_IRR_ADD_FUNCTION              = C_IRR + "-add-function",
        C_IRR_FUNCTION                  = C_IRR + "-function",
        C_IRR_FUNCTION_COL              = C_IRR + "-function-col",
        C_IRR_SEQ_NUM                   = C_IRR + "-sequenceNumber",
        C_IRR_FUNCTION_NUM_COL          = C_IRR + "-function-num-col",
        C_IRR_FUNCTION_ROW              = C_IRR + "-function-row-",
        C_IRR_PIVOT_COLUMN              = C_IRR + "-pivot-column",
        C_IRR_ROW_COLUMN                = C_IRR + "-row-column",
        C_IRR_COL_VALUE                 = C_IRR + "-col-value",
        C_IRR_SINGLE_ROW_GROUP          = C_IRR + "-singleRow-group",
        C_UI_BUTTON_HOT                 = "ui-button--hot",
        C_IS_ACTIVE                     = "is-active",
        C_JS_NO_PIE                     = "js-no-pie",
        C_SWITCH                        = "a-Switch",
        C_SCROLLABLE_REGION             = ".t-fht-tbody",
        // constants
        REPORT                  = "REPORT",
        ICON                    = "ICON",
        DETAIL                  = "DETAIL",
        GROUP_BY                = "GROUP_BY",
        PIVOT                   = "PIVOT",
        CHART                   = "CHART",
        SHOW_COLUMN             = "SHOW_COLUMN",
        SHOW_FILTER             = "SHOW_FILTER",
        SHOW_HIGHLIGHT          = "SHOW_HIGHLIGHT",
        SHOW_ORDERING           = "SHOW_ORDERING",
        SHOW_CTRL_BREAK         = "SHOW_CTRL_BREAK",
        SHOW_COMPUTATION        = "SHOW_COMPUTATION",
        SHOW_AGGREGATE          = "SHOW_AGGREGATE",
        SHOW_CHART              = "SHOW_CHART",
        SHOW_GROUP_BY           = "SHOW_GROUP_BY",
        SHOW_GROUP_BY_SORT      = "SHOW_GROUP_BY_SORT",
        SHOW_PIVOT              = "SHOW_PIVOT",
        SHOW_PIVOT_SORT         = "SHOW_PIVOT_SORT",
        SHOW_FLASHBACK          = "SHOW_FLASHBACK",
        SHOW_RENAME             = "SHOW_RENAME",
        SHOW_DELETE             = "SHOW_DELETE",
        SHOW_SAVE_DEFAULT       = "SHOW_SAVE_DEFAULT",
        SHOW_RENAME_DEFAULT     = "SHOW_RENAME_DEFAULT",
        SHOW_DELETE_DEFAULT     = "SHOW_DELETE_DEFAULT",
        SHOW_RESET              = "SHOW_RESET",
        SHOW_DOWNLOAD           = "SHOW_DOWNLOAD",
        SHOW_NOTIFY             = "SHOW_NOTIFY",
        SAVE_REPORT             = "SAVE_REPORT",
        ACTION                  = "action",
        ASC                     = "ASC",
        DESC                    = "DESC",
        DIALOG_JS_ID            = "dialog_js",
        CHECKED                 = "checked",
        PAGE                    = "PAGE",
        REGION                  = "REGION",
        ATTACHMENT              = "ATTACHMENT",
        MSG = {
        BUTTON: {
            CANCEL      : getIRMsg( "CANCEL" ),
            DELETE      : getIRMsg( "DELETE" ),
            APPLY       : getIRMsg( "APPLY" ),
            SEND        : getIRMsg( "SEND" ),
            DOWNLOAD    : getIRMsg( "DOWNLOAD" )
        },
        DIALOG_TITLE: {
            SELECT_COLUMNS       : getIRMsg( "SELECT_COLUMNS" ),
            FILTER               : getIRMsg( "FILTER" ),
            HIGHLIGHT            : getIRMsg( "HIGHLIGHT" ),
            SORT                 : getIRMsg( "SORT" ),
            CONTROL_BREAK        : getIRMsg( "CONTROL_BREAK" ),
            COMPUTATION          : getIRMsg( "COMPUTE" ),
            AGGREGATE            : getIRMsg( "AGGREGATE" ),
            CHART                : getIRMsg( "CHART" ),
            GROUP_BY             : getIRMsg( "GROUP_BY" ),
            GROUP_BY_SORT        : getIRMsg( "GROUP_BY_SORT" ),
            PIVOT                : getIRMsg( "PIVOT" ),
            PIVOT_SORT           : getIRMsg( "PIVOT_SORT" ),
            FLASHBACK            : getIRMsg( "FLASHBACK" ),
            SAVE_REPORT          : getIRMsg( "SAVE_REPORT" ),
            RENAME_REPORT        : getIRMsg( "RENAME_REPORT" ),
            DELETE_REPORT        : getIRMsg( "DELETE_REPORT" ),
            SAVE_DEFAULT_REPORT  : getIRMsg( "SAVE_DEFAULT_REPORT" ),
            RENAME_DEFAULT_REPORT: getIRMsg( "RENAME_DEFAULT_REPORT" ),
            DELETE_DEFAULT_REPORT: getIRMsg( "DELETE_DEFAULT_REPORT" ),
            RESET                : getIRMsg( "RESET" ),
            DOWNLOAD             : getIRMsg( "DOWNLOAD" ),
            SUBSCRIPTION         : getIRMsg( "SUBSCRIPTION" )
        }
    };

    /*
     * Allow column header popup to work in jQuery UI dialogs
     */
        var dialogMixin = {
            _allowInteraction: function ( event ) {
                return $( event.target ).closest( "." + C_IRR_SORT_WIDGET ).length > 0 || this._super( event );
            }
        };

        if ( $.ui.dialog ) {
            $.widget( "ui.dialog", $.ui.dialog, dialogMixin );
            $.widget( "apex.popup", $.apex.popup, dialogMixin );
        }

    //ARIA attributes
    const
        ARIA_PRESSED ="aria-pressed",
        ARIA_LABEL = "aria-label",
        ARIA_DESCRIBEDBY = "aria-describedby",
        ARIA_DETAILS = "aria-details",
        ARIA_CONTROLS = "aria-controls";

    $.widget( "apex.interactiveReport", {
        widgetEventPrefix:              "interactivereport",
        lastFunction:                   null,       // hook to fire a callback after the Ajax call has finished
        idPrefix:                       null,
        currentColumnId:                null,       // used by column header
        lastColumnId:                   null,       //
        computationId:                  null,       // stores the computation ID, when the column header sort widget is opened for a computation column
        reportId:                       null,       // current report ID
        worksheetId:                    null,       // worksheet ID
        region$:                        null,       // jQuery object containing main region static ID element, used by the refresh mechanism
        dialogDrop$:                    null,       // jQuery object containing the DIV used to drop the dialog
        tempReturnElement$:             null,       // jQuery object containing temporary return element used by narrow...
        viewMode:                       REPORT,     // Current report type (REPORT, CHART, GROUP_BY, PIVOT, etc.)
        options: {
            regionId:                   null,
            ajaxIdentifier:             null,       // The Ajax Identifier used to identify the Ajax call to the region
            toolbar:                    true,       // toolbar enabled (search field, actions menu, view buttons, etc., called 'Search Bar' in UI)
            searchField:                true,       // toolbar - search field
            columnSearch:               true,       // toolbar - column-specific search menu ( 'Finder Drop Down' in UI )
            rowsPerPageSelect:          false,      // toolbar - row select list
            reportsSelect:              true,       // toolbar - saved reports select list
            actionsMenu:                true,       // toolbar - actions menu enable
            reportViewMode:             REPORT,     // toolbar - For REPORT viewMode, there are 3 sub-options (REPORT, ICON and DETAIL)
            selectColumns:              true,       // toolbar - actions menu - select columns option
            filter:                     true,
            rowsPerPage:                true,       // toolbar - actions menu - row selection
            currentRowsPerPage:         50,         // current visible rows per page
            maxRowsPerPage:             null,       // maximum number to display in the rows per page selector
            maxRowCount:                null,       // maximum number of rows processed by query on server
            sort:                       true,       // defines whether end users can define sort columns for this report
            controlBreak:               true,       // defines whether end users can define control breaks for this report
            highlight:                  true,       // defines whether end users can define highlights for this report
            compute:                    true,       // defines whether end users can define computational columns for this report
            aggregate:                  true,       // defines whether end users can define aggregates for this report
            chart:                      true,       // defines whether end users can define charts for this report
            groupBy:                    true,       // defines whether end users can define group by break-downs for this report
            pivot:                      true,       // defines whether end users can define pivot break-downs for this report
            flashback:                  true,       // defines whether end users can utilize flashback queries for this report
            saveReport:                 true,       // defines whether end users can save their current report definition
            saveDefaultReport:          false,      // defines whether developers can save default reports
            reset:                      true,       // defines whether end users can reset their reports from the Actions menu
            help:                       true,       // defines whether end users can invoke the built-in help modal dialog for interactive reports
            helpLink:                   "",         // server generated help link, required if option help = true
            download:                   true,       // defines whether end users can download the report to one of the download formats specified
            downloadContentDisposition: ATTACHMENT, // defines the content-disposition for the download
            subscription:               true,       // defines whether end users can define subscription settings for this report
            pagination:                 true,       // Does the IR have pagination enabled ( this does distinguish if pagination is currently shown, or the specific pagination type )
            detailLink:                 false,      // Single row view currently available
            isControlPanelCollapsed:    false,      // Control panel collapsed state
            fixedHeader:                PAGE,       // Report has fixed headers
            fixedHeaderMaxHeight:       null,       // When fixedHeader is "REGION", we need a maximum height
            pageItems:                  null,       // page items to submit
            actionsMenuStructure:       "IG",       // Use the updated Actions menu structure that is consistent with the Interactive Grid Actions menu
            lazyLoading:                false,      // Is Lazy Loading enabled so that the report doesn't load data until it becomes visible
            // callbacks/events
            beforeRefresh:              null,       // maybe we don't need these here, just available by virtue of the _trigger calls in the code?
            afterRefresh:               null
        },

        /*
         * Lifecycle methods
         */
        _create: function () {

            var lRegionId   = this.options.regionId,
                self        = this,
                lRegion$    = $( getIdSelector( lRegionId ), apex.gPageContext$ ),
                lIr$        = $( getIdSelector( lRegionId + "_ir" ), apex.gPageContext$ );

            // If there is no region container, add one on the fly (necessary for our refresh mechanism).
            if( lRegion$.length === 0 ) {
                lRegion$ = lIr$.wrap( '<div id="' + lRegionId + '"></div>' );
            }

            this.idPrefix = ( this.options.regionId );
            this.reportId = this._getElement( "report_id" ).val();
            this.worksheetId = this._getElement( "worksheet_id" ).val();
            this.viewMode = this._getElement( "view_mode" ).val();
            this.region$ = lRegion$;
            this.dialogDrop$ =  this._getElement( DIALOG_JS_ID );
            this.needsLazyLoading = false;

            this._getElement( "worksheet_region" ).addClass( C_IRR );

            this._initOnCreate();
            this._on( this.region$, {
                "apexrefresh": function( event ) {
                    this._search();
                    event.stopPropagation();
                }
            } );

            // menu needs an init call after they where rendered
            // todo we need to have such a button as web component that handles
            // the create and destroy of the menu when it connect/disconnects
            const transformMenuButtons = ( pContext ) => {
                const irContent$ = $( pContext ).find( ".a-IRR-table" );

                $( "button[data-menu^='tc_menu_a']", irContent$ ).each( function() {
                    const menuId = util.escapeCSS( this.getAttribute( "data-menu" ) );

                    $( `div.a-Menu[id=${ menuId }]` ).remove();
                    $( `#${ menuId }` ).menu();
                } );
            };

            transformMenuButtons( lIr$ );

            $( this.region$ ).on( "apexafterrefresh", function() {
                if ( scrollYPosition ) {
                    window.scrollTo(0, scrollYPosition);
                    scrollYPosition = null;
                }
                if ( Object.keys(regionScrollYPositions).length > 0 ){
                    for ( const regPos in regionScrollYPositions ) {
                        if ( Object.prototype.hasOwnProperty.call( regionScrollYPositions, regPos ) ) {
                            $( $( C_SCROLLABLE_REGION )[ regPos ] ).scrollTop( regionScrollYPositions[ regPos ] );
                        }
                    }
                    regionScrollYPositions = {};
                }
                transformMenuButtons( lIr$ );
            } );

            // Register IG with our region interface
            apex.region.create( lRegionId, {
                type: "InteractiveReport",
                refresh: function( pKeepPagination = false ) {
                    if ( pKeepPagination ) {
                        scrollYPosition = window.scrollY;
                        for ( const regPos in $( C_SCROLLABLE_REGION ) ) {
                            if ( Object.prototype.hasOwnProperty.call( $( C_SCROLLABLE_REGION ), regPos )
                                 && $( $( C_SCROLLABLE_REGION )[ regPos ] ).scrollTop() > 0 ) {
                                regionScrollYPositions[ regPos ] = $( $( C_SCROLLABLE_REGION )[ regPos ] ).scrollTop();
                            }
                        }
                    }
                    self.refresh( {pKeepPagination} );
                },
                // todo consider a focus method
                widget: function() {
                    return self.element;
                }
            } );

            // if we're lazy, make the toolbar invisible, remember that we still need to be loaded
            // (see onVisibilityChange in _initCreate and making the toolbar re-visible in _finishedLoading)
            if ( this.options.lazyLoading ) {
                this.needsLazyLoading = true;

                // If, after all the init processing has completed, we find that we're already visible, refresh immediately
                setTimeout(() => {
                    if ( apex.widget.util.isVisible( lRegion$ ) ) {
                        self.needsLazyLoading = false;
                        self.refresh();
                    }
                },0);
            }
        },
        _destroy: function() {
            this._getElement( "worksheet_region" ).removeClass( C_IRR );
            apex.region.destroy( this.options.regionId );
        },
        _setOption: function( key, value ) {
            this._super( key, value );
        },


        /*
         * Private functions
         */

        /**
         * The basic AJAX call for ACTIONs for the IR, just a wrapper around _get
         *
         * @function _action
         * */
        _action: function( pAction, pData ) {
            var lData = $.extend( {
                widgetMod:      "ACTION",
                widgetAction:   pAction
            }, pData );
            this._get( lData );
        },

        /**
         * Delete an Aggregation
         */
        _aggregateClear: function( pAggregate ) {
            this._action( "DELETE_AGGREGATE", {
                id: pAggregate
            });
        },
        /**
         * Controls any adjustments needed when displaying aggregate control
         */
        _aggregateControl: function() {
            var lAggregateBy = this._getDialogElement( "aggregate_by" ).val(),
                lIsAllColumns = ( $.inArray( lAggregateBy, [ "COUNT", "COUNT_DISTINCT" ] ) !== -1 );
            this._getDialogElement( "all_columns_container" ).toggle( lIsAllColumns );
            this._getDialogElement( "number_columns_container" ).toggle( !lIsAllColumns );
        },
        /**
         * Save an aggregate on report
         */
        _aggregateSave: function() {
            var lColumn,
                lAggregateBy = this._getDialogElement( "aggregate_by" ).val(),
                lAggregation = this._getDialogElement( "aggregation" ).val();
            if ( $.inArray( lAggregateBy, [ "COUNT", "COUNT_DISTINCT" ] ) !== -1 ) {
                lColumn = this._getDialogElement( "all_columns" ).val();
            } else {
                lColumn = this._getDialogElement( "number_columns" ).val();
            }
            this._action( "SAVE_AGGREGATE", {
                id:     lAggregation,
                value:  lAggregateBy,
                x05:    lColumn
            });
        },

        /**
         * @namespace
         */
        _chartClear: function() {
            this.options.reportViewMode = REPORT;
            this._action( "DELETE_CHART" );
        },
        /**
         * Toggles the chart attributes that are not required for pie charts
         *
         * @function _chartControl
         * */
        _chartControl: function() {
            var chartControls$ = $( ".a-IRR-dialogCol." + C_JS_NO_PIE, this._getElement( DIALOG_JS_ID ) ).find( "input, select" );
            if ( this._getDialogElement( "chart_type_2" ).prop( CHECKED ) ) {
                chartControls$.prop("disabled",true);
                chartControls$.filter("input").val("");
                chartControls$.addClass('is-disabled');
            } else {
                chartControls$.prop("disabled",false);
                chartControls$.removeClass('is-disabled');
            }
        },
        /**
         * calls SAVE_CHART action with the items posted to the f01 array in the order listed
         * @function
         */
        _chartSave: function() {
            this._action( "SAVE_CHART", {
                f01: this._utilGetFormElValues( [ this._getId( "chart_type" ),
                                                  this._getId( "chart_label" ),
                                                  this._getId( "chart_value" ),
                                                  this._getId( "aggregate_by" ),
                                                  this._getId( "label_axis_title" ),
                                                  this._getId( "value_axis_title" ),
                                                  this._getId( "sort" ),
                                                  this._getId( "orientation" ) ] )
            });
        },
        /**
         * calls SAVE_CHART action with the items posted to the f01 array in the order listed
         * @function
         */
        _chartView: function() {
            this._action( "VIEW_CHART" );
        },

        /**
         * Applies quick sort and order dialog
         *
         * @function
         * */
        _columnOrder: function( pDirection ) {
            var lFArrays;
            if( pDirection === ASC || pDirection === DESC ) {
                this._action( "COLUMN_ORDER", {
                    f01: this.lastColumnId,
                    f02: pDirection
                });
            } else {
                lFArrays = this._utilGetFormElAttributes();
                this._action( "SORT", {
                    f01: lFArrays.ids,
                    f02: lFArrays.values
                });
            }
        },
        /**
         * Select Columns: Gets the current selected columns from the column shuttle and issues the Ajax call to update the report
         *
         * @function
         **/
        _columnDisplay: function() {
            var lOptionValues = [];
            this._getDialogElement( "shuttle_right" ).find( "option" ).each( function() {
                lOptionValues.push( this.value );
            });
            this._action( "SET_COLUMNS", {
                f01: lOptionValues
            });
        },
        /**
         * @ignore
         * */
        _columnHelp: function() {
            this._controlsGet( "INFO", this.currentColumnId );
        },
        /**
         * Hides a column
         *
         * @ignore
         * */
        _columnHide: function( pColumnId ) {
            var lValue;
            if ( pColumnId ) {
                lValue = pColumnId;
            } else {
                lValue = this.currentColumnId;
            }
            this._action( "HIDE", {
                id: lValue
            });
        },
        /**
         * Shows the column search drop down by completing the async fetch menu processing
         **/
        _columnSearchShow: function ( pData ) {
            var i, lIsAllColumns, lItems = [], lChoices = [],
                that = this,
                lRows = JSON.parse( pData ).row;

            for ( i = 0; i < lRows.length; i++ ) {
                lIsAllColumns = ( lRows[ i ].C === "0" );
                if ( lIsAllColumns ) {

                    // For "All Columns", add a regular "action" menu item and a separator
                    lItems.push( {
                        type: ACTION, label: lRows[ i ].D, value: lRows[ i ].R, action: function() {
                            that._getElement( "column_search_root" ).removeClass( C_IS_ACTIVE );
                            that._getElement( "column_search_current_column" ).val( "" );
                            that._getElement( "search_field" ).attr( { title: "Search", placeholder: "" } );    //todo nls
                        }
                    });
                    lItems.push( { type: "separator" } );
                } else {

                    // For other columns, add a choice to be used in a radioGroup item
                    lChoices.push ( { label: lRows[ i ].D, value: lRows[ i ].R } );
                }
            }
            lItems.push({
                type: "radioGroup",
                get: function() {
                    return that._getElement( "column_search_current_column" ).val();
                },
                set: function( pValue ) {
                    var lLabel, lValue,
                        lChoices = this.choices;

                    // Loop through choices to find current selected choice
                    for ( i = 0; i < lChoices.length; i++ ) {
                        if ( lChoices[ i ].value === pValue ) {
                            lLabel = formatNoEscape( "SEARCH_COLUMN", lChoices[ i ].label );
                            lValue = lChoices[ i ].value;
                            that._getElement( "column_search_root" ).addClass( C_IS_ACTIVE );
                            that._getElement( "column_search_current_column" ).val( lValue );
                            that._getElement( "search_field" ).attr( { title: lLabel, placeholder: lLabel } );
                            break;
                        }
                    }
                },
                choices: lChoices
            });
            this.searchMenu.items = lItems;
            this.searchMenuCallback();
            this.searchMenuCallback = null;
            this.searchMenu = null;
        },

        /**
         * @ignore
         */
        _computationClear: function() {
            this._action( "DELETE_COMPUTATION", {
                id: this._getDialogElement( "comp_id" ).val()
            });
        },
        /**
         * Part 1 : save computation this is a 2 part process first to see if the computation is valid then show messaging
         * or to repull the report
         * @function
         **/
        _computationSave: function() {
            var lValidate = $f_get_emptys( [ this._getId( "column_heading" ),this._getId( "computation_expr" ) ], "error", "" );
            if( lValidate ) {
                return;
            }
            this._action( "SAVE_COMPUTATION", {
                id:     this._getDialogElement( "comp_id" ).val(),
                value:  this._getDialogElement( "column_heading" ).val(),
                x06:    this._getDialogElement( "format_mask" ).val(),
                x07:    this._getDialogElement( "computation_expr" ).val()
            });
        },
        /**
         * Opens the computation dialog
         * @function
         */
        _computationShow: function( pId ) {
            var lId;
            if ( pId ) {
                lId = pId;
            } else {
                lId = this.computationId;
            }
            this._controlsGet( SHOW_COMPUTATION, lId );
            this.computationId = null;
        },

        /**
         * Apply column break on a column
         * @ignore */
        _controlBreakOn: function( pColumnId ) {
            if( pColumnId ) {
                this.currentColumnId = pColumnId;
            }
            this._action( "BREAK", {
                id: this.currentColumnId
            });
        },
        /**
         * Applies control break dialog settings
         *
         * @function
         * */
        _controlBreakSave: function() {
            var i, lIds = [];
            for ( i = 1; i < 7; i++ ) {
                lIds.push( this._getId( "column" ) + "_0" + i );
                lIds.push( this._getId( "enable" ) + "_0" + i );
            }
            this._action( "SAVE_BREAK", {
                f01:    lIds,
                f02:    this._utilGetFormElValues( lIds )
            });
        },
        _controlBreakToggle: function ( pColumn, pChecked ) {
            this._action( "BREAK_TOGGLE", {
                id:     pColumn,
                value:  pChecked
            });
        },

        /**
         * Pulls a Format Mask dropdown
         *@function
         */
        _controlsFormatMask: function( pID ) {
            this.tempReturnElement$ = $( getIdSelector( pID ));
            this._controlsGet( "FORMAT_MASK_LOV" );
        },
        /**
         * Central call to get a control (used for dialogs and other popups such as sort widget)
         *
         * @param {String} pControl
         * @param {String} pID
         *
         * @function
         **/
        _controlsGet: function( pControl, pID ) {
            this._dialogReset();
            if( pID ) {
                this.currentColumnId = pID;     //todo seems incorrect, pID not always the column ID (eg show_computation; computation id)
            }
            this._get( {
                widgetMod:          "CONTROL",
                widgetAction:       pControl,
                id:                 pID
            });
        },

        /**
         * Pulls a Narrow Filter dropdown on a text area
         *@function
         */
        _controlsNarrow: function( pID ) {
            this.tempReturnElement$ = $( getIdSelector( pID ));
            this._controlsGet( "NARROW", this._getDialogElement( "column_name" ).val() );
        },
        /**
         * Loads single row view for a specific row
         * */
        _controlsRow: function( pRowId ) {
            this._controlsGet( "SHOW_DETAIL", pRowId );
        },

        /*
         * Checks if a click event happens outside of a container, and if so...
         */
        _dialogCheck: function( pContainer, pCallback ) {
            var lContainer = "." + C_IRR_SORT_WIDGET,
                lCallback = this._dialogReset;
            if ( pContainer ) {
                lContainer = pContainer;
            }
            if ( pCallback ) {
                lCallback = pCallback;
            }
            this._on( this.document, {
                click: function( pEvent ) {
                    if ( !$( pEvent.target ).closest( lContainer ).length ) {
                        lCallback.call( this );
                    }
                },
                dragstart: function( pEvent ) {
                    if ( !$( pEvent.target ).closest( lContainer ).length ) {
                        lCallback.call( this );
                    }
                }
            });
        },
        /**
         * used for Interactive report filter and computation dialog
         *
         * @ignore
         **/
        _dialogComp: function( pItem, pValue ) {
            var lSpace = ( !( isNaN( pValue ) ) || pValue === "." );
            html_ReturnToTextSelection( pValue + "", pItem, lSpace );
        },
        /**
         * Get a jQuery element containing the current operator element for the column filter control set
         */
        _dialogCurrentOperator: function() {
            var lColumn$ = this._getDialogElement( "column_name" ),
                lColumnType = $( lColumn$.find( "option" )[ lColumn$.prop( "selectedIndex" ) ] ).attr( "class" );
            return this._getDialogElement( lColumnType + "_OPT" );
        },
        /**
         * Checks that proper operator select list is shown for filter and highlight dialogs
         *
         * @ignore
         * */
        _dialogColumnCheck: function() {
            var lCurrentOperator$ = this._dialogCurrentOperator();
            var lOperatorContainer$ = lCurrentOperator$.parents( ".u-Form-fieldContainer" );
            $( lOperatorContainer$ )
                .siblings()
                .hide()
                .end()
                .show();
            this._dialogOperatorCheck( lCurrentOperator$ );
        },
        /**
         * This function is the central control to display modal dialog
         * @function
         */
        _dialogOpen: function( currentControl, pInit ) {
            var lIRRDlg$, lTitle, lId, lError, lButtons,
                lMinHeight = 0,
                lWidth = 720,
                lDialogClass = "",
                that = this,
                regionDialog$ = this._getElement( DIALOG_JS_ID );
            lButtons = [{
                text  : MSG.BUTTON.CANCEL,
                click : function() {
                    that._getElement( DIALOG_JS_ID ).dialog( "close" );
                }
            }];

            function displayButton( pId, pAction, pLabel, pHot, pClose ) {
                var lLabel, lStyle;
                if ( pLabel ) {
                    lLabel = pLabel;
                } else {
                    lLabel = MSG.BUTTON.APPLY;
                }
                if ( pHot ) {
                    lStyle = C_UI_BUTTON_HOT;
                }
                lButtons.push({
                    text  : lLabel,
                    "class" : lStyle,
                    click : function() {
                        if ( pId ) {
                            pAction.call( that, pId );
                        } else {
                            pAction.call( that );
                        }
                        if ( pClose ) {
                            that._getElement( DIALOG_JS_ID ).dialog( "close" );
                        }
                    }
                });
            }
            switch ( currentControl ) {
                case SHOW_COLUMN:
                    lTitle = MSG.DIALOG_TITLE.SELECT_COLUMNS;
                    lDialogClass = C_IRR_DIALOG + "--selectColumns";
                    lWidth = 480;
                    displayButton( null, that._columnDisplay, null, true, true );
                    break;
                case SHOW_FILTER:
                    lTitle = MSG.DIALOG_TITLE.FILTER;
                    lDialogClass = C_IRR_DIALOG + "--filter";
                    lMinHeight = 230;
                    lId = that._getDialogElement( "filter_id" ).val();
                    if ( lId ) {
                        displayButton( lId, that._filterDelete, MSG.BUTTON.DELETE, false, true );
                    }
                    displayButton( lId, that._filterSave, null, true, false );
                    break;
                case SHOW_HIGHLIGHT:
                    lTitle = MSG.DIALOG_TITLE.HIGHLIGHT;
                    lDialogClass = C_IRR_DIALOG + "--highlight";
                    lMinHeight = 400;
                    lId = that._getDialogElement( "highlight_id" ).val();
                    if ( lId ) {
                        displayButton( lId, that._highlightClear, MSG.BUTTON.DELETE, false, true );
                    }
                    that._setIRHighlightPreview();
                    displayButton( lId, that._highlightSave, null, true, false );
                    break;
                case SHOW_ORDERING:
                    lTitle = MSG.DIALOG_TITLE.SORT;
                    lDialogClass = C_IRR_DIALOG + "--sort";
                    lWidth = 480;
                    displayButton( this, that._columnOrder, null, true, true );
                    break;
                case SHOW_CTRL_BREAK:
                    lTitle = MSG.DIALOG_TITLE.CONTROL_BREAK;
                    lDialogClass = C_IRR_DIALOG + "--controlBreak";
                    lWidth = 480;
                    displayButton( null, that._controlBreakSave, null, true, true );
                    break;
                case SHOW_COMPUTATION:
                    lTitle = MSG.DIALOG_TITLE.COMPUTATION;
                    lDialogClass = C_IRR_DIALOG + "--computation";
                    lId = that._getDialogElement( "comp_id" ).val();
                    if ( lId ) {
                        displayButton( null, that._computationClear, MSG.BUTTON.DELETE, false, true );
                    }
                    displayButton( null, that._computationSave, null, true, false );
                    break;
                case SHOW_AGGREGATE:
                    lTitle = MSG.DIALOG_TITLE.AGGREGATE;
                    lDialogClass = C_IRR_DIALOG + "--aggregate";
                    lWidth = 480;
                    lId = that._getDialogElement( "aggregation" ).val();
                    if ( lId ) {
                        displayButton( lId, that._aggregateClear, MSG.BUTTON.DELETE, false, true );
                    }
                    displayButton( null, that._aggregateSave, null, true, true );
                    break;
                case SHOW_CHART:
                    lTitle = MSG.DIALOG_TITLE.CHART;
                    lDialogClass = C_IRR_DIALOG + "--chart";
                    lWidth = 480;
                    lId = that._getDialogElement( "chart_type_hidden" ).val();
                    if ( lId ) {
                        displayButton( null, that._chartClear, MSG.BUTTON.DELETE, false, true );
                    }
                    displayButton( null, that._chartSave, null, true, false );
                    break;
                case SHOW_GROUP_BY:
                    lTitle = MSG.DIALOG_TITLE.GROUP_BY;
                    lDialogClass = C_IRR_DIALOG + "--groupBy";
                    lWidth = 720;
                    lId = that._getDialogElement( "group_by_id" ).val();
                    if ( lId ) {
                        displayButton( null, that._groupByRemove, MSG.BUTTON.DELETE, false, true );
                    }
                    displayButton( null, that._groupBySave, null, true, false );
                    break;
                case SHOW_GROUP_BY_SORT:
                    lTitle = MSG.DIALOG_TITLE.GROUP_BY_SORT;
                    lDialogClass = C_IRR_DIALOG + "--groupBySort";
                    lWidth = 480;
                    displayButton( this, that._groupBySort, null, true, true );
                    break;
                case SHOW_PIVOT:
                    lTitle = MSG.DIALOG_TITLE.PIVOT;
                    lDialogClass = C_IRR_DIALOG + "--pivot";
                    lWidth = 720;
                    lId = that._getDialogElement( "pivot_id" ).val();
                    if ( lId ) {
                        displayButton( null, that._pivotRemove, MSG.BUTTON.DELETE, false, true );
                    }
                    displayButton( null, that._pivotSave, null, true, false );
                    break;
                case SHOW_PIVOT_SORT:
                    lTitle = MSG.DIALOG_TITLE.PIVOT_SORT;
                    lDialogClass = C_IRR_DIALOG + "--pivotSort";
                    displayButton( this, that._pivotSort, null, true, true );
                    break;
                case SHOW_FLASHBACK:
                    lTitle = MSG.DIALOG_TITLE.FLASHBACK;
                    lDialogClass = C_IRR_DIALOG + "--flashback";
                    lWidth = 480;
                    lId = that._getDialogElement( "flashback_time" ).val();
                    if ( lId ) {
                        displayButton( null, that._flashbackClear, MSG.BUTTON.DELETE, false, true );
                    }
                    displayButton( null, that._flashbackSave, null, true, false );
                    break;
                case SAVE_REPORT:
                    lTitle = MSG.DIALOG_TITLE.SAVE_REPORT;
                    lDialogClass = C_IRR_DIALOG + "--save";
                    lWidth = 480;
                    displayButton( null, that._save, null, true, false );
                    break;
                case SHOW_RENAME:
                    lTitle = MSG.DIALOG_TITLE.RENAME_REPORT;
                    lDialogClass = C_IRR_DIALOG + "--rename";
                    lWidth = 480;
                    displayButton( that.reportId, that._save, null, true, false );
                    break;
                case SHOW_DELETE:
                    lTitle = MSG.DIALOG_TITLE.DELETE_REPORT;
                    lDialogClass = C_IRR_DIALOG + "--delete";
                    lWidth = 480;
                    displayButton( null, that._remove, null, true, true );
                    break;
                case SHOW_SAVE_DEFAULT:
                    lTitle = MSG.DIALOG_TITLE.SAVE_DEFAULT_REPORT;
                    lDialogClass = C_IRR_DIALOG + "--saveDefault";
                    lWidth = 480;
                    displayButton( null, that._saveDefault, null, true, false );
                    break;
                case SHOW_RENAME_DEFAULT:
                    lTitle = MSG.DIALOG_TITLE.RENAME_DEFAULT_REPORT;
                    lDialogClass = C_IRR_DIALOG + "--renameDefault";
                    lWidth = 480;
                    displayButton( "RENAME_DEFAULT", that._saveDefault, null, true, false );
                    break;
                case SHOW_DELETE_DEFAULT:
                    lTitle = MSG.DIALOG_TITLE.DELETE_DEFAULT_REPORT;
                    lDialogClass = C_IRR_DIALOG + "--deleteDefault";
                    lWidth = 480;
                    displayButton( "DELETE_DEFAULT", that._remove, null, true, true );
                    break;
                case SHOW_RESET:
                    lTitle = MSG.DIALOG_TITLE.RESET;
                    lDialogClass = C_IRR_DIALOG + "--reset";
                    lWidth = 320;
                    displayButton( null, that._reset, null, true, true );
                    break;
                case SHOW_DOWNLOAD:
                    lTitle = MSG.DIALOG_TITLE.DOWNLOAD;
                    lDialogClass = C_IRR_DIALOG + "--download";
                    lWidth = 480;
                    // lButtons = {};
                    displayButton( "DOWNLOAD", that._download, MSG.BUTTON.DOWNLOAD, true, false );
                    break;
                case SHOW_NOTIFY:
                    lTitle = MSG.DIALOG_TITLE.SUBSCRIPTION;
                    lDialogClass = C_IRR_DIALOG + "--subscription";
                    lId = that._getDialogElement( "notify_id" ).val();
                    lError = that._getDialogElement( "email_not_configured" ).text();
                    if ( lId ) {
                        displayButton( null, that._notifyClear, MSG.BUTTON.DELETE, false, true );
                    }
                    if ( !lError ) {
                        displayButton( null, that._notifySave, null, true, false );
                    }
                    break;
            }
            lDialogClass = (C_IRR_DIALOG + " " + lDialogClass).trim();
            lIRRDlg$ = regionDialog$.dialog( {
                modal      : true,
                dialogClass: lDialogClass,
                width      : lWidth,
                minHeight  : lMinHeight,
                title      : lTitle,
                buttons    : lButtons,
                closeText  : getMsg( "APEX.DIALOG.CLOSE" ),
                position: {
                    my: "left+10 top+10",
                    at: "left top",
                    of: this._getElement( "content" )
                },
                close      : function() {
                    that._off( lIRRDlg$ );
                    lIRRDlg$.dialog( "destroy" );
                }
            });

            // Post open initialisation specific to the current dialog, if passed
            if ( pInit ) {
                pInit.call();
            }

        },
        _dialogColumnHandlers: function() {
            this._on( this._getDialogElement( "column_name" ), {
                "change": function() {
                    this._dialogColumnCheck();
                }
            });
            this._on( this._getElement( DIALOG_JS_ID ), {
                "change select.a-IRR-operator": function( pEvent ) {
                    this._dialogOperatorCheck( $( pEvent.target ) );
                },
                "click button.a-IRR-button--menu": function( pEvent ) {
                    var lNarrow = $( pEvent.currentTarget ).data( "picker-for" );
                    this._controlsNarrow( lNarrow );
                }
            });
        },
        /**
         * This checks that the proper UI is displayed based on operator for filter and highlight dialogs (was dialog.operator_check)
         *
         * @ignore
         * */
        _dialogOperatorCheck: function( pOperator$ ) {
            var lFormatMask,
                lThis = [],
                lValue = pOperator$.val(),
                lColumnType = pOperator$.data( "column-type" ),
                lLastNextStyleOperatorValues = [ "is in the last", "is not in the last", "is in the next", "is not in the next" ];

            lThis[ 0 ] = $x( this._getId( "expression"   )  ).parentNode;
            lThis[ 1 ] = $x( this._getId( "expression2"  )  ).parentNode;
            lThis[ 2 ] = $x( this._getId( "expression3"  )  ).parentNode; // time duration
            lThis[ 3 ] = $x( this._getId( "between_from" )  ).parentNode;
            lThis[ 4 ] = $x( this._getId( "between_to"   )  ).parentNode;
            lThis[ 5 ] = $x( this._getId( "and"          )  );

            $x_Show_Hide( this._getId( "expression_icon_link" ), lThis );

            $x_Hide( lThis[ 5 ] ); // hide and from the beginning

            if ( lValue === "is null" || lValue === "is not null" ) {
                this._getDialogElement( "expression_container" ).hide();
            } else {
                this._getDialogElement( "expression_container" ).show();
                if ( lColumnType === "DATE" && $.inArray( lValue, lLastNextStyleOperatorValues ) === -1 ) {
                    $x_Show( lThis[ 3 ] );
                    lFormatMask = this._getDialogElement( "column_name" ).find( ":selected" ).data( "format-mask" );
                    this._setDateFieldFormatMask( this._getDialogElement( "between_from" ), lFormatMask );
                    this._getDialogElement( "between_from" ).siblings( ".ui-datepicker-trigger" ).addClass( "a-Button a-Button--calendar" );
                    if ( lValue === "between" ) {
                        $x_Show( lThis[ 4 ] );
                        $x_Show( lThis[ 5 ] );
                        this._setDateFieldFormatMask( this._getDialogElement( "between_to" ), lFormatMask );
                        this._getDialogElement( "between_to" ).siblings( ".ui-datepicker-trigger" ).addClass( "a-Button a-Button--calendar" );
                    }
                } else {
                    // Show Expression 1
                    $x_Show( lThis[ 0 ] );
                    if ( lValue === "between" ) {
                        $x_Show( lThis[ 5 ] );
                        $x_Show( lThis[ 1 ] );
                    }
                    if ( $.inArray( lValue, lLastNextStyleOperatorValues ) > -1 ) {
                        $x_Show_Hide( lThis[ 2 ], this._getId( "expression_icon_link" ) ); // expression 3
                    }
                }
            }
        },
        /**
         * Resets dialog and page to no dialog showing
         *
         * @function _dialogReset
         **/
        _dialogReset: function() {
            if( !this.suppressUpdate ) {
                this.currentColumnId = null;
                this.computationId = null;
                this._off( this.document, "click" );
            }
        },
        /**
         * This returns an object that can be used in dialog validate or highlight save or filter save
         * @function
         */
        _dialogUtilExpType: function() {
            var l_ob = {};
            l_ob.col = $x( this._getId( "column_name" ) );
            l_ob.col_type = l_ob.col.options[l_ob.col.selectedIndex].className;
            l_ob.col_opt = $x( this._getId( l_ob.col_type + "_OPT" ) );
            l_ob.col_opt_val = $v(l_ob.col_opt);
            if(l_ob.col_type === 'DATE' && !(l_ob.col_opt_val==='is in the last' || l_ob.col_opt_val==='is not in the last' || l_ob.col_opt_val==='is in the next' || l_ob.col_opt_val==='is not in the next')){
                l_ob.form_items = [ this._getId( "between_from" ), this._getId( "between_to" ) ];
            }else{
                l_ob.form_items = [ this._getId( "expression" ), this._getId( "expression2" ) ];
            }
            return l_ob;
        },
        _dialogValidate: function() {
            var lTest = [];
            var l_OB = this._dialogUtilExpType();
            switch(true){
                case ( l_OB.col_opt_val === "between" ):
                    lTest = [ l_OB.form_items[ 0 ], l_OB.form_items[ 1 ] ];
                    break;
                case ( l_OB.col_opt_val === "is null" || l_OB.col_opt_val === "is not null" ):
                    lTest = [];
                    break;
                case ( l_OB.col_opt_val === "is in the last" || l_OB.col_opt_val === "is not in the last" || l_OB.col_opt_val === "is in the next" || l_OB.col_opt_val === "is not in the next" ):
                    lTest = [ l_OB.form_items[0], this._getId( "expression3" ) ];
                    break;
                default:
                    lTest = [ l_OB.form_items[ 0 ] ];
            }
            if( $f_get_emptys( lTest, "error", "" ) ) {
                return false;
            } else {
                return l_OB;
            }
        },

        /**
         * Calls DOWNLOAD action with the items posted to the f01 array in the order listed
         */
        _download: function() {

            var lIds,
                lRequired = [ this._getId( "download_format" ) ],
                lValidate = $f_get_emptys( lRequired, "error", "" );
            if ( lValidate ) {
                return;
            }
            lIds = [ this._getId( "download_format" ),
                     this._getId( "data_only" ),
                     this._getId( "pdf_page_size" ),
                     this._getId( "pdf_orientation" ),
                     this._getId( "strip_rich_text" ),
                     this._getId( "accessible" ) ];

            this._action( "GET_DOWNLOAD_LINK", {
                f01: lIds,
                f02: this._utilGetFormElValues( lIds )
            });
        },

        /**
         * Calls SEND_EMAIL action with the items posted to the f01 array in the order listed
         */
        _emailSend: function() {
            var lIds,
                lRequired = [ this._getId( "email_to" ),
                              this._getId( "download_format" ) ],
                lValidate = $f_get_emptys( lRequired, "error", "" );
            if ( lValidate ) {
                return;
            }
            lIds = [ this._getId( "email_to" ),
                     this._getId( "email_cc" ),
                     this._getId( "email_bcc" ),
                     this._getId( "email_subject" ),
                     this._getId( "email_body" ),
                     this._getId( "download_format" ),
                     this._getId( "data_only" ),
                     this._getId( "pdf_page_size" ),
                     this._getId( "pdf_orientation" ),
                     this._getId( "strip_rich_text" ),
                     this._getId( "accessible" ) ];
            this._action( "SEND_EMAIL", {
                f01: lIds,
                f02: this._utilGetFormElValues( lIds )
            });

            // Manually close dialog because this control has client-side validation, and we don't automatically close in case there's an error
            this._getElement( DIALOG_JS_ID ).dialog( "close" );

        },
        /** @ignore */
        _emailShow: function() {
            var lButtons,
                that = this,
                lDlgContent$ = this._getElement( DIALOG_JS_ID ),
                lEmailContainer$ = this._getDialogElement( "email" ),
                lEmailButton$ = this._getDialogElement( "email_button" );
            lEmailContainer$.show();
            lEmailButton$.show();
            if ( lEmailButton$.is( ":visible" ) ) {
                lButtons = [{
                    text  : MSG.BUTTON.CANCEL,
                    click : function() {
                        lDlgContent$.dialog( "close" );
                    }
                },
                {
                    text  : MSG.BUTTON.SEND,
                    "class" : C_UI_BUTTON_HOT,
                    click : function () {
                        that._emailSend();
                    }
                }];
                lDlgContent$.dialog( "option", "buttons", lButtons );
            }
        },

        /** @ignore */
        _emailHide: function() {
            var lDlgContent$ = this._getElement( DIALOG_JS_ID ),
                that = this,
                lEmailContainer$ = this._getDialogElement( "email" ),
                lButtons = [{
                    text  : MSG.BUTTON.CANCEL,
                    click : function() {
                        lDlgContent$.dialog( "close" );
                    }
                },
                {
                    text  : MSG.BUTTON.DOWNLOAD,
                    "class" : C_UI_BUTTON_HOT,
                    click : function () {
                        that._download();
                    }
                }];
            lEmailContainer$.hide();
            lDlgContent$.dialog( "option", "buttons", lButtons );
        },

        /**
         * Deletes the display of search or a filter.
         * @function
         * */
        _filterDelete: function( pFilterId ) {
            this._action( "FILTER_DELETE", {
                id: pFilterId
            });
        },
        /**
         * applies quick filter and filter dialog
         * @ignore
         * */
        _filterSave: function( pThis ) {
            var l_OB, lTemp,
                lActionMod = "ADD",
                lFilterTypeItem$ = $( "#" + this._getId( "filter_type" ) ).find( "input:checked" ),
                lFilterType = lFilterTypeItem$.val(),
                lFilterTypeId = lFilterTypeItem$.attr( "id" );

            if( pThis ) {
                this.currentColumnId = pThis;   // why are we setting filter id as the current column, is this the filter id or column id? was current_col_id
                lActionMod = "UPDATE";
            } else {
                pThis = this._getDialogElement( "column_name" ).val();
            }
            if ( lFilterType === "COLUMN" ) {
                l_OB = this._dialogValidate();
                if( !l_OB ){
                    return;
                }
                lTemp = [ lFilterTypeId, l_OB.col.id, l_OB.col_opt.id, l_OB.form_items[ 0 ], l_OB.form_items[ 1 ], this._getId( "expression3" ) ];
            } else {
                lTemp = [ lFilterTypeId, this._getId( "filter_expr" ), this._getId( "filter_name" ) ];
            }
            this._action( "FILTER", {
                widgetActionMod:    lActionMod,
                f01:                this._utilGetFormElValues( lTemp ),
                id:                 pThis
            });
        },
        /**
         * Calls flashback to pull report data from N minutes ago (Step 1 of 2)
         * @function
         */
        _flashbackSave: function() {
            this._action( "FLASHBACK_SET", {
                value: this._getDialogElement( "flashback_time" ).val()
            });
        },
        /**
         * toggle display of search or a filter
         * @function
         * */
        _filterToggle: function( pFilterId, pChecked ) {
            this._action( "FILTER_TOGGLE", {
                id:     pFilterId,
                value:  pChecked
            });
        },

        /**
         * @ignore
         */
        _flashbackClear: function() {
            this._action( "FLASHBACK_CLEAR" );
        },
        /**
         * @ignore
         */
        _flashbackToggle: function() {
            this._action( "FLASHBACK_TOGGLE" );
        },

        /**
         * Controls any adjustments needed when displaying group by control
         * @function
         */
        _functionControl: function( pThis ) {
            var lElId, lRowNum, lIsNumberColumn,
                lNumFunctions = [ "SUM", "AVG", "MAX", "MIN", "MEDIAN", "RATIO_TO_REPORT_SUM" ];
            if( pThis ){
                lElId = pThis.id;
                lRowNum = lElId.substr( lElId.length - 2 );
                lIsNumberColumn = ( $.inArray( $( pThis ).val(), lNumFunctions ) !== -1 );
                this._getDialogElement( "number_columns_container_" + lRowNum ).toggle( lIsNumberColumn );
                this._getDialogElement( "all_columns_container_" + lRowNum ).toggle( !lIsNumberColumn );
            }
        },

        /**
         * Base IR AJAX call
         * @param {Object}  pData   Object with the following options:
         *      widgetMod
         *      widgetAction
         *      widgetActionMod
         *      worksheetId         Uses x01
         *      reportId            Uses x02
         *      id                  Uses x03
         *      value               Uses x04
         *      x05 --> x10         Flexible additional values
         *
         * @function _get
         **/
        _get: function ( pData ) {
            var lData, lOptions,
                that = this,
                lTriggerRefresh = false,

                widgetMod = pData.widgetMod,
                widgetAction = pData.widgetAction,
                widgetActionMod = pData.widgetActionMod,

                // for these actions suppress the AJAX update. useful for setting a preference or value without bugging user
                suppressUpdate = [
                    "SAVE_CHART",
                    "SAVE_COMPUTATION",
                    "FILTER",
                    "FLASHBACK_SET",
                    "GROUP_BY_SAVE",
                    "SAVE_HIGHLIGHT",
                    "CONTROL_MIN",
                    "SAVE_NOTIFY",
                    "SAVE_PIVOT",
                    "CHANGE_DETAIL_OPTION",
                    "FORMAT_MASK_LOV",
                    "NARROW"
                ].includes( widgetAction );

            // ----------------------------
            // after the fix for #22964626,
            // suppressUpdate, currentAction and currentControl were removed from the global scope,
            // but a global suppressUpdate is still needed by _dialogreset
            // and a global currentControl is still needed by _initOnCreate
            // TODO: find a way to completely keep these local
            this.suppressUpdate = suppressUpdate;
            this.currentControl = widgetAction;
            // ---------------------------

            /**
             * This function is the central control for AJAX returns in the IR
             *
             * @function _return
             **/
            function _return ( pData ){
                var lSetFocusTo$, dialogInit, lData$, lToolbar$, lContent$;

                if( widgetMod === "CONTROL" ) {
                    if( widgetAction === "SORT_WIDGET" ) {               // Column header sort widget
                        that._sortWidgetShow( pData );
                    } else if ( widgetAction === "INFO" ) {              // Help section of sort widget
                        that._helpWidgetShow( pData );
                    } else if( widgetAction === "NARROW" ) {             // Shows inline pickers (eg for expression drop down)
                        lSetFocusTo$ = that._inlinePicker( "NARROW", pData );
                    } else if ( widgetAction === "FORMAT_MASK_LOV" ) {
                        lSetFocusTo$ = that._inlinePicker( "FORMAT_MASK_LOV", pData );
                    } else if ( widgetAction === "SEARCH_COLUMN" ) {     // Shows column search menu
                        that._columnSearchShow( pData );
                    } else if ( widgetAction === "SHOW_DETAIL" ) {       // Shows Single Row View
                        that._singleRowViewShow( pData );
                    } else {

                        // Showing all the dialogs
                        switch ( widgetAction ) {
                            case SHOW_FILTER:
                                dialogInit = function() {
                                    var lDlgContent$ = that._getElement( DIALOG_JS_ID );
                                    that._dialogColumnCheck();
                                    that._dialogColumnHandlers();

                                    that._on( that._getDialogElement( "filter_type" ), {
                                        "click input": function( pEvent ) {
                                            var lIsColumnFilter = ( pEvent.target.value === "COLUMN" );
                                            that._getDialogElement( "column_filter" ).toggle( lIsColumnFilter );
                                            that._getDialogElement( "row_filter" ).toggle( !lIsColumnFilter );
                                        }
                                    });

                                    /*
                                     * Row filter handlers
                                     */
                                    that._on( that._getDialogElement( "filter_expr_clear" ), {
                                        "click": function( pEvent ) {
                                            that._getDialogElement( "filter_expr" ).val( "" );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    that._on( that._getDialogElement( "row_filter_columns" ), {
                                        "click li": function( pEvent ) {
                                            var lColumnId = $( pEvent.currentTarget ).data( "column-id" );
                                            that._dialogComp( that._getId( "filter_expr" ), lColumnId );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    that._on( that._getDialogElement( "row_filter_operators" ), {
                                        "click li": function( pEvent ) {
                                            var lOperator = $( pEvent.currentTarget ).data( "operator" );
                                            that._dialogComp( that._getId( "filter_expr" ), lOperator );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    lDlgContent$.find(".a-IRR-dialogContent").show();
                                };
                                break;
                            case SHOW_HIGHLIGHT:
                                dialogInit = function() {
                                    var lDlgContent$ = that._getElement( DIALOG_JS_ID ).find(".a-IRR-dialogContent"),
                                        lDlgBgColor$ = that._getDialogElement( "bg_color" ),
                                        lDlgFontColor$ = that._getDialogElement( "font_color" );

                                    that._dialogColumnCheck();
                                    that._dialogColumnHandlers();
                                    that._on( lDlgBgColor$.add( lDlgFontColor$ ), {
                                        "change": function() {
                                            let contrast,
                                                contrast$ = that._getDialogElement( "_contrast" ),
                                                bgColor = lDlgBgColor$[0].getValue() || "#ffffff", // todo can these defaults be picked up from variables?
                                                fontColorItem = lDlgFontColor$[0],
                                                fontColor = fontColorItem.getValue() || "#000000";

                                            that._getDialogElement( "highlight_preview" ).css( {
                                                backgroundColor: bgColor,
                                                color: fontColor
                                            } );
                                            contrast = fontColorItem.contrastWith( bgColor );
                                            apex.widget.util.colorPicker.updateColorContrastReport( contrast$, contrast );
                                        }
                                    });
                                    lDlgContent$.find( ".a-IRR-highlightContrast" ).html(
                                        apex.widget.util.colorPicker.renderColorContrastReport( that._getId( "_contrast" ) ) );
                                    lDlgContent$.show();

                                    // call item attach to setup color pickers in the hightlight dialog
                                    apex.item.attach( lDlgContent$ );

                                    // trigger a change so that the contrast is updated
                                    lDlgBgColor$.trigger( "change" );
                                };
                                break;
                            case SHOW_CHART:
                                dialogInit = function() {
                                    that._chartControl();
                                    that._on( that._getDialogElement( "chart_type" ), {
                                        "click input": function() {
                                            that._chartControl();
                                        }
                                    });
                                };
                                break;
                            case SHOW_COMPUTATION:
                                dialogInit = function() {
                                    that._on( that._getDialogElement( "comp_id" ), {
                                        "change": function( pEvent ) {
                                            that._computationShow( $( pEvent.currentTarget ).val() );
                                        }
                                    });
                                    that._on( that._getDialogElement( "format_mask_picker" ), {
                                        "click": function( pEvent ) {
                                            that._controlsFormatMask( that._getId( "format_mask" ) );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    that._on( that._getDialogElement( "computation_expr_clear" ), {
                                        "click": function( pEvent ) {
                                            that._getDialogElement( "computation_expr" ).val( "" );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    // Columns grid
                                    that._on( that._getDialogElement( "computation_columns" ), {
                                        "click li": function( pEvent ) {
                                            var lColumnId = $( pEvent.currentTarget ).data( "column-id" );
                                            that._dialogComp( that._getId( "computation_expr" ), lColumnId );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    // Keypad grid
                                    that._on( that._getDialogElement( "computation_keypad" ), {
                                        "click button": function( pEvent ) {
                                            var lKey = $( pEvent.currentTarget ).data( "key" );
                                            that._dialogComp( that._getId( "computation_expr" ), lKey );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    // Functions grid
                                    that._on( that._getDialogElement( "computation_functions" ), {
                                        "click li": function( pEvent ) {
                                            var lFunction = $( pEvent.currentTarget ).data( "function" );
                                            that._dialogComp( that._getId( "computation_expr" ), lFunction );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    // Examples
                                    that._getDialogElement( "compute_examples_container" ).collapsible({
                                        controllingElement: "button",
                                        content: "#" + that._getId( "compute_examples" ),
                                        collapsed:  true
                                    });
                                };
                                break;
                            case SHOW_COLUMN:
                                dialogInit = function() {
                                    that.g_Shuttlep_v01 = null;
                                    window.g_Shuttlep_v01 = new dhtml_ShuttleObject( $x( that._getId( "shuttle_left" ) ), $x( that._getId( "shuttle_right" ) ) );
                                };
                                break;
                            case SAVE_REPORT:
                                dialogInit = function() {
                                    that._on( that._getDialogElement( "save_option" ), {
                                        "change": function( pEvent ) {
                                            that._controlsGet( pEvent.target.value );
                                        }
                                    });
                                };
                                break;
                            case SHOW_SAVE_DEFAULT:
                            case SHOW_RENAME_DEFAULT:
                                dialogInit = function() {
                                    that._on( that._getDialogElement( "default_type" ), {
                                        "click input": function( pEvent ) {
                                            this._saveDefaultTypeCheck( pEvent.target.value );
                                        }
                                    });
                                    that._saveDefaultTypeCheck( $v( that._getId( "default_type" ) ) );  // use $v because this is a radio group with fieldset
                                };
                                break;
                            case SHOW_AGGREGATE:
                                dialogInit = function() {
                                    that._on( that._getDialogElement( "aggregation" ), {
                                        "change": function( pEvent ) {
                                            this._controlsGet( SHOW_AGGREGATE, $( pEvent.currentTarget ).val() );
                                        }
                                    });
                                    that._on( that._getDialogElement( "aggregate_by" ), {
                                        "change": function() {
                                            this._aggregateControl();
                                        }
                                    });
                                };
                                break;
                            case SHOW_NOTIFY:
                            case SHOW_DOWNLOAD:
                                dialogInit = function() {
                                    const lFormat = that._getDialogElement( "download_format" ).val();
                                    let lformatIcon$;
                                    that._getDialogElement( "download_formats" ).iconList({
                                        selectionChange: function() {
                                            that._getDialogElement( "download_format" )
                                                .val( $(this).iconList( "getSelectionValues" )[ 0 ] )
                                                .trigger( "change" );
                                        }
                                    });

                                    // Activate the current or first format
                                    if ( lFormat ) {
                                        lformatIcon$ = that._getDialogElement( "download_formats" ).find( `.a-IRR-iconList-item[data-value='${lFormat}']` );
                                    }

                                    if ( !lformatIcon$ || lformatIcon$.length === 0 ) {
                                        lformatIcon$ = that._getDialogElement( "download_formats" ).find( ".a-IRR-iconList-item" ).first();
                                    }

                                    lformatIcon$.trigger( "click" );

                                    lSetFocusTo$ = lformatIcon$;

                                    that._on( that._getDialogElement( "download_format" ), {
                                        "change": function() {
                                            const lDownloadFormat$ = that._getDialogElement( "download_format" );
                                            const lConditionalElements = [
                                                {
                                                    id: "pdf_container",
                                                    active: ( pFormat ) => {
                                                        return pFormat === "PDF";
                                                    }
                                                },
                                                {
                                                    id: "strip_rich_text_container",
                                                    active: ( pFormat ) => {
                                                        return [ 'CSV', 'XLSX' ].includes( pFormat );
                                                    }
                                                },
                                                {
                                                    id: "data_only_container",
                                                    active: ( pFormat ) => {
                                                        return pFormat !== "CSV";
                                                    }
                                                }
                                            ];

                                            lConditionalElements.forEach( ( el ) => {
                                                if ( el.active( lDownloadFormat$.val() ) ) {
                                                    that._getDialogElement( el.id ).show();
                                                } else {
                                                    that._getDialogElement( el.id ).hide();
                                                }
                                            } );
                                        }
                                    });

                                    if ( widgetAction === SHOW_DOWNLOAD ) {
                                        that._on( that._getDialogElement( "send_as_email" ), {
                                            "change": function() {
                                                var lEmailCheckbox$ = that._getDialogElement( "send_as_email" );
                                                if ( lEmailCheckbox$.is( ":checked" ) ) {
                                                    that._emailShow();
                                                } else {
                                                    that._emailHide();
                                                }
                                            }
                                        });
                                    }

                                };
                                break;
                            case SHOW_GROUP_BY:
                                dialogInit = function() {
                                    that._on( that._getDialogElement( "add_column" ), {
                                        "click": function( pEvent ) {
                                            this._utilAddMoreColumn( this._groupByMaxValue, C_IRR_GROUP_BY_COLUMN );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    that._on( that._getDialogElement( "group_by_functions" ), {
                                        "change select.a-IRR-function": function( pEvent ) {
                                            this._functionControl( pEvent.target );
                                        },
                                        "click button.a-Button--menu": function( pEvent ) {
                                            that._controlsFormatMask( $( pEvent.currentTarget ).data( "picker-for" ) );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    that._on( that._getDialogElement( "add_function" ), {
                                        "click": function( pEvent ) {
                                            this._utilAddMoreFunction( this._groupByMaxValue );
                                            pEvent.preventDefault();
                                        }
                                    });
                                };
                                break;
                            case SHOW_PIVOT:
                                dialogInit = function() {
                                    that._on( that._getDialogElement( "add_pivot_column" ), {
                                        "click": function( pEvent ) {
                                            this._utilAddMoreColumn( this._pivotMaxValue, C_IRR_PIVOT_COLUMN );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    that._on( that._getDialogElement( "add_row_column" ), {
                                        "click": function( pEvent ) {
                                            this._utilAddMoreColumn( this._pivotMaxValue, C_IRR_ROW_COLUMN );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    that._on( that._getDialogElement( "pivot_functions" ), {
                                        "change select.a-IRR-function": function( pEvent ) {
                                            this._functionControl( pEvent.target );
                                        },
                                        "click a.a-IRR-format-mask-picker": function( pEvent ) {
                                            that._controlsFormatMask( $( pEvent.currentTarget ).data( "picker-for" ) );
                                            pEvent.preventDefault();
                                        },
                                        // Fix Bug Num. 31908618
                                        "click button.a-Button--menu": function( pEvent ) {
                                            that._controlsFormatMask( $( pEvent.currentTarget ).data( "picker-for" ) );
                                            pEvent.preventDefault();
                                        }
                                    });
                                    that._on( that._getDialogElement( "add_function" ), {
                                        "click": function( pEvent ) {
                                            this._utilAddMoreFunction( this._pivotMaxValue );
                                            pEvent.preventDefault();
                                        }
                                    });
                                };
                                break;
                        }
                        that._getElement( DIALOG_JS_ID ).html( pData );

                        // finally show
                        that._dialogOpen( widgetAction, dialogInit );
                    }
                    // If lSetFocusTo$ has been assigned, use that, otherwise fallback to first focusable element
                    if ( lSetFocusTo$ === undefined ) {

                        // focus on first input field of drop panel, if any form fields exist within a drop panel
                        lSetFocusTo$ = $( ":input:visible", that._getElement( DIALOG_JS_ID ) );
                    }
                    if (lSetFocusTo$.length > 0) {
                        lSetFocusTo$[0].focus();
                    }
                } else if ( widgetAction === "GET_DOWNLOAD_LINK" ) {
                    // JSON as response means an error
                    try {
                        const lData = JSON.parse( pData );

                        message.showErrors( {
                            message: lData.error,
                            location: "page"
                        } );

                    } catch {
                        // Not JSON, so redirect to the URL
                        navigation.redirect( pData, ( that.options.downloadContentDisposition === ATTACHMENT ) );
                    }

                } else { // if widgetMod === "ACTION"

                    if ( suppressUpdate ) {
                        that.lastFunction = function() {
                            that._validAction( pData );
                        };
                    } else {
                        lData$ = $( $u_js_temp_drop() );

                        // Note, this also causes any JS to be executed that the call returns
                        lData$.html( pData );

                        lToolbar$ = lData$.find( that._getIdSelector( "toolbar_controls" ) );
                        lContent$ = lData$.find( that._getIdSelector ( "content" ) );

                        // Replace toolbar controls and content, use widget context for first selector to pick up the
                        // the element to be replaced
                        that._getElement( "toolbar_controls", that.element ).replaceWith( lToolbar$ );
                        that._getElement( "content", that.element ).replaceWith( lContent$ );

                        // Update current pagination option, based on updated value from server
                        that.options.currentRowsPerPage = that._getElement( "row_select" ).val() * 1;

                        // Update current view mode, based on updated value from server
                        that.viewMode = that._getElement( "view_mode" ).val();

                        // Re-initialise toolbar
                        that._initToolbar();

                        // Re-initialise the control panel
                        that._initControlPanel();

                        that.reportId = that._getElement( "report_id" ).val();

                        // Clear single row view HTML
                        that._singleRowViewHide();

                        that._getElement( "full_view" ).show();

                        // Remove the temporary DIV used to store the response
                        lData$.remove();

                        that._initFixedHeader( true );

                        // Try to re-instate focus following a refresh, but only if no other element currently has focus (bug #21214580).
                        if ( !$( ":focus" ).length ) {

                            // If prior to the refresh, the active element was an element with an ID, then let's use this
                            // Note: currentElementId could be undefined if the active element did not have an ID, the
                            // truthy check will take care of this also.
                            if ( that.currentElementId ) {
                                lSetFocusTo$ = $( "#" + that.currentElementId );
                            } else {

                                // Otherwise we just use the first focusable element as a fallback
                                lSetFocusTo$ = that.element.find( ":focusable" );
                            }

                            if ( lSetFocusTo$.length > 0 ) {
                                lSetFocusTo$[ 0 ].focus();
                            }
                        }
                    }
                }
            }  // _return

            /**
             * Gets called after all worksheet AJAX calls
             * @function
             */
            function _finishedLoading() {
                if ( that.lastFunction ){
                    that.lastFunction();
                    that.lastFunction = false;
                }
                // re-show the toolbar, in case it was made invisible as we lazy loaded
                $( getIdSelector( that.options.regionId + "_toolbar" ), apex.gPageContext$ ).css('visibility', '');
                // remove is-loading class, in case it was added as we lazy loaded
                $( getIdSelector( that.options.regionId + "_content" ), apex.gPageContext$ ).removeClass('is-loading');

                // make sure the search menu is completed in error cases
                if ( widgetAction === "SEARCH_COLUMN" && that.searchMenuCallback ) {
                    that.searchMenuCallback( false );
                    that.searchMenuCallback = null;
                    that.searchMenu = null;
                }
            }  // _finishedLoading

            // For all calls except showing column help, hide the sort widget
            if ( widgetAction !== "INFO" ) {
                this._sortWidgetHide();
            }

            // We only want to trigger the refresh event when doing an action that actually updates
            // the data (eg applying a new filter, searching, moving through single row view, etc.)
            if ( widgetMod && !suppressUpdate ) {
                if ( [ "ACTION", "PULL" ].includes( widgetMod ) ) {
                    lTriggerRefresh = true;
                } else if ( widgetMod === "CONTROL" && widgetAction === "SHOW_DETAIL" ) {
                    lTriggerRefresh = true; // Single Row View also
                }
            }
            lData = $.extend( {
                p_widget_name:          "worksheet",
                p_widget_mod:           widgetMod,
                p_widget_action:        widgetAction,
                p_widget_action_mod:    widgetActionMod,
                p_widget_num_return:    that.options.currentRowsPerPage,
                x01:                    that.worksheetId,
                x02:                    that.reportId,
                x03:                    pData.id,
                x04:                    pData.value,
                x11 :                   pData.keepPagination,
                pageItems:              this.options.pageItems
            }, pData );

            // delete properties we expose with more meaningful names and that are not required by the call
            delete lData.widgetMod;
            delete lData.widgetAction;
            delete lData.widgetActionMod;
            delete lData.id;
            delete lData.value;

            // for a Reset, or when the saved report is changed, don't pass the rows per page, instead the server
            // will provide the saved value
            if ( lData.p_widget_action === "RESET" || lData.p_widget_action === "REPORT_CHANGED" ) {
                delete lData.p_widget_num_return;
            }

            // p_widget_action_mod is sometimes not required, so let's not send it in that case
            if ( !lData.p_widget_action_mod ) {
                delete lData.p_widget_action_mod;
            }

            lOptions = {
                dataType:                   "html",
                refreshObject:              ( lTriggerRefresh ) ? this.region$: null,
                loadingIndicator:           that._getElement( "worksheet_region" ),
                loadingIndicatorPosition:   "centered",
                success:                    _return,
                complete:                   _finishedLoading
            };
            server.plugin( this.options.ajaxIdentifier, lData, lOptions );
        }, // _get

        _getId: function( pId ) {
            return this.idPrefix + "_" + pId;
        },

        _getIdSelector: function( pId ) {
            return getIdSelector( this._getId( pId ));
        },

        _getElement: function( pId, pContext$ ) {
            var lContext$;
            // TODO consider if the context is even needed - these are after all ids we are selecting on.
            if ( pContext$ ) {
                lContext$ = pContext$;
            } else if ( pId === DIALOG_JS_ID || /^sort_widget.*$/.test( pId ) ) {
                lContext$ = apex.gPageContext$;
            } else {
                lContext$ = this.element;
            }
            return $( this._getIdSelector( pId ), lContext$ );
        },
        _getDialogElement: function( pId ) {
            return this._getElement( pId, this._getElement( DIALOG_JS_ID ) );
        },

        _groupByMaxValue: 8,
        _groupByRemove: function() {
            this._action( "GROUP_BY_REMOVE" );
        },
        _groupBySave: function() {
            var lFArrays = this._utilGetFormElAttributes();
            this._action( "GROUP_BY_SAVE", {
                f01: lFArrays.ids,
                f02: lFArrays.values
            });
        },
        /**
         * applies group by sort dialog
         * @function
         * */
        _groupBySort: function( pThis ) {
            var lFArrays,
                lGroupById = this._getDialogElement( "group_by_id" ).val();
            if( pThis === ASC || pThis === DESC ) {
                this.lastColumnId = pThis.id;
                this._action( "GROUP_BY_COLUMN_SORT", {
                    id:     lGroupById,
                    f01:    this.lastColumnId,
                    f02:    pThis
                });
            } else {
                lFArrays = this._utilGetFormElAttributes();
                this._action( "GROUP_BY_SORT", {
                    id:     lGroupById,
                    f01:    lFArrays.ids,
                    f02:    lFArrays.values
                });
            }
        },
        _groupByView: function() {
            this._action( "VIEW_GROUP_BY" );
        },

        _helpWidgetShow: function( pData ) {
            const
                helpRegionId = this._getId( "sort_widget_help" ),
                helpBtn$ = this._getElement( "sort_widget_action_help" ).find( SEL_IRR_SORT_WIDGET_BUTTON ),
                isHelpActive = $( helpBtn$ ).hasClass( C_IS_ACTIVE );

            if ( isHelpActive ) {
                this._getElement( "sort_widget_help" )
                    .empty()
                    .hide();
                helpBtn$.removeClass( C_IS_ACTIVE )
                    .attr( ARIA_PRESSED, "false" )
                    .removeAttr( ARIA_DESCRIBEDBY )
                    .removeAttr( ARIA_DETAILS )
                    .removeAttr( ARIA_CONTROLS );
            } else {
                this._getElement( "sort_widget_help" )
                    .html( "<div role='alert'>" + pData + "</div>" )
                    .show();
                helpBtn$.addClass( C_IS_ACTIVE )
                    .attr( ARIA_PRESSED, "true" )
                    .attr( ARIA_DESCRIBEDBY, helpRegionId )
                    .attr( ARIA_DETAILS, helpRegionId )
                    .attr( ARIA_CONTROLS, helpRegionId );
            }
            this.lastColumnId = this.currentColumnId;
            this._dialogCheck( null, this._sortWidgetHide );
        },

        /**
         * Removes a highlight rule.
         *
         * @param {String} pHighlightId
         * */
        _highlightClear: function( pHighlightId ) {
            var lHighlightId;
            if ( pHighlightId ) {
                lHighlightId = pHighlightId;
            } else {
                lHighlightId = $x( "HIGHLIGHT_ID" ).value;
            }
            this._action( "CLEAR_HIGHLIGHT", {
                id: lHighlightId
            });
        },
        /**
         * Save a highlight rule (Step 1 of 2) next call is
         * @function
         **/
        _highlightSave: function() {
            var lFArrays,
                l_OB = this._dialogValidate();
            if( !l_OB ) {
                return;
            }
            lFArrays = this._utilGetFormElAttributes();
            this._action( "SAVE_HIGHLIGHT", {
                f01: lFArrays.ids,
                f02: lFArrays.values
            });
            l_OB = null;
        },
        /**
         * toggles a highlight rule
         *
         * @param {String}     pHighlightId
         * @param {String}     pChecked
         * */
        _highlightToggle: function( pHighlightId, pChecked ) {
            this._action( "TOGGLE_HIGHLIGHT", {
                id:     pHighlightId,
                value:  pChecked
            });
        },

        // Handlers for all control panel / report settings functionality
        _initControlPanel: function() {
            var that = this;

            this._on( this._getElement( "control_panel" ), {

                // Edit filters, saved reports, highlights, charts, ...
                // Expanded view
                "click a.a-IRR-controlsLabel": function( pEvent ) {
                    var lLink$ = $( pEvent.currentTarget ),
                        lSetting = lLink$.data( "setting" );
                    switch ( lSetting ) {
                        case "filter":
                            this._controlsGet( SHOW_FILTER, lLink$.data( "filter-id" ) );
                            break;
                        case "report":
                            this._controlsGet( SHOW_RENAME );
                            break;
                        case "report-default":
                            this._controlsGet( SHOW_RENAME_DEFAULT );
                            break;
                        case "highlight":
                            this._controlsGet( SHOW_HIGHLIGHT, lLink$.data( "highlight-id" ) );
                            break;
                        case "break":
                            this._controlsGet( SHOW_CTRL_BREAK );
                            break;
                        case "chart":
                            this._controlsGet( SHOW_CHART );
                            break;
                        case "group_by":
                            this._controlsGet( SHOW_GROUP_BY );
                            break;
                        case "pivot":
                            this._controlsGet( SHOW_PIVOT );
                            break;
                        case "flashback":
                            that._controlsGet( SHOW_FLASHBACK );
                            break;
                    }
                    pEvent.preventDefault();
                },

                // Edit button to edit filters, saved reports, highlights, charts, ...
                // Expanded view
                "click button.a-IRR-button--edit": function( pEvent ) {
                    var lButton$ = $( pEvent.currentTarget ),
                        lSetting = lButton$.data( "setting" );
                    switch ( lSetting ) {
                        case "filter":
                            this._controlsGet( SHOW_FILTER, lButton$.data( "filter-id" ) );
                            break;
                        case "report":
                            this._controlsGet( SHOW_RENAME );
                            break;
                        case "report-default":
                            this._controlsGet( SHOW_RENAME_DEFAULT );
                            break;
                        case "highlight":
                            this._controlsGet( SHOW_HIGHLIGHT, lButton$.data( "highlight-id" ) );
                            break;
                        case "break":
                            this._controlsGet( SHOW_CTRL_BREAK );
                            break;
                        case "chart":
                            this._controlsGet( SHOW_CHART );
                            break;
                        case "group_by":
                            this._controlsGet( SHOW_GROUP_BY );
                            break;
                        case "pivot":
                            this._controlsGet( SHOW_PIVOT );
                            break;
                        case "flashback":
                            that._controlsGet( SHOW_FLASHBACK );
                            break;
                    }
                    pEvent.preventDefault();
                },

                // Now collapsed view
                "click a.a-IRR-reportSummary-label": function( pEvent ) {
                    var lLink$ = $( pEvent.currentTarget ),
                        lSetting = lLink$.data( "setting" );
                    switch ( lSetting ) {
                        case "filter":
                            this._controlsGet( SHOW_FILTER, lLink$.data( "filter-id" ) );
                            break;
                        case "report":
                            this._controlsGet( SHOW_RENAME );
                            break;
                        case "report-default":
                            this._controlsGet( SHOW_RENAME_DEFAULT );
                            break;
                        case "highlight":
                            this._controlsGet( SHOW_HIGHLIGHT, lLink$.data( "highlight-id" ) );
                            break;
                        case "break":
                            this._controlsGet( SHOW_CTRL_BREAK );
                            break;
                        case "chart":
                            this._controlsGet( SHOW_CHART );
                            break;
                        case "group-by":
                            this._controlsGet( SHOW_GROUP_BY );
                            break;
                        case "pivot":
                            this._controlsGet( SHOW_PIVOT );
                            break;
                        case "flashback":
                            that._controlsGet( SHOW_FLASHBACK );
                            break;
                        default:
                            that._getElement( "control_panel" ).collapsible( "expand" );
                            break;
                    }
                    pEvent.preventDefault();
                },


                // Toggles to enabled / disable control breaks, filters, highlights ...
                "click input.a-IRR-controlsCheckbox": function( pEvent ) {
                    var lCheckbox$ = $( pEvent.target ),
                        lChecked = ( lCheckbox$.prop( CHECKED ) ) ? "Y" : "N",
                        lSetting = lCheckbox$.data( "setting" );
                    switch ( lSetting ) {
                        case "break":
                            this._controlBreakToggle( lCheckbox$.data( "break-column" ), lChecked );
                            break;
                        case "filter":
                            this._filterToggle( lCheckbox$.data( "filter-id" ), lChecked );
                            break;
                        case "highlight":
                            this._highlightToggle( lCheckbox$.data( "highlight-id" ), lChecked );
                            break;
                        case "flashback":
                            this._flashbackToggle();
                            break;
                    }
                },

                // Deletes control breaks, filters, ..., works the same for both collapsed / expanded views
                "click button.a-IRR-button--remove": function( pEvent ) {
                    var lButton$ = $( pEvent.currentTarget ),
                        lSetting = lButton$.data( "setting" );
                    switch ( lSetting ) {
                        case "break":
                            this._controlBreakOn( lButton$.data( "break-column" ) );
                            break;
                        case "filter":
                            this._filterDelete( lButton$.data( "filter-id" ) );
                            break;
                        case "report":
                            this._controlsGet( SHOW_DELETE );
                            break;
                        case "report-default":
                            this._controlsGet( SHOW_DELETE_DEFAULT );
                            break;
                        case "highlight":
                            this._highlightClear( lButton$.data( "highlight-id" ) );
                            break;
                        case "flashback":
                            this._flashbackClear();
                            break;
                        case "chart":
                            this._chartClear();
                            break;
                        case "group-by":
                            this._groupByRemove();
                            break;
                        case "pivot":
                            this._pivotRemove();
                            break;
                    }
                    pEvent.preventDefault();
                }

            });

            function _expand() {
                if ( that.options.isControlPanelCollapsed ) {
                    that.options.isControlPanelCollapsed = false;
                    that._action( "CONTROL_MIN", {
                        value: "N"
                    });
                }
                that._getElement( "control_panel_summary" ).hide();

            }

            function _collapse() {
                if ( !that.options.isControlPanelCollapsed ) {
                    that.options.isControlPanelCollapsed = true;
                    that._action( "CONTROL_MIN", {
                        value: "Y"
                    });
                }
                that._getElement( "control_panel_summary" ).show();
            }

            this._getElement( "control_panel" ).collapsible({
                content:      "div.a-MediaBlock-content",
                collapsed:  that.options.isControlPanelCollapsed,
                collapse:   _collapse,
                expand:     _expand,
                renderIcon: false
            });
        },
        _initFixedHeader: function( pWindowResize ) {
            var lContainerClass,
                o = this.options;

            if ( o.fixedHeader === PAGE || o.fixedHeader === REGION ) {

                // todo remove this restriction once fixed table header JS supports complex headings (bug #20143941)
                if ( $( ".a-IRR-header--group", this.element ).length === 0 ) {

                    switch( this.viewMode ) {
                        case REPORT:
                            if ( o.reportViewMode === REPORT ) {
                                lContainerClass = "a-IRR-reportView";
                            }
                            break;
                        case GROUP_BY:
                            lContainerClass = "a-IRR-groupByView";
                            break;
                        /* todo reinstate PIVOT when fixed table header JS supports complex headings (bug #20143941)
                         case PIVOT:
                         lContainerClass = "a-IRR-pivotView";
                         break;
                         */
                    }

                    if ( lContainerClass ) {
                        if ( $( this.element).find( ".a-IRR-iconViewTable").length === 0 ) {
                            switch ( o.fixedHeader ) {
                                case PAGE:
                                    $( "." + lContainerClass, this.element ).setTableHeadersAsFixed();
                                    $( ".js-stickyTableHeader", this.element ).stickyWidget({
                                        toggleWidth: true,
                                        stickToEnd: true
                                    });
                                    break;
                                case REGION:
                                    $( "." + lContainerClass, this.element ).setTableHeadersAsFixed({
                                        maxHeight: o.fixedHeaderMaxHeight
                                    });
                                    break;
                            }
                        }

                        if ( pWindowResize ) {
                            $( window ).trigger( "apexwindowresized" );
                        }
                    }
                }
            }
        },
        /**
         * Menu initialisation code
         *
         * @function _initMenus
         **/
        _initMenus: function() {
            var lActionMenu, i,
                that = this,
                o = this.options,
                // TODO Rows per page sub menu does not match the rows per page selector select list. Missing are [ 30, 200, 500, 2000 ]
                rowsPerPageChoices = [ 1, 5, 10, 15, 20, 25, 50, 100, 1000 ];   // All/10,000 is a special case

            function findById( items, id ) {
                for ( i = 0; i < items.length; i++ ) {
                    if ( items[ i ].id === id ) {
                        return items[ i ];
                    }
                }
            }

            function getMaxRows( pMaxRowsPerPage, pMaxRowCount ) {
                var maxRows,
                    lMaxRowsPerPage = pMaxRowsPerPage ? pMaxRowsPerPage * 1 : null,
                    lMaxRowCount = pMaxRowCount ? pMaxRowCount * 1 : null;

                // The value used to limit the rows per page selector is different depending on how the
                // max row count and max rows per page attributes have been defined...
                if ( pMaxRowsPerPage && pMaxRowCount ) {

                    // If both are defined, we need the lower of the two
                    maxRows = lMaxRowsPerPage < lMaxRowCount ? lMaxRowsPerPage : lMaxRowCount;
                } else if ( !pMaxRowsPerPage ) {

                    // If only max row count defined, use that
                    maxRows = lMaxRowCount;
                } else if ( !pMaxRowCount ) {

                    // If only max rows per page, use that
                    maxRows = lMaxRowsPerPage;
                }
                return maxRows;
            }

            // New, Interactive Grid style actions menu
            if ( o.actionsMenuStructure === "IG" ) {

                lActionMenu = {
                    items: [
                        { id: "irColumn", type: ACTION, label: getIRMsg( "COLUMNS" ), hide: true, icon: "icon-irr-select-cols", action: function () {
                            that._controlsGet( SHOW_COLUMN, "COLUMN" );
                        } },
                        { type: "separator" },
                        { id: "irFilter", type: ACTION, label: getIRMsg( "FILTER" ), hide: true, icon: "icon-irr-filter" , action: function () {
                            that._controlsGet( SHOW_FILTER );
                        } },
                        //todo update class to use irr based icon
                        { id: "irData", type: "subMenu", label: getIRMsg( "DATA" ), hide: false, icon: "icon-ig-data", menu: { items: [
                            { id: "irOrdering", type: ACTION, label: getIRMsg( "SORT" ), hide: true, icon: "icon-irr-sort", action: function () {
                                that._controlsGet( SHOW_ORDERING );
                            } },
                            { id: "irGroupBySort", type: ACTION, label: getIRMsg( "GROUP_BY_SORT" ), hide: true, icon: "icon-irr-sort", action: function () {
                                that._controlsGet( SHOW_GROUP_BY_SORT );
                            } },
                            { id: "irPivotSort", type: ACTION, label: getIRMsg( "PIVOT_SORT" ), hide: true, icon: "icon-irr-sort", action: function () {
                                that._controlsGet( SHOW_PIVOT_SORT );
                            } },
                            { id: "irAggregate", type: ACTION, label: getIRMsg( "AGGREGATE" ), hide: true, icon: "icon-irr-aggregate", action: function () {
                                that._controlsGet( SHOW_AGGREGATE );
                            } },
                            { id: "irCompute", type: ACTION, label: getIRMsg( "COMPUTE" ), hide: true, icon: "icon-irr-compute", action: function () {
                                that._computationShow();
                            } },
                            { id: "irFlashback", type: ACTION, label: getIRMsg( "FLASHBACK" ), hide: true, icon: "icon-irr-flashback", action: function () {
                                that._controlsGet( SHOW_FLASHBACK );
                            } }
                        ]}
                        },
                        { id: "irFormat", type: "subMenu", label: getIRMsg( "FORMAT" ), hide: false, icon: "icon-irr-format", menu: { items: [

                            { id: "irCtrlBreak", type: ACTION, label: getIRMsg( "CONTROL_BREAK" ), hide: true, icon: "icon-irr-control-break", action: function () {
                                that._controlsGet( SHOW_CTRL_BREAK );
                            } },
                            { id: "irHighlight", type: ACTION, label: getIRMsg( "HIGHLIGHT" ), hide: true, icon: "icon-irr-highlight", action: function () {
                                that._controlsGet( SHOW_HIGHLIGHT );
                            } },
                            { id: "irRowsPerPage", type: "subMenu", label: getIRMsg( "ROWS_PER_PAGE" ), hide: true, icon: "icon-irr-rows", menu: { items: [
                                { type: "radioGroup", set: function ( v ) {
                                    that.options.currentRowsPerPage = v * 1;
                                    that._search( "SEARCH" );
                                }, get: function () {
                                    return that.options.currentRowsPerPage;
                                }, choices: [
                                ] }
                            ]}
                            }
                        ]}
                        },
                        { type: "separator" },
                        { id: "irChart", type: ACTION, label: getIRMsg( "CHART" ), hide: true, icon: "icon-irr-chart", action: function () {
                            that._controlsGet( SHOW_CHART );
                        } },
                        { id: "irGroupBy", type: ACTION, label: getIRMsg( "GROUP_BY" ), hide: true, icon: "icon-irr-group-by", action: function () {
                            that._controlsGet( SHOW_GROUP_BY );
                        } },
                        { id: "irPivot", type: ACTION, label: getIRMsg( "PIVOT" ), hide: true, icon: "icon-irr-pivot", action: function () {
                            that._controlsGet( SHOW_PIVOT );
                        } },
                        { type: "separator" },
                        { id: "irReport", type: "subMenu", label: getIRMsg( "REPORT" ), hide: false, icon: "icon-irr-saved-report", menu: { items: [
                            //todo-51 update icon to use 'irr' equivalent for both save and save default
                            { id: "irSaveReport", type: ACTION, label: getIRMsg( "SAVE_REPORT" ), hide: true, icon: "icon-ig-save", action: function () {
                                that._controlsGet( SAVE_REPORT );
                            } },
                            { id: "irSaveDefault", type: ACTION, label: getIRMsg( "SAVE_REPORT_DEFAULT" ), hide: true, icon: "icon-ig-save", action: function () {
                                that._controlsGet( SHOW_SAVE_DEFAULT );
                            } },
                            { type: "separator" },
                            { id: "irReset", type: ACTION, label: getIRMsg( "RESET" ), hide: true, icon: "icon-irr-reset", action: function () {
                                that._controlsGet( SHOW_RESET );
                            } }
                        ]}
                        },
                        { type: "separator" },
                        { id: "irDownload", type: ACTION, label: getIRMsg( "DOWNLOAD" ), hide: true, icon: "icon-irr-download", action: function () {
                            that._controlsGet( SHOW_DOWNLOAD );
                        } },
                        { id: "irNotify", type: ACTION, label: getIRMsg( "SUBSCRIPTION" ), hide: true, icon: "icon-irr-subscription", action: function () {
                            that._controlsGet( SHOW_NOTIFY );
                        } },
                        { type: "separator" },
                        { id: "irHelp", type: ACTION, label: getIRMsg( "HELP" ), hide: true, icon: "icon-irr-help", action: function () {
                            navigation.popup.url( that.options.helpLink );
                        } }
                    ],
                    beforeOpen: function( event, menu ) {
                        var rpp, rowsPerPageItemChoices, maxRows,
                            items = menu.menu.items,
                            dataItem = findById( items, "irData" ),
                            dataSubItems = dataItem.menu.items,
                            orderingItem = findById( dataSubItems, "irOrdering" ),
                            aggregateItem = findById( dataSubItems, "irAggregate" ),
                            flashbackItem = findById( dataSubItems, "irFlashback" ),
                            computeItem = findById( dataSubItems, "irCompute" ),
                            groupBySortItem = findById( dataSubItems, "irGroupBySort" ),
                            pivotSortItem = findById( dataSubItems, "irPivotSort" ),
                            formatItem = findById( items, "irFormat" ),
                            formatSubItems = formatItem.menu.items,
                            ctrlBreakItem = findById( formatSubItems, "irCtrlBreak" ),
                            highlightItem = findById( formatSubItems, "irHighlight" ),
                            rowsPerPageItem = findById( formatSubItems, "irRowsPerPage" ),
                            reportItem = findById( items, "irReport" ),
                            reportSubItems = reportItem.menu.items;

                        that._dialogReset();
                        that._sortWidgetHide();

                        // display select columns menu only for report view
                        findById( items, "irColumn" ).hide = !( o.selectColumns && that.viewMode === REPORT );
                        findById( items, "irFilter" ).hide = !o.filter;

                        /*
                         * Data sub-menu
                         */
                        dataItem.hide = true;
                        if ( that.viewMode === REPORT ) {
                            if ( o.sort || o.aggregate || o.flashback || o.compute ) {
                                dataItem.hide = false;
                                orderingItem.hide = !o.sort;
                                aggregateItem.hide = !o.aggregate;
                                flashbackItem.hide = !o.flashback;
                                computeItem.hide = !o.compute;
                                groupBySortItem.hide = true;
                                pivotSortItem.hide = true;
                            }
                        } else if ( that.viewMode === GROUP_BY ) {
                            if ( o.groupBy ) {
                                dataItem.hide = false;
                                orderingItem.hide = true;
                                aggregateItem.hide = true;
                                flashbackItem.hide = !o.flashback;
                                computeItem.hide = true;
                                groupBySortItem.hide = false;
                                pivotSortItem.hide = true;
                            }
                        } else if ( that.viewMode === PIVOT ) {
                            if ( o.pivot ) {
                                dataItem.hide = false;
                                orderingItem.hide = true;
                                aggregateItem.hide = true;
                                flashbackItem.hide = !o.flashback;
                                computeItem.hide = true;
                                groupBySortItem.hide = true;
                                pivotSortItem.hide = false;
                            }
                        } else if ( that.viewMode === CHART ) {
                            dataItem.hide = false;
                            orderingItem.hide = true;
                            aggregateItem.hide = true;
                            flashbackItem.hide = !o.flashback;
                            computeItem.hide = true;
                            groupBySortItem.hide = true;
                            pivotSortItem.hide = true;
                        }

                        /*
                         * Format sub-menu
                         */
                        formatItem.hide = true;
                        if ( that.viewMode === REPORT ) {
                            if ( o.controlBreak || o.highlight ) {
                                formatItem.hide = false;
                                ctrlBreakItem.hide = !o.controlBreak;
                                highlightItem.hide = !o.highlight;
                                rowsPerPageItem.hide = !o.rowsPerPage;
                            }
                        } else if ( that.viewMode === GROUP_BY ) {
                            if ( o.groupBy ) {
                                formatItem.hide = false;
                                ctrlBreakItem.hide = true;
                                highlightItem.hide = true;
                                rowsPerPageItem.hide = !o.rowsPerPage;
                            }
                        } else if ( that.viewMode === PIVOT ) {
                            if ( o.pivot ) {
                                formatItem.hide = false;
                                ctrlBreakItem.hide = true;
                                highlightItem.hide = true;
                                rowsPerPageItem.hide = !o.rowsPerPage;
                            }
                        } else if ( that.viewMode === CHART ) {
                            formatItem.hide = false;
                            ctrlBreakItem.hide = true;
                            highlightItem.hide = true;
                            rowsPerPageItem.hide = !o.rowsPerPage;
                        }
                        if ( o.rowsPerPage ) {
                            rowsPerPageItem = findById( formatSubItems, "irRowsPerPage" );
                            rowsPerPageItem.menu.items[ 0 ].choices = [];
                            rowsPerPageItemChoices = rowsPerPageItem.menu.items[ 0 ].choices;
                            maxRows = getMaxRows( o.maxRowsPerPage, o.maxRowCount );

                            for ( i = 0; i < rowsPerPageChoices.length; i++ ) {
                                rpp = rowsPerPageChoices[ i ];

                                // If neither max row count or max rows per page are defined, maxRows will be null,
                                // in which case we still want the rows per page selector, so allow null maxRows (bug #27062517)
                                if ( maxRows && rpp > maxRows ) {
                                    break;
                                }
                                rowsPerPageItemChoices.push(
                                    { label: "" + rpp, value: rpp }
                                );
                            }

                            // If no max rows per page defined, add 'All' option
                            if ( !o.maxRowsPerPage ) {
                                rowsPerPageItemChoices.push(
                                    { label: getIRMsg( "ALL" ), value: 100000 }
                                );
                            }
                        }

                        /*
                         * Views
                         */
                        if ( that.viewMode === REPORT ) {
                            if ( o.chart || o.groupBy || o.pivot ) {
                                findById( items, "irChart" ).hide = !o.chart;
                                findById( items, "irGroupBy" ).hide = !o.groupBy;
                                findById( items, "irPivot" ).hide = !o.pivot;
                            }
                        } else if ( that.viewMode === GROUP_BY ) {
                            if ( o.groupBy ) {
                                findById( items, "irChart" ).hide = true;
                                findById( items, "irGroupBy" ).hide = false;
                                findById( items, "irPivot" ).hide = true;
                            }
                        } else if ( that.viewMode === PIVOT ) {
                            if ( o.pivot ) {
                                findById( items, "irChart" ).hide = true;
                                findById( items, "irGroupBy" ).hide = true;
                                findById( items, "irPivot" ).hide = false;
                            }
                        } else if ( that.viewMode === CHART ) {
                            findById( items, "irChart" ).hide = false;
                            findById( items, "irGroupBy" ).hide = true;
                            findById( items, "irPivot" ).hide = true;
                        }

                        /*
                         * Report sub-menu
                         */
                        reportItem.hide = true;
                        if ( o.saveReport || o.saveDefaultReport || o.reset ) {
                            reportItem.hide = false;
                            findById( reportSubItems, "irSaveReport" ).hide = !o.saveReport;
                            findById( reportSubItems, "irSaveDefault" ).hide = !o.saveDefaultReport;
                            findById( reportSubItems, "irReset" ).hide = !o.reset;
                        }

                        // 'download' and 'subscription' options both indicate if the developer has download enabled.
                        // if both cases, we also need to check the current view supports it.
                        findById( items, "irDownload" ).hide = !( o.download && $.inArray( that.viewMode, [ REPORT, GROUP_BY, PIVOT ] ) !== -1 );
                        findById( items, "irNotify" ).hide = !( o.subscription && $.inArray( that.viewMode, [ REPORT, GROUP_BY, PIVOT ] ) !== -1 );

                        findById( items, "irHelp" ).hide = !o.help;
                    }
                };


            } else {
                lActionMenu = {
                    items: [
                        { id: "irColumn", type: ACTION, label: getIRMsg( "SELECT_COLUMNS" ), hide: true, icon: "icon-irr-select-cols", action: function () {
                            that._controlsGet( SHOW_COLUMN, "COLUMN" );
                        } },
                        { type: "separator" },
                        { id: "irFilter", type: ACTION, label: getIRMsg( "FILTER" ), hide: true, icon: "icon-irr-filter" , action: function () {
                            that._controlsGet( SHOW_FILTER );
                        } },
                        { id: "irRowsPerPage", type: "subMenu", label: getIRMsg( "ROWS_PER_PAGE" ), hide: true, icon: "icon-irr-rows", menu: { items: [
                            { type: "radioGroup", set: function ( v ) {
                                that.options.currentRowsPerPage = v * 1;
                                that._search( "SEARCH" );
                            }, get: function () {
                                return that.options.currentRowsPerPage;
                            }, choices: [
                            ] }
                        ]}
                        },
                        { id: "irFormat", type: "subMenu", label: getIRMsg( "FORMAT" ), hide: false, icon: "icon-irr-format", menu: { items: [
                            { id: "irOrdering", type: ACTION, label: getIRMsg( "SORT" ), hide: true, icon: "icon-irr-sort", action: function () {
                                that._controlsGet( SHOW_ORDERING );
                            } },
                            { id: "irCtrlBreak", type: ACTION, label: getIRMsg( "CONTROL_BREAK" ), hide: true, icon: "icon-irr-control-break", action: function () {
                                that._controlsGet( SHOW_CTRL_BREAK );
                            } },
                            { id: "irHighlight", type: ACTION, label: getIRMsg( "HIGHLIGHT" ), hide: true, icon: "icon-irr-highlight", action: function () {
                                that._controlsGet( SHOW_HIGHLIGHT );
                            } },
                            { id: "irCompute", type: ACTION, label: getIRMsg( "COMPUTE" ), hide: true, icon: "icon-irr-compute", action: function () {
                                that._computationShow();
                            } },
                            { id: "irAggregate", type: ACTION, label: getIRMsg( "AGGREGATE" ), hide: true, icon: "icon-irr-aggregate", action: function () {
                                that._controlsGet( SHOW_AGGREGATE );
                            } },
                            { id: "irChart", type: ACTION, label: getIRMsg( "CHART" ), hide: true, icon: "icon-irr-chart", action: function () {
                                that._controlsGet( SHOW_CHART );
                            } },
                            { id: "irGroupBySort", type: ACTION, label: getIRMsg( "GROUP_BY_SORT" ), hide: true, icon: "icon-irr-sort", action: function () {
                                that._controlsGet( SHOW_GROUP_BY_SORT );
                            } },
                            { id: "irGroupBy", type: ACTION, label: getIRMsg( "GROUP_BY" ), hide: true, icon: "icon-irr-group-by", action: function () {
                                that._controlsGet( SHOW_GROUP_BY );
                            } },
                            { id: "irPivotSort", type: ACTION, label: getIRMsg( "PIVOT_SORT" ), hide: true, icon: "icon-irr-sort", action: function () {
                                that._controlsGet( SHOW_PIVOT_SORT );
                            } },
                            { id: "irPivot", type: ACTION, label: getIRMsg( "PIVOT" ), hide: true, icon: "icon-irr-pivot", action: function () {
                                that._controlsGet( SHOW_PIVOT );
                            } }
                        ]}
                        },
                        { type: "separator" },
                        { id: "irFlashback", type: ACTION, label: getIRMsg( "FLASHBACK" ), hide: true, icon: "icon-irr-flashback", action: function () {
                            that._controlsGet( SHOW_FLASHBACK );
                        } },
                        { type: "separator" },
                        { id: "irSaveReport", type: ACTION, label: getIRMsg( "SAVE_REPORT" ), hide: true, icon: "icon-irr-saved-report", action: function () {
                            that._controlsGet( SAVE_REPORT );
                        } },
                        { id: "irSaveDefault", type: ACTION, label: getIRMsg( "SAVE_REPORT_DEFAULT" ), hide: true, icon: "icon-irr-saved-report", action: function () {
                            that._controlsGet( SHOW_SAVE_DEFAULT );
                        } },
                        { id: "irReset", type: ACTION, label: getIRMsg( "RESET" ), hide: true, icon: "icon-irr-reset", action: function () {
                            that._controlsGet( SHOW_RESET );
                        } },
                        { type: "separator" },
                        { id: "irHelp", type: ACTION, label: getIRMsg( "HELP" ), hide: true, icon: "icon-irr-help", action: function () {
                            navigation.popup.url( that.options.helpLink );
                        } },
                        { type: "separator" },
                        { id: "irDownload", type: ACTION, label: getIRMsg( "DOWNLOAD" ), hide: true, icon: "icon-irr-download", action: function () {
                            that._controlsGet( SHOW_DOWNLOAD );
                        } },
                        { id: "irNotify", type: ACTION, label: getIRMsg( "SUBSCRIPTION" ), hide: true, icon: "icon-irr-subscription", action: function () {
                            that._controlsGet( SHOW_NOTIFY );
                        } }
                    ],
                    beforeOpen: function( event, menu ) {
                        var rpp, rowsPerPageItem, rowsPerPageItemChoices, maxRows,
                            items = menu.menu.items,
                            formatItem = findById( items, "irFormat" ),
                            formatSubItems = formatItem.menu.items,
                            orderingItem = findById( formatSubItems, "irOrdering" ),
                            ctrlBreakItem = findById( formatSubItems, "irCtrlBreak" ),
                            highlightItem = findById( formatSubItems, "irHighlight" ),
                            computeItem = findById( formatSubItems, "irCompute" ),
                            aggregateItem = findById( formatSubItems, "irAggregate" ),
                            chartItem = findById( formatSubItems, "irChart" ),
                            groupBySortItem = findById( formatSubItems, "irGroupBySort" ),
                            groupByItem = findById( formatSubItems, "irGroupBy" ),
                            pivotSortItem = findById( formatSubItems, "irPivotSort" ),
                            pivotItem = findById( formatSubItems, "irPivot" );

                        that._dialogReset();
                        that._sortWidgetHide();

                        // display select columns menu only for report view
                        findById( items, "irColumn" ).hide = !( o.selectColumns && that.viewMode === REPORT );
                        findById( items, "irFilter" ).hide = !o.filter;
                        findById( items, "irRowsPerPage" ).hide = !o.rowsPerPage;

                        // format menu
                        formatItem.hide = true;
                        if ( that.viewMode === REPORT ) {
                            if ( o.sort || o.controlBreak || o.highlight || o.compute || o.aggregate || o.chart || o.groupBy || o.pivot ) {
                                formatItem.hide = false;
                                orderingItem.hide = !o.sort;
                                ctrlBreakItem.hide = !o.controlBreak;
                                highlightItem.hide = !o.highlight;
                                computeItem.hide = !o.compute;
                                aggregateItem.hide = !o.aggregate;
                                chartItem.hide = !o.chart;
                                groupBySortItem.hide = true;
                                groupByItem.hide = !o.groupBy;
                                pivotSortItem.hide = true;
                                pivotItem.hide = !o.pivot;
                            }
                        } else if ( that.viewMode === GROUP_BY ) {
                            if ( o.groupBy ) {
                                formatItem.hide = false;
                                orderingItem.hide = true;
                                ctrlBreakItem.hide = true;
                                highlightItem.hide = true;
                                computeItem.hide = true;
                                aggregateItem.hide = true;
                                chartItem.hide = true;
                                groupBySortItem.hide = false;
                                groupByItem.hide = false;
                                pivotSortItem.hide = true;
                                pivotItem.hide = true;
                            }
                        } else if ( that.viewMode === PIVOT ) {
                            if (o.pivot) {
                                formatItem.hide = false;
                                orderingItem.hide = true;
                                ctrlBreakItem.hide = true;
                                highlightItem.hide = true;
                                computeItem.hide = true;
                                aggregateItem.hide = true;
                                chartItem.hide = true;
                                groupBySortItem.hide = true;
                                groupByItem.hide = true;
                                pivotSortItem.hide = false;
                                pivotItem.hide = false;
                            }
                        } else if ( that.viewMode === CHART ) {
                            formatItem.hide = false;
                            orderingItem.hide = true;
                            ctrlBreakItem.hide = true;
                            highlightItem.hide = true;
                            computeItem.hide = true;
                            aggregateItem.hide = true;
                            chartItem.hide = false;
                            groupBySortItem.hide = true;
                            groupByItem.hide = true;
                            pivotSortItem.hide = true;
                            pivotItem.hide = true;
                        }
                        findById( items, "irFlashback" ).hide = !o.flashback;
                        findById( items, "irSaveReport" ).hide = !o.saveReport;
                        findById( items, "irSaveDefault" ).hide = !o.saveDefaultReport;
                        findById( items, "irReset" ).hide = !o.reset;
                        findById( items, "irHelp" ).hide = !o.help;

                        // 'download' and 'subscription' options both indicate if the developer has download enabled.
                        // if both cases, we also need to check the current view supports it.
                        findById( items, "irDownload" ).hide = !( o.download && $.inArray( that.viewMode, [ REPORT, GROUP_BY, PIVOT ] ) !== -1 );
                        findById( items, "irNotify" ).hide = !( o.subscription && $.inArray( that.viewMode, [ REPORT, GROUP_BY, PIVOT ] ) !== -1 );

                        if ( o.rowsPerPage ) {
                            rowsPerPageItem = findById( items, "irRowsPerPage" );
                            rowsPerPageItem.menu.items[ 0 ].choices = [];
                            rowsPerPageItemChoices = rowsPerPageItem.menu.items[ 0 ].choices;
                            maxRows = getMaxRows( o.maxRowsPerPage, o.maxRowCount );

                            for ( i = 0; i < rowsPerPageChoices.length; i++ ) {
                                rpp = rowsPerPageChoices[ i ];

                                // If neither max row count or max rows per page are defined, maxRows will be null,
                                // in which case we still want the rows per page selector, so allow null maxRows (bug #27062517)
                                if ( maxRows && rpp > maxRows ) {
                                    break;
                                }
                                rowsPerPageItemChoices.push(
                                    { label: "" + rpp, value: rpp }
                                );
                            }

                            // If no max rows per page defined, add 'All' option
                            if ( !o.maxRowsPerPage ) {
                                rowsPerPageItemChoices.push(
                                    { label: getIRMsg( "ALL" ), value: 100000 }
                                );
                            }
                        }
                    }
                };
            }


            if ( o.toolbar && o.actionsMenu ) {
                that._getElement( "actions_menu" ).menu( lActionMenu );
            }
        },
        /**
         * Event handlers that are registered on _create
         *
         * @function _initOnCreate
         **/
        _initOnCreate: function() {

            function _setCurrentElementId( pEvent ) {
                this.currentElementId = $( pEvent.target ).attr( "id" );
            }

            var o = this.options,
                self = this;


            if ( o.toolbar ) {
                this._initToolbar( true );
            }

            this._initControlPanel();

            // move column sort popup to the end of the document so that it doesn't get clipped
            $( document.body ).append( this._getElement( "sort_widget" ) );

            // Track current element for better focus management (bug #28293165). Mainly handled by focusin, but also
            // requires some logic on click for cases where focusin doesn't trigger (button click, enabling / disabling
            // settings).
            // Note: By virtue of being handlers on this.element, this logic will (correctly) exclude setting the
            // current element when focusing / clicking on elements in menu's, dialogs, etc.
            this._on( this.element, {
                "focusin": _setCurrentElementId,
                "click button, input[type=checkbox]": _setCurrentElementId
            });

            this._on( this.element, {
                "click a.a-IRR-headerLink": function( pEvent ) {
                    if ( this.viewMode === REPORT ) {
                        this._controlsGet( "SORT_WIDGET", $( pEvent.currentTarget ).data( "column" ) );
                    } else if ( this.viewMode === GROUP_BY ) {
                        this._controlsGet( SHOW_GROUP_BY_SORT );
                    } else if ( this.viewMode === PIVOT ) {
                        this._controlsGet( SHOW_PIVOT_SORT );
                    }
                    pEvent.preventDefault();
                }
            });

            // Pagination
            this._on( this.element, {
                "click button.a-IRR-button--pagination": function( pEvent ) {
                    if ( o.detailLink && this.currentControl === "SHOW_DETAIL" ) {
                        this._controlsRow( $( pEvent.currentTarget ).data( "row-id" ) );
                    } else if ( o.pagination ) {
                        this._paginate( $( pEvent.currentTarget ).data( "pagination" ) );
                    }
                },
                "click a.a-IRR-pagination-reset": function( pEvent ) {
                    this._search( "SEARCH" );
                    pEvent.preventDefault();
                }
            });
            if ( o.pagination ) {
                this._on( this.element, {
                    "click a.a-IRR-pagination-reset": function( pEvent ) {
                        this._search( "SEARCH" );
                        pEvent.preventDefault();
                    }
                });
            }

            // Single row view
            if ( o.detailLink ) {
                this._on( this.element, {
                    "click a.a-IRR-detail-row": function ( pEvent ) {
                        this._controlsRow( $( pEvent.currentTarget ).data( "row-id" ) );
                        pEvent.preventDefault();
                    }
                });
            }

            // Fixed header
            this._initFixedHeader();

            // Setup the handler for when visibility changes, in the case of a show we need to refresh any sticky
            // widgets and also trigger a resize event so that any listeners can resize accordingly (eg UT)
            apex.widget.util.onVisibilityChange( this.element[ 0 ], function( pShow ) {
                if ( pShow ) {
                    self.element.find( ".js-stickyTableHeader" ).trigger( "forceresize" );

                    // when the widget gets shown, if we need to be lazy loaded, refresh ourselves
                    // but only once
                    if(self.needsLazyLoading){
                        self.needsLazyLoading = false;
                        self.refresh();
                    }
                }
            });

        },
        /*
         * Initialises the toolbar, including menus
         */
        _initToolbar: function ( pOnCreate ) {
            var o = this.options,
                that = this;

            that._setIRHighlight();
            util.setPCTGraphStyles();

            // Search field
            if ( o.searchField ) {
                this._on( this._getElement( "search_field" ), {
                    "keydown": function ( pEvent ) {
                        if ( pEvent.which === $.ui.keyCode.ENTER ) {
                            this._search( "SEARCH" );
                            pEvent.preventDefault();
                        }
                    }
                });
                this._on( this._getElement( "search_button" ), {
                    "click": function ( pEvent ) {
                        this._search("SEARCH");
                        pEvent.preventDefault();
                    }
                });

                if ( o.columnSearch ) {
                    // initialize the search menu on create
                    if ( pOnCreate ) {
                        this._getElement( "column_search_drop" ).menu( {
                            asyncFetchMenu: function(menu, callback) {
                                that.searchMenu = menu;
                                that.searchMenuCallback = callback;
                                that._controlsGet( "SEARCH_COLUMN" );
                            },
                            afterClose: function( event, data ) {
                                // radio menu item choices don't allow the set method to set focus
                                // so set focus here after a delay because the menu will put the focus back on the
                                // menu button after a delay
                                if ( data.actionTaken ) {
                                    setTimeout(function() {
                                        that._getElement( "search_field" ).trigger( "focus" );
                                    }, 100);
                                }
                            },
                            items: [] // no items to start with they get filled in async
                        } );
                    }
                    // note: you wont see any code to open or toggle the search column menu because it is a menu button
                }
            }

            // Row select list
            if ( o.rowsPerPageSelect ) {
                this._on( this._getElement( "row_select" ), {
                    "change": function ( pEvent ) {
                        var lRowValue = pEvent.target.value;
                        this._search( "SEARCH", lRowValue );
                        pEvent.preventDefault();
                    }
                });
            }

            // Saved reports select list
            if ( o.reportsSelect ) {
                this._on( this._getElement( "saved_reports" ), {
                    "change": function ( pEvent ) {
                        var lReportId = pEvent.target.value;
                        this._pull( {pAction: "REPORT_CHANGED", pReportId: lReportId} );
                        pEvent.preventDefault();
                    }
                });
            }

            // View buttons
            this._on( this._getElement( "toolbar_controls" ), {
                "click .a-IRR-button--views": function ( pEvent ) {
                    var lView = $( pEvent.currentTarget ).data( "view" );
                    switch ( lView ) {
                        case "report":
                            this._reportView( REPORT );
                            break;
                        case "icon":
                            this._reportView( ICON );
                            break;
                        case "details":
                            this._reportView( DETAIL );
                            break;
                        case "chart":
                            this._chartView();
                            break;
                        case "group_by":
                            this._groupByView();
                            break;
                        case "pivot":
                            this._pivotView();
                            break;
                    }
                    //pEvent.preventDefault();
                }
            });

            // Actions menu
            if ( o.actionsMenu ) {
                // init the actions menu only once on create
                if ( pOnCreate ) {
                    this._initMenus();
                }
                // note: you wont see any code to open or toggle the actions menu because it is a menu button
            }
        },

        _inlinePicker: function( pControl, pData ) {
            const
                out = util.htmlBuilder(),
                lData = JSON.parse( pData ),
                lIcon$ = $( "[data-picker-for=" + util.escapeCSS( this.tempReturnElement$.attr( "id" ) ) + "]", this._getElement( DIALOG_JS_ID ) ),
                lInput$ = $( "#" + this.tempReturnElement$.attr( "id" ) ),
                lInputDialog$ = lInput$.closest( ".ui-dialog" ),
                lColValuesDropId = this._getId( "col_values_drop" ),
                selColValuesDrop = "#" + lColValuesDropId;
            let lColValuesDrop$;

            out.markup( "<div" )
                .attr( "role", "listbox" )
                .attr( ARIA_LABEL, getMsg( "APEX.POPUP_LOV.LIST_OF_VALUES" ) )
                .attr( "id", lColValuesDropId )
                .attr( "class", "a-IRR-col-values-drop" )
                .attr( "style", "position:fixed;top:" + ( lInput$[0].getBoundingClientRect().top + lInput$.outerHeight() ) +
                                "px;left:" + lInput$.offset().left + "px" )
                .markup( ">" );
            for ( let i = 0; i < lData.row.length; i++ ) {
                out.markup( "<a" )
                    .attr( "href", "#" )
                    .attr( "role", "option" )
                    .attr( "class", C_IRR_COL_VALUE )
                    .attr( "data-return-value", lData.row[ i ].R )
                    .markup( ">" )
                    .markup( lData.row[ i ].D ) // Escaping handled server-side according to column definition
                    .markup( "</a>" );
            }
            out.markup( "</div>" );
            // Popup LOV should not be clipped by the modal dialog. Temporarily set overflow to visible
            // The staticly positioned content of the dialog (ui-dialog-content) still has overflow:hidden
            lInputDialog$.css( "overflow", "visible" );
            // To be accessible with JAWS, the LOV code should be inside an element with role="dialog" (aria-modal=true)
            lInputDialog$.append( out.toString() );
            lColValuesDrop$ = $( selColValuesDrop );
            if( pControl === "NARROW" ) {
                this._on( lColValuesDrop$, {
                    "click a.a-IRR-col-value": function( pEvent ) {
                        var lCurrentValue,
                            lSelectedValue = $( pEvent.currentTarget ).data( "returnValue" ),
                            lCurrentOperator = this._dialogCurrentOperator().val();

                        if ( lCurrentOperator === "in" || lCurrentOperator === "not in" ) {
                            lCurrentValue = this.tempReturnElement$.val();
                            if ( lCurrentValue ) {
                                lSelectedValue = lCurrentValue + "," + lSelectedValue;
                            }
                            this.tempReturnElement$.val( lSelectedValue );
                        } else {
                            this.tempReturnElement$.val( lSelectedValue );
                            // Remove temporarily set overflow which was added to avoid the popup to be clipped
                            lInputDialog$.css( "overflow", "" );
                            lColValuesDrop$.remove();
                            this.tempReturnElement$.trigger( "focus" );
                        }
                        pEvent.preventDefault();
                    }
                });
            } else {
                this._on( lColValuesDrop$, {
                    "click a.a-IRR-col-value": function( pEvent ) {
                        var lSelectedValue = $( pEvent.currentTarget ).data( "returnValue" );
                        this.tempReturnElement$.val( lSelectedValue );
                        // Remove temporarily set overflow which was added to avoid the popup to be clipped
                        lInputDialog$.css( "overflow", "" );
                        lColValuesDrop$.remove();
                        this.tempReturnElement$.trigger( "focus" );
                        pEvent.preventDefault();
                    }
                });
            }

            // Bind keydown handler for keyboard navigation of narrow list, delegated to DIV container
            this._on( lColValuesDrop$, {
                "keydown a": function ( pEvent ) {
                    var lAnchorList$        = lColValuesDrop$.find( "a" ),  //$( "#apexir_col_values_drop a" ),
                        lCurrentIndex       = lAnchorList$.index( $( pEvent.target ) ),
                        lAnchorListLength   = lAnchorList$.length - 1;     /* minus 1, as this value is used to
                                                                            * compare to the current index, which
                                                                            * is itself zero indexed */

                    // Take anchors out of the natural tab order. Only UP and DOWN keys will work to move up
                    // and down the menu options. TAB will move to the next control out of the menu.
                    lAnchorList$.attr( "tabindex", -1 );
                    switch ( pEvent.which ) {
                        case $.ui.keyCode.DOWN:
                            if ( lCurrentIndex < lAnchorListLength ) {
                                // Move focus down if this is not the last anchor in the list
                                lAnchorList$.eq( lCurrentIndex + 1 )
                                    .attr( "tabindex", 0 )
                                    .trigger( "focus" );
                            } else {
                                // Move focus to first element if this is the last
                                lAnchorList$.eq( 0 )
                                    .attr( "tabindex", 0 )
                                    .trigger( "focus" );
                            }
                            pEvent.preventDefault();
                            break;
                        case $.ui.keyCode.UP:
                            if ( lCurrentIndex > 0 ) {
                                // Move focus up if this is not the first anchor in the list
                                lAnchorList$.eq( lCurrentIndex - 1 )
                                    .attr( "tabindex", 0 )
                                    .trigger( "focus" );
                            } else {
                                // Move focus to last element if this is the first
                                lAnchorList$.eq( lAnchorListLength )
                                    .attr( "tabindex", 0 )
                                    .trigger( "focus" );
                            }
                            pEvent.preventDefault();
                            break;
                        case $.ui.keyCode.TAB:

                            // If the user tabs, close the menu. We can't rely on browser to naturally set the
                            // focus for the next element, because different browsers behave differently (Firefox
                            // sets focus back to expression input, chrome sets focus back to top of the page).
                            // So we explicitly set this back to the calling popup icon.
                            // Remove temporarily set overflow which was added to avoid the popup to be clipped
                            lInputDialog$.css( "overflow", "" );
                            lColValuesDrop$.remove();
                            lIcon$.trigger( "focus" );
                            pEvent.preventDefault();
                            break;
                        case $.ui.keyCode.ESCAPE:

                            // If the user hits ESC, close the menu and move focus back to calling popup icon.
                            // Also stop immediate propagation so the event handlers at document level for
                            // Actions menu IRR keyboard support do not get triggered.
                            // Remove temporarily set overflow which was added to avoid the popup to be clipped
                            lInputDialog$.css( "overflow", "" );
                            lColValuesDrop$.remove();
                            lIcon$.trigger( "focus" );
                            pEvent.stopImmediatePropagation();
                            break;
                        default:
                            null;
                    }
                }
            });

            // set up event handler to handle when the user clicks outside the container or drag the modal dialog
            this._dialogCheck( selColValuesDrop, function() {
                // Remove temporarily set overflow which was added to avoid the popup to be clipped
                lInputDialog$.css( "overflow", "" );
                lColValuesDrop$.remove();
            });

    // close on page scroll
            this._on( this.document, {
                scroll: function( pEvent ) {
                    if ( !$( pEvent.target ).closest( selColValuesDrop ).length ) {
                        // Remove temporarily set overflow which was added to avoid the popup to be clipped
                        lInputDialog$.css( "overflow", "" );
                        lColValuesDrop$.remove();
                    }
                }
            });

            // Return what we want to set focus to the first element
            return lColValuesDrop$.find( "a:first" );
        },

        /**
         * @ignore
         * */
        _paginate: function( pData ) {
            this._action( PAGE, {
                widgetActionMod: pData
            });
        },

        /**
         * @ignore
         */
        _notifyClear: function() {
            this._action( "DELETE_NOTIFY", {
                id: this._getDialogElement( "notify_id" ).val()
            });
        },
        /**
         * Saves a report notification via SAVE_NOTIFY action, passing item values via f01
         */
        _notifySave: function() {
            var lIds = [ this._getId( "notify_id" ),
                         this._getId( "email_address" ),
                         this._getId( "email_subject" ),
                         this._getId( "notify_interval" ),
                         this._getId( "skip_if_ndf" ),
                         this._getId( "start_date" ),
                         this._getId( "end_date" ),
                         this._getId( "download_format" ),
                         this._getId( "data_only" ),
                         this._getId( "pdf_page_size" ),
                         this._getId( "pdf_orientation" ),
                         this._getId( "strip_rich_text" ),
                         this._getId( "accessible" ) ],
            lRequired = [ this._getId( "download_format" ) ],
            lValidate = $f_get_emptys( lRequired, "error", "" );

            if ( lValidate ) {
                return;
            }

            this._action( "SAVE_NOTIFY", {
                f01:    lIds,
                f02:    this._utilGetFormElValues( lIds )
            });
        },

        _pivotMaxValue: 3,
        _pivotRemove: function() {
            this._action( "DELETE_PIVOT" );
        },
        _pivotSave: function() {
            var lFArrays = this._utilGetFormElAttributes();
            this._action( "SAVE_PIVOT", {
                f01: lFArrays.ids,
                f02: lFArrays.values
            });
        },
        _pivotSort: function( pThis ) {
            var lFArrays,
                lPivotId = this._getDialogElement( "pivot_id" ).val();

            if( pThis === ASC || pThis === DESC ) {
                this.lastColumnId = pThis.id;
                this._action( "PIVOT_COLUMN_SORT", {
                    id:     lPivotId,
                    f01:    this.lastColumnId,
                    f02:    pThis
                });
            } else {
                lFArrays = this._utilGetFormElAttributes();
                this._action( "PIVOT_SORT", {
                    id:     lPivotId,
                    f01:    lFArrays.ids,
                    f02:    lFArrays.values
                });
            }
        },
        _pivotView: function() {
            this._action( "VIEW_PIVOT" );
        },

        /**
         * Pull worksheet report setting pReportId to current report
         * @function
         * */
        _pull: function( { pAction, pReportId, pData } ) {
            var lData = $.extend( {
                widgetMod:      "PULL",
                widgetAction:   pAction,
                keepPagination: pData?.keepPagination
            }, pData );
            if( pReportId ) {
                this.reportId = pReportId;
            }
            this._get( lData );
        },

        /**
         * Delete current worksheet report
         * @function
         * */
        _remove: function( pAction ) {
            var lAction = "DELETE";
            if ( pAction ) {
                lAction = pAction;
            }
            this._action( lAction );
        },

        /*
         * Controls the current view of the region (report, icon, etc.)
         */
        _reportView: function( pMode ) {
            this.options.reportViewMode = pMode;
            this._action( "VIEW_REPORT", {
                p_widget_view_mode: this.options.reportViewMode
            });
        },

        /**
         * Reset current worksheet report to initial state
         * @function
         * */
        _reset: function() {
            this._action( "RESET" );
        },

        /**
         * Save or Rename current worksheet report state
         * @function
         * @param {String} pReportId      Passed for a rename (although the report Id is actually determined from the form items)
         * */
        _save: function( pReportId ) {
            var lIds = [],
                lAction = "SAVE",
                lReportNameId = this._getId( "report_name" ),
                lValidate = $f_get_emptys( [ lReportNameId ], "error", "" );

            if ( lValidate ) {
                return;
            }
            if ( pReportId ) {
                lAction = "RENAME";
            }
            lIds.push( lReportNameId );
            lIds.push( this._getId( "public_report" ) );    //todo don't need to send this when save public reports is off
            lIds.push( this._getId( "report_description" ) );
            this._action( lAction, {
                f01:    lIds,
                f02:    this._utilGetFormElValues( lIds )
            });

            // Manually close dialog because this control has client-side validation, and we don't automatically close in case there's an error
            this._getElement( DIALOG_JS_ID ).dialog( "close" );
        },

        /**
         * Save current worksheet report state as default worksheet report
         * @function
         * */
        _saveDefault: function( pAction ) {
            var lValidate,
                lIds = [],
                lValues = [],
                lAction = "SAVE_DEFAULT",
                lDefaultTypeId = this._getId( "default_type" ),
                lDefaultType = $v( lDefaultTypeId ),
                lReportNameId = this._getId( "report_name" );
            if ( lDefaultType === "ALTERNATIVE" ) {
                lValidate = $f_get_emptys( [ lReportNameId ], "error", "" );
            }
            if( !lValidate ){
                if ( pAction ) {
                    lAction = pAction;
                }
                lIds.push( lDefaultTypeId );
                lValues.push( lDefaultType );

                // Only send report name if saving alternative default
                if ( lDefaultType === "ALTERNATIVE" ) {
                    lIds.push( lReportNameId );
                    lValues.push( this._getDialogElement( "report_name" ).val() );
                }
                this._action( lAction, {
                    f01:    lIds,
                    f02:    lValues
                });

                // Manually close dialog because this control has client-side validation, and we don't automatically close in case there's an error
                this._getElement( DIALOG_JS_ID ).dialog( "close" );

            }
        },

        /**
         * Init style function used by save default dialog
         * todo move to closer scope
         *
         * @function _saveDefaultTypeCheck
         **/
        _saveDefaultTypeCheck: function ( pDefaultType ) {
            var lIsAlternativeDefault = ( pDefaultType === "ALTERNATIVE" );
            this._getDialogElement( "report_name" )
                .closest( ".u-Form-fieldContainer" )
                .toggle( lIsAlternativeDefault );
        },

        /**
         * Runs the basic search functionality of the worksheet.
         * @param {String} [pThis] if set to SEARCH check
         * @param {Number} [pRows] Optionally set to control the number of rows displayed, needs to be done with the search
         *                         because the user could enter a new search, then select the rows which would issue the search
         *
         * */
        _search: function( pThis, pRows ) {
            var lData, lFArrays,
                o = this.options,
                lSearch = this._getElement( "search_field" ).val();

            // If pRows passed, this has been changed and the new value used, but only allow if either actions menu
            // row select, or search bar row select is enabled
            if ( pRows && ( o.rowsPerPage || o.rowsPerPageSelect ) ) {
                o.currentRowsPerPage = pRows * 1;
            }

            lFArrays = this._utilGetFormElAttributes( this._getId( "toolbar_controls" ) );
            lData = {
                f01:    lFArrays.ids,
                f02:    lFArrays.values
            };
            if ( lSearch === "" ) {
                this._pull( {pReportId: this.reportId, pData: lData} );
            } else {
                this._action( "QUICK_FILTER", lData );
            }
        },
        _setDateFieldFormatMask: function( pElement$, pFormatMask ) {
            if ( pElement$.length > 0 && pFormatMask ) {
                // When loading the dialog of a saved filter, setting some datepicker options can either clear or
                // change the datepicker field's display to show the format, therefore we save the value first so as
                // to be able to re-instate it after the datepicker option changes
                const lOldValue = pElement$.attr("value"),
                      currentDate = date.format( new Date(), pFormatMask );

                // Save old format mask, we check this later to see if the value is still in a valid format
                const lOldFormatMask = pElement$.attr( "format" );

                let lShowTime = false;

                if ( /HH|hh/.test( pFormatMask ) ) {
                    lShowTime = true;
                }

                // Set time / date specific options
                pElement$
                    .attr( "show-time", lShowTime )
                    .attr( "format", pFormatMask )
                    .attr( "placeholder", lang.formatMessageNoEscape( "APEX.SAMPLE_FORMAT_SHORT", currentDate ) );

                // Clear the datepicker, as setting some options cause the field to show the format
                pElement$.val( "" );

                // Set the value of the date field, but only if the old and new format masks are the same,
                // (we don't want to leave a value in there with an incorrect format mask).
                if ( pFormatMask === lOldFormatMask ) {
                    pElement$.val( lOldValue );
                }
            }
        },
        _singleRowViewClear: function() {
            var lSingleRowView$ = this._getElement( "single_row_view" ),
                lReportViewButton$ = this._getElement( "report_view" );
            this._off( lSingleRowView$ );
            this._off( lReportViewButton$ );
            lSingleRowView$.html( "" );
            return lSingleRowView$;
        },
        /** @ignore */
        _singleRowViewControl: function() {
            var lExcludeNulls$ = this._getElement( "exclude_nulls" ),
                lShowDisplayedOnly$ = this._getElement( "show_displayed_only" ),
                lIsExcludeNulls = lExcludeNulls$.prop( CHECKED ),
                lIsShowDisplayedOnly = lShowDisplayedOnly$.prop( CHECKED),
                lRows$ = $( "div.a-IRR-singleRow-row", this.element ),
                lColumnsDisplayed$ = lRows$.filter( ".is-displayed" ),
                lColumnsOther$ = lRows$.not( ".is-displayed" ),
                lColumnsNull$ = lRows$.filter( ".is-null" );

            // Show relevant columns (no need to show nulls, because displayed and other (non-displayed) covers all cases)
            lColumnsDisplayed$.show();
            lColumnsOther$.show();
            lColumnsNull$.show();

            if ( lIsExcludeNulls && lIsShowDisplayedOnly ) {
                lColumnsNull$.hide();
                lColumnsOther$.hide();
            } else if ( lIsExcludeNulls ) {
                lColumnsNull$.hide();
            } else if ( lIsShowDisplayedOnly ) {
                lColumnsOther$.hide();
            }

            // This call just updates preferences, no DOM update
            this._action( "CHANGE_DETAIL_OPTION", {
                value:  ( lIsExcludeNulls ) ? lExcludeNulls$.val() : "",
                x05:    ( lIsShowDisplayedOnly ) ? lShowDisplayedOnly$.val() : ""
            });
        },
        _singleRowViewHide: function() {
            this._singleRowViewClear().hide();
        },
        _singleRowViewShow: function( pData ) {
            var lSingleRowView$ = this._singleRowViewClear();

            this._getElement( "full_view" ).hide();
            this._getElement( "data_panel" ).val( "" );
            this._getElement( DIALOG_JS_ID ).html( "" );
            lSingleRowView$
                .html( pData )
                .show();

            // Focus back on first focusable element in single row view
            lSingleRowView$.find( ":focusable" )[ 0 ].focus();

            // Handlers specific to single row view
            if ( this.options.detailLink ) {
                this._on( this._getElement( "report_view" ), {
                    "click": function( pEvent ) {
                        this._pull( {pReportId: $( pEvent.target ).data( "report-id" )} );
                    }
                });
                this._on( lSingleRowView$, {
                    "click input.a-IRR-viewOptions-checkbox": function() {
                        this._singleRowViewControl();
                    }
                });
                $( "." + C_IRR_SINGLE_ROW_GROUP ).collapsible( {
                    collapsed: false
                });
            }
        },

        // hide the column header widget
        _sortWidgetHide: function() {
            const lSortWidget$ = this._getElement( "sort_widget" );

            if ( lSortWidget$.is( ":visible" ) ) {
                const
                    lSortWidgetAscButton$ = this._getElement( "sort_widget_action_up" ).find( SEL_IRR_SORT_WIDGET_BUTTON ),
                    lSortWidgetDescButton$ = this._getElement( "sort_widget_action_down" ).find( SEL_IRR_SORT_WIDGET_BUTTON ),
                    lSortWidgetRows$ = this._getElement( "sort_widget_rows" ),
                    lSortWidgetSearchField$ = this._getElement( "sort_widget_search_field" ),
                    lLastColumn$ = $( "[data-column=" + this.lastColumnId + "]", this.element );

                // As well as hide, we need to clear the previous position, and then re-instate the absolute positioning
                lSortWidget$
                    .removeAttr( "style" )
                    .css({
                        position:   "absolute",
                        display:    "none"
                    });
                lLastColumn$
                    .closest( ".a-IRR-header" )
                    .removeClass( C_IS_ACTIVE );
                lSortWidgetRows$.html( "" );

                // remove active state that could be on either sort up / down buttons
                $( SEL_IRR_SORT_WIDGET_BUTTON, this.element ).removeClass( C_IS_ACTIVE );
                lSortWidgetAscButton$.removeAttr( ARIA_PRESSED );
                lSortWidgetDescButton$.removeAttr( ARIA_PRESSED );

                // De-register event handlers
                this._off( lSortWidget$ );
                this._off( lSortWidgetRows$ );
                this._off( lSortWidgetSearchField$ );
            }
        },

        // sort widget executes a search in the report
        _sortWidgetSearch: function( pValue, pDoContains ) {
            var lOperator = ( pDoContains ) ? "contains" : "=";
            var lTemp = [ this.currentColumnId, lOperator, pValue, "", "" ];
            this._sortWidgetHide();
            this._action( "COL_FILTER", {
                f01: lTemp
            });
        },

        // show the column header widget
        _sortWidgetShow: function( pData ) {
                const
                    lData = JSON.parse( pData ),
                    out = util.htmlBuilder(),
                    lSortWidget$ = this._getElement( "sort_widget" ),
                    lSortWidgetHelp$ = this._getElement( "sort_widget_help" ),
                    lSortWidgetRows$ = this._getElement( "sort_widget_rows" ),
                    lCurrentColumn$ = $( "[data-column='" + this.currentColumnId + "']", this.element),
                    lSortWidgetSearch$ = this._getElement( "sort_widget_search" ),
                    lSortWidgetSearchField$ = this._getElement( "sort_widget_search_field" ),
                    colLabel = lCurrentColumn$.first().text(),
                    lSortWidgetAscButton$ = this._getElement( "sort_widget_action_up" ).find( SEL_IRR_SORT_WIDGET_BUTTON ),
                    lSortWidgetDescButton$ = this._getElement( "sort_widget_action_down" ).find( SEL_IRR_SORT_WIDGET_BUTTON );
            let lSortWidgetFirstFocusable$, lSortWidgetLastFocusable$, lRowLength;


            // sets up first and last focusable elements in the sort widget, used to trap keyboard focus
            function _sortWidgetFocusableFlags( pExcludeFirst ) {
                var lFocusableElements$ = lSortWidget$.find( ":focusable" );
                if ( !pExcludeFirst ) {
                    lSortWidgetFirstFocusable$ = lFocusableElements$.first();
                    lSortWidgetFirstFocusable$.data( "first", true );
                }
                lSortWidgetLastFocusable$ = lFocusableElements$.last();
                lSortWidgetLastFocusable$.data( "last", true );
            }

            // set visually hidden header to show the column name to screen reader users
            lSortWidget$.find( "h1" ).html( lang.formatMessage( "APEXIR_COLUMN_HEADER_ACTIONS_FOR", colLabel ) );

            // dialog.id can either be a column ID or computation ID, depending on the call
            this.computationId = lData.dialog.id;

            // Hide column help in case that's displayed
            lSortWidgetHelp$.empty().hide();
            this._getElement( "sort_widget_action_help" )
                .find( SEL_IRR_SORT_WIDGET_BUTTON )
                .removeClass( C_IS_ACTIVE )
                .attr( ARIA_PRESSED, "false" )
                .removeAttr( ARIA_DESCRIBEDBY )
                .removeAttr( ARIA_DETAILS )
                .removeAttr( ARIA_CONTROLS );

            //
            // This code shows or hides control elements
            //
            $( SEL_IRR_SORT_WIDGET_BUTTON , lSortWidget$ ).parent().show();

            lData.dialog.hide.forEach( function ( val ) {
                $( getIdSelector( val ), lSortWidget$ ).hide();
            });

            // Update lead sort active state if appropriate
            if ( lData.dialog.leadSortDir ) {
                if ( lData.dialog.leadSortDir === ASC ) {
                    lSortWidgetAscButton$.addClass( C_IS_ACTIVE )
                        .attr( ARIA_PRESSED, "true" );
                    lSortWidgetDescButton$.attr( ARIA_PRESSED, "false" );
                } else if ( lData.dialog.leadSortDir === DESC ) {
                    lSortWidgetAscButton$.attr( ARIA_PRESSED, "false" );
                    lSortWidgetDescButton$.addClass( C_IS_ACTIVE )
                        .attr( ARIA_PRESSED, "true" );
                }
            } else {
                lSortWidgetAscButton$.attr( ARIA_PRESSED, "false" );
                lSortWidgetDescButton$.attr( ARIA_PRESSED, "false" );
            }

            //
            // The following code populates the unique value list
            //
            if ( lData.dialog.uv ) {
                lRowLength = lData.dialog.row.length;
                for ( let i = 0; i < lRowLength; i++ ) {
                    let lDisplay;
                    // Check if R is truthy, and as an exception allow zero 0, as that's valid for a data value (bug 20838759)
                    if ( lData.dialog.row[ i ].R === 0 || lData.dialog.row[ i ].R ) {
                        if ( lData.dialog.row[ i ].D === 0 || lData.dialog.row[ i ].D ) {
                            lDisplay = lData.dialog.row[ i ].D;
                        }
                        else {
                            lDisplay = lData.dialog.row[ i ].R;
                        }
                        out.markup( "<a" )
                            .attr( "href", "#" )
                            .attr( "data-return-value", lData.dialog.row[ i ].R )
                            .attr( "class", "a-IRR-sortWidget-row" )
                            .markup( ">" )
                            .markup( lDisplay )  // Escaping handled server-side according to column definition
                            .markup( "</a>" );
                    }
                }
                lSortWidgetRows$.append( out.toString() );
                lSortWidgetSearch$.show();
                lSortWidgetSearchField$.val( "" );
            } else {
                lSortWidgetSearch$.hide();
            }

            lSortWidget$
                .show()
                .position({
                    my: "left top",
                    at: "left bottom",
                    of: lCurrentColumn$
                });

            lCurrentColumn$.closest( ".a-IRR-header" ).addClass( C_IS_ACTIVE );

            this.lastColumnId = this.currentColumnId;

            /*
             * Event handlers for the sort widget
             */
            this._on( lSortWidget$, {

                // handler for clicking on the sort widget actions (sort, break, etc.)
                "click button.a-IRR-sortWidget-button": function ( pEvent ) {
                    var lTargetOption = $( pEvent.currentTarget ).data( "option" );
                    switch ( lTargetOption ) {
                        case "up":
                            this._columnOrder( ASC );
                            break;
                        case "down":
                            this._columnOrder( DESC );
                            break;
                        case "hide":
                            this._columnHide();
                            break;
                        case "break":
                            this._controlBreakOn();
                            break;
                        case "help":
                            this._columnHelp();
                            break;
                        case "computation":
                            this._computationShow();
                            break;
                    }
                },
                "keydown": function (pEvent) {

                    // escape to close widget, set focus back to header
                    if ( pEvent.which === $.ui.keyCode.ESCAPE ) {
                        this._sortWidgetHide();
                        pEvent.preventDefault();
                        lCurrentColumn$.trigger( "focus" );
                    }

                    // trap keyboard focus
                    if ( pEvent.which === $.ui.keyCode.TAB ) {
                        var lGoingBackwards = !!( pEvent.shiftKey );

                        // if tabbing forwards and we've tabbed away from the last, go to the first
                        if ( !lGoingBackwards && $( pEvent.target  ).data( "last" ) ) {
                            pEvent.preventDefault();
                            lSortWidgetFirstFocusable$.trigger( "focus" );
                        }

                        // if tabbing backwards and we've tabbed away from the first, go to the last
                        if ( lGoingBackwards && $( pEvent.target ).data( "first" ) ) {
                            pEvent.preventDefault();
                            lSortWidgetLastFocusable$.trigger( "focus" );
                        }
                    }
                }
            });

            // handler for clicking on a column value to set a quick filter, does exact match on column value
            this._on( lSortWidgetRows$, {
                "click a": function ( pEvent ) {
                    this._sortWidgetSearch( $( pEvent.currentTarget ).data( "returnValue" ) );
                    pEvent.preventDefault();
                }
            });

            // sort widget search handlers
            this._on( lSortWidgetSearchField$, {

                // handler that filters the sort widget list
                "keyup": function ( pEvent ) {
                    lSortWidgetLastFocusable$.data( "last", false );
                    $d_Find( this._getId( "sort_widget_rows" ), pEvent.target.value, "a" );
                    _sortWidgetFocusableFlags( true );
                },

                // handler that triggers a report search based on the current entered filter, does contains in case
                // current filter value is part-complete
                "keydown": function ( pEvent ) {
                    if ( pEvent.which === $.ui.keyCode.ENTER ) {
                        this._sortWidgetSearch( $( pEvent.target ).val(), true );
                        pEvent.preventDefault();
                    }
                }
            });
            this._dialogCheck( null, this._sortWidgetHide );
            _sortWidgetFocusableFlags();

            // set focus to first focusable control
            lSortWidgetFirstFocusable$.trigger( "focus" );
        },

        /**
         * Utility function that returns a jQuery object containing all form elements within a container
         *
         * @function _utilGetFormEls
         **/
        _utilGetFormEls: function( pContainerId ) {
            return $( getIdSelector( pContainerId ) + " :input" ).not( "button" );
        },
        /**
         * Utility function that returns an object containing ids and values arrays for all elements in the container passed
         *
         * @function _utilGetFormElAttributes
         **/
        _utilGetFormElAttributes: function( pContainerId ) {
            var lContainerId, lIds = [], lValues = [];
            if ( pContainerId ) {
                lContainerId = pContainerId;
            } else {

                //default to dialog if not passed
                lContainerId = this._getId( DIALOG_JS_ID );
            }
            this._utilGetFormEls( lContainerId ).each( function( i, pElement ) {
                lIds.push( pElement.id );
                lValues.push( $v( pElement.id ) );
            });
            return {
                ids:    lIds,
                values: lValues
            };
        },
        /**
         * Utility function that receives an array of IDs and returns their corresponding values
         *
         * @function _utilGetFormElValues
         **/
        _utilGetFormElValues: function( pIdArray ) {
            var i, lValues = [];
            for ( i = 0; i < pIdArray.length; i++ ) {
                lValues.push( $v( pIdArray[ i ] ) );        // todo would like to not have to go through our base item framework here
            }
            return lValues;
        },
        /**
         * Utility function to replace attribute text
         *
         * Sometimes we call this where we only want to replace an occurence of pOld where it appears at the end of
         * the string (for example when replacing ID values where the ID itself may contain an occurrence of that string).
         * This can be done by passing in a regular expression to pOld, eg: new RegExp( "01" + "$" )
         *
         * @function _utilReplaceAttrText
         **/
        _utilReplaceAttrText: function( pSelector$, pAttr, pOld, pNew ) {
            var lNewAttrValue = pSelector$.attr( pAttr ).replace( pOld, pNew );
            pSelector$.attr( pAttr, lNewAttrValue );
        },
        /**
         * Utility function to add more column controls to a dialog (eg pivot, group by)
         *
         * @function addMoreColumn
         **/
        _utilAddMoreColumn: function( pMaxDisplay, pClass ) {
            var lDisplayed, lOldNum, lNewNum, lOldID, lNewID, lLastColumn$, lNewColumn$, lNewSelect$, lNewLabels$,
                lDialog$ = this._getElement( DIALOG_JS_ID );
            lDisplayed = $( "select." + pClass, lDialog$ ).length;
            if ( lDisplayed < pMaxDisplay ) {
                lOldNum = lDisplayed;
                lNewNum = lDisplayed + 1;
                if ( lOldNum < 10 ) {
                    lOldID = "0" + lOldNum;
                    lNewID = "0" + lNewNum;
                } else {
                    lOldID = lOldNum + "";
                    lNewID = lNewNum + "";
                }

                lLastColumn$ = $( "div." + pClass + "-row-" + lOldNum, lDialog$ );
                lNewColumn$ = lLastColumn$.clone();

                this._utilReplaceAttrText( lNewColumn$, "class", lOldNum, lNewNum );
                $( "." + C_IRR_SEQ_NUM, lNewColumn$ ).text( lNewNum );

                lNewSelect$ = $( "select." + pClass, lNewColumn$ );
                this._utilReplaceAttrText( lNewSelect$, "id", new RegExp( lOldID + "$" ), lNewID );

                lNewLabels$ = $( "label", lNewColumn$ );
                lNewLabels$.each(function(){
                    var curLabel = $(this);
                    curLabel.attr("for",curLabel.attr("for").replace(new RegExp( lOldID + "$" ), lNewID));
                    curLabel.text(curLabel.text().replace(lOldNum, lNewNum));
                });

                lNewColumn$.insertAfter( lLastColumn$ );
            }

            if ( lNewNum === pMaxDisplay ) {
                $( "." + pClass + "-add", lDialog$ ).hide();
                lNewColumn$.trigger( "focus" );
            }
        },
        /**
         * Utility function to add more function controls to a dialog (eg pivot, group by)
         *
         * @function addMoreFunction
         **/
        _utilAddMoreFunction: function( pMaxDisplay ) {
            var lDisplayed, lOldNum, lNewNum, lOldID, lNewID, lLastFunction$,
                lNewFunction$, lNewFunctionSelect$, lNewNumColumnSelect$, lNewAllColumnSelect$,
                lNewLabel$, lNewFormatMask$, lNewFormatMaskPicker$, lNewSum$, lNewFormItemLabels$,
                lDialog$ = this._getElement( DIALOG_JS_ID );

            lDisplayed = $( "select." + C_IRR_FUNCTION, lDialog$ ).length;

            if ( lDisplayed < pMaxDisplay ) {
                lOldNum = lDisplayed;
                lNewNum = lDisplayed + 1;

                if ( lOldNum < 10 ) {
                    lOldID = "0" + lOldNum;
                    lNewID = "0" + lNewNum;
                } else {
                    lOldID = lOldNum + "";
                    lNewID = lNewNum + "";
                }

                lLastFunction$ = $( "div." + C_IRR_FUNCTION_ROW + lOldNum, lDialog$ );
                lNewFunction$ = lLastFunction$.clone();

                this._utilReplaceAttrText( lNewFunction$, "class", lOldNum, lNewNum );
                $( "." + C_IRR_SEQ_NUM, lNewFunction$ ).text( lNewNum );

                //function select list
                lNewFunctionSelect$ = $( "select." + C_IRR_FUNCTION, lNewFunction$ );

                this._utilReplaceAttrText( lNewFunctionSelect$, "id", new RegExp( lOldID + "$" ), lNewID );

                //column select list div tag
                this._utilReplaceAttrText( $( this._getIdSelector( "number_columns_container" ) + "_" + lOldID, lNewFunction$ ), "id", new RegExp( lOldID + "$" ), lNewID );
                this._utilReplaceAttrText( $( this._getIdSelector( "all_columns_container" ) + "_" + lOldID, lNewFunction$ ), "id", new RegExp( lOldID + "$" ), lNewID );

                //column select list
                lNewNumColumnSelect$ = $( "select." + C_IRR_FUNCTION_NUM_COL, lNewFunction$ );
                this._utilReplaceAttrText( lNewNumColumnSelect$, "id", new RegExp( lOldID + "$" ), lNewID );
                lNewAllColumnSelect$ = $( "select." + C_IRR_FUNCTION_COL, lNewFunction$ );
                this._utilReplaceAttrText( lNewAllColumnSelect$, "id", new RegExp( lOldID + "$" ), lNewID );

                // label
                lNewLabel$ = $( this._getIdSelector( "label" ) + "_" + lOldID, lNewFunction$ );
                this._utilReplaceAttrText( lNewLabel$, "id", new RegExp( lOldID + "$" ), lNewID );
                // INPUT elements clone the value also, so let's clear it
                lNewLabel$.val( "" );

                // format mask
                lNewFormatMask$ = $( this._getIdSelector( "format_mask" ) + "_" + lOldID, lNewFunction$ );
                // this._utilReplaceAttrText( lNewFormatMask$, "title", lOldNum, lNewNum );
                this._utilReplaceAttrText( lNewFormatMask$, "id", new RegExp( lOldID + "$" ), lNewID );
                // INPUT elements clone the value also, so let's clear it
                lNewFormatMask$.val( "" );

                // format mask picker
                lNewFormatMaskPicker$ = $( this._getIdSelector( "format_mask_picker" ) + "_" + lOldID, lNewFunction$ );
                this._utilReplaceAttrText( lNewFormatMaskPicker$, "id", new RegExp( lOldID + "$" ), lNewID );
                this._utilReplaceAttrText( lNewFormatMaskPicker$, "data-picker-for", new RegExp( lOldID + "$" ), lNewID );

                // sum
                lNewSum$ = $( this._getIdSelector( "function_sum" ) + "_" + lOldID, lNewFunction$ );
                this._utilReplaceAttrText( lNewSum$, "id", new RegExp( lOldID + "$" ), lNewID );
                // INPUT elements clone the value also, so let's clear it
                lNewSum$.prop( CHECKED, false );

                lNewFormItemLabels$ = $( "label", lNewFunction$ );
                lNewFormItemLabels$.each(function(){
                    var curLabel = $(this);
                    curLabel.attr("for",curLabel.attr("for").replace(new RegExp( lOldID + "$" ), lNewID));
                    if (curLabel.hasClass( C_SWITCH )) {
                        curLabel.attr("aria-labelledby",curLabel.attr("aria-labelledby").replace(new RegExp( lOldID + "$" ),lNewID));
                    } else {
                        curLabel.text(curLabel.text().replace(lOldNum, lNewNum));
                    }
                });

                lNewFunction$.insertAfter( lLastFunction$ );
            }

            if ( lNewNum === pMaxDisplay ) {
                $( "." + C_IRR_ADD_FUNCTION, lDialog$ ).hide();
                lNewFunction$.trigger( "focus" );
            }
        },

        _setIRHighlight: function() {
            $( "[data-bgcol][data-ftcol]", this.region$ ).each( function() {
                let el$ = $( this );

                el$.css( {
                    "color": el$.attr( "data-ftcol" ),
                    "background-color": el$.attr( "data-bgcol" )
                } );
            } );
        },

        _setIRHighlightPreview: function() {
            $( "[data-bg-color][data-font-color]", this.region$ ).each( function() {
                let el$ = $( this );

                el$.css( {
                    "background-color": el$.attr( "data-bg-color" ),
                    "color" : el$.attr( "data-font-color" )
                 } );
            } );
        },


        /**
         * generic call for returning dialogs with validation
         *
         * @function _validAction
         **/
        _validAction: function( pTest ) {
            if( pTest === "true" ) {
                this._pull( {pAction: "PULL_TOOLBAR"} );   //todo don't always do this with every PULL, just needed for save chart, others?
                this._getElement( DIALOG_JS_ID ).dialog( "close" );
            } else {
                this._getDialogElement( "dialog_msg" ).html( pTest );
                this.options.reportViewMode = REPORT;
            }
        },


        /*
         * Public functions
         */
        refresh: function( {pKeepPagination = false} = {} ) {
            var pData = {keepPagination : pKeepPagination};
            this._pull( {pData} );
        }
    });

    $( document ).on( "click", "#APEX-ir-column-dialog-shuttle-top", () => {
        window.g_Shuttlep_v01.sort2("T");
        return false;
    } );

    $( document ).on( "click", "#APEX-ir-column-dialog-shuttle-up", () => {
        window.g_Shuttlep_v01.sort2("U");
        return false;
    } );

    $( document ).on( "click", "#APEX-ir-column-dialog-shuttle-down", () => {
        window.g_Shuttlep_v01.sort2("D");
        return false;
    } );

    $( document ).on( "click", "#APEX-ir-column-dialog-shuttle-bottom", () => {
        window.g_Shuttlep_v01.sort2("B");
        return false;
    } );

    $( document ).on( "click", "APEX-ir-column-dialog-shuttle-reset", () => {
        window.g_Shuttlep_v01.reset();
        return false;
    } );

    $( document ).on( "click", "#APEX-ir-column-dialog-shuttle-moveall", () => {
        window.g_Shuttlep_v01.move_all();
        return false;
    } );

    $( document ).on( "click", "#APEX-ir-column-dialog-shuttle-move", () => {
        window.g_Shuttlep_v01.move();
        return false;
    } );

    $( document ).on( "click", "#APEX-ir-column-dialog-shuttle-remove", () => {
        window.g_Shuttlep_v01.remove();
        return false;
    } );

    $( document ).on( "click", "#APEX-ir-column-dialog-shuttle-removeall", () => {
        window.g_Shuttlep_v01.remove_all();
        return false;
    } );

    $( document ).on( "keydown", ".a-IR-Column-Dialog-Multiselect-Shuttle-Left--event", ( event ) => {
        if ( event.which === 13 ) {
            window.g_Shuttlep_v01.move();
            return false;
        }
    } );

    $( document ).on( "dblclick", ".a-IR-Column-Dialog-Multiselect-Shuttle-Left--event", () => {
        window.g_Shuttlep_v01.move();
    } );

    $( document ).on( "keydown", ".a-IR-Column-Dialog-Multiselect-Shuttle-Right--event", ( event ) => {
        if ( event.which === 13 ) {
            window.g_Shuttlep_v01.remove();
            return false;
        }
    } );

    $( document ).on( "dblclick", ".a-IR-Column-Dialog-Multiselect-Shuttle-Right--event", () => {
        window.g_Shuttlep_v01.remove();
    } );

})( apex.jQuery, apex.util, apex.debug, apex.server, apex.navigation, apex.lang, apex.theme, apex.message, apex.date );
