/*
 * Forked from jQuery Mobile version 1.4.5 filterable.js
 * Copyright (c) 2017, 2020, Oracle and/or its affiliates. All rights reserved.
 */
/*
 * jQuery Mobile filterable.js
 * Copyright 2010, 2014 jQuery Foundation, Inc. and other contributors
 * Released under the MIT license.
 * http://jquery.org/license
 */
(function ( apexWidget, $ ) {
    "use strict";

var C_HIDDEN = "u-hidden";

var getAttr = apexWidget.getAttribute;

var defaultFilterCallback = function ( index, searchValue ) {
    return ( ( "" + ( getAttr( this, "filtertext" ) || $( this ).text() ) )
        .toLowerCase().indexOf( searchValue ) === -1 );
};

$.widget( "apex.filterable", {

    options: {
        filterReveal: false,
        filterCallback: defaultFilterCallback,
        enhanced: false,
        input: null,
        children: "> li, > option, > optgroup option, > tbody tr"
    },

    _create: function () {
        var opts = this.options;

        $.extend( this, {
            _search: null,
            _timer: 0
        } );

        this._setInput( opts.input );
        if ( !opts.enhanced ) {
            this._filterItems( ( ( this._search && this._search.val() ) || "" ).toLowerCase() );
        }
    },

    _getCreateOptions: apexWidget._getCreateOptions,

    _onKeyUp: function () {
        var val, lastval,
            search = this._search;

        if ( search ) {
            val = search.val().toLowerCase();
            lastval = getAttr( search[0], "lastval" ) + "";

            if ( lastval && lastval === val ) {
                // Execute the handler only once per value change
                return;
            }

            if ( this._timer ) {
                window.clearTimeout( this._timer );
                this._timer = 0;
            }

            this._timer = this._delay( function () {
                if ( this._trigger( "beforefilter", null, {input: search} ) === false ) {
                    return false;
                }

                // Change val as lastval for next execution
                search[0].setAttribute( "data-lastval", val );

                this._filterItems( val );
                this._timer = 0;
            }, 250 );
        }
    },

    _getFilterableItems: function () {
        var elem = this.element,
            children = this.options.children,
            items = !children ? {length: 0} :
                typeof children === "function" ? children() :
                    children.nodeName ? $( children ) :
                        children.jquery ? children :
                            this.element.find( children );

        if ( items.length === 0 ) {
            items = elem.children();
        }

        return items;
    },

    _filterItems: function ( val ) {
        var idx, callback, length, dst,
            show = [],
            hide = [],
            opts = this.options,
            filterItems = this._getFilterableItems();

        if ( val != null ) {
            callback = opts.filterCallback || defaultFilterCallback;
            length = filterItems.length;

            // Partition the items into those to be hidden and those to be shown
            for ( idx = 0; idx < length; idx++ ) {
                dst = ( callback.call( filterItems[idx], idx, val ) ) ? hide : show;
                dst.push( filterItems[idx] );
            }
        }

        // If nothing is hidden, then the decision whether to hide or show the items
        // is based on the "filterReveal" option.
        if ( hide.length === 0 ) {
            filterItems[( opts.filterReveal && val.length === 0 ) ?
                "addClass" : "removeClass"]( C_HIDDEN );
        } else {
            $( hide ).addClass( C_HIDDEN );
            $( show ).removeClass( C_HIDDEN );
        }

        this._refreshChildWidget();

        this._trigger( "filter", null, {
            items: filterItems
        } );
    },

    // The Default implementation of _refreshChildWidget attempts to call
    // refresh on collapsibleset, controlgroup, selectmenu, or listview
    _refreshChildWidget: function () {
        var widget, idx,
            recognizedWidgets = ["listview"];

        for ( idx = recognizedWidgets.length - 1; idx > -1; idx-- ) {
            widget = recognizedWidgets[idx];
            if ( $.apex[widget] ) {
                widget = this.element.data( "apex-" + widget );
                if ( widget && typeof widget.refresh === "function" ) {
                    widget.refresh();
                }
            }
        }
    },

    // TODO: When the input is not internal, do not even store it in this._search
    _setInput: function ( selector ) {
        var search = this._search;

        // Stop a pending filter operation
        if ( this._timer ) {
            window.clearTimeout( this._timer );
            this._timer = 0;
        }

        if ( search ) {
            this._off( search, "keyup change input" );
            search = null;
        }

        if ( selector ) {
            search = selector.jquery ? selector :
                selector.nodeName ? $( selector ) :
                    this.document.find( selector );

            this._on( search, {
                keydown: "_onKeyDown",
                keypress: "_onKeyPress",
                keyup: "_onKeyUp",
                change: "_onKeyUp",
                input: "_onKeyUp"
            } );
        }

        this._search = search;
    },

    // Prevent form submission
    _onKeyDown: function ( event ) {
        if ( event.keyCode === $.ui.keyCode.ENTER ) {
            event.preventDefault();
            this._preventKeyPress = true;
        }
    },

    _onKeyPress: function ( event ) {
        if ( this._preventKeyPress ) {
            event.preventDefault();
            this._preventKeyPress = false;
        }
    },

    _setOptions: function ( options ) {
        var refilter = !( ( options.filterReveal === undefined ) &&
        ( options.filterCallback === undefined ) &&
        ( options.children === undefined ) );

        this._super( options );

        if ( options.input !== undefined ) {
            this._setInput( options.input );
            refilter = true;
        }

        if ( refilter ) {
            this.refresh();
        }
    },

    _destroy: function () {
        var opts = this.options,
            items = this._getFilterableItems();

        if ( opts.enhanced ) {
            items.toggleClass( C_HIDDEN, opts.filterReveal );
        } else {
            items.removeClass( C_HIDDEN );
        }
    },

    refresh: function () {
        if ( this._timer ) {
            window.clearTimeout( this._timer );
            this._timer = 0;
        }
        this._filterItems( ( ( this._search && this._search.val() ) || "" ).toLowerCase() );
    }
} );

})( apex.widget, apex.jQuery );
