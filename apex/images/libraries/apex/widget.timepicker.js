/*jshint nomen: false, evil: false, browser: true, eqeqeq: false, white: false, undef: false */
/*
 Copyright (c) 2012, 2022, Oracle and/or its affiliates. All rights reserved.
 */
/*global apex*/
// only if the jQueryUI datepicker library is loaded and we haven't initialized the timepicker yet, continue
if (apex.jQuery.datepicker && !apex.jQuery.timepicker) {

(function($) {
    var hour_regexp = new RegExp("hh((24)|(12))?", "gi" ), // expression for hour match hh,hh12,hh24
        min_regexp = new RegExp("ii", "gi"), // expresion for minute match
        sec_regexp = new RegExp("ss", "gi" ), // expression for seconds match
        ampm_regexp = new RegExp("((%at%)|(%pt%))", "gi"), // expression for am,pm match
        time_regexp = new RegExp("hh(24|12)?(.?ii(.?ss)?)?(.?(%at%|%pt%))?", "gi");

    function Timepicker() {}

    Timepicker.prototype = {
        init: function()
        {
            this._mainDivId = 'ui-timepicker-div';
            this._inputId   = null;
            this._orgValue  = null;
            this._orgHour   = null;
            this._orgMinute = null;
            this._colonPos  = -1;
            this._visible   = false;
            this.tpDiv      = $('<div id="' + this._mainDivId + '" class="ui-datepicker ui-widget ui-widget-content ui-helper-clearfix ui-corner-all ui-helper-hidden-accessible" style="width: 100px; display: none; position: absolute;"></div>');

        /**
        * Extending default values
        */
        $.extend($.datepicker._defaults, {
            'time24h': false, // True if 24h time
            'showTime': false, // Show timepicker with datepicker
            'ampmNames': ['AM','PM'], // value for the hour display, should be included part of regionalization
            'timeFormat': 'HH:NI',
            'altTimeField': '', // Selector for an alternate field to store time into
            'defHour': 0,
            'defMinute' : 0,
            'defAmpm' : '',
            'escapeKey' : false
        });

        /**
         * _hideDatepicker must be called with null
         */
        $.datepicker._connectDatepickerOverride = $.datepicker._connectDatepicker;
        $.datepicker._connectDatepicker = function(target, inst) {
            $.datepicker._connectDatepickerOverride(target, inst);

            // showButtonPanel is required with timepicker
            if (this._get(inst, 'showTime')) {
                inst.settings['showButtonPanel'] = true;
            }
            var showOn = this._get(inst, 'showOn');

            if (showOn == 'button' || showOn == 'both') {
                // Unbind all click events
                inst.trigger.off('click');

                // Bind new click event
                inst.trigger.on( "click", function() {
                    if ($.datepicker._datepickerShowing && $.datepicker._lastInput == target)
                        $.datepicker._hideDatepicker(null); // This override is all about the "null"
                    else
                        $.datepicker._showDatepicker(target);
                    return false;
                });
            }
            if (showOn == 'focus' || showOn == 'both') {
                // Unbind all focus events
                inst.input.off('focus');

                // Bind new focus event
                inst.input.on( "focus", function() {
                    if ($.datepicker._datepickerShowing && $.datepicker._lastInput == target) {
                    } else {
                        $.datepicker._showDatepicker(target);
                    }
                    return false;
                });
            }
        };

        /**
         * Reconnect datepicker event handlers after changing options
         */
        $.datepicker._optionDatepickerOverride = $.datepicker._optionDatepicker;
        $.datepicker._optionDatepicker = function( target, name, value ) {
            // Call the original method 
            if ( arguments.length === 2 && typeof name === "string" ) {
                return $.datepicker._optionDatepickerOverride( target, name );
            } else {
                var inst = this._getInst( target );
                // Setting an option will re-render the widget
                // Two things will get lost:
                //  1. Extra classes on the trigger element of the datepicker 
                //  2. Event handlers on datepicker elements
                // We need to add those afterwards
                var triggerClasses = inst.trigger.attr( "class" );
                $.datepicker._optionDatepickerOverride( target, name, value );
                $.datepicker._attachments( $( target ), inst );
                inst.trigger.addClass( triggerClasses );
            }
        };

        $.datepicker._setDateOverride = $.datepicker._setDate;
        $.datepicker._setDate = function (inst, date, noChange) {
            var settings, format;

            if ( typeof( date ) === "string" ) {
                // we have to parse date values with a time component explicitly; otherwise it will fail
                settings = this._getFormatConfig(inst);
                format   = this._get( inst, "dateFormat" );

                if ( format.toLowerCase().indexOf( "hh" ) !== -1 ) {
                    date = apex.jQuery.timepicker._parseDateTime( format, date, settings, settings.locale, inst );
                } else {
                    date = $.datepicker.parseDate( format, date, settings );
                }
            }
                
            // Call the original method 
            $.datepicker._setDateOverride(inst, date, noChange);
        };

        /**
         * Datepicker does not have an onShow event so I need to create it.
         * What I actually doing here is copying original _showDatepicker
         * method to _showDatepickerOverload method.
         */
        $.datepicker._showDatepickerOverride = $.datepicker._showDatepicker;
        $.datepicker._showDatepicker = function (input) {
            // Get instance to datepicker
            var inst = $.datepicker._getInst(input ),
                settings = inst.settings,
                originalFormat = settings.dateFormat;

            // need to change the dateFormat around this call because the parse method chokes on time format characters
            settings.dateFormat = settings.dateFormat.replace(time_regexp, "").replace(/\s+$/, "");
            // Call the original method which will show the datepicker
            $.datepicker._showDatepickerOverride(input);
            settings.dateFormat = originalFormat;

            input = input.target || input;

            // find from button/image trigger
            if (input.nodeName.toLowerCase() != 'input') {
                input = $('input', input.parentNode)[0];
            }

            // Do not show timepicker if datepicker is disabled
            if ($.datepicker._isDisabledDatepicker(input)) return;

            var showTime = $.datepicker._get(inst, 'showTime');

            // If showTime = True show the timepicker
            if (showTime) {
                $.timepicker.show(input);
            }
        };

        /** To control the click on regions other than Date and timepicker region
        * this function is original copy of __checkExternalClick, except with
        * additional line of code to handle, date with time format
        */
        $.datepicker._checkExternalClickOverride = $.__checkExternalClick;
        $.datepicker._checkExternalClick = function(event) {
            if (!$.datepicker._curInst)
            return;
            var $target = $(event.target);
            if ($target[0].id != $.datepicker._mainDivId &&
                $target.parents('#' + $.datepicker._mainDivId).length == 0 &&
                !$target.hasClass($.datepicker.markerClassName) &&
                !$target.hasClass($.datepicker._triggerClass) &&
                $.datepicker._datepickerShowing && !($.datepicker._inDialog && $.blockUI)) {
            $.datepicker._curInst.escapeKey = true; //this is additional line included for date with time formats
            $.datepicker._hideDatepicker();
            }

        };

        /**
        * To control the Keypress event for the timepicker, need to create this function
        * this function is original copy of _doKeyDown, except additional code to suppress
        * escape key for date with time.
        */
        $.datepicker._doKeyDownOverride = $.datepicker._doKeyDown;
        $.datepicker._doKeyDown = function(event) {
            var sel;
            var inst = $.datepicker._getInst(event.target);
            var handled = true;
            var isRTL = inst.dpDiv.is('.ui-datepicker-rtl');
            inst._keyEvent = true;
            inst.escapeKey = false; // added for timepicker
            if ($.datepicker._datepickerShowing)
                switch (event.keyCode) {
                    case 9: if ( $.datepicker._get(inst, 'showTime') ) inst.escapeKey = true;
                            $.datepicker._hideDatepicker();
                            handled = false;
                            break; // hide on tab out
                    case 13: sel = $("td." + $.datepicker._dayOverClass + ":not(." + $.datepicker._currentClass + ")", inst.dpDiv);
                            if (sel[0])
                                $.datepicker._selectDay(event.target, inst.selectedMonth, inst.selectedYear, sel[0]);
                            else
                                $.datepicker._hideDatepicker();
                            return false; // don't submit the form
                    case 27: inst.escapeKey = true; //added for timepicker
                             $.datepicker._hideDatepicker();
                             break; // hide on escape
                    case 33: $.datepicker._adjustDate(event.target, (event.ctrlKey ?
                                -$.datepicker._get(inst, 'stepBigMonths') :
                                -$.datepicker._get(inst, 'stepMonths')), 'M');
                            break; // previous month/year on page up/+ ctrl
                    case 34: $.datepicker._adjustDate(event.target, (event.ctrlKey ?
                                +$.datepicker._get(inst, 'stepBigMonths') :
                                +$.datepicker._get(inst, 'stepMonths')), 'M');
                            break; // next month/year on page down/+ ctrl
                    case 35: if (event.ctrlKey || event.metaKey) $.datepicker._clearDate(event.target);
                            handled = event.ctrlKey || event.metaKey;
                            break; // clear on ctrl or command +end
                    case 36: if (event.ctrlKey || event.metaKey) $.datepicker._gotoToday(event.target);
                            handled = event.ctrlKey || event.metaKey;
                            break; // current on ctrl or command +home
                    case 37: if (event.ctrlKey || event.metaKey) $.datepicker._adjustDate(event.target, (isRTL ? +1 : -1), 'D');
                            handled = event.ctrlKey || event.metaKey;
                            // -1 day on ctrl or command +left
                            if (event.originalEvent.altKey) $.datepicker._adjustDate(event.target, (event.ctrlKey ?
                                        -$.datepicker._get(inst, 'stepBigMonths') :
                                        -$.datepicker._get(inst, 'stepMonths')), 'M');
                            // next month/year on alt +left on Mac
                            break;
                    case 38: if (event.ctrlKey || event.metaKey) $.datepicker._adjustDate(event.target, -7, 'D');
                            handled = event.ctrlKey || event.metaKey;
                            break; // -1 week on ctrl or command +up
                    case 39: if (event.ctrlKey || event.metaKey) $.datepicker._adjustDate(event.target, (isRTL ? -1 : +1), 'D');
                            handled = event.ctrlKey || event.metaKey;
                            // +1 day on ctrl or command +right
                            if (event.originalEvent.altKey) $.datepicker._adjustDate(event.target, (event.ctrlKey ?
                                        +$.datepicker._get(inst, 'stepBigMonths') :
                                        +$.datepicker._get(inst, 'stepMonths')), 'M');
                            // next month/year on alt +right
                            break;
                    case 40: if (event.ctrlKey || event.metaKey) $.datepicker._adjustDate(event.target, +7, 'D');
                            handled = event.ctrlKey || event.metaKey;
                            break; // +1 week on ctrl or command +down
                    default: handled = false;
                }
            else if (event.keyCode == 36 && event.ctrlKey) // display the date picker on ctrl+home
                $.datepicker._showDatepicker(this);
            else {
                handled = false;
            }
            if (handled) {
                event.preventDefault();
                event.stopPropagation();
            }

        };

        /**
         * Datepicker has onHide event, which is used to add the time part to the Date
         */
        $.datepicker._hideDatepickerOverride = $.datepicker._hideDatepicker;
        $.datepicker._hideDatepicker = function(input, duration) {
            // Some lines from the original method
            var inst = this._curInst;

            if (!inst || (input && inst != $.data(input, "datepicker"))) {
                return;
            }

            // Get the value of showTime property
            var showTime = this._get(inst, 'showTime');

            if (input === undefined && showTime && !inst.escapeKey) {
                if (inst.input) {
                    inst.input.val(this._formatDate(inst));
                   // inst.input.trigger('change'); // fire the change event
                }

                this._updateAlternate(inst);

                if (showTime) $.timepicker.update(this._formatDate(inst),inst);
            }
            inst.escapeKey = false;
            // Hide datepicker
            $.datepicker._hideDatepickerOverride(input, duration);

        };

        /**
         * This is a complete replacement of the _selectDate method.
         * If showed with timepicker do not close when date is selected.
         */
        $.datepicker._selectDate = function(id, dateStr) {
            var target = $(id);
            var inst = this._getInst(target[0]);
            var showTime = this._get(inst, 'showTime');
            dateStr = (dateStr != null ? dateStr : this._formatDate(inst));
            if (!showTime || (inst.inline && showTime)) {
                // for inline date picker, the "input" attribute is a <span>, so
                // calling val() does not help. updateAlternate will then also not do anything afterwards.
                if ( inst.input && inst.input.prop("tagName") === "INPUT" ) {
                    inst.input.val(dateStr);
                    this._updateAlternate(inst);
                } else {
                    $(this._get(inst, "altField")).each(function() { $(this).val(dateStr); });
                }
            }
            var onSelect = this._get(inst, 'onSelect');
            if (onSelect)
                onSelect.apply((inst.input ? inst.input[0] : null), [dateStr, inst]);  // trigger custom callback
            else if (inst.input && !showTime)
                inst.input.trigger('change'); // fire the change event
            if (inst.inline)
                this._updateDatepicker(inst);
            else if (!inst.stayOpen) {
                if (showTime) {
                    this._updateDatepicker(inst);
                } else {
                    this._hideDatepicker(null, this._get(inst, 'duration'));
                    this._lastInput = inst.input[0];
                    if (typeof(inst.input[0]) != 'object')
                        inst.input[0].focus(); // restore focus
                    this._lastInput = null;
                }
            }
        };

        /**
        * This is method overriding _updateAlternate
        *  this is to support inline datepicker with time
        */

        $.datepicker._updateAlternateOverride = $.datepicker._updateAlternate;
        $.datepicker._updateAlternate = function(inst) {
            var altField = this._get(inst, 'altField');
            if (altField) { // update alternate field too
                var altFormat = this._get(inst, 'altFormat') || this._get(inst, 'dateFormat');
                var date = this._getDate(inst);
                var dateStr = this.formatDate(altFormat, date, this._getFormatConfig(inst));
                //code added for time support in inline mode
                if (inst.inline && this._get(inst, 'showTime')) {
                    if (dateStr.match(hour_regexp)) dateStr = dateStr.replace(hour_regexp,$.datepicker._get(inst, 'defHour'));
                    if (dateStr.match(min_regexp))  dateStr = dateStr.replace(min_regexp,$.datepicker._get(inst, 'defMinute'));
                    if (dateStr.match(sec_regexp))  dateStr = dateStr.replace(sec_regexp,'00');
                    if (dateStr.match(ampm_regexp))  dateStr = dateStr.replace(ampm_regexp,$.datepicker._get(inst, 'defAmpm'));
                }
                //end of code
                $(altField).each(function() { $(this).val(dateStr); });
            }
        };

        /**
        * This is a complete replacement of _selectDay function
        * this function is extended to support time in inline version of Datepicker
        */

        $.datepicker._selectDayOverride = $.datepicker._selectDay;
        $.datepicker._selectDay = function(id, month, year, td) {
            var target = $(id);
            if ($(td).hasClass(this._unselectableClass) || this._isDisabledDatepicker(target[0])) {
                return;
            }
            var inst = this._getInst(target[0]);
            inst.selectedDay = inst.currentDay = $('a', td).html();
            inst.selectedMonth = inst.currentMonth = month;
            inst.selectedYear = inst.currentYear = year;
            //sathikum code to support time in inline mode.
            var hour, minute, ampm ;
            if (inst.inline && inst.settings.showTime) {
                hour = $(target).find('select[id$="hour"]').val();
                minute = $(target).find('select[id$="minute"]').val();
                ampm = $(target).find('select[id$="ampm"]').val();
            }
            this._selectDate(id, this._formatDate(inst,
            inst.currentDay, inst.currentMonth, inst.currentYear, hour, minute, 0, ampm));
        };
        /**
        * This is overriding function of _generateHTML, the prime need to override, is to include time functionality in inline mode
        *
        */

        $.datepicker._generateHTMLOverride = $.datepicker._generateHTML;
        $.datepicker._generateHTML = function(inst) {

            var maxDraw, prevText, prev, nextText, next, currentText, gotoDate,
                controls, buttonPanel, firstDay, showWeek, dayNames, dayNamesMin,
                monthNames, monthNamesShort, beforeShowDay, showOtherMonths,
                selectOtherMonths, defaultDate, html, dow, row, group, col, selectedDate,
                cornerClass, calender, thead, day, daysInMonth, leadDays, curRows, numRows,
                printDate, dRow, tbody, daySettings, otherMonth, unselectable,
                tempDate = new Date(),
                today = this._daylightSavingAdjust(
                    new Date(tempDate.getFullYear(), tempDate.getMonth(), tempDate.getDate())), // clear time
                isRTL = this._get(inst, "isRTL"),
                showButtonPanel = this._get(inst, "showButtonPanel"),
                hideIfNoPrevNext = this._get(inst, "hideIfNoPrevNext"),
                navigationAsDateFormat = this._get(inst, "navigationAsDateFormat"),
                numMonths = this._getNumberOfMonths(inst),
                showCurrentAtPos = this._get(inst, "showCurrentAtPos"),
                stepMonths = this._get(inst, "stepMonths"),
                isMultiMonth = (numMonths[0] !== 1 || numMonths[1] !== 1),
                currentDate = this._daylightSavingAdjust((!inst.currentDay ? new Date(9999, 9, 9) :
                    new Date(inst.currentYear, inst.currentMonth, inst.currentDay))),
                minDate = this._getMinMaxDate(inst, "min"),
                maxDate = this._getMinMaxDate(inst, "max"),
                drawMonth = inst.drawMonth - showCurrentAtPos,
                drawYear = inst.drawYear,showTime = this._get(inst,"showTime");

            if (drawMonth < 0) {
                drawMonth += 12;
                drawYear--;
            }
            if (maxDate) {
                maxDraw = this._daylightSavingAdjust(new Date(maxDate.getFullYear(),
                    maxDate.getMonth() - (numMonths[0] * numMonths[1]) + 1, maxDate.getDate()));
                maxDraw = (minDate && maxDraw < minDate ? minDate : maxDraw);
                while (this._daylightSavingAdjust(new Date(drawYear, drawMonth, 1)) > maxDraw) {
                    drawMonth--;
                    if (drawMonth < 0) {
                        drawMonth = 11;
                        drawYear--;
                    }
                }
            }
            inst.drawMonth = drawMonth;
            inst.drawYear = drawYear;

            prevText = this._get(inst, "prevText");
            prevText = (!navigationAsDateFormat ? prevText : this.formatDate(prevText,
                this._daylightSavingAdjust(new Date(drawYear, drawMonth - stepMonths, 1)),
                this._getFormatConfig(inst)));

            prev = (this._canAdjustMonth(inst, -1, drawYear, drawMonth) ?
                "<a class='ui-datepicker-prev ui-corner-all' data-handler='prev' data-event='click'" +
                " title='" + prevText + "'><span class='ui-icon ui-icon-circle-triangle-" + ( isRTL ? "e" : "w") + "'>" + prevText + "</span></a>" :
                (hideIfNoPrevNext ? "" : "<a class='ui-datepicker-prev ui-corner-all ui-state-disabled' title='"+ prevText +"'><span class='ui-icon ui-icon-circle-triangle-" + ( isRTL ? "e" : "w") + "'>" + prevText + "</span></a>"));

            nextText = this._get(inst, "nextText");
            nextText = (!navigationAsDateFormat ? nextText : this.formatDate(nextText,
                this._daylightSavingAdjust(new Date(drawYear, drawMonth + stepMonths, 1)),
                this._getFormatConfig(inst)));

            next = (this._canAdjustMonth(inst, +1, drawYear, drawMonth) ?
                "<a class='ui-datepicker-next ui-corner-all' data-handler='next' data-event='click'" +
                " title='" + nextText + "'><span class='ui-icon ui-icon-circle-triangle-" + ( isRTL ? "w" : "e") + "'>" + nextText + "</span></a>" :
                (hideIfNoPrevNext ? "" : "<a class='ui-datepicker-next ui-corner-all ui-state-disabled' title='"+ nextText + "'><span class='ui-icon ui-icon-circle-triangle-" + ( isRTL ? "w" : "e") + "'>" + nextText + "</span></a>"));

            currentText = this._get(inst, "currentText");
            gotoDate = (this._get(inst, "gotoCurrent") && inst.currentDay ? currentDate : today);
            currentText = (!navigationAsDateFormat ? currentText :
                this.formatDate(currentText, gotoDate, this._getFormatConfig(inst)));

            controls = (!inst.inline ? "<button type='button' class='ui-datepicker-close ui-state-default ui-priority-primary ui-corner-all' data-handler='hide' onclick='apex.jQuery.datepicker._hideDatepicker();' data-event='click'>" +
                this._get(inst, "closeText") + "</button>" : "");

            buttonPanel = (showButtonPanel) ? "<div class='ui-datepicker-buttonpane ui-widget-content'>" + (isRTL ? controls : "") +
                (this._isInRange(inst, gotoDate) ? "<button type='button' class='ui-datepicker-current ui-state-default ui-priority-secondary ui-corner-all' data-handler='today' onclick='apex.jQuery.datepicker._gotoToday(\"#" + inst.id + "\");' data-event='click'" +
                ">" + currentText + "</button>" : "") + (isRTL ? "" : controls) + "</div>" : "";
            // date with time html
            buttonPanel = (inst.inline  && showTime ? $.timepicker._generateInlineTimeHTML(inst) + buttonPanel : buttonPanel);

            firstDay = parseInt(this._get(inst, "firstDay"),10);
            firstDay = (isNaN(firstDay) ? 0 : firstDay);

            showWeek = this._get(inst, "showWeek");
            dayNames = this._get(inst, "dayNames");
            dayNamesMin = this._get(inst, "dayNamesMin");
            monthNames = this._get(inst, "monthNames");
            monthNamesShort = this._get(inst, "monthNamesShort");
            beforeShowDay = this._get(inst, "beforeShowDay");
            showOtherMonths = this._get(inst, "showOtherMonths");
            selectOtherMonths = this._get(inst, "selectOtherMonths");
            defaultDate = this._getDefaultDate(inst);
            html = "";

            for (row = 0; row < numMonths[0]; row++) {
                group = "";
                this.maxRows = 4;
                for (col = 0; col < numMonths[1]; col++) {
                    selectedDate = this._daylightSavingAdjust(new Date(drawYear, drawMonth, inst.selectedDay));
                    cornerClass = " ui-corner-all";
                    calender = "";
                    if (isMultiMonth) {
                        calender += "<div class='ui-datepicker-group";
                        if (numMonths[1] > 1) {
                            switch (col) {
                                case 0: calender += " ui-datepicker-group-first";
                                    cornerClass = " ui-corner-" + (isRTL ? "right" : "left"); break;
                                case numMonths[1]-1: calender += " ui-datepicker-group-last";
                                    cornerClass = " ui-corner-" + (isRTL ? "left" : "right"); break;
                                default: calender += " ui-datepicker-group-middle"; cornerClass = ""; break;
                            }
                        }
                        calender += "'>";
                    }
                    calender += "<div class='ui-datepicker-header ui-widget-header ui-helper-clearfix" + cornerClass + "'>" +
                        (/all|left/.test(cornerClass) && row === 0 ? (isRTL ? next : prev) : "") +
                        (/all|right/.test(cornerClass) && row === 0 ? (isRTL ? prev : next) : "") +
                        this._generateMonthYearHeader(inst, drawMonth, drawYear, minDate, maxDate,
                        row > 0 || col > 0, monthNames, monthNamesShort) + // draw month headers
                        "</div><table class='ui-datepicker-calendar'><thead>" +
                        "<tr>";
                    thead = (showWeek ? "<th class='ui-datepicker-week-col'>" + this._get(inst, "weekHeader") + "</th>" : "");
                    for (dow = 0; dow < 7; dow++) { // days of the week
                        day = (dow + firstDay) % 7;
                        thead += "<th" + ((dow + firstDay + 6) % 7 >= 5 ? " class='ui-datepicker-week-end'" : "") + ">" +
                            "<span title='" + dayNames[day] + "'>" + dayNamesMin[day] + "</span></th>";
                    }
                    calender += thead + "</tr></thead><tbody>";
                    daysInMonth = this._getDaysInMonth(drawYear, drawMonth);
                    if (drawYear === inst.selectedYear && drawMonth === inst.selectedMonth) {
                        inst.selectedDay = Math.min(inst.selectedDay, daysInMonth);
                    }
                    leadDays = (this._getFirstDayOfMonth(drawYear, drawMonth) - firstDay + 7) % 7;
                    curRows = Math.ceil((leadDays + daysInMonth) / 7); // calculate the number of rows to generate
                    numRows = (isMultiMonth ? this.maxRows > curRows ? this.maxRows : curRows : curRows); //If multiple months, use the higher number of rows (see #7043)
                    this.maxRows = numRows;
                    printDate = this._daylightSavingAdjust(new Date(drawYear, drawMonth, 1 - leadDays));
                    for (dRow = 0; dRow < numRows; dRow++) { // create date picker rows
                        calender += "<tr>";
                        tbody = (!showWeek ? "" : "<td class='ui-datepicker-week-col'>" +
                            this._get(inst, "calculateWeek")(printDate) + "</td>");
                        for (dow = 0; dow < 7; dow++) { // create date picker days
                            daySettings = (beforeShowDay ?
                                beforeShowDay.apply((inst.input ? inst.input[0] : null), [printDate]) : [true, ""]);
                            otherMonth = (printDate.getMonth() !== drawMonth);
                            unselectable = (otherMonth && !selectOtherMonths) || !daySettings[0] ||
                                (minDate && printDate < minDate) || (maxDate && printDate > maxDate);
                            tbody += "<td class='" +
                                ((dow + firstDay + 6) % 7 >= 5 ? " ui-datepicker-week-end" : "") + // highlight weekends
                                (otherMonth ? " ui-datepicker-other-month" : "") + // highlight days from other months
                                ((printDate.getTime() === selectedDate.getTime() && drawMonth === inst.selectedMonth && inst._keyEvent) || // user pressed key
                                (defaultDate.getTime() === printDate.getTime() && defaultDate.getTime() === selectedDate.getTime()) ?
                                // or defaultDate is current printedDate and defaultDate is selectedDate
                                " " + this._dayOverClass : "") + // highlight selected day
                                (unselectable ? " " + this._unselectableClass + " ui-state-disabled": "") +  // highlight unselectable days
                                (otherMonth && !showOtherMonths ? "" : " " + daySettings[1] + // highlight custom dates
                                (printDate.getTime() === currentDate.getTime() ? " " + this._currentClass : "") + // highlight selected day
                                (printDate.getTime() === today.getTime() ? " ui-datepicker-today" : "")) + "'" + // highlight today (if different)
                                ((!otherMonth || showOtherMonths) && daySettings[2] ? " title='" + daySettings[2].replace(/'/g, "&#39;") + "'" : "") + // cell title
                                (unselectable ? "" : " data-handler='selectDay' data-event='click' data-month='" + printDate.getMonth() + "' data-year='" + printDate.getFullYear() + "'") + ">" + // actions
                                (otherMonth && !showOtherMonths ? "&#xa0;" : // display for other months
                                (unselectable ? "<span class='ui-state-default'>" + printDate.getDate() + "</span>" : "<a class='ui-state-default" +
                                (printDate.getTime() === today.getTime() ? " ui-state-highlight" : "") +
                                (printDate.getTime() === currentDate.getTime() ? " ui-state-active" : "") + // highlight selected day
                                (otherMonth ? " ui-priority-secondary" : "") + // distinguish dates from other months
                                "' href='#'>" + printDate.getDate() + "</a>")) + "</td>"; // display selectable date
                            printDate.setDate(printDate.getDate() + 1);
                            printDate = this._daylightSavingAdjust(printDate);
                        }
                        calender += tbody + "</tr>";
                    }
                    drawMonth++;
                    if (drawMonth > 11) {
                        drawMonth = 0;
                        drawYear++;
                    }
                    calender += "</tbody></table>" + (isMultiMonth ? "</div>" +
                                ((numMonths[0] > 0 && col === numMonths[1]-1) ? "<div class='ui-datepicker-row-break'></div>" : "") : "");
                    group += calender;
                }
                html += group;
            }
            html += buttonPanel;
            inst._keyEvent = false;
            return html;
        };

        /**
        * This is a overriding method of _formatDate, with additional parameters like hours, minutes, seconds and ampm
        * the function is extended to support time in inline version of Datepicker.
        */

        $.datepicker._formatDateOverride = $.datepicker._formatDate;
        $.datepicker._formatDate = function(inst, day, month, year, hour, minute, second, ampm) {
            if (!day) {
                inst.currentDay = inst.selectedDay;
                inst.currentMonth = inst.selectedMonth;
                inst.currentYear = inst.selectedYear;
            }
            //sathikum code to support time part for inline datepicker
            var newHour = hour;
            var newDate;
            if (inst.inline && inst.settings.showTime) {
                if (ampm == 'PM') {
                    if (newHour != 12) newHour += 12; //added to fix AM/PM issue
                } else {
                    if (newHour == 12) newHour = 0;
                }

                var date = (day ? (typeof day == 'object' ? day :
                   // this._daylightSavingAdjust(new Date(year, month, day, newHour, minute, second))) :
                    this._daylightSavingAdjust(new Date(year, month, day))) :
                    this._daylightSavingAdjust(new Date(inst.currentYear, inst.currentMonth, inst.currentDay)));
                newDate = this.formatDate(this._get(inst, 'dateFormat'), date, this._getFormatConfig(inst)).replace(hour_regexp, hour).replace(min_regexp,minute).replace(sec_regexp,"00").replace(ampm_regexp,ampm);
            } else {
                var date = (day ? (typeof day == 'object' ? day :
                    this._daylightSavingAdjust(new Date(year, month, day))) :
                    this._daylightSavingAdjust(new Date(inst.currentYear, inst.currentMonth, inst.currentDay)));
                newDate = this.formatDate(this._get(inst, 'dateFormat'), date, this._getFormatConfig(inst));
            }
            return newDate;
        };

        /**
         * We need to resize the timepicker when the datepicker has been changed.
         */
        $.datepicker._updateDatepickerOverride = $.datepicker._updateDatepicker;
        $.datepicker._updateDatepicker = function(inst) {
            $.datepicker._updateDatepickerOverride(inst);
                $.timepicker._generateTimeHtml(inst);
            };


        },

        parseDateString: function ( pValue, pFormat ) {
            var inst = { settings:  $.datepicker._defaults };

            if ( pFormat.toLowerCase().indexOf( "hh" ) !== -1 ) {

                return this._parseDateTime(
                    pFormat,
                    pValue,
                    inst.settings,
                    "en",
                    inst ); 
 
            } else {

                return $.datepicker.parseDate(
                    pFormat,
                    pValue,
                    inst.settings
                );

            }
        },

        getCanonicalDate: function (input) {
            var inst = $.datepicker._getInst(input);

            return this._parseDateTime(
                $.datepicker._get(inst, 'dateFormat') ,
                $( input ).val(), 
                this._getFormatConfig(inst),
                inst.settings.locale, 
                inst); 
        },

        setCanonicalDate: function (input, date) {
            var day = date.getDate(),
                month = date.getMonth(),
                year  = date.getFullYear(),
                hour  = date.getHours(),
                minute = date.getMinutes(),
                second = date.getSeconds()
            ;

            var ampmNames, ampm;

            var inst = $.datepicker._getInst(input);
            var newDate;
 
            if ( $.datepicker._get(inst, 'dateFormat').indexOf( "hh" ) != -1 ) {
                ampmNames = $.datepicker._get(inst,'ampmNames'),
                ampm = (hour >= 12 ) ? ampmNames[1]:ampmNames[0];
                if ( hour > 12 ) { hour -= 12; }
                if ( hour == 0 ) { hour = 12; }
            }   

            inst.currentDay = inst.selectedDay;
            inst.currentMonth = inst.selectedMonth;
            inst.currentYear = inst.selectedYear;

            newDate = $.datepicker.formatDate(
                $.datepicker._get(inst, 'dateFormat'),
                date, 
                $.datepicker._getFormatConfig( inst )
            )
                    .replace( hour_regexp, ("00" + hour).substr( -2 ))
                    .replace( min_regexp,  ("00" + minute ).substr( -2 ))
                    .replace( sec_regexp,  ("00" + second ).substr( -2 )) 
                    .replace( ampm_regexp, ampm )
            ;

            $( input ).datepicker( "setDate", new Date( year, month, day ) );
            $(input).val( newDate );
        },

        formatCanonicalDate: function( date, formatMask ) {
            var day = date.getDate(),
                month = date.getMonth(),
                year  = date.getFullYear(),
                hour  = date.getHours(),
                minute = date.getMinutes(),
                second = date.getSeconds()
            ;
            var lFormattedDate, ampmNames, ampm;


            if ( formatMask.indexOf( "hh" ) != -1 ) {
                ampmNames = $.datepicker._defaults.ampmNames;
                ampm = (hour >= 12 ) ? ampmNames[1]:ampmNames[0];
                if ( hour > 12 ) { hour -= 12; }
                if ( hour == 0 ) { hour = 12; }
            }   

            lFormattedDate = $.datepicker.formatDate( formatMask, date )
                .replace( hour_regexp, ("00" + hour).substr( -2 ))
                .replace( min_regexp,  ("00" + minute ).substr( -2 ))
                .replace( sec_regexp,  ("00" + second ).substr( -2 )) 
                .replace( ampm_regexp, ampm );

            return lFormattedDate;
        },
 
        show: function (input)
        {
            // Get instance to datepicker
            var inst = $.datepicker._getInst(input);
            var h;
            var m;
            var ampm;
            this._time24h = $.datepicker._get(inst, 'time24h');
            this._altTimeField = $.datepicker._get(inst, 'altTimeField');
            this._timeFormat = $.datepicker._get(inst, 'timeFormat');
            ldateFormat = $.datepicker._get(inst, 'dateFormat');
            this._inputId = input.id;

            var ampmNames = $.datepicker._get(inst,'ampmNames');

            if (!this._visible) {
                this._parseTime(inst, this._timeFormat);
                this._orgValue = $('#' + this._inputId).val();
            }
            if ( $('#' + this._inputId).val() != '' && $('#' + this._inputId).val() != null )
            {
                try {
                   var settings = this._getFormatConfig(inst);
                   var date = this._parseDateTime(ldateFormat, $('#' + this._inputId).val(), settings, inst.settings.locale, inst) ;
                   h = date.getHours();
                   ampm = (h >= 12 ) ? ampmNames[1]:ampmNames[0];
                   m = date.getMinutes();
                } catch (e) {
                    h = $.datepicker._get(inst, 'defHour');
                    m = $.datepicker._get(inst, 'defMinute');
                }
               this._setTime('hour',   h);
               this._setTime('minute', m);
               if (!this._time24h) this._setTime('ampm',ampm);

               this._orgHour   = h;
               this._orgMinute = m;

            }
            this.resize();

            $('#' + this._mainDivId).show();

            this._visible = true;

            var dpDiv     = $('#' + $.datepicker._mainDivId);
            var dpDivPos  = dpDiv.position();

            var viewWidth = (window.innerWidth || document.documentElement.clientWidth || document.body.clientWidth) + $(document).scrollLeft();
            var tpRight   = this.tpDiv.offset().left + this.tpDiv.outerWidth();

            if (tpRight > viewWidth) {
                dpDiv.css('left', dpDivPos.left - (tpRight - viewWidth) - 5);
                this.tpDiv.css('left', dpDiv.offset().left + dpDiv.outerWidth() + 'px');
            }
        },

        update: function (fd,inst)
        {

            var timeFormat = $.datepicker._get(inst, 'timeFormat');
            var curHour = $v(this._mainDivId + 'hour');
            var curMinute = $v(this._mainDivId + 'minute');
            var curampm = '';
            var dummystr = ''

            var curTime ;
            if (this._time24h)
                curTime = timeFormat.replace('HH24',curHour).replace('ii',curMinute).replace('SS','00') ;
            else {
                  curampm = $v(this._mainDivId + 'ampm');
                  dummystr = (timeFormat.indexOf('SS')==-1) ? ' ' + curampm : '';
                  curTime = timeFormat.replace('HH',curHour).replace('ii',curMinute + dummystr).replace('SS','00 ' + curampm) ;
            }


            var curDate = $('#' + this._inputId).val();

            $s(this._inputId, fd.replace(hour_regexp, curHour).replace(min_regexp,curMinute).replace(sec_regexp,"00").replace(ampm_regexp,curampm));

            if (this._altTimeField) {
                $(this._altTimeField).each(function() { $(this).val(curTime); });
            }
        },

        hide: function ()
        {
            this._visible = false;
            $('#' + this._mainDivId).hide();
        },

        resize: function ()
        {
            //var dpDiv = $('#' + $.datepicker._mainDivId);
            //var dpDivPos = dpDiv.position();
            //var lAdjpixel = 5;
            //if ($.browser.msie && parseInt($.browser.version,10) < 7) lAdjpixel = 0;
            var hdrHeight = $('#' + $.datepicker._mainDivId +  ' > div.ui-datepicker-header:first-child').height();

            $('#' + this._mainDivId + ' > div.ui-datepicker-header:first-child').css('height', hdrHeight);

        },
        _saveHour: function(hourItem)
        {
            this._defHour = $v(hourItem);
        },
        _saveMinute: function(minuteItem)
        {
            this._defMinute = $v(minuteItem);
        },
        _saveampm: function(ampmItem)
        {
            this._defAmpm = $v(ampmItem);
        },
        //time functionality with the datepicker (inline mode)
        _generateInlineTimeHTML : function(inst) {
            var inputItemId = this._mainDivId;
            var inputItemPrefix = this._mainDivId.replace('datepicker','timepicker');
            var h,m,ampm;
            var html = '';
            var maxHours = 24;
            var curhour = '00' ;
            var curminute = '00';
            var curampm = '';
            var time24h = $.datepicker._get(inst, 'time24h');
            this._time24h = time24h ;
            var ampmNames = $.datepicker._get(inst,'ampmNames');
            var ldateFormat = $.datepicker._get(inst, 'dateFormat');
            var curValue = inst.input[0].value ;
            var hourStart = 0;
            var altField = $.datepicker._get(inst,'altField');
            if (altField.indexOf('#') == 0 ) altField = altField.substr(1,altField.length) ; //remove an extra # used by jQuery
            if (!time24h) {
                maxHours = 13;
                curhour = 12;
                hourStart = 1;
            }

            try {
                var settings = this._getFormatConfig(inst);
                var date = $.timepicker._parseDateTime(ldateFormat, $v(altField), settings, inst.settings.locale, inst) ;
                if ( date == null) throw 'myexp';
                h = date.getHours();
                ampm = (h >= 12 ) ? ampmNames[1]:ampmNames[0];
                m = date.getMinutes();
            } catch (e) {
                h = $.datepicker._get(inst, 'defHour');
                m = $.datepicker._get(inst, 'defMinute');
                ampm = $.datepicker._get(inst, 'defAmpm');
                $s(altField,$v(altField).replace(hour_regexp, h).replace(min_regexp,m).replace(sec_regexp,"00").replace(ampm_regexp,ampm));
            }

            curhour = h;
            curminute = m;
            curampm = ampm;
            /*if ( time24h && curhour < 12  && curhour != 0 ) {
                curhour += 12;
            } else*/ if ( !time24h && ampm == 'PM' && curhour != 12) {
                curhour -= 12;
            }
            //curhour = ( time24h && curhour == 0 ) ? 12 : h;
            curhour = ( !time24h  && curhour == 0 ) ? 12 : curhour;

            html = '<div class="ui-helper-clearfix ui-corner-all">';
            html += '<span class="spanTime" style="float:right;"><table><tr><td>&nbsp;</td><td>&nbsp;</td><td>' ;
            html += '<table style="float:right;"><tr><td>' ;

            if (!time24h) {
               html +='<select style="font-size:1em; margin:1px 0;float:right;" id="'  +  inputItemPrefix + altField + 'ampm" class="datetimepicker_newMonth" onchange="apex.jQuery.timepicker.refreshTime(\'#' + inst.id  + '\');" >';
               for (var ampm = 0 ; ampm < 2 ; ampm++) {
                   html += '<option value="' + ampmNames[ampm] + '"' +
                         (ampmNames[ampm] == curampm ? ' selected="selected"' : '') +
                   '>' + ampmNames[ampm] + '</option>';
               }
               html += '</select>';
            }

            html += '<select style="font-size:1em; margin:1px 0;float:right;" id="'  +  inputItemPrefix + altField + 'minute" class="datetimepicker_newMonth" onchange="apex.jQuery.timepicker.refreshTime(\'#' + inst.id  + '\');" >' ;
            for (var minute = 0; minute < 60; minute++) {
                if ( minute < 10 ) {
                    html += '<option value="0' + minute + '"' +
                             ('0'+minute == curminute ? ' selected="selected"' : '') +
                                                    '>0' +minute + '</option>';
                 }
                 else {
                         html += '<option value="' + minute + '"' +
                             (minute == curminute ? ' selected="selected"' : '') +
                                '>' +minute + '</option>';
                 }
            }
            html += '</select>' ;

            html += '<select style="font-size:1em; margin:1px 0;float:right;" id="'  +  inputItemPrefix + altField + 'hour" class="datetimepicker_newMonth" onchange="apex.jQuery.timepicker.refreshTime(\'#' + inst.id + '\');" >' ;
            for (var hour = hourStart; hour < maxHours; hour++) {
            if ( hour < 10 ) {
                html += '<option value="0' + hour + '"' +
                 ('0'+hour == curhour ? ' selected="selected"' : '') +
                                            '>0' +hour + '</option>';
             }
             else {
                html += '<option value="' + hour + '"' +
                (hour == curhour ? ' selected="selected"' : '') +
                            '>' +hour + '</option>';
                 }
            }
            html+='</select>';
            html += '</td></tr></table></td></tr></table>';
            html += '</span></div>';
            return html;
        },
        _generateTimeHtml: function(inst)
        {
            var html = '';
            var maxHours = 24;
            var curhour = '00' ;
            var curminute = '00';
            var curampm = '';
            var time24h = $.datepicker._get(inst, 'time24h');
            this._time24h = time24h ;
            var ampmNames =$.datepicker._get(inst,'ampmNames');
            var curValue = inst.input[0].value ;
            var hourStart = 0;
            // do not execute the following code if the Datepicker is inline with Time
            if ( inst.settings.showTime && !inst.inline ) {
                if (!time24h) {
                    maxHours = 13;
                    curhour = 12;
                    hourStart = 1;
                }
                if (this._defHour != undefined )
                    if ( curValue != '' )
                        curhour = this._defHour ;
                    else
                        curhour = $.datepicker._get(inst, 'defHour');
                else
                    curhour = $.datepicker._get(inst, 'defHour');

                if (this._defMinute != undefined )
                    if ( curValue != '' )
                        curminute = this._defMinute ;
                    else
                        curminute = $.datepicker._get(inst, 'defMinute');
                else
                    curminute = $.datepicker._get(inst, 'defMinute');

                if (this._defAmpm != undefined)
                    if ( curValue != '' )
                        curampm = this._defAmpm ;
                    else
                        curampm = $.datepicker._get(inst, 'defAmpm');
                else
                    curampm = $.datepicker._get(inst, 'defAmpm');

                if ( curhour.toString().length === 1 ) { curhour = '0' + curhour; }
                if ( curminute.toString().length === 1 ) { curminute = '0' + curminute; }

                html = '<div class="ui-helper-clearfix ui-corner-all">';
                html += '<span class="spanTime" style="float:right;"><table><tr><td>&nbsp;</td><td>&nbsp;</td><td>' ;
                html += '<table style="float:right;"><tr><td>' ;

                if (!time24h) {
                   html +='<select style="font-size:1em; margin:1px 0;float:right;" id="'  +  this._mainDivId + 'ampm" class="datetimepicker_newMonth" onchange="apex.jQuery.timepicker._saveampm(this)" >';
                    for (var ampm = 0 ; ampm < 2 ; ampm++) {
                       html += '<option value="' + ampmNames[ampm] + '"' +
                             (ampmNames[ampm] == curampm ? ' selected="selected"' : '') +
                       '>' + ampmNames[ampm] + '</option>';
                    }
                html += '</select>';
                }

                html += '<select style="font-size:1em; margin:1px 0;float:right;" id="'  +  this._mainDivId + 'minute" class="datetimepicker_newMonth" onchange="apex.jQuery.timepicker._saveMinute(this)" >' ;
                for (var minute = 0; minute < 60; minute++) {
                    if ( minute < 10 ) {
                        html += '<option value="0' + minute + '"' +
                                 ('0'+minute == curminute ? ' selected="selected"' : '') +
                                                        '>0' +minute + '</option>';
                     }
                     else {
                             html += '<option value="' + minute + '"' +
                                 (minute == curminute ? ' selected="selected"' : '') +
                                    '>' +minute + '</option>';
                     }
                }
                html += '</select>' ;

                html += '<select style="font-size:1em; margin:1px 0;float:right;" id="'  +  this._mainDivId + 'hour" class="datetimepicker_newMonth" onchange="apex.jQuery.timepicker._saveHour(this)" >' ;
                for (var hour = hourStart; hour < maxHours; hour++) {
                    if ( hour < 10 ) {
                        html += '<option value="0' + hour + '"' +
                         ('0'+hour == curhour ? ' selected="selected"' : '') +
                                                    '>0' +hour + '</option>';
                    }
                    else {
                        html += '<option value="' + hour + '"' +
                        (hour == curhour ? ' selected="selected"' : '') +
                                    '>' +hour + '</option>';
                     }
                }
                html += '</select>';
                html += '</td></tr></table></td></tr></table>';
                html += '</span></div>';
           }
            var buttonpaneHtml =  $('#' + $.datepicker._mainDivId + ' div.ui-datepicker-buttonpane.ui-widget-content').html();
            $('#' + $.datepicker._mainDivId + ' div.ui-datepicker-buttonpane.ui-widget-content').html(html+ buttonpaneHtml);
        },
        _writeTime: function (type, value)
        {
            if (type == 'hour') {
                if (!this._time24h) {
                    if (value <= 12) { //need to relook this
                        //$('#' + this._mainDivId + ' span.fragAmpm').text('am');
                        $x(this._mainDivId + 'ampm').selectedIndex = 0; // for AM
                    } else {
                        //$('#' + this._mainDivId + ' span.fragAmpm').text('pm');
                        $x(this._mainDivId + 'ampm').selectedIndex = 1; // for PM
                        value -= 12;
                    }
                    this._ampm = $v(this._mainDivId + 'ampm');
                    if (value == 0) value = 12;
                } else {
                    $('#' + this._mainDivId + ' span.fragAmpm').text('');
                }

                if (value < 10) value = '0' + value;
                //$('#' + this._mainDivId + ' span.fragHours').text(value);
                $s(this._mainDivId + 'hour',value);
                this._hour = value ;
            } else if (type == 'minute') {
                if (value < 10) value = '0' + value;
                //$('#' + this._mainDivId + ' span.fragMinutes').text(value);
                 $s(this._mainDivId + 'minute',value);
                 this._minute = value;
            } else if (type == 'ampm') {
            if ( value == 'PM' )
            $x(this._mainDivId + 'ampm').selectedIndex = 1; // for PM
            else
                    $x(this._mainDivId + 'ampm').selectedIndex = 0; // for AM
                this._ampm = $v(this._mainDivId + 'ampm');
            }

        },
        _getFormatConfig: function(inst) {
        var shortYearCutoff = $.datepicker._get(inst, 'shortYearCutoff');
        shortYearCutoff = (typeof shortYearCutoff != 'string' ? shortYearCutoff :
            new Date().getFullYear() % 100 + parseInt(shortYearCutoff, 10));
        return {shortYearCutoff: shortYearCutoff,
            dayNamesShort: $.datepicker._get(inst, 'dayNamesShort'), dayNames: $.datepicker._get(inst, 'dayNames'),
            monthNamesShort: $.datepicker._get(inst, 'monthNamesShort'), monthNames: $.datepicker._get(inst, 'monthNames')};
        },

        // The below function is exact duplicate of parseDate function except with time parsing feature
        _parseDateTime: function (format, value, settings, pLocale, inst) {
            if (format == null || value == null)
                throw 'Invalid arguments';
            value = (typeof value == 'object' ? value.toString() : value + '');
            if (value == '')
                return null;
            var shortYearCutoff = (settings ? settings.shortYearCutoff : null) || this._defaults.shortYearCutoff;
            var dayNamesShort = (settings ? settings.dayNamesShort : null) || this._defaults.dayNamesShort;
            var dayNames = (settings ? settings.dayNames : null) || this._defaults.dayNames;
            var monthNamesShort = (settings ? settings.monthNamesShort : null) || this._defaults.monthNamesShort;
            var monthNames = (settings ? settings.monthNames : null) || this._defaults.monthNames;
            var year = -1;
            var month = -1;
            var day = -1;
            var hour = -1;
            var minute = 0;
            var second = 0;
            var ampm = '';
            var ampmNames = $.datepicker._get(inst,'ampmNames');
            var literal = false;
            // Check whether a format character is doubled
            var lookAhead = function(match) {
                var matches = (iFormat + 1 < format.length && format.charAt(iFormat + 1) == match);
                if (matches)
                    iFormat++;
                return matches;
            };
            // Extract a number from the string value
            var getNumber = function(match) {
                lookAhead(match);
                var size = (match == 'y' ? 4 : 2);
                var num = 0;
                while (size > 0 && iValue < value.length &&
                        value.charAt(iValue) >= '0' && value.charAt(iValue) <= '9') {
                    num = num * 10 + (value.charAt(iValue++) - 0);
                    size--;
                }
                if (size == (match == 'y' ? 4 : 2))
                    throw 'Missing number at position ' + iValue;
                return num;
            };
            // Extract a name from the string value and convert to an index
            var getName = function(match, shortNames, longNames,pLocale) {
                var names = (lookAhead(match) ? longNames : shortNames);
                var size = 0;
                for (var j = 0; j < names.length; j++)
                    size = Math.max(size, names[j].length);
                var name = '';
                var iInit = iValue;
                while (size > 0 && iValue < value.length) {
                    name += value.charAt(iValue++);
                    for (var i = 0; i < names.length; i++) {
                        if (pLocale == undefined ) {
                            if (name == names[i])
                                return i + 1;
                        }
                        else {
                            if ( pLocale === 'en' || pLocale === 'EN' || pLocale.indexOf('en-') === 0 || pLocale.indexOf('EN-') === 0 ) {
                                if (name.toUpperCase() == names[i].toUpperCase())
                                    return i + 1;
                            }
                            else
                            {
                            if (name == names[i])
                                return i + 1;
                            }
                        }
                    }
                    size--;
                }
                throw 'Unknown name at position ' + iInit;
            };
            // Extract the AM PM vart of the value
            var getAmPm = function() {
                var lAmPm = '';
                var size = 2; // for AM and PM
                    if ( format.charAt(iFormat) == '%' && ( format.charAt(iFormat+1) == 'a' || format.charAt(iFormat+1) == 'p')
                              && format.charAt(iFormat+2) == 't' && format.charAt(iFormat+3) == '%' )
                        {
                            while (size > 0 && iValue < value.length) {
                                lAmPm += value.charAt(iValue++);
                                size--;
                            }
                            iFormat = iFormat + 4;
                        }
                return lAmPm;
            };
            // Confirm that a literal character matches the string value
            var checkLiteral = function() {
                if (value.charAt(iValue) != format.charAt(iFormat))
                {
                             /*   if ( format.charAt(iFormat) == '%' && ( format.charAt(iFormat+1) == 'a' || format.charAt(iFormat+1) == 'p')
                                    && format.charAt(iFormat+2) == 't' && format.charAt(iFormat+3) == '%' )
                                {
                                    iValue = iValue + 1;
                                    iFormat = iFormat + 4;
                                }
                                else*/
                    throw 'Unexpected literal at position ' + iValue;
                }
                            iValue++;
            };
            var iValue = 0;
            for (var iFormat = 0; iFormat < format.length; iFormat++) {
                if (literal)
                    if (format.charAt(iFormat) == "'" && !lookAhead("'"))
                        literal = false;
                    else
                        checkLiteral();
                else
                    switch (format.charAt(iFormat)) {
                        case 'h':
                            hour = getNumber('h');
                            break;
                        case 'H':
                            hour = getNumber('H');
                            break;
                        case 'i':
                            minute = getNumber('i');
                            break;
                        case 's':
                            second = getNumber('s');
                            break;
                        case '%':
                            ampm   = getAmPm();
                            break;
                        case 'd':
                            day = getNumber('d');
                            break;
                        case 'D':
                            getName('D', dayNamesShort, dayNames,pLocale);
                            break;
                        case 'm':
                            month = getNumber('m');
                            break;
                        case 'M':
                            month = getName('M', monthNamesShort, monthNames,pLocale);
                            break;
                        case 'y':
                            year = getNumber('y');
                            break;
                        case "'":
                            if (lookAhead("'"))
                                checkLiteral();
                            else
                                literal = true;
                            break;
                        default:
                            checkLiteral();
                    }
            }
            if (year < 100) {
                year += new Date().getFullYear() - new Date().getFullYear() % 100 +
                    (year <= shortYearCutoff ? 0 : -100);
            }
            if (ampm == ampmNames[1]) {
                if (hour != 12) hour += 12; //added to fix AM/PM issue
            } else if ( ampm == ampmNames[0] ){
                if (hour == 12) hour = 0;
            }
            var date = new Date(year, month - 1, day,hour,minute,second);
            if (date.getFullYear() != year || date.getMonth() + 1 != month || date.getDate() != day) {
                throw 'Invalid date'; // E.g. 31/02/*
            }
            return date;
        },

        refreshTime : function(id)
        {
            var target = $(id);
            var inst = $.datepicker._getInst(target[0]);

            //sathikum code to support time in inline mode.
            var hour, minute, ampm ;
            if (inst.inline && inst.settings.showTime) {
                hour = $(target).find('select[id$="hour"]').val();
                minute = $(target).find('select[id$="minute"]').val();
                ampm = $(target).find('select[id$="ampm"]').val();
            }
            $.datepicker._selectDate(id, $.datepicker._formatDate(inst,
                inst.currentDay, inst.currentMonth, inst.currentYear, hour, minute, 0, ampm));

        },

        _parseTime: function (inst, timeFormat)
        {
            var dt = $('#' + this._inputId).val();
            var ampmNames = $.datepicker._get(inst,'ampmNames');

            if ( dt.trim() != '' ) {
                var seperator = ':';
            if (/^HH\d\d.NI/i.test(timeFormat))
                seperator = timeFormat.substr(4,1);
            else if (/^HH.NI/i.test(timeFormat))
                seperator = timeFormat.substr(2,1);
                this._colonPos = dt.search(seperator);
                var m = 0, h = 0, s = 0, a = '';
                var ampmPos = -1;
                if (this._colonPos != -1) {
                    var sPos = timeFormat.indexOf('SS');
                    var ampmlength ;
                    if ( ampmPos != -1 ) null;
                      //ampmlength = ( dt.substr(ampmPos,ampmPos+dt.length).indexOf(' ') = -1) ? dt.substr(ampmPos,ampmPos+dt.length).length : dt.substr(ampmPos,ampmPos+dt.length).indexOf(' ');
                      //h = (hPos != -1) ? parseInt(dt.substr(hPos, 2), 10) : -1;
                  //m = (mPos != -1) ? parseInt(dt.substr(mPos, 2), 10) : -1;
                  //a = (ampmPos != -1) ? $.trim(dt.substr(ampmPos,ampmlength)) : '';
                    h = parseInt(dt.substr(this._colonPos - 2, 2), 10);
                    m = parseInt(dt.substr(this._colonPos + 1, 2), 10);
                    if (sPos == -1 ) {
                        ampmlength =  dt.substr(this._colonPos + 3,this._colonPos + 3+dt.length).indexOf(' ');
                        if (ampmlength == -1 ) ampmlength = this._colonPos + 3+dt.length;
                        a = dt.substr(this._colonPos + 3, ampmlength).trim();
                    }
                    else {
                        ampmlength =  dt.substr(this._colonPos + 7,this._colonPos + 7+dt.length).indexOf(' ');
                        if (ampmlength == -1 ) ampmlength = this._colonPos + 7+dt.length;
                        a = dt.substr(this._colonPos + 7, ampmlength).trim();
                  }

               }

               if (a != ampmNames[0] && a != ampmNames[1]) {
                   a = '';
               }

               if (h < 0) h = 0;
               if (m < 0) m = 0;

               if (h > 23) h = 23;
               if (m > 59) m = 59;

               if (a == ampmNames[1] && h  < 12) h += 12;
               if (a == ampmNames[0] && h == 12) h  = 1; 

               this._setTime('hour',   h);
               this._setTime('minute', m);

               this._orgHour   = h;
               this._orgMinute = m;
           }

        },

        _setTime: function (type, value)
        {
            if (type != 'ampm') { // do the following only for numeric value
            if (isNaN(value)) value = 0;
            if (value < 0)    value = 0;
            if (value > 23 && type == 'hour')   value = 23;
            if (value > 59 && type == 'minute') value = 59;
        }
            this._writeTime(type, value);
        }

    };

    // code to initialize time picking functionality
    $(function ()
    {
        $.timepicker = new Timepicker();
        $.timepicker.init();
    });

})(apex.jQuery);

}
