/*!
 Copyright (c) 2012, 2023, Oracle and/or its affiliates. All rights reserved.
*/
/*
 * This plugin enhances the List View widget with Oracle APEX features.
 */
( function ( $, region, server, util ) {
    "use strict";

    var protoOptions = $.apex.listview.prototype.options,
        dividerRE = /(^|\s)a-ListView-divider(\s|$)/;

    /**
     * APEX specific options which are supported for the list view.
     *
     * @param {String}  apexRegionId         Static Region Id or Region Id which identifies the region which is of type List View.
     * @param {String}  apexAjaxIdentifier   AJAX identifier used to call the server part of the component.
     * @param {String}  [apexPageItems]      jQuery selector which contains the page items to be submitted with the AJAX call.
     * @param {Boolean} [apexFilter]         True if server side filtering should be used.
     **/
    protoOptions.apexRegionId = "";
    protoOptions.apexAjaxIdentifier = "";
    protoOptions.apexPageItems = "";
    protoOptions.apexFilter = "";

    $( document ).on( "listviewcreate", "ul, ol", function () {
        var lListView$ = $( this ),
            lOptions = lListView$.data( "apex-listview" ).options;

        // Don't continue if the required attributes region id and ajax identifier are not set. It's very likely that it's
        // not an AJAX enhanced list.
        if ( !lOptions.apexRegionId || !lOptions.apexAjaxIdentifier ) {
            return;
        }

        // create a region interface to handle refresh etc.
        region.create( lOptions.apexRegionId, {
            type: "ListView",
            widgetName: "listview",
            refresh: function () {
                _refresh();
            },
            widget: function () {
                return lListView$;
            }
        } );

        // register the "Load more" list entry handling for the list view
        lListView$.on( "click", "li.apex-load-more", _loadMore );

        // Is server side or client side filtering used?
        if ( lListView$.attr( "data-apex-filter" ) || lListView$.attr( "data-filter" ) ) {
            _initSearch();
        }

        // AJAX callback to get more data for the list view
        function _ajax( pFirstRow ) {
            server.plugin(
                lOptions.apexAjaxIdentifier,
                {
                    pageItems: lOptions.apexPageItems,
                    x01: "FETCH",
                    x04: lListView$.data( "apex-last-search" ),
                    x05: pFirstRow
                },
                {
                    dataType: "html",
                    loadingIndicator: lListView$,
                    loadingIndicatorPosition: "centered",
                    refreshObject: lListView$,
                    clear: pFirstRow === 1 ? _clear : undefined,
                    success: _addResult
                }
            );
        } // _call

        // Load additional list entries
        function _loadMore( event ) {
            // Get the next list entries, count number of existing LI's which are not dividers
            _ajax( $( "li[data-role!='list-divider']", lListView$ ).length );
            event.preventDefault();
        } // _loadMore

        // Clears the list view entries and is called before the AJAX call
        function _clear() {
            lListView$.empty();
            // let the list view widget know about our updates
            lListView$.listview( "refresh" );
        } // _clear

        // This function adds the result of the AJAX call to the list view and ist called by the AJAX success callback
        function _addResult( pData ) {
            var lData$ = $( pData ),
                lFirstListDivider$ = lData$.filter( "li[data-role='list-divider']:first" ),
                lLastListDivider$ = $( "li[data-role='list-divider']:last", lListView$ );

            // remove the "Load more" entry first
            $( "li.apex-load-more", lListView$ ).remove();

            // add the new result to the existing list
            lListView$.append( lData$ );

            // If the first list divider returned by the AJAX call is the same what we already have in the list, don't show it
            if ( lFirstListDivider$.text() === lLastListDivider$.text() ) {
                lFirstListDivider$.remove();
            }

            // refresh after DOM is updated
            lListView$.listview( "refresh" );
        } // _addResult

        // Executes an AJAX call to get new entries starting with the first record
        function _refresh() {
            _ajax( 1 ); // Get the first record
        } // _refresh

        // Initializes the server based search field with all it's callbacks
        function _initSearch() {
            function doSearch() {
                var lSearch = lSearch$.val();

                lListView$.data( "apex-last-search", lSearch );
                _ajax( 1 );
            }

            // Add a search field which calls our AJAX function when the user leaves the field or clicks "Search/Submit".
            // Use a similar code as in jquery.mobile.listview.filter.js
            var lOrigDefaultFilterCallback = $.apex.filterable.prototype.options.filterCallback,
                lSearchInputId = lListView$.attr( "data-input" ).substr( 1 ),
                lWrapper$ = $( "<div>", {
                    class: "a-ListView-searchbar ui-filterable ui-bar-" + lListView$.attr( "data-filter-theme" ),
                    role: "search"
                } ),
                lSearch$ = $( "<input>", {
                    id: lSearchInputId,
                    placeholder: lListView$.attr( "data-filter-placeholder" ),
                    "data-type": "search"
                } );

            lSearch$.appendTo( lWrapper$ );
            lWrapper$.insertBefore( lListView$ );
            // todo consider what needs to be done to provide similar functionality for the input when not using jqm

            if ( lOptions.inset ) {
                lWrapper$.addClass( "ui-listview-filter-inset" );
            }

            if ( lOptions.apexFilter ) {
                // debouncing search to save network bandwidth
                lSearch$.on( "keydown", util.debounce( doSearch, 200 ) ).on( "keypress", function ( event ) {
                    if ( event.which === 13 ) { // enter key: prevent form submission when enter pressed
                        event.preventDefault();
                    }
                } );
            } else {
                // hook up the client filterable
                lListView$.filterable( {
                    // Override the default filter callback with one that does not hide list dividers
                    filterCallback: function ( index, searchValue ) {
                        return !this.className.match( dividerRE ) && lOrigDefaultFilterCallback.call( this, index, searchValue );
                    }
                } );
            }
        } // _initSearch
    } );
} )( apex.jQuery, apex.region, apex.server, apex.util );
