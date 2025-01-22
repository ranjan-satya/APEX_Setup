/*!
 Copyright (c) 2003, 2021, Oracle and/or its affiliates. All rights reserved.
*/

/**
 * @fileOverview
 * This file holds all namespaced objects and functions for Calendar Functionality
 *
 * */

/**
 * @namespace
 */
apex.widget.calendar = {

    /**
     * This function controls the AJAX based calendar functionality.
     *
     * @param {String} p_calendar_type
     * @param {String} p_calendar_action
     * @param {String} p_calendar_date
     * */
    ajax_calendar: function(p_calendar_type, p_calendar_action, p_calendar_date, p_calendar_end_date, pOptions) {
        var l_cal_type_field = $v('p_cal_type_field_id');
        var l_cal_date_field = $v('p_cal_date_field_id');
        var l_cal_end_date_field = $v('p_cal_end_date_field_id');
        var l_cal_id = $v('p_calendar_id');
        var l_calendar_region = apex.util.escapeCSS('calendar' + l_cal_id);
        var l_cal_enable_drag_add = $v('p_cal_enable_drag_add');
        //check whether drag & drop and Add data property is set to [Y]
        var l_cal_enable_drag_drop = l_cal_enable_drag_add.charAt(0);
        var l_cal_enable_data_add = l_cal_enable_drag_add.charAt(1);
        var l_cal_highlight_data = $v('p_cal_highlight_data');

        if ( p_calendar_type != 'C' ){
         $s(l_cal_date_field,$v('p_calendar_date'));
        } else {
           if ( $v(l_cal_date_field) == '' ) {
              $s(l_cal_date_field,$v('p_calendar_date'));
           }
           if ( $v(l_cal_end_date_field) == '' ) {
              $s(l_cal_end_date_field,$v('p_calendar_end_date'));
           }
        }

        // code for next,previous and today
        if (p_calendar_type == 'S'){
            p_calendar_type = $v('p_calendar_type');
        }else{
            $s(l_cal_type_field,p_calendar_type);
        }

        var lDate = (!!p_calendar_date && p_calendar_date !== '')?p_calendar_date:$v(l_cal_date_field);
        if (p_calendar_type == 'C') {
           var lendDate = (!!p_calendar_end_date && p_calendar_end_date !== '')?p_calendar_end_date:$v(l_cal_end_date_field);
        }

    /*  a.ajax.add(l_cal_date_field,lDate);
        if (p_calendar_type == 'C') a.ajax.add(l_cal_end_date_field,lendDate);
        a.ajax.addParam('x02',lDate);
        if (p_calendar_type == 'C') a.ajax.addParam('x05',lendDate);
        a.ajax.add(l_cal_type_field,p_calendar_type);       */

        var lOptions = apex.jQuery.extend( {
                            dataType:    "html",
                            refreshObject: "#"+l_calendar_region,
                            success: function( pData ) {
                                        apex.jQuery("#"+l_calendar_region, apex.gPageContext$).html( pData );
                                        $s(l_cal_date_field,$v('p_calendar_date'));
                                        if (p_calendar_type == 'C') $s(l_cal_end_date_field,$v('p_calendar_end_date'));
                                        if (l_cal_enable_drag_drop == 'Y') apex.widget.calendar.initDragDrop(); //commented for bug #9948888, should be removed
                                        if (l_cal_enable_data_add == 'Y') apex.widget.calendar.initAjaxDataAdd();
                                        apex.widget.calendar.initAjaxDataModify();
                                        if (l_cal_highlight_data == 'Y') {
                                            loadCalendarData();
                                        }
                                        if ( $v('p_cal_is_mobile') == 'Y' ) {
                                            apex.jQuery("#"+l_calendar_region, apex.gPageContext$).find('[data-role="listview"]').listview();
                                        }
                                        document.body.style.cursor = "";
                                    }
                            },pOptions );

        apex.server.widget( "calendar",
        {
            p_widget_action: p_calendar_action,
            p_widget_mod:    p_calendar_type,
            x01:             l_cal_id,
            x02:             lDate,
            x05:             lendDate
        }
        , lOptions );

    },

    initAjaxDataModify : function() {
        apex.jQuery('div.apex_cal_data_grid_src', apex.gPageContext$).on("click", function(e){
            // none of this does anything todo remove it or use it
            //var lCalDateSource = apex.jQuery(this).find('input.apex_cal_date_source');
            //gMouseX = e.clientX;
            //gMouseY = e.clientY;
            //apex.widget.calendar.showData(lCalDateSource.val());
        });
        apex.jQuery('div.apex_cal_data_grid_src', apex.gPageContext$).on("mouseenter", function(e){
               this.style.cursor = "pointer";
        });
    },
    ajaxAddData:function(e) {
        var lAddUrlnew = apex.jQuery(e.target).find('input.apex_cal_add_url').val();
        if ( lAddUrlnew == undefined || lAddUrlnew == '' ) {
            lAddUrlnew = apex.jQuery(e.target).parent().find('input.apex_cal_add_url').val();
        }
        if ( lAddUrlnew != undefined && lAddUrlnew != '' ) {
            var lOpenPopup = apex.jQuery('#p_cal_url_new_window', apex.gPageContext$).val();
            if ( lAddUrlnew != '') {
                if ( lOpenPopup == 'P') {
                    apex.navigation.popup({
                        url: lAddUrlnew,
                        name: 'popupwindow',
                        width: 800,
                        height: 600
                    });
                } else {
                    window.location.href=lAddUrlnew;
                }
            }
        }
    },
    initAjaxDataAdd: function() {
        var lAddUrl = apex.jQuery('#p_cal_add_url', apex.gPageContext$).val();
        var lAddUrlnew;
        var lOpenPopup = apex.jQuery('#p_cal_url_new_window', apex.gPageContext$).val();
        if (lAddUrl.indexOf('#DATE_VALUE#') != -1 ) {
            apex.jQuery('.calDragDrop', apex.gPageContext$).parent().on("click", function(e){
                if ( e.target.nodeName != 'A' && e.target.id != 'apex_cal_data_grid_src') {
                    var lDateVal = apex.jQuery(this).find('input.apex_cal_grid_target').val();
                    lAddUrl = lAddUrl.replace('#DATE_VALUE#',lDateVal);
                    lAddUrlnew = apex.jQuery(this).find('input.apex_cal_add_url').val();
                    if ( lOpenPopup == 'P') {
                        apex.navigation.popup({
                            url: lAddUrlnew,
                            name: 'popupwindow',
                            width: 800,
                            height: 600
                        });
                    } else {
                        window.location.href=lAddUrlnew;
                    }
                 }
                    //apex.widget.calendar.add(apex.jQuery(this).find('input.apex_cal_grid_target').val(),e.clientX,e.clientY);
            });
        }
        apex.jQuery('.calDragDrop', apex.gPageContext$).parent().on("mouseenter", function(e){
               this.style.cursor = "pointer";
        });
    },
    initAjaxDataShow: function() {
    apex.jQuery('.calDragDrop', apex.gPageContext$).parent().on("click", function(e){
     var lDateVal = apex.jQuery(this).find('input.apex_cal_grid_target').val();
    /*if ( e.target.nodeName != 'A' && e.target.id != 'apex_cal_data_grid_src') {
        var lDateVal = apex.jQuery(this).find('input.apex_cal_grid_target').val();

    }*/
    if (lDateVal != '')apex.widget.calendar.show(apex.jQuery(this),lDateVal);
      });
    },
    initDragDrop: function() {
       var lCalendarDataDrag = apex.jQuery('#calendar_data_drag', apex.gPageContext$);
       apex.jQuery('div.apex_cal_data_grid_src',lCalendarDataDrag).draggable({
            revert: 'invalid',
            //helper: 'clone',
            helper: function() {
                return apex.jQuery(this).clone().width(this.clientWidth);
            },
            cursor: 'move',
            dragstart: function(event, ui) {
                   apex.jQuery(this).height(180);
                   apex.jQuery(this).width(181);
            }
        });

        apex.jQuery('div.calDragDrop', lCalendarDataDrag).parent().droppable({
            accept: '#calendar_data_drag div.apex_cal_data_grid_src',
            activeClass: 'custom-state-active',
            drop: function(ev, ui) {
                     apex.widget.calendar.move(this, ev,ui.draggable);
            }
    });


    },

    /**
     * This function is used to move data using Drag & Drop.
     **/
    move: function(pThis, pEvent, pItem,pOptions){
      var l_cal_id = $v('p_calendar_id');
      var l_calendar_region = apex.util.escapeCSS('calendar' + l_cal_id);
      var lCalDateField = $v('p_cal_date_field_id');
      var lCalEndDateField = $v('p_cal_end_date_field_id');
      // getting the primary key value & Target Date value
      //var lTarget = apex.jQuery(pEvent.target); #Changed behaviour post jQuery 1.7.x
      var lTarget = apex.jQuery(pThis);
      var lKeyValue = pItem.find('input.apex_cal_date_source').val();
      var lTargetDate = lTarget.find('input.apex_cal_grid_target').val();
      $s(lCalDateField,$v('p_calendar_date'));

       //var l_array = new Array() ;
       var lCalId = $v('p_calendar_id');
       var lCalendarRegion = 'calendar' + lCalId;
       var l_cal_enable_drag_add = $v('p_cal_enable_drag_add');
       //check whether drag & drop and Add data property is set to [Y]
       var l_cal_enable_drag_drop = l_cal_enable_drag_add.charAt(0);
       var l_cal_enable_data_add = l_cal_enable_drag_add.charAt(1);
       var l_cal_highlight_data = $v('p_cal_highlight_data');

       // call page level On demand Process
       var l_page_process = $v('p_cal_drag_process');
       if ( l_page_process ) {
           apex.server.process( l_page_process, {
               x01: lTargetDate,
               x02: lKeyValue
           }, {
               dataType: "", // don't expect any data back
               loadingIndicator: "#"+l_calendar_region,
               loadingIndicatorPosition: "centered",
               success: function() {
                   // once the move has been processed update the calendar
                   var lDate = $v(lCalDateField);
                   if ($v('p_calendar_type') == 'C') {
                       var lendDate = $v(lCalEndDateField);
                   }

                   var lOptions = apex.jQuery.extend( {
                       dataType:    "html",
                       refreshObject: "#"+lCalendarRegion,
                       success: function( pData ) {
                           apex.jQuery("#"+lCalendarRegion, apex.gPageContext$).html( pData );

                           $s(lCalDateField,$v('p_calendar_date'));
                           if ($v('p_calendar_type') == 'C') $s(lCalEndDateField,$v('p_calendar_end_date'));
                           if (l_cal_enable_drag_drop == 'Y') apex.widget.calendar.initDragDrop(); //commented for bug #9948888, should be removed
                           if (l_cal_enable_data_add == 'Y') apex.widget.calendar.initAjaxDataAdd();
                           apex.widget.calendar.initAjaxDataModify();
                           if (l_cal_highlight_data == 'Y') {
                               loadCalendarData();
                           }
                           document.body.style.cursor = "";
                       }
                   },pOptions );

                   apex.server.widget( "calendar",
                       {
                           p_widget_action: 'same',
                           p_widget_mod:    $v('p_calendar_type'),
                           x01:             lCalId,
                           x02:             lDate,
                           x03:             $v('apex_cal_table_name'),
                           x05:             lendDate,
                           x06:             $v('apex_cal_primary_key'),
                           x07:             lKeyValue,
                           x08:             $v('p_date_column_name'),
                           x09:             lTargetDate
                       }
                       , lOptions );
               }
           });
        }
    },

    getDayData: function(pRegionId, pDate, pOptions) {
        var lOptions = apex.jQuery.extend( {
                            dataType:    "html",
                            refreshObject: "#" + pRegionId },
                            pOptions );

        apex.server.widget( "calendar",
        {
            p_widget_action: "DAY_DATA",
            x01:             pRegionId,
            x02:             pDate
        }, lOptions );

    }

};

/**
 * code for backward compatibility
 * */
ajax_calendar = apex.widget.calendar.ajax_calendar;
