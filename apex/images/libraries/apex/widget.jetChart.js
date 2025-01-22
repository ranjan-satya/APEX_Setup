/*!
 * Copyright (c) 2015, 2024, Oracle and/or its affiliates.
 */

/* global oj */

( function( $, server, util, debug, region, navigation, widget, widgetUtil ) {
    "use strict";

    const hasOwnProperty = util.hasOwnProperty;

    apex.widget.jetChart = {
        init: function( pRegionId, pWidth, pHeight, pOptions, pSpark, pConnect, pRefreshInterval, pApexAjaxIdentifier ) {
            require([ "ojs/ojcore", "jquery", "ojs/ojchart", "ojs/ojgauge", "ojs/ojgantt", "ojs/ojvalidation", "ojs/ojtimezonedata" ], function( oj ) {
                var lWidgetType,
                    lRegion$ = $( "#" + util.escapeCSS( pRegionId ) + "_jet" , apex.gPageContext$ ),
                    lOptions = pOptions || {};

                // Initialize Chart
                if ( lOptions.type === "dial" )	{
                    lWidgetType = "ojStatusMeterGauge";
                }  else if ( lOptions.type === "gantt" ) {
                    lWidgetType = "ojGantt";
                }  else {
                    lWidgetType = "ojChart";
                }

                // Apply Data formatting using JET Converters
                widget.jetChart.formatData( lOptions, false );

                lRegion$[lWidgetType]( lOptions );

                // Chart Resizing
                // todo consider that this resize method is not needed or only needs to be called once.
                function resize() {

                    if  ( $( "#" + util.escapeCSS( pRegionId ) ).hasClass("is-maximized") ) {
                        // Maximize Region Settings - setting height to 80% of current window height, and 100% max-width
                        lRegion$.css( "max-width", "100%" )
                            .css( "height", $( window ).height() / 100 * 80 );
                    } else {
                        var lWidth   = "100%",
                            lHeight  = null;

                        if ( pWidth ) {
                            lWidth = pWidth + "px";
                        }
                        if ( pHeight ) {
                            lHeight = pHeight + "px";
                        } else {
                            if ( lOptions.type === "gantt" ) {
                                lHeight = "100%";
                            }
                        }
                        lRegion$.css( "width", "100%" )
                            .css( "max-width", lWidth );

                        if ( lHeight ) {
                            lRegion$.css( "height", lHeight );
                        } else {
                            // Remove height attribute for minimised region with no height defined
                            lRegion$.css( "height", "" );
                        }

                        if ( lOptions.type !== "dial" ) {
                            lRegion$.css( "min-width", "100px" );
                        }
                    }
                } //resize

                // Register Chart with our region interface
                region.create( pRegionId, {
                    type: "JetChart",
                    widgetName: lWidgetType,
                    refresh: function() {
                        resize();
                        refresh();
                    },
                    focus: function() {
                        lRegion$.trigger( "focus" );
                    },
                    widget: function() {
                        return lRegion$;
                    }
                });
                region( pRegionId ).refresh();

                // Uses AJAX to get the newest chart data
                function refresh() {
                    server.plugin( pApexAjaxIdentifier, {
                        pageItems: lOptions.pageItems
                    }, {
                        dataType:                 "json",
                        refreshObject:            lRegion$,
                        loadingIndicator:         lRegion$,
                        loadingIndicatorPosition: "centered",
                        success:                  showResult
                    });
                } // refresh

                // AJAX success callback to set the chart data
                function showResult( pData ) {
                    var C_EXCLUDE_CHARTS = [ "pie", "funnel", "pyramid", "scatter", "bubble", "gantt", "stock" ],
                        i, ans, j,
                        itemIdx     = 0,
                        lChartType  = ( lOptions.type === "dial" ) ? "dial" : "chart",
                        type        = ( lOptions.type === "gantt" ) ? "gantt" : lChartType;

                    // helper function: retrieve label display setting from series data for pie charts
                    function getLabelDisplay (obj) {
                        for ( i in obj ) {
                            if ( hasOwnProperty( obj, i ) ) {
                                if ( obj[ i ].items.length > 0 ) {
                                    for ( j in obj[ i ].items ) {
                                        if ( obj[ i ].items[ j ].labelDisplay ) {
                                            return obj[ i ].items[ j ].labelDisplay;
                                        }
                                    }
                                }
                            }
                        }
                    }

                    // helper function: retrieve links from series data, to associate a link action with a specific data point in the JET chart data
                    function getLinks( obj, key, val ) {
                        var i;

                        function linkFound( obj, k, v ) {
                            var i;
                            for( i = 0; i < obj.length; i++ ) {
                                if ( lOptions.type === "pie" || lOptions.type === "funnel" || lOptions.type === "pyramid") {
                                    // Multi-series query for Pie, Donut, Funnel, and Pyramid should match by key
                                    if ( obj[ i ].name === k ) {
                                        return obj[ i ].link;
                                    }
                                } else if ( lOptions.type === "stock" ) {
                                    var d = new Date( obj[ i ].name );
                                    var epochTime = d.getTime();
                                    // Multi-series query for Pie & Donut should match by val
                                    if ( epochTime === v || d === v ) {
                                        return obj[ i ].link;
                                    }
                                } else {
                                    if ( obj[ i ].name === v ) {
                                        return obj[ i ].link;
                                    } else {
                                        var dt = new Date( obj[ i ].name );
                                        var epochTimeVal = dt.getTime();
                                        // Multi-series query for Pie & Donut should match by val
                                        if ( epochTimeVal === v || dt === v ) {
                                            return obj[ i ].link;
                                        }
                                    }
                                }
                            }
                        } // linkFound

                        for ( i in obj ) {
                            if ( hasOwnProperty( obj, i ) ) {
                                if ( obj[ i ].id ) {  // Static ID-identified series mapping
                                    if (( obj[ i ].id === key || obj[ i ].name === key ) && obj[ i ].items.length > 0 ) {
                                        return linkFound( obj[ i ].items, key, val );
                                    }
                                } else if ( obj[ i ].name ) { // Series name mapping
                                    if ( obj[ i ].name === key && obj[ i ].items.length > 0 ) {
                                        return linkFound( obj[ i ].items, key, val );
                                    }
                                }
                            }
                        }
                    }  // getLinks

                    // Check for developer-provided callback, via the chart-level JavaScript Code attribute, to manipulate the fetched data
                    if ( typeof lOptions.dataFilter === "function" ) {
                        pData = lOptions.dataFilter( pData );
                    }

                    // Dial Chart Title substitution of value/max data references
                    if ( lChartType === "dial" ) {
                        if ( lOptions.title ) {
                            lRegion$.closest( "div" ).attr( "title", lOptions.title.replace( /#VALUE#/g, pData.value ).replace( /#MAX#/g, pData.max ));
                        }
                    } else {
                        // Densify the chart data for a multi-series chart, applying the sort order declaratively selected. Default sort order is by label, ascending.
                        // Exceptions 1) chart types: Dial Gauge, Pie, Donut, Funnel, Pyramid, Scatter, Bubble, Stock, and Gantt
                        //            2) charts using the Time Axis Type settings of 'Mixed Frequency' or 'Skip Gaps' - for backward compatibility with 5.1.0 - 5.1.2.
                        if ( $.inArray( lOptions.type, C_EXCLUDE_CHARTS ) === -1 ) {
                            if ( pData.series.length > 1 && ( lOptions.timeAxisType !== "mixedFrequency" && lOptions.timeAxisType !== "skipGaps" && lOptions.sorting ) ) {

                                widgetUtil.chartSortArray( pData.groups, lOptions.sorting );

                                for ( var seriesIdx = 0; seriesIdx < pData.series.length; seriesIdx++ ) {
                                    widgetUtil.chartFillGaps( pData.groups, pData.series[ seriesIdx ].items, lOptions.sorting, pConnect );

                                    // Set unique ID of type string across all items of a multi-series chart
                                    for ( var idx = 0; idx < pData.series[ seriesIdx ].items.length; idx++ ) {
                                        pData.series[ seriesIdx ].items[ idx ].id = '' + itemIdx;
                                        itemIdx = itemIdx + 1;
                                    }
                                }
                            }
                        }
                    }

                    type = { chart: "ojChart", dial: "ojStatusMeterGauge", gantt: "ojGantt"}[ type ];

                    // Add Chart Data
                    lRegion$[ type ]( pData );

                    //Handle Visibility of Chart, when changed from hidden to visible
                    widgetUtil.onVisibilityChange( lRegion$[ 0 ], function( show )  {
                        if ( show ) {
                            // Inform JET of visibility of previously hidden component
                            oj.Components.subtreeShown( lRegion$[ 0 ] );

                            // Resize collapsed region where no height defined on region or via template options
                            resize();
                            lRegion$[ type ]( "refresh" );
                        } else {
                            // Inform JET of visibility of newly hidden component
                            oj.Components.subtreeHidden( lRegion$[ 0 ] );
                        }
                    } );

                    // Handle Window Resizing/Maximizing
                    $( window ).on( "apexwindowresized", function(){
                        resize();
                    });

                    // Links on Data Points & Data Label Setting - Only Supported by ojChart charts
                    if ( type === "ojChart" ){

                        if ( lOptions.type === 'pie' ) {
                            lRegion$[ type ]( {
                                "drill": function( event, ui ) {
                                    ans = ui.data.link;
                                    if ( ans ) {
                                        debug.log( "Chart link: " + ans );
                                        navigation.redirect( ans );
                                    }
                                },
                                "dataLabel": function( dataContext ){
                                    var percent, seriesName, value, labelDisplay, label, valueConverter;
                                    percent      = Math.round( dataContext.value / dataContext.totalValue*100 ) + "%";
                                    value        = dataContext.value;
                                    labelDisplay = getLabelDisplay ( pData.series );

                                    // Value Formatting
                                    if ( lOptions.valueFormats ) {
                                        if (( lOptions.valueFormats.value ) && ( lOptions.valueFormats.value.converter )) {
                                            valueConverter = lOptions.valueFormats.value.converter;
                                            value = valueConverter.format ( dataContext.value );
                                        }
                                    }

                                    if ( $.inArray( labelDisplay, [ "LABEL", "ALL", "LBL_VAL", "LBL_PCT" ] ) !== -1 ) {
                                        if ( dataContext.seriesData ) {
                                            seriesName = dataContext.seriesData.name;
                                        } else {
                                            seriesName = 'Other';
                                        }
                                    }
                                    switch ( labelDisplay ) {
                                        case 'VALUE':
                                            label = value;
                                            break;
                                        case 'PERCENT':
                                            label = percent;
                                            break;
                                        case 'LABEL':
                                            label = seriesName;
                                            break;
                                        case 'LBL_VAL':
                                            label = seriesName + " - " + value;
                                            break;
                                        case 'LBL_PCT':
                                            label = seriesName + " - " + percent;
                                            break;
                                        case 'ALL':
                                            label = seriesName + " - " + percent + " ( " + value  + " )";
                                            break;
                                        case 'COMBO':
                                            label = percent + " ( " +  value + " )";
                                    }
                                    return label;

                                }
                            });
                        } else {
                            lRegion$[ type ]( {
                                "drill": function( event, ui ) {

                                    if ( $.inArray( lOptions.type, C_EXCLUDE_CHARTS ) === -1 ) {
                                        // Handle Links for Densified Data
                                        if ( ( ui.group ) && ( ui.series ) ) {
                                            ans = getLinks(pData.series, ui.series, ui.group);
                                        }
                                    } else {
                                        ans = ui.data.link;
                                    }
                                    if ( ans ) {
                                        debug.log( "Chart link: " + ans );
                                        navigation.redirect( ans );
                                    }
                                }
                            });
                        }
                    }

                    if ( type === "ojStatusMeterGauge" ) {
                        lRegion$[ type ]( {
                            "tooltip": {
                                renderer: function( tooltipContext ){
                                    var tooltip;

                                    // Handle Tooltip Rendering: when Yes, then display tooltip; when No, return null
                                    if ( pData.tooltipRendered ) {
                                        tooltip = pData.customTooltip ? pData.customTooltip : tooltipContext.label;
                                    }
                                    return tooltip;
                                }
                            }
                        });
                    }

                    if ( type === "ojGantt" && pData.tooltip ) {
                        lRegion$[ type ]( {
                            "tooltip": {
                                renderer: function( tooltipContext ){

                                    // Handle Custom Tooltip Rendering
                                    return tooltipContext.data.customTooltip;
                                }
                            }
                        });
                    }

                        // Automatic Refresh Handling
                    if ( pRefreshInterval > 0 ) {
                        setTimeout(function () {
                            refresh();
                        }, pRefreshInterval * 1000);
                    }
                } // showResult

            });
        },
        /* Interactive Report Charting */
        initReportChart: function( pRegionId, pWorksheetId, pBaseReportId, pApexAjaxIdentifier ) {
            require([ "ojs/ojcore", "jquery", "ojs/ojchart", "ojs/ojvalidation" ], function( oj ) {
                var lWidgetType, lDefaultOptions,
                    lRegion$ = $( "#" + util.escapeCSS( pRegionId ) , apex.gPageContext$ );

                lDefaultOptions = {
                    legend: { rendered: "off" },
                    animationOnDisplay: "auto",
                    animationOnDataChange: "auto",
                    hoverBehavior: "dim",
                    groups: [],
                    series: [],
                    valueFormats: []
                };

                // Initialize Chart
                lWidgetType = "ojChart";
                lRegion$[ lWidgetType ]( lDefaultOptions );

                // Chart Resizing
                function resize() {
                    var lWidth   = "100%",
                        lHeight  = "500px";

                    lRegion$.css( "width", "100%" );
                    lRegion$.css( "max-width", lWidth );
                    if ( lHeight ) {
                        lRegion$.css( "height", lHeight );
                    }
                    lRegion$.css( "min-width", "100px" );
                } //resize

                refresh();

                function refresh() {
                    resize();
                    refreshIR();
                } // refresh

                // Uses AJAX to get the newest IR chart data
                function refreshIR() {
                    var lData = {
                        p_widget_name:          "worksheet",
                        p_widget_mod:           "GET_CHART_JSON",
                        x01:                    pWorksheetId,
                        x02:                    pBaseReportId
                    };

                    server.plugin (
                        pApexAjaxIdentifier,
                        lData,
                        {
                            dataType: "json",
                            type:     "GET",
                            success:  function ( pData ) {

                                // Apply data formatting & series colouring
                                widget.jetChart.formatData( pData, true );

                                lRegion$[ lWidgetType ]( pData );

                                // Customise label for pie charts - default behaviour just display percentage value
                                lRegion$[ lWidgetType ]( {
                                    "dataLabel": function( dataContext ){
                                        var seriesName, value, label, valueConverter;
                                        value  = dataContext.value;

                                        // Value Format
                                        if ( pData.valueFormats ) {
                                            if (( pData.valueFormats.value ) && ( pData.valueFormats.value.converter )) {
                                                valueConverter = pData.valueFormats.value.converter;
                                                value =  valueConverter.format( value );
                                            }
                                        }

                                        if ( dataContext.seriesData ) {
                                            seriesName = dataContext.seriesData.name;
                                        } else {
                                            seriesName = 'Other';
                                        }
                                        if ( dataContext.seriesData.type === 'pie' ) {
                                            label = seriesName +  " - " + value;
                                        } else {
                                            label = null;
                                        }
                                        return label;
                                    }
                                });

                            }
                        }
                    );

                } // refreshIR

                //Handle Visibility of Chart, when changed from hidden to visible
                widgetUtil.onVisibilityChange( lRegion$[ 0 ], function( show ) {
                    if ( show ) {
                        // Inform JET of visibility of previously hidden component
                        oj.Components.subtreeShown( lRegion$[ 0 ] );
                        // Resize collapsed region where no height defined on region or via template options
                        resize();
                        lRegion$[ lWidgetType ]( "refresh" );
                    } else {
                        // Inform JET of visibility of newly hidden component
                        oj.Components.subtreeHidden( lRegion$[ 0 ] );
                    }
                } );

            });
        } ,
        /* Report Charting Formatting of Data */
        formatData: function ( pData , pReportChart ) {
            var lOptions = pData, lType, i, k,
                attrGroups = new oj.ColorAttributeGroupHandler(),
                seriesItems;

            /* Define chart element colours */
            if ( pReportChart ) {
                if ( lOptions.type !== 'bar' ) {
                    seriesItems = lOptions.series;
                    for( i = 0; i < seriesItems.length; i++) {
                        seriesItems[ i ].color = attrGroups.getValue( seriesItems[ i ].name );
                    }
                    lOptions.series = seriesItems;
                } else {
                    seriesItems = lOptions.series[0].items;
                    for( i = 0; i < seriesItems.length; i++) {
                        seriesItems[ i ].color = attrGroups.getValue( seriesItems[ i ].name );
                    }
                    lOptions.series[ 0 ].items = seriesItems;
                }
            }

            /*
             * Formatting Converter Handling - used to create a Converter Factory object, required for applying datetime and numeric formatting to the JET chart data
             *
             * var lType:  -) number: Converter type to be used for decimal/percent/currency formatting
             *             -) datetime: Converter type to be used for date, time, datetime formatting
             */
            if ( lOptions.type !== "gantt" ) {
                if ( lOptions.type === 'dial' ) {
                    if ( lOptions.metricLabel ) {
                        for ( const i of Object.keys( lOptions.metricLabel )) {
                            if ( i === "converter" ) {
                                lOptions.metricLabel[ i ] = oj.Validation.converterFactory( "number" ).createConverter( lOptions.metricLabel[ i ] );
                            }
                        }
                    }
                } else {
                    // Value Format
                    if ( lOptions.valueFormats ) {
                        for ( const i of Object.keys( lOptions.valueFormats ) ) {
                            for ( const [j, v] of Object.entries( lOptions.valueFormats[ i ] )) {
                                if ( j === "converter" ) {
                                    lType = v.formatType ? "datetime" : "number";
                                    lOptions.valueFormats[ i ][ j ] = oj.Validation.converterFactory( lType ).createConverter( lOptions.valueFormats[ i ][ j ] );
                                }
                            }
                        }
                    }

                    //X Axis
                    if ( lOptions.xAxis ) {
                        if ( lOptions.xAxis.tickLabel ) {
                            for ( const [ i, v ] of Object.entries( lOptions.xAxis.tickLabel ) ) {
                                if ( i === "converter" ) {
                                    lType = v.formatType ? "datetime" : "number";
                                    lOptions.xAxis.tickLabel[ i ] = oj.Validation.converterFactory( lType ).createConverter( lOptions.xAxis.tickLabel[ i ] );
                                }
                            }
                        }
                    }

                    // Y Axis
                    if ( lOptions.yAxis ) {
                        if ( lOptions.yAxis.tickLabel ) {
                            for ( const [i, v] of Object.entries( lOptions.yAxis.tickLabel )) {
                                if ( i === "converter" ) {
                                    lType = v.formatType ? "datetime" : "number";
                                    lOptions.yAxis.tickLabel[ i ] = oj.Validation.converterFactory( lType ).createConverter( lOptions.yAxis.tickLabel[ i ] );
                                }
                            }
                        }
                    }

                    // Y2 Axis
                    if ( lOptions.y2Axis ) {
                        if ( lOptions.y2Axis.tickLabel ) {
                            for ( const [ i, v ] of Object.entries( lOptions.y2Axis.tickLabel ) ) {
                                if ( i === "converter" ) {
                                    lType = v.formatType ? "datetime" : "number";
                                    lOptions.y2Axis.tickLabel[ i ] = oj.Validation.converterFactory( lType ).createConverter( lOptions.y2Axis.tickLabel[ i ] );
                                }
                            }
                        }
                    }
                }
            } else {
                // Major Axis
                if ( lOptions.majorAxis ) {
                    if ( lOptions.majorAxis.converter ) {
                        for ( k in lOptions.majorAxis.converter ) {
                            if( hasOwnProperty( lOptions.majorAxis.converter, k ) ) {
                                lType = "datetime";
                                lOptions.majorAxis.converter[ k ] = oj.Validation.converterFactory( lType ).createConverter( lOptions.majorAxis.converter[ k ] );
                            }
                        }
                    }
                }
                // Minor Axis
                if ( lOptions.minorAxis ) {
                    if ( lOptions.minorAxis.converter ) {
                        for ( k in lOptions.minorAxis.converter ) {
                            if( hasOwnProperty( lOptions.minorAxis.converter, k ) ) {
                                lType = "datetime";
                                lOptions.minorAxis.converter[ k ] = oj.Validation.converterFactory( lType ).createConverter( lOptions.minorAxis.converter[ k ] );
                            }
                        }
                    }
                }
            }
            return lOptions;
        }// formatData for Report Charting and Chart Region Format Handling
    };
})( apex.jQuery, apex.server, apex.util, apex.debug, apex.region, apex.navigation, apex.widget, apex.widget.util );
