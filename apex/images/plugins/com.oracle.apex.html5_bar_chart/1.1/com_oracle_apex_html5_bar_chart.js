function com_oracle_apex_html5_bar_chart(pRegionId, pOptions) {
    var gColorSchemes = {
        "MODERN":[
            "#309FDB",
            "#13B6CF",
            "#2EBFBC",
            "#3CAF85",
            "#81BB5F",
            "#DDDE53",
            "#FBCE4A",
            "#ED813E",
            "#E95B54",
            "#E85D88",
            "#CA589D",
            "#854E9B",
            "#5A68AD",
            "#AFBAC5",
            "#6E8598"
        ],
        "MODERN_2":[
            "#1ABC9C",
            "#2ECC71",
            "#4AA3DF",
            "#9B59B6",
            "#3D566E",
            "#F1C40F",
            "#E67E22",
            "#E74C3C"
        ],
        "SOLAR":[
            "#B58900",
            "#CB4B16",
            "#DC322F",
            "#D33682",
            "#6C71C4",
            "#268BD2",
            "#2AA198",
            "#859900"
        ],
        "METRO":[
            "#E61400",
            "#19A2DE",
            "#319A31",
            "#EF9608",
            "#8CBE29",
            "#A500FF",
            "#00AAAD",
            "#FF0094",
            "#9C5100",
            "#E671B5"
        ]
    };
    
    var gOptions = pOptions;
    var gRegion$ = jQuery('#' + apex.util.escapeCSS(pRegionId), apex.gPageContext$);
    var gChartContainer$ = jQuery('#' + apex.util.escapeCSS(pRegionId + '_chart'), apex.gPageContext$);

    function _clear(){
        gChartContainer$.empty();
    }

    function _draw(pData) {
        function emptyStringIfUndefinedOrNullValue(value){
            // We need to make sure we don't modify any objects
            var result = value;
            if(value === null || typeof value === 'undefined'){
                result = "";
            }
            return result;
        }
        
        var maximumValue = 0;
        
        var percent;
        var itemColorIndex;
        var itemColor;
        
        var chartJqueryElement;
        var itemJqueryElement;
        var valueBlockJqueryElement;
        var labelBlockJqueryElement;
        var barBlockJqueryElement;
        
        var mediaBlockJqueryElement;
        var initialsBlockJqueryElement;

        var barValue;
        var CL_HIDDEN = "u-VisuallyHidden";
        
        if(pData.items.length > 0){
            switch(pData.bar_width_calculation){
                case "ABSOLUTE":
                    // We collect the maximum value from the rows obtained
                    for (var i = 0; i < pData.items.length; i++) {
                        if(pData.items[i].value > maximumValue){
                            maximumValue = parseFloat(pData.items[i].value);
                        }
                    }
                    break;
                case "RELATIVE":
                    // The total value is saved to de same variable as the math is the same but this time is represented by the sum of all values returned
                    for (var i = 0; i < pData.items.length; i++) {
                        maximumValue += parseFloat(pData.items[i].value);
                    }
            }

            chartJqueryElement = jQuery(document.createElement("ul")).addClass("a-BarChart");

            switch(pData.chart_type){
                case "TEXT": chartJqueryElement.addClass("a-BarChart--" + (pData.text_position === "AROUND" ? "classic" : "modern"));
                    break;
                case "ICON": chartJqueryElement.addClass("a-BarChart--modern");
                    break;
                default:
                    break;
            }

            chartJqueryElement.addClass(emptyStringIfUndefinedOrNullValue(pData.chart_css_class_names));

            itemColorIndex = 0;
            for (var i = 0; i < pData.items.length; i++) {
                itemJqueryElement = jQuery(document.createElement("li")).addClass("a-BarChart-item");

                percent = (pData.items[i].value * 100 / maximumValue).toFixed(2);
                if(typeof pData.color_scheme === "string"){
                    if (pData.color_scheme === 'MODERN') {
                        // using the modern color scheme
                        chartJqueryElement.addClass('u-colors');
                    } else {
                        if(Array.isArray(gColorSchemes[pData.color_scheme]) && gColorSchemes[pData.color_scheme].length > 0){
                            if(itemColorIndex >= gColorSchemes[pData.color_scheme].length){
                                itemColorIndex = 0;
                            }
                            itemColor = gColorSchemes[pData.color_scheme][itemColorIndex++];
                        } else if(pData.color_scheme === "COLUMN"){
                            itemColor = pData.items[i].color;
                        } else {
                            // This includes DEFAULT
                            itemColor = undefined;
                        }
                    }
                } else if(Array.isArray(pData.color_scheme) && pData.color_scheme.length > 0) {
                    if(itemColorIndex >= pData.color_scheme.length){
                        itemColorIndex = 0;
                    }
                    itemColor = pData.color_scheme[itemColorIndex++];
                }

                /**** Generating the Value + Label Container block ****/
                containerBlockJqueryElement = jQuery(document.createElement("div")).addClass("a-BarChart-labelContainer");
                barValue = emptyStringIfUndefinedOrNullValue(pData.prefix_for_value) + (pData.display === "BAR_WIDTH" ? percent + "%" : pData.items[i].display_value) + emptyStringIfUndefinedOrNullValue(pData.postfix_for_value);

                /**** Generating the VALUE block ****/
                valueBlockJqueryElement = jQuery(document.createElement("span")).addClass("a-BarChart-value").append(barValue).append(
                    jQuery(document.createElement("span")).addClass("u-VisuallyHidden").append( (pData.display === "BAR_WIDTH" ? pData.items[i].display_value : percent + "%") )
                );
                // If the value link is defined we wrap its content into a generated anchor
                if (typeof pData.items[i].value_link !== "undefined") {
                    valueBlockJqueryElement.wrapInner(jQuery(document.createElement("a")).attr("href", pData.items[i].value_link));
                }

                /**** Generating the LABEL block ****/
                labelBlockJqueryElement = jQuery(document.createElement("h3")).addClass("a-BarChart-label").append(pData.items[i].label);
                // If the label link is defined we wrap the value inside a generated anchor
                if (typeof pData.items[i].label_link !== "undefined") {
                    labelBlockJqueryElement.wrapInner(jQuery(document.createElement("a")).attr("href", pData.items[i].label_link));
                }
                // As we're not adding more content to the value container we append it
                if(pData.chart_type === "ICON" || (pData.chart_type === "TEXT" && pData.text_position === "ABOVE")) {
                    containerBlockJqueryElement.append(labelBlockJqueryElement);
                    containerBlockJqueryElement.append(valueBlockJqueryElement);
                    itemJqueryElement.append(containerBlockJqueryElement);
                } else {
                    itemJqueryElement.append(labelBlockJqueryElement);
                }

                /**** Generating the BAR block ****/
                barBlockJqueryElement = jQuery(document.createElement("div")).addClass("a-BarChart-bar").append(
                                         jQuery(document.createElement("div"))
                                            .addClass("a-BarChart-filled")
                                            // Fixing accessibility issue
                                            .append( jQuery(document.createElement("span"))
                                            .addClass(CL_HIDDEN)
                                            .text( barValue ) )
                                        );
                if (pData.color_scheme === 'MODERN') {
                    barBlockJqueryElement.find('.a-BarChart-filled').addClass('u-color').css(
                        {
                            "width":percent + "%",
                        }
                    );
                } else {
                    barBlockJqueryElement.find('.a-BarChart-filled').css(
                        {
                            "width":percent + "%",
                            "background-color":pData.chart_type === "TEXT" ? itemColor : undefined
                        }
                    );
                }

                // If the value link is defined we wrap the bar inside a generated anchor
                if (typeof pData.items[i].value_link !== "undefined") {
                    barBlockJqueryElement = barBlockJqueryElement.wrap(jQuery(document.createElement("a")).attr("href", pData.items[i].value_link).addClass("a-BarChart-barLink")).parent();
                } else {
                    barBlockJqueryElement = barBlockJqueryElement.wrap(jQuery(document.createElement("span")).addClass("a-BarChart-barLink")).parent();
                }

                // As we're not adding more content to the bar we append it
                itemJqueryElement.append(barBlockJqueryElement);

                // If the plugin style is classic then the value block goes at the end
                if(pData.chart_type === "TEXT" && pData.text_position !== "ABOVE") {
                    // As we're not adding more content to the value container we append it
                    itemJqueryElement.append(valueBlockJqueryElement);
                }

                if (pData.chart_type === "ICON") {
                    // If the display mode is not "NONE" we wrap the contents of the item inside a new div
                    itemJqueryElement.wrapInner(jQuery(document.createElement("div")).addClass("a-MediaBlock-content"));

                    mediaBlockJqueryElement = jQuery(document.createElement("div")).addClass("a-MediaBlock-graphic");

                    switch (pData.icon_type) {
                        case "IMAGE":
                            mediaBlockJqueryElement.append(jQuery(document.createElement("img")).attr(
                            {
                                "src": pData.items[i].image_url,
                                "alt": pData.items[i].label
                            }));
                            break;
                        case "ICON":
                            mediaBlockJqueryElement.append(jQuery(document.createElement("span")).addClass(pData.items[i].icon_css_class_name).addClass('u-color'));
                            break;
                        case "INITIALS":
                            initialsBlockJqueryElement = jQuery(document.createElement("span")).addClass("a-BarChart-initials").text(pData.items[i].initials);
                            if (pData.color_scheme === 'MODERN') {
                                initialsBlockJqueryElement.addClass('u-color');
                            } else {
                                initialsBlockJqueryElement.css({
                                    "background-color":"#fff",
                                    "border-color":itemColor,
                                    "color":itemColor
                                });
                            }
                            if (typeof pData.items[i].initials_color_css_class_name !== "undefined") {
                                initialsBlockJqueryElement.addClass(pData.items[i].initials_color_css_class_name);
                            }
                            mediaBlockJqueryElement.append(initialsBlockJqueryElement);
                            break;
                    }

                    // As no more items can be added inside the media block we append it to the item's jQuery element
                    itemJqueryElement.prepend(jQuery(document.createElement("div")).addClass("a-MediaBlock").append(mediaBlockJqueryElement));
                }

                chartJqueryElement.append(itemJqueryElement);
            }
        } else {
            chartJqueryElement = jQuery(jQuery.parseHTML(pData.message_when_no_data_found));
        }
        
        gChartContainer$.append(chartJqueryElement);
    }

    function _render() {
        apex.server.plugin(
            gOptions.ajaxIdentifier,
            {
                pageItems: gOptions.pageItems
            },
            {
//                dataType: "text", //DEBUG
                dataType: "json",
//                accept: "text/plain", //DEBUG
                accept: "application/json",
                refreshObject: gRegion$,
                clear: _clear,
                success: _draw
            }
        );
    }
    
    _render();
    
    gRegion$.on("apexrefresh", _render);
}