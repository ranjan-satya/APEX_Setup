/*!
 Copyright (c) 2015, 2024, Oracle and/or its affiliates.
*/
/**
 * @uiwidget interactiveGrid
 * @since 5.1
 *
 * @classdesc
 * <div class="hw">
 *     <h3 class="name" id="overview-section">Overview</h3>
 *     <a class="bookmarkable-link" title="Bookmarkable Link" aria-label="Bookmark Overview" href="#overview-section"></a>
 * </div>
 * <p>A jQuery UI widget for the Interactive Grid component of APEX. It is a modern component
 * combining powerful reporting features, with easy multi-row editing. It is exposed as a native region type in
 * APEX, and has a number of declarative features available for customization in Page Designer. In addition to
 * what is declaratively available, there is tremendous scope for performing further JavaScript customizations, to
 * achieve more specific functionality.</p>
 * <p>This widget is used as the main interface with APEX, and is comprised of a number of other widgets and
 * making use of a number of other JavaScript modules including its own data model layer, which are important to
 * understand when performing customizations.
 * The Interactive Grid widget uses the following:
 * <ul>
 *     <li>{@link grid|grid widget}</li>
 *     <li>{@link recordView|recordView widget}</li>
 *     <li>{@link tableModelView|tableModelView widget}</li>
 *     <li>{@link tableModelViewBase|tableModelViewBase widget}</li>
 *     <li>toolbar widget (see widget.toolbar.js file for further information)</li>
 *     <li>{@link menu|menu widget}</li>
 *     <li>{@link iconList|iconList widget}</li>
 *     <li>{@link apex.actions|apex.actions module}</li>
 *     <li>{@link apex.model|apex.model module}</li>
 *     <li>{@link apex.item|apex.item module}</li>
 * </ul>
 * See each for further details, although the interactiveGrid widget documentation will make numerous mention
 * of them to demonstrate certain concepts.
 * </p>
 * <p>The intention is not to enable developers to create their own Interactive Grid instances, as this would create
 * great burden in developing supporting functionality, for example the model layer. Rather, that
 * developers can easily customize the Interactive Grid beyond what is declaratively possible, in a documented and
 * supported way, using the standard APEX Interactive Grid region type and the options, methods and events documented
 * here, and in related documentation.
 * </p>
 * <div class="hw">
 *     <h3 class="name" id="actions-section">Actions</h3>
 *     <a class="bookmarkable-link" title="Bookmarkable Link" aria-label="Bookmark Actions" href="#actions-section"></a>
 * </div>
 * <p>{@link apex.actions|Actions} are used extensively both by the Interactive Grid widget, and by the other widgets it
 * orchestrates. Below we list all the actions pre-defined by the Interactive Grid widget, along with the type of action,
 * and a description of the functionality the action handles.</p>
 * <p>
 * Note: To find out more about a specific action, you can lookup the action as follows:
 * </p>
 * <p>
 * <code class="prettyprint">apex.region( "[region static ID]" ).call( "getActions" ).lookup( "[action name]" );</code>
 * </p>
 * <p>Note: The Interactive Grid may hide or disable various actions depending on what is allowed at a given time or
 * in a particular context. Hidden or disabled actions do nothing when invoked. The declarative option to not include
 * a Save button simply hides the save action (see {@link interactiveGrid#toolbar} <code class="prettyprint">save</code> property).
 * If you don't want a Save button but need to invoke the save action then you have to leave the declarative
 * option on and remove the Save button from the toolbar. See {@link interactiveGrid#toolbarData}.</p>
 * <table>
 * <caption>Pre-defined actions used by the Interactive Grid widget</caption>
 * <thead>
 * <tr>
 * <th scope="col">Name</th>
 * <th scope="col">Type</th>
 * <th scope="col">Description</th>
 * </tr>
 * </thead>
 * <tr>
 * <th scope="row">search</th>
 * <td>Action</td>
 * <td>Handles the main search functionality available from the search field in the toolbar.</td>
 * </tr>
 * <tr>
 * <th scope="row">search-case-sensitive</th>
 * <td>Toggle</td>
 * <td>Toggle whether the search is case-sensitive.</td>
 * </tr>
 * <tr>
 * <th scope="row">filter-column</th>
 * <td>Radio</td>
 * <td>Constrain search to a specific column.</td>
 * </tr>
 * <tr>
 * <th scope="row">change-report</th>
 * <td>Radio</td>
 * <td>Switch to a different saved report.</td>
 * </tr>
 * <tr>
 * <th scope="row">change-view</th>
 * <td>Action</td>
 * <td>Switch to a different view (eg grid, icon, detail, etc.).</td>
 * </tr>
 * <tr>
 * <th scope="row">chart-view</th>
 * <td>Action</td>
 * <td>Switch to the chart view. Note: This is handled differently to other views because this is user-defined and may not be configured.</td>
 * </tr>
 * <tr>
 * <th scope="row">show-columns-dialog</th>
 * <td>Action</td>
 * <td>Show the columns dialog.</td>
 * </tr>
 * <tr>
 * <th scope="row">show-filter-dialog</th>
 * <td>Action</td>
 * <td>Show the filter dialog.</td>
 * </tr>
 * <tr>
 * <th scope="row">show-sort-dialog</th>
 * <td>Action</td>
 * <td>Show the sort dialog.</td>
 * </tr>
 * <tr>
 * <th scope="row">show-aggregate-dialog</th>
 * <td>Action</td>
 * <td>Show the aggregate dialog.</td>
 * </tr>
 * <tr>
 * <th scope="row">show-flashback-dialog</th>
 * <td>Action</td>
 * <td>Show the flashback dialog.</td>
 * </tr>
 * <tr>
 * <th scope="row">show-highlight-dialog</th>
 * <td>Action</td>
 * <td>Show the highlight dialog.</td>
 * </tr>
 * <tr>
 * <th scope="row">show-control-break-dialog</th>
 * <td>Action</td>
 * <td>Show the control break dialog.</td>
 * </tr>
 * <tr>
 * <th scope="row">show-download-dialog</th>
 * <td>Action</td>
 * <td>Show the download dialog.</td>
 * </tr>
 * <tr>
 * <th scope="row">show-help-dialog</th>
 * <td>Action</td>
 * <td>Show the help dialog.</td>
 * </tr>
 * <tr>
 * <th scope="row">stretch-columns</th>
 * <td>Toggle</td>
 * <td>Toggle if columns are set to stretch to their available width (for views that support it).</td>
 * </tr>
 * <tr>
 * <th scope="row">change-rows-per-page</th>
 * <td>Radio</td>
 * <td>Set the number of grid rows displayed for the current page.</td>
 * </tr>
 * <tr>
 * <th scope="row">save-report</th>
 * <td>Action</td>
 * <td>Save the current report settings.</td>
 * </tr>
 * <tr>
 * <th scope="row">show-save-report-as-dialog</th>
 * <td>Action</td>
 * <td>Show the 'Save Report As' dialog.</td>
 * </tr>
 * <tr>
 * <th scope="row">show-edit-report-dialog</th>
 * <td>Action</td>
 * <td>Show the 'Edit Report' dialog.</td>
 * </tr>
 * <tr>
 * <th scope="row">delete-report</th>
 * <td>Action</td>
 * <td>Delete the current saved report.</td>
 * </tr>
 * <tr>
 * <th scope="row">reset-report</th>
 * <td>Action</td>
 * <td>Reset the current report settings.</td>
 * </tr>
 * <tr>
 * <th scope="row">row-add-row</th>
 * <td>Action</td>
 * <td>Insert a row straight after the current row.</td>
 * </tr>
 * <tr>
 * <th scope="row">row-duplicate</th>
 * <td>Action</td>
 * <td>Duplicate the current row.</td>
 * </tr>
 * <tr>
 * <th scope="row">row-delete</th>
 * <td>Action</td>
 * <td>Delete the current row.</td>
 * </tr>
 * <tr>
 * <th scope="row">row-refresh</th>
 * <td>Action</td>
 * <td>Refresh the current row.</td>
 * </tr>
 * <tr>
 * <th scope="row">row-revert</th>
 * <td>Action</td>
 * <td>Revert the current row to its original state when the Interactive Grid region was refreshed.</td>
 * </tr>
 * <tr>
 * <th scope="row">selection-mode</th>
 * <td>Toggle</td>
 * <td>Toggle the current selection mode (true for row selection, false for cell selection).</td>
 * </tr>
 * <tr>
 * <th scope="row">selection-duplicate</th>
 * <td>Action</td>
 * <td>Duplicate the current selected rows. Note: Interactive Grid must be editable.</td>
 * </tr>
 * <tr>
 * <th scope="row">selection-delete</th>
 * <td>Action</td>
 * <td>Delete the current selected rows. Note: Interactive Grid must be editable.</td>
 * </tr>
 * <tr>
 * <th scope="row">selection-refresh</th>
 * <td>Action</td>
 * <td>Refresh the current selected rows from the server. Note: Interactive Grid must be editable.</td>
 * </tr>
 * <tr>
 * <th scope="row">selection-revert</th>
 * <td>Action</td>
 * <td>Revert the current selected rows to their original state when the Interactive Grid region was refreshed.
 * Note: Interactive Grid must be editable.</td>
 * </tr>
 * <tr>
 * <th scope="row">selection-copy</th>
 * <td>Action</td>
 * <td>Copy the current selection to the clipboard. Note: Interactive Grid must be editable.</td>
 * </tr>
 * <tr>
 * <th scope="row">selection-add-row</th>
 * <td>Action</td>
 * <td>Insert a row straight after any selected rows. If no rows are selected, or if cell selection mode is enabled, the new row
 * will be added at the beginning.</td>
 * </tr>
 * <tr>
 * <th scope="row">selection-copy-down</th>
 * <td>Action</td>
 * <td>Copy cell values from columns in the first selected row to all the other selected rows within the same columns.
 * Note: Interactive Grid must be editable, and only supported in 'Grid' view.</td>
 * </tr>
 * <tr>
 * <th scope="row">selection-clear</th>
 * <td>Action</td>
 * <td>Clear all cells in the current selection.
 * Note: Interactive Grid must be editable, and only supported in 'Grid' view.</td>
 * </tr>
 * <tr>
 * <th scope="row">selection-fill</th>
 * <td>Action</td>
 * <td>Fill all cells in the current selection with the value provided.
 * Note: Interactive Grid must be editable, and only supported in 'Grid' view.</td>
 * </tr>
 * <tr>
 * <th scope="row">refresh</th>
 * <td>Action</td>
 * <td>Refresh the Interactive Grid region.</td>
 * </tr>
 * <tr>
 * <th scope="row">edit</th>
 * <td>Toggle</td>
 * <td>Toggle the current edit mode.</td>
 * </tr>
 * <tr>
 * <th scope="row">save</th>
 * <td>Action</td>
 * <td>Save the current data changes. Note: Interactive Grid must be editable.</td>
 * </tr>
 * <tr>
 * <th scope="row">single-row-view</th>
 * <td>Action</td>
 * <td>Change to single row view. Note: The current view must support single row view.</td>
 * </tr>
 * <tr>
 * <th scope="row">close-single-row-view</th>
 * <td>Action</td>
 * <td>Change from single row view. Note: The current view must support single row view.</td>
 * </tr>
 * </table>
 * </p>
 *
 * <div class="hw">
 *     <h3 class="name" id="note-about-options-section">Additional Information about options</h3>
 *     <a class="bookmarkable-link" title="Bookmarkable Link" aria-label="Bookmark Additional Information about options" href="#note-about-options-section"></a>
 * </div>
 * <p>Please bear the following in mind when dealing with interactiveGrid widget options:</p>
 * <ul>
 * <li>The options documented here can only be set on initialization and not after initialization
 * (unless otherwise stated in the specific option documentation). Setting them after initialization will have no effect.</li>
 * <li>The format of the option examples listed for this widget differ from examples you may have seen in other widget documentation. Here,
 * they are documented for intended use in the 'Advanced JavaScript Code' attribute of the Interactive Grid region in
 * APEX, thus the format documented matches what is required for that attribute.</li>
 * <li>One important note when looking at the option examples, is that for options that use nested object
 * structures (for example 'options.toolbar.searchField'), your code should never assume that any of the parent objects already
 * exist. APEX, by design will only send what it needs to from the server (so default option values will not be sent for example), to keep
 * the size of the information transmitted to a minimum. Some options therefore will not be present in the option's
 * object structure passed into the 'Advanced JavaScript Code' attribute. You must therefore code defensively when working
 * with these nested option structures, to avoid the risk of JavaScript errors.
 * <p>For example, for the 'options.toolbar.searchField' option, you could do the following:
 * <pre>
 * function( options ) {
 *
 *     // As options.toolbar may not exist, let's first check and if it doesn't exist, create it
 *     if ( !options.toolbar ) {
 *         options.toolbar = {};
 *     }
 *
 *     // Then we can safely set the 'searchField' property of the options.toolbar object
 *     options.toolbar.searchField = false;
 *
 *     return options;
 * }
 * </pre>
 * </p>
 * <p>A simpler way to accomplish the same is to use the {@link apex.util.getNestedObject} which creates
 * any needed objects automatically. The following example is equvelent to the previous one:
 * <pre>
 * function( options ) {
 *
 *     apex.util.getNestedObject( options, "toolbar" ).searchField = false;
 *
 *     return options;
 * }
 * </pre>
 * </p>
 * <p>Note: For brevity, the examples listed for this widget's documentation do not include such checks, but where any nested structures are
 * used, these checks should be added.</p>
 */

 /*
 * General To Do
 * - Row headers
 * - Make actions view agnostic, then views may support certain ones
 * - What happens if the GRID view is switched off? Test this.
 * - Sizing improvements:
 *   - Make msg function deal with "APEX.IG." prefix.
 * - JS Doc: classDesc: List order of logic: 1) declarative, 2) feature config, 3) toolbar specific attributes
 *
 * Open Questions
 *  - Dialog dynamic content (eg filter > existing filters), built during initial dialog build, or after from dialog model?
 *  - Could separate widget instances share common dialogs?
 *  - ACC of item labels, who is responsible for labelling?
 *  - Should we expose an API to provide a context to the individual widget API's, to allow customisation of widgets.
 *  - Hide Deleted Rows - Actions menu, or more of a setting?
 *  - What to do with column DATA TYPE, not exposed in model or gridView widget.
 *  - Consider concurrent requests, how to handle these.
 *
 * - An IG can only have 1 parent, this is a current constraint
 *
 * Depends:
 *    jquery.ui.core.js
 *    jquery.ui.widget.js
 *    apex/model.js
 *    apex/lang.js
 *    apex/item.js
 *    apex/actions.js
 *    apex/server.js
 *    apex/widget.util.js
 *    apex/widget.menu.js
 *    apex/widget.toolbar.js
 *    apex/widget.collapsible.js
 *    apex/widget.toggleCore.js     //required by widget.collapsible.js
 *    apex/storage.js               //required by widget.toggleCore.js
 *    apex/widget.tableModelViewBase.js
 *    apex/widget.tableModelView.js
 *    apex/widget.grid.js
 *    apex/widget.recordView.js
 *    apex/region.js
 *
 */
(function ( $, util, debug, server, lang, actions, region, theme, message, item, model, widgetUtil, locale, navigation, date ) {
    "use strict";

    const C_IG = "a-IG",
        SEL_IG = "." + C_IG,
        C_IG_HEADER = C_IG + "-header",
        SEL_IG_HEADER = "." + C_IG_HEADER,
        C_IG_BODY = C_IG + "-body",
        SEL_IG_BODY = "." + C_IG_BODY,
        C_IG_CONTENT = C_IG + "-content",
        C_IG_CONTENT_CONTAINER = C_IG_CONTENT + "Container",
        SEL_IG_CONTENT_CONTAINER = "." + C_IG_CONTENT_CONTAINER,

        // IG dialog classes
        C_IG_DIALOG = "a-IG-dialog",
        C_IG_DIALOG_INPUT_CHECKBOX = C_IG_DIALOG + "-input-checkbox",
        C_IG_DIALOG_LABEL_CHECKBOX = C_IG_DIALOG + "-label-checkbox",
        C_IG_DIALOG_ICON_LIST = C_IG_DIALOG + "-iconList",
        C_IG_DIALOG_ICON_LIST_ITEM = C_IG_DIALOG_ICON_LIST + "-item",
        C_IG_DIALOG_ICON_LIST_LINK = C_IG_DIALOG_ICON_LIST + "-link",
        C_IG_DIALOG_ICON_LIST_ICON = C_IG_DIALOG_ICON_LIST + "-icon",
        C_IG_DIALOG_ICON_LIST_LABEL = C_IG_DIALOG_ICON_LIST + "-label",

        // IG controls / settings area classes
        C_IG_CONTROLS = C_IG + "-controls",
        C_IG_CONTROLS_ITEM = C_IG_CONTROLS + "-item",
        C_IG_CONTROLS_ITEM_MOD_PRE = C_IG_CONTROLS_ITEM + "--",
        C_IG_CONTROLS_CELL = C_IG_CONTROLS + "-cell",
        C_IG_CONTROLS_CELL_LABEL = C_IG_CONTROLS_CELL + "--label",
        C_IG_CONTROLS_CELL_REMOVE = C_IG_CONTROLS_CELL + "--remove",
        C_IG_CONTROLS_CHECKB0X = C_IG_CONTROLS + "Checkbox",
        C_IG_CONTROLS_CHECKB0X_LABEL = C_IG_CONTROLS_CHECKB0X + "Label",
        C_IG_CONTROLS_ICON = C_IG_CONTROLS + "Icon",
        C_IG_CONTROLS_LABEL = C_IG_CONTROLS + "Label",
        C_IG_CONTROLS_CONTAINER = C_IG_CONTROLS + "Container",
        SEL_IG_CONTROLS_CONTAINER = "." + C_IG_CONTROLS_CONTAINER,

        // IG settings summary classes
        C_IG_REPORT_SUMMARY = "a-IG-reportSummary",
        C_IG_REPORT_SUMMARY_CONTAINER = C_IG_REPORT_SUMMARY + "Container",
        C_IG_REPORT_SUMMARY_ITEM = C_IG_REPORT_SUMMARY + "-item",
        C_IG_REPORT_SUMMARY_ITEM_PRE = C_IG_REPORT_SUMMARY + "-item--",
        C_IG_REPORT_SUMMARY_LABEL = C_IG_REPORT_SUMMARY + "-label",
        C_IG_REPORT_SUMMARY_ICON = C_IG_REPORT_SUMMARY + "-icon",
        C_IG_REPORT_SUMMARY_COUNT = C_IG_REPORT_SUMMARY + "-count",
        C_IG_REPORT_SUMMARY_VALUE = C_IG_REPORT_SUMMARY + "-value",

        // IG specific button classes
        C_IG_BUTTON = C_IG + "-button",
        C_IG_BUTTON_CONTROLS = C_IG_BUTTON + "--controls",
        C_IG_BUTTON_REMOVE = C_IG_BUTTON + "--remove",

        // IG specific icon classes
        C_IG_ICON_PRE = "icon-ig-",

        // IG view classes
        C_IG_VIEW_GRID = C_IG + "-gridView",
        C_IG_VIEW_ICON = C_IG + "-iconView",
        C_IG_VIEW_DETAIL = C_IG + "-detailView",
        //C_IG_VIEW_GROUP_BY = C_IG + "-groupByView", todo future
        //C_IG_VIEW_PIVOT = C_IG + "-pivotView", todo future
        C_IG_VIEW_CHART = C_IG + "-chartView",
        C_IG_VIEW_RECORD = C_IG + "-recordView",

        // IG column header menu classes todo change from IR style
        C_IG_COLUMN_HEADER_MENU = "a-IRR-sortWidget",
        C_IG_COLUMN_HEADER_MENU_ACTIONS = C_IG_COLUMN_HEADER_MENU + "-actions",
        C_IG_COLUMN_HEADER_MENU_ACTIONS_ITEM = C_IG_COLUMN_HEADER_MENU_ACTIONS + "-item",
        C_IG_COLUMN_HEADER_MENU_BUTTON = C_IG_COLUMN_HEADER_MENU + "-button",
        C_IG_COLUMN_HEADER_MENU_SEARCH = C_IG_COLUMN_HEADER_MENU + "-search",
        C_IG_COLUMN_HEADER_MENU_SEARCH_LABEL = C_IG_COLUMN_HEADER_MENU + "-searchLabel",
        C_IG_COLUMN_HEADER_MENU_SEARCH_FIELD = C_IG_COLUMN_HEADER_MENU + "-searchField",
        C_IG_COLUMN_HEADER_MENU_ROWS = C_IG_COLUMN_HEADER_MENU + "-rows",
        C_IG_COLUMN_HEADER_MENU_ROW = C_IG_COLUMN_HEADER_MENU + "-row",

        // general form classes
        C_FORM = "u-Form",
        C_FORM_LABELS_ABOVE = C_FORM + "--labelsAbove",
        C_FORM_STRETCH_INPUTS = C_FORM + "--stretchInputs",
        C_FORM_FIELD_CONTAINER = C_FORM + "-fieldContainer",
        SEL_FORM_FIELD_CONTAINER = "." + C_FORM_FIELD_CONTAINER,
        C_FORM_LABEL = C_FORM + "-label",
        C_FORM_TEXT_FIELD = "apex-item-text",
        C_SELECT_LIST = "apex-item-select",
        C_TEXTAREA = "apex-item-textarea",
        C_COLORPICKER = "apex-item-color-picker",
        C_HASCOMBOBOX = "a-Combobox",
        C_HASDATEPICKER = "hasDatepicker",
        C_HASNUMBERFIELD = "hasNumberField",
        // general button classes
        C_BUTTON = "a-Button",
        C_BUTTON_NO_UI = C_BUTTON + "--noUI",
        C_BUTTON_LABEL = C_BUTTON + "-label",
        C_BUTTON_NO_LABEL = C_BUTTON + "--noLabel",
        C_BUTTON_ICON_TEXT_BUTTON = C_BUTTON + "--iconTextButton",
        // general icon classes
        C_ICON = "a-Icon",
        C_ICON_LEFT = C_ICON + "--left",
        C_ICON_RIGHT = C_ICON + "--right",
        C_ICON_REMOVE = "icon-remove",
        // general media block classes
        C_MEDIA_BLOCK = "a-MediaBlock",
        C_MEDIA_BLOCK_GRAPHIC = C_MEDIA_BLOCK + "-graphic",
        C_MEDIA_BLOCK_CONTENT = C_MEDIA_BLOCK + "-content",
        // state classes
        C_IS_ACTIVE = "is-active",
        C_IS_SELECTED = "is-selected",
        C_IS_CHECKED = "is-checked",
        C_IS_ERROR = "is-error",
        // js classes
        C_JS_COL_CHECKBOX = "js-colCheckbox",
        SEL_JS_COL_CHECKBOX = "." + C_JS_COL_CHECKBOX,
        // utility classes
        C_VISUALLY_HIDDEN = "u-VisuallyHidden",
        C_TEXT_LOWER = "u-textLower",
        C_TEXT_UPPER = "u-textUpper",
        C_HAS_BUTTON = "has-button",
        // aria attributes
        A_EXPANDED = "aria-expanded",
        A_HIDDEN = "aria-hidden",
        A_LABEL = "aria-label",
        A_LABELLEDBY = "aria-labelledby",
        A_DESCRIBEDBY = "aria-describedby",
        A_ROLE_DESC = "aria-roledescription",
        A_MODAL = "aria-modal",
        A_CONTROLS = "aria-controls",
        A_INVALID = "aria-invalid",
        A_LEVEL = "aria-level",
        // markup
        M_PSEUDO_CHECKBOX = "<span class='ro-checkbox &\"enabledClass\".'></span><span class='u-vh'>&\"enabledText\".</span>",
        M_EMPTY_OPTION = "<option></option>",
        // constants
        LEFT = "left",
        RIGHT = "right",
        TEXT = "text",
        SELECT = "select",
        COLOR = "colorpicker",
        TEXTAREA = "textarea",
        CHECKBOX = "checkbox",
        RADIOS = "radios",
        ICON_LIST = "iconList",
        ROW = "row",
        COLUMN = "column",
        COMPLEX = "complex",
        POSITION_START = "start",
        POSITION_CENTER = "center",
        DESTROY = "destroy",
        DELETE = "delete",
        REFRESH = "refresh",
        RESIZE = "resize",
        SHOW = "show",
        HIDE = "hide",
        EXPAND = "expand",
        EXPANDED = "expanded",
        COLLAPSED = "collapsed",
        REQUIRED = "required",
        DISABLED = "disabled",
        CHECKED = "checked",
        OPTION = "option",
        GRID = "grid",
        ICON = "icon",
        DETAIL = "detail",
        CHART = "chart",
        //PIVOT = "pivot", todo future
        GROUP_BY = "groupby",
        SAVED_REPORT = "savedReport",
        INACTIVE_SETTINGS = "inactiveSettings",
        INVALID_SETTINGS = "invalidSettings",
        PRIMARY = "primary",
        ALTERNATIVE = "alternative",
        PRIVATE = "private",
        PUBLIC = "public",
        NAMED = "named",
        COLUMNS = "columns",
        FILTER = "filter",
        HIGHLIGHT = "highlight",
        //COMPUTE = "compute", todo future
        FLASHBACK = "flashback",
        SORT = "sort",
        AGGREGATE = "aggregate",
        CONTROL_BREAK = "controlBreak",
        EDIT_REPORT = "editReport",
        SAVE_AS_REPORT = "saveAsReport",
        DOWNLOAD = "download",
        //SUBSCRIPTION = "subscription", todo future
        ASC = "asc",
        DESC = "desc",
        FIRST = "first",
        LAST = "last",
        NONE = "none",
        SCROLL = "scroll",
        SET = "set",
        PROGRESSIVE = "progressive",
        OP_INSERT = "i",
        OP_UPDATE = "u",
        OP_DELETE = "d",
        REGION = "region",
        PAGE = "page",
        FILTER_SEPARATOR = "~",
        YES = "Y",
        NO = "N",
        META = "_meta",
        VIEW_CONTAINER_POSTFIX = "_vc",
        PLAIN = "plain",
        LABEL = "label",
        ERROR = "error",
        VALID = "valid",
        CLASS = "class",
        ROLE = "role",
        VALUE = "value",
        // menus
        ACTION = "action",
        TOGGLE = "toggle",
        RADIO_GROUP = "radioGroup",
        SEPARATOR_MI = { type: "separator" },
        // toolbar
        TB_BUTTON = "BUTTON",
        TB_MENU = "MENU",
        // date ranges
        ALL = "all",
        PAST = "past",
        FUTURE = "future",
        // operators
        EQUALS = "EQ",
        NOT_EQUALS = "NEQ",
        LESS_THAN = "LT",
        LESS_THAN_OR_EQUALS = "LTE",
        GREATER_THAN = "GT",
        GREATER_THAN_OR_EQUALS = "GTE",
        LIKE = "LIKE",
        NOT_LIKE = "NLIKE",
        IS_NULL = "N",
        IS_NOT_NULL = "NN",
        CONTAINS = "C",
        DOES_NOT_CONTAIN = "NC",
        IN = "IN",
        NOT_IN = "NIN",
        IN_DELIMITER = ";",
        BETWEEN = "BETWEEN",
        NOT_BETWEEN = "NBETWEEN",
        IN_THE_LAST = "LAST",
        NOT_IN_THE_LAST = "NLAST",
        IN_THE_NEXT = "NEXT",
        NOT_IN_THE_NEXT = "NNEXT",
        MATCHES_REGULAR_EXPRESSION = "REGEXP",
        STARTS_WITH = "S",
        DOES_NOT_START_WITH = "NS",
        ORACLE_TEXT = "OTEXT",
        CASE_INSENSITIVE = "CASE_INSENSITIVE",
        MINUTE = "MI",
        HOUR = "H",
        DAY = "D",
        WEEK = "W",
        MONTH = "M",
        YEAR = "Y",
        MIXED = "MIXED",
        // types
        VARCHAR2 = "VARCHAR2",
        NUMBER = "NUMBER",
        DATE = "DATE",
        CLOB = "CLOB",
        TIMESTAMP = "TIMESTAMP",
        TIMESTAMP_TZ = "TIMESTAMP_TZ",
        TIMESTAMP_LTZ = "TIMESTAMP_LTZ",
        DATE_TIMESTAMP_ARRAY = [ DATE, TIMESTAMP, TIMESTAMP_TZ, TIMESTAMP_LTZ ],
        // charts
        AREA = "area",
        BAR = "bar",
        BUBBLE = "bubble",
        DONUT = "donut",
        FUNNEL = "funnel",
        LINE = "line",
        LINE_WITH_AREA = "lineWithArea",
        PIE = "pie",
        POLAR = "polar",
        RADAR = "radar",
        RANGE = "range",
        SCATTER = "scatter",
        STOCK = "stock",
        VERTICAL = "vertical",
        HORIZONTAL = "horizontal",
        ON = "on",
        OFF = "off",
        AUTO = "auto",
        CARTESIAN = "cartesian",
        DEFAULT_ACTIONS_COLUMN_WIDTH = 42,
        // messages
        M_VALUE_REQUIRED = "VALUE_REQUIRED",
        M_INVALID_VALUE = "INVALID_VALUE",
        M_INVALID_FORMAT_DATE = "INVALID_DATE_FORMAT",
        M_INVALID_FORMAT_NUMBER = "INVALID_NUMBER_FORMAT",
        M_SELECT = "SELECT",
        M_APEX_SAMPLE_FORMAT_SHORT = "APEX.SAMPLE_FORMAT_SHORT",
        // quick pick colors for highlight dialog
        B_COLORS = "#fff5ce;#d0f1cc;#cce5ff;#ffd6d2;#e8e8e8;#000000;#ffffff",
        F_COLORS = "#a96e17;#3baa2c;#0076df;#f44336;#767676;#000000;#ffffff",
        CANNONICAL_FORMAT = "YYYYMMDDHH24MISS",
        // operators
        OPERATOR = {
            EQ:         "EQUALS",
            NEQ:        "NOT_EQUALS",
            LT:         "LESS_THAN",
            LTE:        "LESS_THAN_OR_EQUALS",
            GT:         "GREATER_THAN",
            GTE:        "GREATER_THAN_OR_EQUALS",
            LIKE:       "LIKE",
            NLIKE:      "NOT_LIKE",
            N:          "IS_NULL",
            NN:         "IS_NOT_NULL",
            C:          "CONTAINS",
            NC:         "DOES_NOT_CONTAIN",
            IN:         "IN",
            NIN:        "NOT_IN",
            BETWEEN:    "BETWEEN",
            NBETWEEN:   "NOT_BETWEEN",
            LAST:       "IN_THE_LAST",
            NLAST:      "NOT_IN_THE_LAST",
            NEXT:       "IN_THE_NEXT",
            NNEXT:      "NOT_IN_THE_NEXT",
            REGEXP:     "MATCHES_REGULAR_EXPRESSION",
            S:          "STARTS_WITH",
            NS:         "DOES_NOT_START_WITH",
            OTEXT:      "ORACLE_TEXT"
        },
        /* for future use in complex filtering
        // filter functions
        FILTERFUNCS = {
            _NEQ:              { label: "!=", params: 0 },
            _LT:               { label: "<", params: 0 },
            _LTE:              { label: "<=", params: 0 },
            _EQ:               { label: "=", params: 0 },
            _GT:               { label: ">", params: 0 },
            _GTE:              { label: ">=", params: 0 },
            ABS:               { label: "ABS", params: 1 },
            ADD_MONTHS:        { label: "ADD_MONTHS", params: 1 },
            AND:               { label: "AND", params: 0 },
            BETWEEN:           { label: "BETWEEN", params: 0 },
            CASE:              { label: "CASE", params: 0 },
            CEIL:              { label: "CEIL", params: 1 },
            CHR:               { label: "CHR", params: 1 },
            COALESCE:          { label: "COALESCE", params: 2 },
            COS:               { label: "COS", params: 1 },
            CURRENT_DATE:      { label: "CURRENT_DATE", params: 0 },
            CURRENT_TIMESTAMP: { label: "CURRENT_TIMESTAMP", params: 0 },
            DECODE:            { label: "DECODE", params: 3 },
            ELSE:              { label: "ELSE", params: 0 },
            END:               { label: "END", params: 0 },
            EXP:               { label: "EXP", params: 2 },
            GREATEST:          { label: "GREATEST", params: 2 },
            IN:                { label: "IN", params: 2 },
            INITCAP:           { label: "INITCAP", params: 1 },
            INSTR:             { label: "INSTR", params: 2 },
            IS:                { label: "IS", params: 1 },
            LAST_DAY:          { label: "LAST_DAY", params: 1 },
            LEAST:             { label: "LEAST", params: 2 },
            LENGTH:            { label: "LENGTH", params: 1 },
            LIKE:              { label: "LIKE", params: 0 },
            LOG:               { label: "LOG", params: 1 },
            LOWER:             { label: "LOWER", params: 1 },
            LPAD:              { label: "LPAD", params: 2 },
            LTRIM:             { label: "LTRIM", params: 1 },
            MOD:               { label: "MOD", params: 2 },
            MONTHS_BETWEEN:    { label: "MONTHS_BETWEEN", params: 2 },
            NEXT_DAY:          { label: "NEXT_DAY", params: 1 },
            NOT:               { label: "NOT", params: 0 },
            NOT_BETWEEN:       { label: "NOT BETWEEN", params: 0 },
            NOT_IN:            { label: "NOT IN", params: 0 },
            NOT_LIKE:          { label: "NOT LIKE", params: 0 },
            NULL:              { label: "NULL", params: 0 },
            NVL:               { label: "NVL", params: 1 },
            OR:                { label: "OR", params: 0 },
            POWER:             { label: "POWER", params: 2 },
            REGEXP_INSTR:      { label: "REGEXP_INSTR", params: 2 },
            REGEXP_LIKE:       { label: "REGEXP_LIKE", params: 2 },
            REGEXP_REPLACE:    { label: "REGEXP_REPLACE", params: 3 },
            REGEXP_SUBSTR:     { label: "REGEXP_SUBSTR", params: 2 },
            REPLACE:           { label: "REPLACE", params: 3 },
            ROUND:             { label: "ROUND", params: 1 },
            RPAD:              { label: "RPAD", params: 2 },
            RTRIM:             { label: "RTRIM", params: 1 },
            SIGN:              { label: "SIGN", params: 1 },
            SIN:               { label: "SIN", params: 1 },
            SQRT:              { label: "SQRT", params: 1 },
            SUBSTR:            { label: "SUBSTR", params: 3 },
            SYSDATE:           { label: "SYSDATE", params: 0 },
            SYSTIMESTAMP:      { label: "SYSTIMESTAMP", params: 0 },
            THEN:              { label: "THEN", params: 0 },
            TO_CHAR:           { label: "TO_CHAR", params: 1 },
            TO_DATE:           { label: "TO_DATE", params: 1 },
            TO_TIMESTAMP:      { label: "TO_TIMESTAMP", params: 1 },
            TRANSLATE:         { label: "TRANSLATE", params: 3 },
            TRIM:              { label: "TRIM", params: 0 },
            TRUNC:             { label: "TRUNC", params: 1 },
            UPPER:             { label: "UPPER", params: 1 },
            WHEN:              { label: "WHEN", params: 1 }
        },
        */
        // aggregate functions
        AGGREGATEFUNCS = {
            SUM:           "SUM",
            AVG:           "AVG",
            CNT:           "COUNT",
            CNT_DIST:      "COUNT_DISTINCT",
            APPR_CNT_DIST: "APPROX_COUNT_DISTINCT",
            MIN:           "MIN",
            MAX:           "MAX",
            MEDIAN:        "MEDIAN",
            LISTAGG:       "LISTAGG"
        };

    // Helper functions
    const hasOwnProperty = util.hasOwnProperty,
        isArray = Array.isArray;

    function getMessage( key ) {
        return lang.getMessage( key );
    }

    function getIGMessage( key ) {
        return lang.getMessage( "APEX.IG." + key );
    }

    function ifDefined(a, b) {
        return a !== undefined ? a : b;
    }

    // setting type messages
    const SETTING_TYPE_MSG = {
            filter:         getIGMessage( "FILTER" ),
            chart:          getIGMessage( "CHART" ),
            groupby:        getIGMessage( "GROUP_BY" ),
            controlBreak:   getIGMessage( "CONTROL_BREAK" ),
            highlight:      getIGMessage( "HIGHLIGHT" ),
            aggregate:      getIGMessage( "AGGREGATE" ),
            flashback:      getIGMessage( "FLASHBACK" )
        },
        // units
        UNIT = {
            MI:         "MINUTE",
            H:          "HOUR",
            D:          "DAY",
            W:          "WEEK",
            M:          "MONTH",
            Y:          "YEAR"
        },
        // sort by
        SORTBY = {
            LABEL:   "LABEL",
            VALUE:   "VALUE",
            X:       "X",
            Y:       "Y",
            Z:       "Z",
            TARGET:  "TARGET",
            HIGH:    "HIGH",
            LOW:     "LOW"
        },
        /* for future use in compute dialog
        // format mask num
        FORMATMASKS_NUM = [
            { value: "FML999G999G999G999G990D00",      label: "$5,234.10" },
            { value: "999G999G999G999G990D00",         label: "5,234.10" },
            { value: "999G999G999G999G990D0000",       label: "5,234.1000" },
            { value: "999G999G999G999G999G999G990",    label: "5,234" },
            { value: "999G999G999G999G990D00MI",       label: "5,234.10-" },
            { value: "S999G999G999G999G990D00",        label: "-5,234.10" },
            { value: "999G999G999G999G990D00PR",       label: "<5,234.10>" }
        ],
        // format mask dates
        FORMATMASKS_DATE = [
            { value: "DD-MON-RR",                      label: "12-JAN-16" },
            { value: "DD-MON-YYYY",                    label: "12-JAN-2016" },
            { value: "DD-MON",                         label: "12-JAN" },
            { value: "RR-MON-DD",                      label: "16-JAN-12" },
            { value: "YYYY-MM-DD",                     label: "2016-01-12" },
            { value: "fmDay, fmDD fmMonth, YYYY",      label: getMessage( "APEX.IG_FORMAT_SAMPLE_1" ) }, // todo consider using APEX.IG. prefix
            { value: "DD-MON-YYYY HH24:MI",            label: "12-JAN-2016 14:30" },
            { value: "DD-MON-YYYY HH24:MI:SS",         label: "12-JAN-2016 14:30:00" },
            { value: "DD-MON-YYYY HH:MIPM",            label: "12-JAN-2016 02:30PM" },
            { value: "Month",                          label: getMessage( "APEX.IG_FORMAT_SAMPLE_2" ) }, // todo consider using APEX.IG. prefix
            { value: "DD-MON-YYYY HH24:MI",            label: "12-JAN-2016 14:30" },
            { value: "DD-MON-YYYY HH24.MI.SSXFF",      label: "12-JAN-2016 14.30.12.867530900" },
            { value: "DD-MON-YYYY HH:MI:SSXFF PM",     label: "12-JAN-2016 02:30:12.867530900 PM" },
            { value: "DD-MON-YYYY HH24:MI TZR",        label: "12-JAN-2016 14:30 -07:00" },
            { value: "DD-MON-YYYY HH24.MI.SSXFF TZR",  label: "12-JAN-2016 14.30.12.867530900 -07:00" },
            { value: "DD-MON-YYYY HH.MI.SSXFF PM TZR", label: "12-JAN-2016 02.30.12.867530900 PM -07:00" },
            { value: "SINCE",                          label: getMessage( "APEX.IG_FORMAT_SAMPLE_3" ) }, // todo consider using APEX.IG. prefix
            { value: "SINCE_SHORT",                    label: getMessage( "APEX.IG_FORMAT_SAMPLE_4" ) } // todo consider using APEX.IG. prefix
        ],
        */
        // chart format masks num
        CHART_FORMATMASKS_NUM = [
            { value: "$1,002.54",                      label: { style: 'currency', currency: 'USD', currencyDisplay: 'symbol' } },
            { value: "1,002.54",                       label: { style: 'decimal', maximumFractionDigits: 2 } },
            { value: "1,002.5400",                     label: { style: 'decimal', maximumFractionDigits: 4 } },
            { value: "1,002",                          label: { style: 'decimal', maximumFractionDigits: 0 } },
            { value: "1,002.54-",                      label: { style: 'decimal', maximumFractionDigits: 2 } },
            { value: "-1,002.54",                      label: { style: 'decimal', maximumFractionDigits: 2 } },
            { value: "<1,002.54>",                     label: { style: 'decimal', maximumFractionDigits: 2 } }
        ],
        // chart format mask dates
        CHART_FORMATMASKS_DATE = [
            { value: "DD-MON-RR",                      label: { pattern: 'dd-MMM-yy' }},
            { value: "DD-MON-YYYY",                    label: { pattern: 'dd-MMM-yyyy' }},
            { value: "DD-MON",                         label: { pattern: 'dd-MMM' }},
            { value: "RR-MON-DD",                      label: { pattern: 'yy-MMM-dd' }},
            { value: "YYYY-MM-DD",                     label: { pattern: 'yyyy-MMM-dd' }},
            { value: "fmDay, fmDD fmMonth, YYYY",      label: { formatType: 'date', dateFormat: 'full' }},
            { value: "DD-MON-YYYY HH24:MI",            label: { pattern: 'dd-MMM-yyyy HH:mm' } },
            { value: "DD-MON-YYYY HH24:MI:SS",         label: { pattern: 'dd-MMM-yyyy HH:mm:ss' } },
            { value: "DD-MON-YYYY HH:MIPM",            label: { pattern: 'dd-MMM-yyyy hh:mm a' } },
            { value: "Month",                          label: { month: 'long' } },
            { value: "DD-MON-YYYY HH24.MI.SSXFF",      label: { pattern: 'dd-MMM-yyyy HH:mm:ss' } },
            { value: "DD-MON-YYYY HH:MI:SSXFF PM",     label: { pattern: 'dd-MMM-yyyy hh:mm:ss a' } },
            { value: "DD-MON-YYYY HH24:MI TZR",        label: { pattern: 'dd-MMM-yyyy HH:mm' } },
            { value: "DD-MON-YYYY HH24.MI.SSXFF TZR",  label: { pattern: 'dd-MMM-yyyy HH:mm:ss' } },
            { value: "DD-MON-YYYY HH.MI.SSXFF PM TZR", label: { pattern: 'dd-MMM-yyyy hh:mm:ss a' } }
        ],
        // events
        EVENT_SELECTION_CHANGE = "selectionChange",
        EVENT_VIEW_CHANGE = "viewChange",
        EVENT_REPORT_CHANGE = "reportChange",
        EVENT_REPORT_SETTINGS_CHANGE = "reportSettingsChange",
        EVENT_VIEW_MODEL_CREATE = "viewModelCreate",
        EVENT_SAVE = "save",
        EVENT_MODE_CHANGE = "modeChange",
        EVENT_CHANGE = "change";

    // Default toolbar configuration
    const defaultToolbar = [
        {
            id: "search",
            groupTogether: true,
            customCSS: "a-Toolbar-group--search",
            controls: [
                {
                    type: TB_MENU,
                    id: "column_filter_button",
                    labelKey: "APEX.IG.SELECT_COLUMNS_TO_SEARCH",
                    icon: "icon-search",
                    iconOnly: true,
                    menu: {
                        items: [
                            {
                                type: TOGGLE,
                                action: "search-case-sensitive"
                            },
                            SEPARATOR_MI,
                            {
                                type: RADIO_GROUP,
                                action: "filter-column"
                            }
                        ]
                    }
                },
                {
                    type: "TEXT",
                    id: "search_field",
                    enterAction: "search"
                },
                {
                    type: TB_BUTTON,
                    action: "search"
                }
            ]
        },
        {
            id: "reports",
            controls: [
                {
                    type: "SELECT",
                    action: "change-report"
                }
            ]
        },
        {
            id: "views",
            controls: [
                {
                    type: "RADIO_GROUP",
                    labelKey: "APEX.IG.VIEW",
                    action: "change-view"
                }
            ]
        },
        {
            id: "actions1",
            controls: [
                {
                    type: TB_MENU,
                    id: "actions_button",
                    labelKey: "APEX.IG.ACTIONS",
                    menu: {
                        items: [
                            {
                                type: ACTION,
                                action: "show-columns-dialog"
                            },
                            SEPARATOR_MI,
                            {
                                type: ACTION,
                                action: "show-filter-dialog"
                            },
                            {
                                type: "subMenu",
                                id: "data_submenu",
                                labelKey: "APEX.IG.DATA",
                                icon: "icon-ig-data",
                                menu: {
                                    items: [
                                        {
                                            type: ACTION,
                                            action: "show-sort-dialog"
                                        },
                                        {
                                            type: ACTION,
                                            action: "show-aggregate-dialog"
                                        },
                                        /* todo future
                                        {
                                            type: ACTION,
                                            action: "show-compute-dialog"
                                        },
                                        */
                                        {
                                            type: ACTION,
                                            action: "refresh"
                                        },
                                        {
                                            type: ACTION,
                                            action: "show-flashback-dialog"
                                        }
                                    ]
                                }
                            },
                            {
                                type: "subMenu",
                                id: "format_submenu",
                                labelKey: "APEX.IG.FORMAT",
                                icon: "icon-ig-format",
                                menu: {
                                    items: [
                                        {
                                            type: ACTION,
                                            action: "show-control-break-dialog"
                                        },
                                        {
                                            type: ACTION,
                                            action: "show-highlight-dialog"
                                        },
                                        {
                                            type: TOGGLE,
                                            action: "stretch-columns"
                                        },
                                        {
                                            type: "subMenu",
                                            labelKey: "APEX.IG.ROWS_PER_PAGE",
                                            hide: true,
                                            id: "rows",
                                            icon: "icon-ig-rows",
                                            menu: {
                                                items: [
                                                    {
                                                        type: RADIO_GROUP,
                                                        action: "change-rows-per-page"
                                                    }
                                                ]
                                            }
                                        }
                                    ]
                                }
                            },
                            {
                                type: "subMenu",
                                id: "selection_submenu",
                                labelKey: "APEX.IG.SELECTION",
                                icon: "icon-ig-selection",
                                menu: {
                                    items: [
                                        {
                                            type: TOGGLE,
                                            action: "selection-mode"
                                        },
                                        SEPARATOR_MI,
                                        {
                                            type: ACTION,
                                            action: "selection-copy",
                                            accelerator: "Ctrl+C"
                                        },
                                        SEPARATOR_MI
                                    ]
                                }
                            },
                            SEPARATOR_MI,
                            {
                                type: ACTION,
                                action: "chart-view"
                            },
                            SEPARATOR_MI,
                            {
                                type: "subMenu",
                                id: "save_report_submenu",
                                labelKey: "APEX.IG.REPORT",
                                icon: "icon-irr-saved-report", //todo get ig icon, was "icon-ig-report-settings",
                                menu: {
                                    items: [
                                        {
                                            type: ACTION,
                                            action: "save-report"
                                        },
                                        {
                                            type: ACTION,
                                            action: "show-save-report-as-dialog"
                                        },
                                        {
                                            type: ACTION,
                                            action: "show-edit-report-dialog"
                                        },
                                        SEPARATOR_MI,
                                        {
                                            type: ACTION,
                                            action: "delete-report"
                                        },
                                        SEPARATOR_MI,
                                        {
                                            type: ACTION,
                                            action: "reset-report"
                                        }
                                    ]
                                }
                            },
                            SEPARATOR_MI,
                            {
                                type: ACTION,
                                action: "show-download-dialog"
                            },
                            /*{
                                type: ACTION,
                                action: "show-subscription-dialog"
                            },*/
                            SEPARATOR_MI,
                            {
                                type: ACTION,
                                action: "show-help-dialog"
                            }
                        ]
                    }
                }
            ]
        },
        {
            id: "actions2",
            controls: [
                {
                    type: "TOGGLE",
                    action: "edit"
                },
                {
                    type: TB_BUTTON,
                    hot: true,
                    action: "save"
                }
            ]
        },
        {
            id: "actions3",
            controls: [
                {
                    type: TB_BUTTON,
                    action: "selection-add-row"
                }
            ]
        },
        {
            id: "actions4",
            align: "end",
            controls: [
                {
                    type: TB_BUTTON,
                    action: "reset-report",
                    labelKey: "APEX.IG.RESET",
                    iconBeforeLabel: true
                }
            ]
        }
    ];

    function copyDefaultToolbar() {
        var i,
            copy = [];

        for ( i = 0; i < defaultToolbar.length; i++ ) {
            copy.push( $.extend( true, {}, defaultToolbar[ i ]) );
        }
        copy.toolbarFind = defaultToolbar.toolbarFind;
        copy.toolbarRemove = defaultToolbar.toolbarRemove;
        copy.toolbarInsertAfter = defaultToolbar.toolbarInsertAfter;
        return copy;
    }

    function toolbarProcess( toolbar, id, remove, obj ) {
        var i, j, controls, control, item, container,
            containers = toolbar;

        function findInMenu( items ) {
            var i, item;

            for ( i = 0; i < items.length; i++ ) {
                item = items[i];
                if ( item.id === id || item.action === id) {
                    if ( remove ) {
                        items.splice( i, 1 );
                    }
                    if ( obj ) {
                        items.splice( i + 1, 0, obj );
                    }
                    return item;
                }
                if ( item.type === "subMenu" ) {
                    item = findInMenu( item.menu.items );
                    if ( item ) {
                        return item;
                    }
                }
            }
            return null;
        }

        // the id could be for a toolbar control or for a menu item
        for ( i = 0; i < containers.length; i++ ) {
            container = containers[i];
            if ( container.id === id ) {
                if ( remove ) {
                    containers.splice( i, 1 );
                }
                if ( obj ) {
                    containers.splice( i + 1, 0, obj );
                }
                return container;
            }
            controls = container.controls;
            if ( controls ) {
                for ( j = 0; j < controls.length; j++ ) {
                    control = controls[j];
                    if ( control.id === id || control.action === id) {
                        if ( remove ) {
                            controls.splice( j, 1 );
                        }
                        if ( obj ) {
                            controls.splice( j + 1, 0, obj );
                        }
                        return control;
                    }
                    if ( control.menu ) {
                        item = findInMenu( control.menu.items );
                        if ( item ) {
                            return item;
                        }

                    }
                }
            }
        }
        return null;
    }

    /**
     * @typedef {Array} interactiveGrid.toolbarData
     * @desc
     * <p>Toolbar widget metadata returned by {@link interactiveGrid.copyDefaultToolbar}.</p>
     * <p>The toolbar data structure is an array of control groups for different parts of the toolbar. These
     * control groups all have unique IDs, which can be used in conjunction with the the functions defined below
     * to assist in customizing the toolbar.
     * See option {@link interactiveGrid#toolbarData} and method {@link interactiveGrid.copyDefaultToolbar}
     * for examples of customizing the toolbar.
     * <table>
     * <caption>Control group IDs defined in the default toolbar data structure</caption>
     * <thead>
     * <th scope="col">Control Group ID</th>
     * <th scope="col">Contents</th>
     * </thead>
     * <tr><th scope="row">search</th><td>All search controls (column search menu, search field and go button)</td></tr>
     * <tr><th scope="row">reports</th><td>Saved report select list</td></tr>
     * <tr><th scope="row">views</th><td>View selection pill buttons</td></tr>
     * <tr><th scope="row">actions1</th><td>Actions menu button</td></tr>
     * <tr><th scope="row">actions2</th><td>Edit and Save buttons</td></tr>
     * <tr><th scope="row">actions3</th><td>Add Row button</td></tr>
     * <tr><th scope="row">actions4</th><td>Reset report button</td></tr>
     * </table>
     * </p>
     * @property {function} toolbarFind <code class="prettyprint">toolbarFind(id)</code> Returns a control group,
     *     control or menu item found by id.
     *     The id is the id of a control group, control, or menu item or an action name. Unlike the find method
     *     of the toolbar widget this toolbarFind method works before the widget is created.
     * @property {function} toolbarInsertAfter <code class="prettyprint">toolbarInsertAfter(id, item)</code>
     *     Inserts the given item after the id if found.
     *     The id argument can be the id of a control group, control, or menu item or an action name. If the id is
     *     not found then nothing is inserted. The item to insert is an object that is appropriate for the
     *     kind of id. If the id is for an action name or a menu item id then the item should be a menu item or
     *     toolbar control. If the id is for a control group the item should be a control group object.
     *     If the id is for a control then the item should be a control.
     * @property {function} toolbarRemove <code class="prettyprint">toolbarRemove(id)</code>
     *     Removes a control group, control or menu item found by id.
     *     The id is the id of a control group, control, or menu item or an action name. The item removed is
     *     returned. Note: removing a button or menu item does not remove the corresponding functionality. For example
     *     removing the menu item for "show-filter-dialog" does not prevent showing the filter dialog by invoking
     *     the "show-filter-dialog" action some other way such as from the report settings area.
     */
    // todo return the following to end of 2nd p if and when toolbar widget is documented
    //   "See {@link toolbar} widget for details on the structure of the toolbar data."
    defaultToolbar.toolbarInsertAfter = function( id, item ) {
        toolbarProcess( this, id, false, item );
    };
    defaultToolbar.toolbarRemove = function( id ) {
        return toolbarProcess( this, id, true );
    };
    defaultToolbar.toolbarFind = function( id ) {
        return toolbarProcess( this, id, false );
    };

    /*
     * General purpose functions
     */

    function dialogCheckboxColumn( label ) {
        return {
            label: label || "ENABLED",
            alignment: POSITION_CENTER,
            defaultValue: true,
            columnCssClasses: C_JS_COL_CHECKBOX,
            cellTemplate: M_PSEUDO_CHECKBOX,
            width: 80,
            noStretch: true,
            seq: 10
        };
    }

    function recordViewHideField( pRecordView$, pField ) {
        pRecordView$.recordView( "fieldElement", pField ).hide();
    }
    function recordViewShowField( pRecordView$, pField ) {
        pRecordView$.recordView( "fieldElement", pField ).show();
    }

    function convertCanonicalToDate( pCanonical ) {
        try {
            return date.parse( pCanonical, CANNONICAL_FORMAT );
        } catch( e ) {
            return null;
        }
    }

    // helper function: Convert Date() to  "YYYYMMDDHHMISS"
    function convertDateToCanonical( pDate ) {
        try {
            return date.format( pDate, CANNONICAL_FORMAT );
        } catch( e ) {
            return "";
        }
    }

    function move( pArray, pFrom, pTo ) {
        pArray.splice( pTo, 0, pArray.splice( pFrom, 1 )[ 0 ] );
    }

    // helper function: trim whitespace from all array values and remove empty values afterwards
    function trimArrayValues( pArray ) {
        var i, lNewArray = [], lValue;

        for ( i = 0; i < pArray.length; i++) {
            lValue = pArray[ i ].replace( /^\s+|\s+$/gm, '' );
            if ( lValue !== "" && lNewArray.indexOf( lValue ) === -1 ) {
                lNewArray.push( lValue );
            }
        }
        return lNewArray;
    }

    /* For multi-part CSS names, sometimes these are camelCase (modifier postfix) and sometimes hyphen separated (icon class postfix).
     */
    function getHyphenatedClass( pModifierPostfix ) {

        var lClassPostfix = pModifierPostfix;

        switch( pModifierPostfix ) {
            case GROUP_BY:
                lClassPostfix = "group-by";
                break;
            case SAVED_REPORT:
                lClassPostfix = "saved-report";
                break;
            case INACTIVE_SETTINGS:
                lClassPostfix = "inactive-settings";
                break;
            case INVALID_SETTINGS:
                lClassPostfix = "invalid-settings";
                break;
            case CONTROL_BREAK:
                lClassPostfix = "control-break";
                break;
            case SAVE_AS_REPORT:
                lClassPostfix = "save-report";
                break;
            case EDIT_REPORT:
                lClassPostfix = "save-report";
                break;
        }

        return lClassPostfix;

    }

    function loadOptions( src, dst, value, label, nullValue, nullLabel ) {
        var i;

        if ( !nullLabel ) {
            dst.push({
                value: nullValue,
                label: nullLabel
            });
        }
        for ( i = 0; i < src.length; i++ ) {
            dst.push({
                value: src[ i ][value],
                label: src[ i ][label]
            });
        }
   }

    function renderDataAttributes( out, pOptData ) {
        var lData;
        if ( !$.isEmptyObject( pOptData ) ) {
            for ( lData in pOptData ) {
                if ( hasOwnProperty( pOptData, lData) ) {
                    out.attr( "data-" + lData, pOptData[ lData ] );
                }
            }
        }
    }
    // base render
    function renderBase( out, pOptions ) {
        var lAttr,
            lOptions = $.extend( {
                // required
                id:                 "",
                type:               TEXT,
                value:              "",
                // optional
                maxChars:          "",
                title:              "",
                role:               "",
                ariaLabel:          "",
                ariaLabelledBy:     "",
                ariaDescribedBy:    "",
                name:               "",
                size:               "",
                placeholder:        "",
                // boolean properties
                readonly:           false,
                checked:            false,
                disabled:           false,
                invalid:            false,
                required:           false,
                // multiple values possible for the following
                cssClasses:         [],
                data:               {},
                attributes:         {}
            }, pOptions ),
            lOptClass = lOptions.cssClasses,
            lOptAttr = lOptions.attributes;

        out.attr( "id", lOptions.id )
            .attr( "type", lOptions.type )
            .attr( "value", lOptions.value )
            .optionalAttr( "maxlength", lOptions.maxChars )
            .optionalAttr( "title", lOptions.title )
            .optionalAttr( ROLE, lOptions.role )
            .optionalAttr( A_LABEL, lOptions.ariaLabel )
            .optionalAttr( A_LABELLEDBY, lOptions.ariaLabelledBy )
            .optionalAttr( A_DESCRIBEDBY, lOptions.ariaDescribedBy )
            .optionalAttr( "name", lOptions.name )
            .optionalAttr( "size", lOptions.size )
            .optionalAttr( "placeholder", lOptions.placeholder )
            .optionalBoolAttr( "readonly", lOptions.readonly )
            .optionalBoolAttr( CHECKED, lOptions.checked )
            .optionalBoolAttr( DISABLED, lOptions.disabled )
            .optionalAttr( A_INVALID, lOptions.invalid ? "true" : null )
            .optionalBoolAttr( REQUIRED, lOptions.required );

        if ( lOptClass.length > 0 ) {
            out.attr( CLASS, isArray( lOptClass ) ? lOptClass.join( " " ) : lOptClass );
        }

        renderDataAttributes( out, lOptions.data );

        if ( !$.isEmptyObject( lOptAttr ) ) {
            for ( lAttr in lOptAttr ) {
                if ( hasOwnProperty( lOptAttr, lAttr ) ) {
                    out.attr( lAttr, lOptAttr[ lAttr ] );
                }
            }
        }
    }
    // base render input
    function renderBaseInput( out, pOptions ) {
        out.markup( "<input" );
        renderBase( out, pOptions );
        out.markup( " />" );
    }
    function renderText( out, pOptions ) {
        var lOptions = $.extend({
            cssClasses: C_FORM_TEXT_FIELD,
            maxChars: "4000"
        }, pOptions );

        renderBaseInput( out, lOptions );
    }

    /*
     * General purpose rendering functions
     */

    function renderIconList( out, pSettings ) {
        let lSettings = $.extend({
            id:         "",
            iconOnly:   false,
            cssClasses: "",
            options:    []
        }, pSettings );

        out.markup( "<fieldset ")
           .attr( CLASS, C_IG_DIALOG_ICON_LIST )
           .attr( "id", lSettings.id + "_fieldset" )
           .markup( ">" );

        out.markup( "<ul ")
            .attr( CLASS, C_IG_DIALOG_ICON_LIST + " " + lSettings.cssClasses )
            .attr( "id", lSettings.id + "_list" )
            // iconList widget expects aria-labelledby
            .attr( A_LABELLEDBY, lSettings.id + "_LABEL" )
            .markup( ">" );

        for ( let i = 0; i < lSettings.options.length; i++ ) {
            const lOption = lSettings.options[ i ];

            out.markup( "<li" )
               .attr( "data-value", lOption.value )
               .attr( CLASS, C_IG_DIALOG_ICON_LIST_ITEM + ( lOption.isSelected ? " " + C_IS_SELECTED : "" ) )
               .markup( ">")
               .markup( "<span ")
               .attr( CLASS, C_IG_DIALOG_ICON_LIST_LINK )
               .attr( A_LABEL, lOption.label || lOption.value )
               .attr ( "title", lOption.label || lOption.value )
               .markup( ">" )
               .markup( "<span ")
               .attr( CLASS, C_IG_DIALOG_ICON_LIST_ICON + " " + C_ICON + " " + lOption.iconCssClasses )
               .attr( A_HIDDEN, true )
               .markup( "></span>" );
            if ( lSettings.iconOnly === false ) {

                out.markup( "<span ")
                   .attr( CLASS, C_IG_DIALOG_ICON_LIST_LABEL )
                   .markup( ">" )
                   .content( lOption.label || lOption.value )
                   .markup( "</span>" );
            }

            out.markup( "</span>" )
               .markup( "</li>" );
        }
        out.markup( "</ul>" );
        out.markup( "<input " )
           .attr( "type", "hidden" )
           .attr( A_HIDDEN, true )
           .attr( "id", lSettings.id )
           .markup( ">" );

        out.markup( "</fieldset>" );
    }

    function initIconList( pElementId, pValue ) {
        var lElement$ = $( "#" + pElementId + "_list" );

        function setSelection( value ) {
            lElement$.iconList(
                "setSelection",
                lElement$.find( "li[data-value=\"" + util.escapeHTMLAttr( value ) + "\"]" ),
                false );
        }

        lElement$.iconList({
            multiple: false,
            selectionChange: function() {
                $( "#" + pElementId ).val( $(this).iconList( "getSelectionValues" ) ).trigger( "change" );
            }
        });
        setSelection( pValue );

        $( "#" + pElementId ).on( "change", function () {
            setSelection( $( "#" + pElementId ).val() );
        });
    }

    function renderButton( out, pOptions ) {
        var lButtonClass, lIcon, lIconAndText, lAttr,
            lOptions = $.extend({
                id:              "",
                buttonClass:     "",
                label:           "",
                icon:            "",
                iconOnly:        false,
                iconPosition:    RIGHT,
                tabindex:        "",
                attributes:      {},
                data:            {},
                role:            "",
                ariaLevel:       "",
                ariaControls:    "",
                ariaDescribedBy: ""
            }, pOptions );

        lButtonClass = C_BUTTON + ( pOptions.buttonClass ? " " + pOptions.buttonClass : "" );
        lIcon = C_ICON + ( pOptions.icon ? " " + pOptions.icon : "" );
        lIconAndText = ( pOptions.icon && !pOptions.iconOnly );

        out.markup( "<button type='button'" )
            .optionalAttr( "id", lOptions.id )
            .optionalAttr( "tabindex", lOptions.tabindex )
            .attr( CLASS, lButtonClass )
            .optionalAttr( ROLE, lOptions.role )
            .optionalAttr( A_LEVEL, lOptions.ariaLevel )
            .optionalAttr( A_CONTROLS, lOptions.ariaControls )
            .optionalAttr( A_DESCRIBEDBY, lOptions.ariaDescribedBy );

        // Check if we have a label as well (some buttons may not as they are labelled by the collapsible widget logic)
        if ( pOptions.iconOnly && lOptions.label ) {
            out.attr( "title", lOptions.label )
                .attr( A_LABEL, lOptions.label );
        }
        if ( !$.isEmptyObject( lOptions.attributes ) ) {
            for ( lAttr in lOptions.attributes ) {
                if ( hasOwnProperty( lOptions.attributes, lAttr ) ) {
                    out.attr( lAttr, lOptions.attributes[ lAttr ] );
                }
            }
        }

        renderDataAttributes( out, lOptions.data );

        out.markup( ">" );

        if ( lIconAndText && lOptions.iconPosition === LEFT ) {
            out.markup( "<span" )
                .attr( A_HIDDEN, true )
                .attr( CLASS, lIcon + " " + C_ICON_LEFT )
                .markup( "></span>" );
        }

        if ( !pOptions.iconOnly ) {

            // Check if we have a label (some buttons may not as they are labelled by the collapsible widget logic)
            if ( lOptions.label ) {
                out.markup( "<span" )
                    .attr( CLASS, C_BUTTON_LABEL )
                    .markup( ">")
                    .content( lOptions.label )
                    .markup( "</span>" );
            }
        } else {
            out.markup( "<span" )
                .attr( A_HIDDEN, true )
                .attr( CLASS, lIcon )
                .markup( "></span>" );
        }

        if ( lIconAndText && lOptions.iconPosition === RIGHT ) {
            out.markup( "<span" )
                .attr( A_HIDDEN, true )
                .attr( CLASS, lIcon + " " + C_ICON_RIGHT )
                .markup( "></span>" );
        }

        out.markup( "</button>" );

    }
    function renderColor( out, pOptions) {
        out.markup( "<a-color-picker")
            .attr( CLASS, C_COLORPICKER )
            .attr( "display-as", "POPUP" )
            .attr( "display-mode", "FULL" )
            .attr( "preset-colors", pOptions.colors )
            .attr( "contrast-item", pOptions.contrastItem || null )
            .attr( "max-preset-colors", "" + pOptions.colors.split( ";" ).length );

        renderBase( out, pOptions );

        out.markup( ">" );
        out.markup( "</a-color-picker>" );
    }

    function renderCheckbox( out, pOptions ) {
        renderBaseInput( out, $.extend({
            type: CHECKBOX
        }, pOptions ) );
    }
    function renderTextarea( out, pOptions ) {
        var lOptions = $.extend({
            id: "",
            cssClasses: C_TEXTAREA,
            cols: "30",
            rows: "4",
            name: "",
            placeholder: "",
            disabled: false,
            readonly: false,
            required: false,
            toolbar: false,
            style: "resize: both;",
            wrap: "virtual"
        }, pOptions );


        if ( lOptions.toolbar ) {
            out.markup( "<fieldset ")
               .attr( "id", pOptions.id + "_fieldset" )
               .markup( ">" );

            out.markup( "<div" )
                .attr( "id", lOptions.id + "_toolbar" )
                .markup( "></div>" );
        }

        out.markup( "<textarea" )
            .attr( "id", lOptions.id )
            .attr( CLASS, lOptions.cssClasses )
            .attr( "cols", lOptions.cols )
            .attr( "rows", lOptions.rows )
            .optionalAttr( "name", lOptions.name )
            .optionalAttr( "placeholder", lOptions.placeholder )
            .optionalAttr( "style", lOptions.style )
            .optionalAttr( "wrap", lOptions.wrap )
            .optionalBoolAttr( DISABLED, lOptions.disabled )
            .optionalBoolAttr( "readonly", lOptions.readonly )
            .optionalBoolAttr( REQUIRED, lOptions.required )
            .markup( ">" )
            .markup( "</textarea>" );

        if ( lOptions.toolbar ) {
            out.markup( "</fieldset>" );
        }

    }
    function renderLink( out, pOptions ) {
        var lOptions = $.extend({
            cssClasses: "",
            text: "",
            data: {}
        }, pOptions );

        out.markup( "<a href='#'" )
            .attr( CLASS, lOptions.cssClasses );

        renderDataAttributes( out, lOptions.data );

        out.markup( ">" )
            .content( lOptions.text )
            .markup( "</a>" );

    }

    function renderLabel( out, pOptions ) {
        var lLabelClass,
            lOptions = $.extend({
                cssClasses:         C_FORM_LABEL,
                // set to true when aria-label provided directly to the element with id "labelFor"
                // so the visual label is rendered only
                // example: grid settings checkbox to toggle filters
                ariaHidden:         false,
                labelFor:           "",
                // a text label
                // can be blank if an accessible label provided through aria-label directly on the element with id "labelFor"
                // when blank, a visual label should be provided through a css-styled icon
                // example of the blank value for the "label" option: search field label in the column action dialog
                label:              "",
                // render visually hidden (no icon, no text) but accessible label when true
                labelHidden:        false,
                // if true, render
                // a label with visually shown icon (has to be added to css)
                // and with visually hidden but accessible text (see "label" option)
                // example: search field label in the column action dialog
                labelTextHidden:    false
            }, pOptions );

        lLabelClass = lOptions.cssClasses;
        if ( lOptions.labelHidden ) {
            lLabelClass += " " + C_VISUALLY_HIDDEN;
        }

        out.markup( "<label" )
            .attr( CLASS, lLabelClass )
            .attr( "for", lOptions.labelFor )
            .optionalAttr( A_HIDDEN, lOptions.ariaHidden ? "true" : null )
            .markup( ">" );

        if ( !lOptions.labelTextHidden ) {
            out.content( lOptions.label );
        } else {
            // for cases when visually a css-styled icon is rendered only, but an accessible label added directly to an element using aria-label
            if ( lOptions.label.length > 0 ) {
                out.markup( "<span" )
                    .attr( CLASS, C_VISUALLY_HIDDEN )
                    .markup( ">" )
                    .content( lOptions.label )
                    .markup( "</span>" );
            }
        }

        out.markup( "</label>" );
    }
    function renderRadio( out, pOptions ) {
        renderBaseInput( out, $.extend({
            type: "radio"
        }, pOptions ) );
    }
    function renderRadioGroup( out, pOptions ) {
        var i, lRadioButton, lRadioButtonId,
            lOptions = $.extend({
                id: "",
                label: "",
                name: "",
                radios: []
            }, pOptions);

        out.markup( "<div role='group'" )
            .attr( "id", lOptions.id )
            //.attr( CLASS, C_IG_FIELD_CONTAINER )
            .attr( A_LABELLEDBY, "id1" )    //todo hard-coded ACC issue?
            .markup( ">" );

        for ( i = 0; i < lOptions.radios.length; i++ ) {
            lRadioButton = lOptions.radios[ i ];
            lRadioButtonId = lOptions.id + "_" + i;

            renderRadio( out, {
                name: lOptions.name,
                id: lRadioButtonId,
                value: lRadioButton.value,
                checked: lRadioButton.checked,
                cssClasses: C_IG_DIALOG_INPUT_CHECKBOX
            });
            renderLabel( out, {
                labelFor: lRadioButtonId,
                cssClasses: C_IG_DIALOG_LABEL_CHECKBOX,
                label: lRadioButton.label
            });
        }

        out.markup( "</div>" ); // end C_FORM_FIELD_CONTAINER

    }

    function renderSelect( out, pSettings ) {
        var i, lOption,
            lSettings = $.extend({
            id:         "",
            cssClasses: C_SELECT_LIST,
            size:       "1",
            title:      "",
            required:   false,
            options:    []
        }, pSettings );

        out.markup( "<select" )
            .optionalAttr( "id", lSettings.id )
            .attr( CLASS, lSettings.cssClasses )
            .attr( "size", lSettings.size )
            .optionalAttr( "title", lSettings.title )
            .optionalBoolAttr( REQUIRED, lSettings.required )
            .markup( ">" );

        for ( i = 0; i < lSettings.options.length; i++ ) {
            lOption = lSettings.options[ i ];
            out.markup( "<option" )
                .attr( "value", lOption.value )
                .optionalBoolAttr( "selected", lOption.isSelected )
                .markup( ">" )
                .content( lOption.label || lOption.value )
                .markup( "</option>" );
        }
        out.markup( "</select>" );
    }

    function showFields( fields ) {
        var i;
        if ( !isArray( fields ) ) {
            fields = [fields];
        }
        for ( i = 0; i < fields.length; i ++ ) {
            item(fields[i][0]).show();
        }
    }

    function hideFields( fields ) {
        var i;
        if ( !isArray( fields ) ) {
            fields = [fields];
        }
        for ( i = 0; i < fields.length; i ++ ) {
            item(fields[i][0]).hide();
        }
    }

    function setFieldsRequired( fields, required ) {
        var i, f$;
        if ( !isArray( fields ) ) {
            fields = [fields];
        }
        for ( i = 0; i < fields.length; i ++ ) {
            f$ = fields[i];
            f$.prop( REQUIRED, required )
                .closest( SEL_FORM_FIELD_CONTAINER ).toggleClass( "is-required", required );
        }
    }

    /*
     * options:
     * [labelKey] or [label]
     * titleKey
     * [type] one of: text,number,item
     *   when type = item  also columnItem and viewInst options
     * [helpKey]
     * [helpTitleKey]
     * [value]
     * [okLabelKey]
     * [required]
     * todo jjs for benefit of flashback dialog at least need to implement validation of required on blur should also validate is number
     */
    function simplePromptDialog( options, callback ) {
        let dialog$, inputVal, showDialogOptions, renderOptions,
            originalValue = null,
            columnItem = null,
            viewInst = null,
            id = "apexDialogPromptInputId",
            out = util.htmlBuilder(),
            jQuery = util.getTopApex().jQuery; // make sure dialog is opened in top level page

        if ( options.type === "item" ) {
            columnItem = options.columnItem;
            viewInst = options.viewInst;
        }
        out.markup("<div class='u-Form u-Form--labelsAbove u-Form--stretchInputs'>")
            .markup("<div class='u-Form-fieldContainer'><div class='u-Form-labelContainer  u-tS'><span class='u-Form-label'>");
        // render a label unless there is an item that will handle its own label
        if ( !( columnItem && columnItem.item.setLabel ) ) {
            renderLabel( out, {
                labelFor: id,
                label: options.label || getMessage( options.labelKey )
            } );
        }
        out.markup("</span></div><div class='u-Form-inputContainer'>");
        renderOptions = {
            id: id,
            value: options.value || "",
            required: !!options.required
        };
        // for type = item the item is inserted during dialog init
        // because dialog belongs to top APEX context but item belongs to this context
        if ( options.type === "number" ) {
            // todo number
        } else if ( options.type !== "item" ) { // default is "text"
            renderText( out, renderOptions );
        }
        out.markup( "</div></div></div>" );
        dialog$ = jQuery( out.toString() );

        showDialogOptions = {
            title: getMessage( options.titleKey ),
            dialogClass: "",
            confirm: true,
            defaultButton: true,
            beforeClose: function() {
                // dialog is gone by the time callback is called so save the input value now
                if ( columnItem ) {
                    let displayVal,
                        item = columnItem.item;

                    inputVal = item.getValue();
                    displayVal = item.displayValueFor( inputVal );
                    if ( inputVal !== displayVal ) {
                        inputVal = {
                            v: inputVal,
                            d: displayVal
                        };
                    }
                    // restore original value if any
                    item.setValue( originalValue, null, true );
                    // deactivate field
                    viewInst._deactivateColumnItem( columnItem );
                    if ( item.setLabel ) {
                        item.setLabel( null );
                    }
                } else {
                    inputVal = jQuery( "#" + id ).val();
                }
            },
            callback: function( ok ) {
                var result = false;
                if ( ok ) {
                    result = inputVal;
                }
                callback( result );
            },
            init: function( dialog$ ) {
                if ( columnItem ) {
                    let item = columnItem.item,
                        field$ = dialog$.find( ".u-Form-inputContainer" );

                    // clear value but remember original so it can be restored
                    originalValue = item.getValue();
                    item.setValue( item.nullValue || "", null, true );
                    // activate the field for editing
                    field$.empty().append( columnItem.element$ );
                    viewInst._activateColumnItem( columnItem, id );
                    if ( item.setLabel ) {
                        item.setLabel( options.label );
                    }
                }
            },
            open: function() {
                jQuery( "#" + id ).trigger( "focus" );
            }
        };
        if ( options.okLabelKey ) {
            showDialogOptions.okLabelKey = options.okLabelKey;
        }
        if ( options.helpKey ) {
            showDialogOptions.extraButtons = [
                {
                    text: getMessage( "APEX.DIALOG.HELP" ),
                    CLASS: "ui-button-help",
                    click: function() {
                        lang.loadMessagesIfNeeded( [options.helpKey, options.helpTitleKey], function() {
                            theme.popupFieldHelp( {
                                title: getMessage( options.helpTitleKey ),
                                helpText: getMessage( options.helpKey )
                            } );
                        });
                    }
                }
            ];
        }
        message.showDialog( dialog$, showDialogOptions );
    }

    /*
     * Allow column header popup to work in jQuery UI dialogs
     */
    var dialogMixin = {
        _allowInteraction: function ( event ) {
            return $( event.target ).closest( "." + C_IG_COLUMN_HEADER_MENU ).length > 0 || this._super( event );
        }
    };

    if ( $.ui.dialog ) {
        $.widget( "ui.dialog", $.ui.dialog, dialogMixin );
        $.widget( "apex.popup", $.apex.popup, dialogMixin );
    }

    $.widget( "apex.interactiveGrid",
        /**
         * @lends interactiveGrid.prototype
         */
        {
        widgetEventPrefix: "interactivegrid",
        options: {
            config: {
                // todo add back this info if/when toolbar widget is documented
                //  <p>See {@link toolbar} widget for further details about what metadata is required.</p>
                /**
                 * <p>Contains the metadata for the toolbar displayed at the top of the Interactive Grid. If no value is
                 * provided, the toolbar defaults to the standard toolbar required in APEX.</p>
                 * <p>To customize the default toolbar used by the Interactive Grid in APEX, typically you would start
                 * with a copy of the default toolbar metadata. Please see {@link interactiveGrid.copyDefaultToolbar}
                 * for details on how to do this.</p>
                 *
                 * @memberof interactiveGrid
                 * @instance
                 * @type {Array}
                 * @default Return value from {@link interactiveGrid.copyDefaultToolbar}
                 * @example <caption>Initialize the interactiveGrid with the toolbarData option specified in the
                 * Interactive Grid region Initialization JavaScript Function attribute.</caption>
                 * function( options ) {
                 *     var $ = apex.jQuery,
                 *         toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),               // Make a copy of the default toolbar
                 *         reportsGroupControls = toolbarData.toolbarFind( "reports" ).controls;    // Locate the reports group
                 *
                 *     // Add new buttons after the default report controls. Note the toolbar is action driven, so
                 *     // we just need to define the correct action name with the button.
                 *     reportsGroupControls.push({
                 *         type: "BUTTON",
                 *         action: "save-report",
                 *         iconOnly: true
                 *     });
                 *     reportsGroupControls.push({
                 *         type: "BUTTON",
                 *         action: "show-save-report-as-dialog",
                 *         iconOnly: true
                 *     });
                 *     reportsGroupControls.push({
                 *         type: "BUTTON",
                 *         action: "show-edit-report-dialog",
                 *         iconOnly: true
                 *     });
                 *     reportsGroupControls.push({
                 *         type: "BUTTON",
                 *         action: "delete-report",
                 *         iconOnly: true
                 *     });
                 *
                 *     // Assign new toolbar data back to toolbarData configuration property
                 *     options.toolbarData = toolbarData;
                 *
                 *     // Return the options
                 *     return options;
                 * }
                 */
                toolbarData: null,
                modelInstanceId: null,              // The instance id to use for all view models. Typically null. When there is a master Interactive Grid
                                                    // (when parentRegionStaticId is set) this is updated automatically as the master selection changes.
                /**
                 * <p>Allows you to add or modify <em>actions</em>. <code class="prettyprint">function( actions )</code>
                 * Function has one argument 'actions', which is the Interactive Grid's action's interface object. Note: Within
                 * the function, the actions.context property can be used to access the main interactiveGrid widget element
                 * (the context for the actions).</p>
                 * <p>Please see <a href="#actions-section">Actions</a> for a listing of all the predefined actions used by
                 * the Interactive Grid widget, and {@link actions} for further general information about actions.
                 *
                 * @memberof interactiveGrid
                 * @instance
                 * @type {function}
                 * @default null
                 * @example jsinit( Interactive Grid )
                 *     function( actions ) {
                 *
                 *         // Hide all elements associated with the show help dialog action
                 *         actions.hide( "show-help-dialog" );
                 *
                 *         // Add a keyboard shortcut to the show filter dialog action
                 *         actions.lookup( "show-filter-dialog" ).shortcut = "Ctrl+Alt+F";
                 *         actions.update( "show-filter-dialog" );
                 *
                 *         // Add new actions, either singularly passing in an actions object as shown here, or in
                 *         // multiple by passing an array of action objects
                 *         actions.add( {
                 *             name: "my-action",
                 *             label: "Hello",
                 *             action: function( event, focusElement ) {
                 *                 alert( "Hello World!" );
                 *             }
                 *         } );
                 *     }
                 */
                initActions: null,
                columns: [],                        // required array of column definitions
                                                    // todo document column definition properties
                ajaxColumns: "",                    // required
                regionId: "",                       // required
                regionAccTitle: "",                 // grid's accessible name
                regionStaticId: "",                 // required
                columnGroups: [],                   // optional label property defaults to value of heading if not defined
                                                    // id, header required
                                                    // todo consider that grid also supports headingAlignment, parentGroupName. It would be very easy for IG to support multiple column group levels
                ajaxIdentifier: "",                 // required
                itemsToSubmit: "",
                /**
                 * Controls if the Interactive Grid is editable.
                 *
                 * @memberof interactiveGrid
                 * @instance
                 * @type {boolean}
                 * @default false
                 * @example jsinit( Interactive Grid ) true
                 */
                editable: false,                    // if set will be an object with editing details, defaulted separately downstream
                submitSelectedRows: false,          // todo not fully implemented
                parentRegionStaticId: null,         // if this is a detail IG of a master IG then this is the static region id of the master region
                /**
                 * <p>Determines if a detail Interactive Grid will change the detail instance automatically when the
                 * selection in the master region changes. When true, the default, this detail Interactive Grid
                 * creates a selection change event handler for the master region and updates the data shown in this
                 * region to correspond to the selected row of the master region. Set to false to manually control
                 * the detail instance shown in this region using the {@Link interactiveGrid#setMasterRecord} method.<p>
                 *
                 * <p>This option only applies if this Interactive Grid has a master region defined.</p>
                 * @memberof interactiveGrid
                 * @instance
                 * @type {boolean}
                 * @default true
                 * @example jsinit( Interactive Grid ) false
                 */
                trackParentSelection: true,         // if true set this detail model instance to match the selected master record
                lazyLoading: false,
                filter: {
                    row: true,
                    complex: true,
                    isRequired: false,              // todo, currently not enforced
                    maxRowCount: null,
                    oracleText: false
                },
                appearance: {
                    showNullValue: "",
                    useFixedRowHeight: true
                },
                pagination: {
                    type: SCROLL,
                    showTotalRowCount: false
                },
                /**
                 * <p>Defines various text messages. Most messages come from declarative attributes.
                 * If there is no value given for a declarative attribute the default may come from
                 * an APEX runtime message.</p>
                 *
                 * @memberof interactiveGrid
                 * @instance
                 * @type {object}
                 * @default The default is listed for each property.
                 * @property {string} addRowButton The label for the toolbar add row button. The default
                 *   comes from text message APEX.IG.ADD_ROW.
                 * @property {string} noDataFound The message to display when there are no results. The default
                 *   comes from text message APEX.IG.NO_DATA_FOUND.
                 * @property {string} noParentSelected The message to display when the parent region, in a
                 *   master-detail configuration, does not have exactly one row selected. The default
                 *   comes from text message APEX.IG.SELECT_1_ROW_IN_MASTER.
                 * @property {string} help The first help text to display as part of help dialog. There is no default.
                 * @example <caption>Initialize the interactiveGrid with custom text option specified in the
                 * Interactive Grid region Initialization JavaScript Function attribute.
                 * This customizes the noParentSelected message.</caption>
                 * function( options ) {
                 *     var text = apex.util.getNestedObject( options, "text" );
                 *     text.noParentSelected = "Select a project to see the open tasks.";
                 *     return options;
                 * }
                 */
                text: {
                    noDataFound: getIGMessage( "NO_DATA_FOUND" ),
                    moreDataFound: "",              // todo set later if filter.maxRowCount is set
                    addRowButton: getIGMessage( "ADD_ROW" ),
                    noParentSelected: getIGMessage( "SELECT_1_ROW_IN_MASTER" ),
                    help: ""
                },
                /**
                 * <p>Controls which functionality of the default Interactive Grid toolbar is displayed.
                 * If false or null, there will be no toolbar.</p>
                 * <p>Note: To make further customizations to the toolbar including adding new buttons, please see
                 * {@link interactiveGrid#toolbarData}.
                 *
                 * @memberof interactiveGrid
                 * @instance
                 * @type {Object}
                 * @default
                 * <pre>
                 * {
                 *     actionMenu: true,
                 *     columnSelection: true,
                 *     editing: true,
                 *     reset: true,
                 *     save: true,
                 *     savedReports: true,
                 *     searchField: true
                 * }
                 * </pre>
                 * @property {boolean} actionMenu Hide or show the actions menu.
                 * @property {boolean} columnSelection <p>Hide or show the column selection menu, to allow column-specific searches.</p>
                 * <p>Note: Ignored if toolbar.searchField is <em>false</em>.</p>
                 * @property {boolean} editing <p>Hide or show the edit button.</p><p>Note: This does not prevent the Interactive Grid
                 * from being edited, merely hides the button from the toolbar. If you wish to control whether the
                 * Interactive Grid can be edited at all, please see the {@link interactiveGrid#editable} option.</p>
                 * @property {boolean} reset Hide or show the reset button.
                 * @property {boolean} save Hide or show the save button.
                 * @property {boolean} savedReports Hide or show the select list showing any saved reports.
                 * @property {boolean} searchField <p>Hide or show the search controls (affects the column selection menu, search input field and go button).</p>
                 * @example <caption>Initialize the interactiveGrid with the toolbar option specified in the
                 * Interactive Grid region Initialization JavaScript Function attribute.</caption>
                 * function( options ) {
                 *     var toolbar = apex.util.getNestedObject( options, "toolbar" );
                 *     toolbar.actionMenu = false;
                 *     toolbar.columnSelection = false;
                 *     return options;
                 * }
                 */
                // todo addRow property when hooked up
                toolbar: {
                    reset: true,
                    save: true,
                    columnSelection: true,
                    searchField: true,
                    savedReports: true,
                    editing: true,
                    addRow: true,
                    actionMenu: true
                },
                /**
                 * <p>Controls if the report settings area displays for the Interactive Grid. The report settings area
                 * shows information such as filters, control breaks and highlights applied to the current report.
                 * Pass <em>false</em> to hide the report settings area, however you should not rely on this being
                 * set to <em>true</em> to display report settings, it just needs to evaluate to truthy.</p>
                 * <p>Note: For the case where report settings are displayed, this could change in the future to be an
                 * object, defining greater configurability (such as whether the controls are enabled, or if this should
                 * be collapsed by default), so please bear this in mind if using this option.</p>
                 * @memberof interactiveGrid
                 * @instance
                 * @type {boolean}
                 * @default true
                 * @example jsinit( Interactive Grid ) false
                 */
                reportSettingsArea: {               // if false or null there will be no report settings area
                    disabled: false                 // todo
                },
                /**
                 * <p>Controls which general features of the Interactive Grid are enabled.</p>
                 * <p>Note: This only deals with general features for the Interactive Grid, not features only specific
                 * to certain views. For specific view feature configuration, see the 'views' option object.
                 *
                 * @memberof interactiveGrid
                 * @instance
                 * @type {Object}
                 * @default
                 * <pre>
                 * {
                 *     filter: true,
                 *     flashback: true
                 * }
                 * </pre>
                 * @property {boolean} filter Controls if filtering is available for the Interactive Grid
                 * @property {boolean} flashback Controls if flashback is available for the Interactive Grid
                 * @example <caption>Initialize the interactiveGrid with the features option specified in the
                 * Interactive Grid region Initialization JavaScript Function attribute.</caption>
                 * function( options ) {
                 *     var features = apex.util.getNestedObject( options, "features" );
                 *     features.filter = false;
                 *     features.flashback = false;
                 *     return options;
                 * }
                 */
                features: {
                    saveReport: {
                        publicReportCs: "",
                        isDeveloper: false,
                        authorizations: []
                    },
                    //subscription: true,           // todo
                    download: false,
                    filter: true,
                    //compute: true,                // todo
                    flashback: true
                },
                /**
                 * <p>Controls if the Interactive Grid has an initial selection.</p>
                 * <p>Note: This is only applicable where the current view supports selection, views that do not
                 * support selection will ignore this setting.</p>
                 *
                 * @memberof interactiveGrid
                 * @instance
                 * @type {boolean}
                 * @default true
                 * @example jsinit( Interactive Grid ) false
                 */
                initialSelection: true,
                headingFixedTo: PAGE,
                maxHeight: null,                    // required if headingFixedTo = 'region'
                /**
                 * <p>A loading indicator suitable for the {@link apex.server.plugin}
                 * <code class="prettyprint">loadingIndicator</code> option to be used during the save action.</p>
                 * <p>This overrides the default model loading indicator that shows a progress spinner for any
                 * related visible models that have changes.</p>
                 * <p>This is most useful for master Interactive Grid regions where detail models may not be visible
                 * and therefore won't show progress.</p>
                 *
                 * @member saveLoadingIndicator
                 * @memberof interactiveGrid
                 * @instance
                 * @type { string | jQuery | Element | function }
                 * @default undefined
                 */
                /**
                 * <p>A loading indicator position suitable for the {@link apex.server.plugin}
                 * <code class="prettyprint">loadingIndicatorPosition</code> option to be used during the save action.</p>
                 * <p>This overrides the default model loading indicator that shows a progress spinner for any
                 * related visible models that have changes.</p>
                 * <p>This is most useful for master Interactive Grid regions where detail models may not be visible
                 * and therefore won't show progress.</p>
                 *
                 * @member saveLoadingIndicatorPosition
                 * @memberof interactiveGrid
                 * @instance
                 * @type {string}
                 * @default undefined
                 * @example jsinit( Interactive Grid ) "page"
                 */
                // loadingIndicator - experimental
                // callServer - experimental
                views: {
                    icon: false,
                    detail: false,
                    grid: {
                        disabled: false,
                        // The next two options are an experimental feature to share the model between the grid, icon, and detail views.
                        // Pros: less data to transfer/store, consistent data between views even when edited. Cons: each view can't have distinct sort order
                        // Issues:
                        // - server doesn't know about the shared model so may send the wrong sort order in initial data; workaround use lazy loading
                        // - seems the server changes the current report view based on the request for model data so always starts in grid view
                        // - control break not yet supported by icon and details affects sort order but not a serious issue
                        // - highlights have no effect on icon/details
                        // - icon/detail views don't show the report settings area for settings the view doesn't support NBD
                        // - save button only enabled for grid view
                        // useModelFrom: <viewName>
                        // shareModel: boolean
                        features: {
                            //showHideColumns: true,1
                            reorderColumns: true, // if true columns can be reordered directly in the grid view using headings
                            // and also from the columns dialog. (See bug 26415403). To reorder from columns dialog
                            // but not from grid headings set this to true and defaultGridViewOptions.reorderColumns to false.
                            // todo consider if there should there be an exception for dev mode so developer can set column order in default report.
                            resizeColumns: true, // if true columns can be resized directly in the grid view using headings
                            // todo consider if this should work like reorderColumns and apply to columns dialog.
                            sort: true, // if true columns can be sorted using header controls
                            stretchColumns: null, // if true columns will by default stretch to fit available space if false they will not. The default null uses the report setting
                            //freezeColumns: true,
                            highlight: true, // if true allow setting highlights for this view
                            controlBreak: true,
                            aggregate: true,
                            changeRowsPerPage: true,
                            cellRangeActions: true, // allow copy down, fill, clear. Only applies if editable
                            singleRowView: true,
                            gridView: true,
                            rowSelector: {
                                multiSelect: true,
                                selectAll: true,
                                hideControl: false
                            }
                        }
                    },
                    chart: {
                        disabled: false,
                        features: {
                        }
                    }
                    /*
                     groupby : {
                     disabled: false,
                     features: {
                     showHideColumns: true,
                     changeColumnOrder: true,
                     freezeColumns: true,
                     resizeColumns: true,
                     sort: true,
                     highlight: true,
                     controlBreak: true,
                     aggregate: true,
                     singleRowView: true,
                     changeRowsPerPage: true
                     }
                     },
                     pivot: {
                     disabled: false,
                     features: {
                     showHideColumns: true,
                     changeColumnOrder: true,
                     freezeColumns: true,
                     resizeColumns: true,
                     sort: true,
                     highlight: true,
                     controlBreak: true,
                     aggregate: true,
                     singleRowView: true,
                     changeRowsPerPage: true
                     }
                     }*/
                },
                /**
                 * <p>This option allows passing options not explicitly set by Interactive Grid to the underlying view models.
                 * See {@link apex.model.create} for the supported model options. Some settings may interfere
                 * with the proper functioning of Interactive Grid.</p>
                 * @memberof interactiveGrid
                 * @instance
                 * @type {Object}
                 * @example jsinit( Interactive Grid ) {
                 *         pageSize: 200
                 *     }
                 */
                defaultModelOptions: {},
                // InteractiveGrid doesn't expose all possible view options as declarative attributes
                // The following default view options allow for advanced setting of underlying view options
                // Only options not set from declarative attributes will work. See corresponding widgets for details
                // on what options exist.
                /**
                 * <p>This option allows passing options to the underlying grid widget for grid view.
                 * See {@link grid} for the options it supports.
                 * Interactive Grid may override some of these settings. Some settings may interfere
                 * with the proper functioning of Interactive Grid.</p>
                 * @memberof interactiveGrid
                 * @instance
                 * @type {Object}
                 * @example jsinit( Interactive Grid ) {
                 *         multiple: true,
                 *         allowInsert: false
                 *     }
                 */
                defaultGridViewOptions: {},
                /**
                 * <p>This option allows passing options to the underlying tableModelView widget for icon view.
                 * See {@link tableModelView} for the options it supports.
                 * Interactive Grid may override some of these settings. Some settings may interfere
                 * with the proper functioning of Interactive Grid.</p>
                 * @memberof interactiveGrid
                 * @instance
                 * @type {Object}
                 * @example jsinit( Interactive Grid ) {
                 *         footer: false
                 *     }
                 */
                defaultIconViewOptions: {},
                /**
                 * <p>This option allows passing options to the underlying tableModelView widget for detail view.
                 * See {@link tableModelView} for the options it supports.
                 * Interactive Grid may override some of these settings. Some settings may interfere
                 * with the proper functioning of Interactive Grid.</p>
                 * @memberof interactiveGrid
                 * @instance
                 * @type {Object}
                 * @example jsinit( Interactive Grid ) {
                 *         footer: false
                 *     }
                 */
                defaultDetailViewOptions: {},
                /**
                 * <p>This option allows passing options to the underlying recordView widget for the single row view of grid view.
                 * See {@link recordView} for the options it supports.
                 * Interactive Grid may override some of these settings. Some settings may interfere
                 * with the proper functioning of Interactive Grid.</p>
                 * @memberof interactiveGrid
                 * @instance
                 * @type {Object}
                 * @example jsinit( Interactive Grid ) {
                 *         alwaysEdit: true
                 *     }
                 */
                defaultSingleRowOptions: {},
                /**
                 * This option allows passing unsupported aggregate or chart functions to the widget. The widget
                 * will then not display these in the aggregate or chart dialogs.
                 * @ignore
                 */
                unsupported: {
                    aggregateFunctions: [],
                    chartFunctions: [],
                    sortFunctions: []
                }
            },
            /*
             * Metadata for the current saved reports for the interactive grid.
             * @ignore
             */
            savedReports: [],
            /*
             * The data for the interactive grid.
             * @ignore
             */
            data: null,

            /*
             * Events
             *
             * Note: No JS Doc examples for specifying an event callback on initialization, as this is not supported
             * through APEX (you can only define config options with the Advanced JavaScript Code attribute), and we
             * do not recommend developers creating their own custom Interactive Grid widget instances.
             */
            /**
             * <p>Triggered when the selection state changes and will work for all views that support
             * selection (grid, icon, etc.).</p>
             * <p>Note: This event is also exposed declaratively through Dynamic Actions, see the 'Selection Change'
             * event for Interactive Grid regions. If all you want to do is respond to this event and no other code,
             * you may be able to use Dynamic Actions instead.</p>
             *
             * @event selectionchange
             * @memberof interactiveGrid
             * @instance
             * @property {event} event <code class="prettyprint">jQuery</code> event object.
             * @property {Object} data Additional data for the event.
             * @property {Array} data.selectedRecords An array containing the underlying data model records corresponding
             * to the current selection in the current view. See {@link interactiveGrid#getSelectedRecords} for further information
             * on how to deal with these records.
             * @property {Object} data.model The underlying data model for the current view. See {@link apex.model} for further information.
             * @example <caption>Bind an event listener to the <code class="prettyprint">interactivegridselectionchange</code> event.</caption>
             * // Define in the 'Execute when Page Loads' page attribute
             * $( ".selector" ).on( "interactivegridselectionchange", function( event, data ) {
             *     // add code to fire on selection change
             * } );
             */
            selectionChange: null,
            /**
             * <p>Triggered when the view changes.</p>
             * <p>Note: This event is also exposed declaratively through Dynamic Actions, see the 'View Change'
             * event for Interactive Grid regions. If all you want to do is respond to this event and no other code,
             * you may be able to use Dynamic Actions instead.</p>
             *
             * @event viewchange
             * @memberof interactiveGrid
             * @instance
             * @property {event} event <code class="prettyprint">jQuery</code> event object.
             * @property {Object} data Additional data for the event.
             * @property {String} data.view Identifier for the current view.
             * @property {boolean} data.created If true this indicates the view has just been created (or viewed for the first time).
             * @example <caption>Bind an event listener to the <code class="prettyprint">interactivegridviewchange</code> event.</caption>
             * // Define in the 'Function and Global Variable Declaration' page attribute (not 'Execute when Page Loads'),
             * // in order to be active by the time the Interactive Grid is initialized.
             * $( ".selector" ).on( "interactivegridviewchange", function( event, data ) {
             *     // add code to fire on view change
             * } );
             */
            viewChange: null,
            /**
             * Triggered when the current report is changed.
             *
             * @event reportchange
             * @memberof interactiveGrid
             * @instance
             * @property {event} event <code class="prettyprint">jQuery</code> event object.
             */
            reportChange: null,                     // function ( event, { report: "[report ID]" } )
                                                    // This event is fired when the current report is changed, event is always null, data contains new report ID
            /**
             * Triggered when the current report settings are changed.
             *
             * @event reportsettingschange
             * @memberof interactiveGrid
             * @instance
             * @property {event} event <code class="prettyprint">jQuery</code> event object.
             */
            reportSettingsChange: null,             // function ( event, { report: "[report ID]" } )
                                                    // This event is fired when the current report settings are changed, event is always null, data contains new report ID
            /**
             * Triggered when the model for the given view is created. Handle this event to subscribe to model notifications.
             *
             * @event viewmodelcreate
             * @memberof interactiveGrid
             * @instance
             * @property {event} event <code class="prettyprint">jQuery</code> event object.
             * @property {Object} data Additional data for the event.
             * @property {Object} data.viewId The id of the view for which the model is created.
             * @property {Object} data.model The underlying data model for the current view. See {@link apex.model} for further information.
             */
            viewModelCreate: null,

            /**
             * Triggered after the Interactive Grid data has been saved.
             *
             * @event save
             * @memberof interactiveGrid
             * @instance
             * @property {event} event <code class="prettyprint">jQuery</code> event object.
             * @property {Object} data Additional data for the event.
             * @property {String} data.status If the save was successful then the status property equals "success".
             */
            save: null,   //  Status is success, error (validation errors), or fail (some failure with the ajax call)

            /**
             * Triggered when edit mode is changed (works for both grid view and single row view).
             *
             * @event modechange
             * @memberof interactiveGrid
             * @instance
             * @property {event} event <code class="prettyprint">jQuery</code> event object.
             * @property {Object} data Additional data for the event.
             * @property {boolean} data.editMode The new edit mode.
             */
            modeChange: null
        },

        /*
         * Lifecycle methods
         */
        _create: function () {
            var self = this,
                lIg$ = this.element,
                o = this.options,
                lConfig = o.config,
                lIGCount = $( SEL_IG ).length;

            if ( !o.config ) {
                throw new Error( "Missing required config option." );
            }
            if ( !o.savedReports ) {
                throw new Error( "Missing required saved reports configuration." );
            }

            this.idPrefix = lIg$[ 0 ].id || "ig" + ( lIGCount + 1 );
            this.viewsImpl = {};                    // map from view id to view implementation + state
            this.columnMap = {};                    // map of main IG columns, indexed by ID
            this.baseModelColumns = {};             // base object containing common model column information
            this.primaryKeyColumns = [];            // Array of primary key columns
            this.parentColumnNames = [];            // Array to store parent column names for detail grids
            this.parentItemValues = [];             // Array to store parent item values, used for detail grids
            this.parentModel = "";
            this.parentRecordId = null;
            this.parentObservers = {};              // to track subscriptions to parent models
            this.editMode = false;                  // Is the IG widget currently in edit, or navigation mode
            this.currentSavedReportIdx = "";        // Index to the savedReport array for fast access to current saved report in view
            this.toolbar$ = null;                   // jQuery reference to the IG's main toolbar widget element
            this.currentFilterColumnId = null;      // Optional ID of the current filter column (set either through default filter column, or column selection menu)
            this.searchCaseSensitive = false;       // Controls if a search from the toolbar is case sensitive
            this.ignoreResizeHandler = false;       // Flag to tell the onElementResize handler to ignore a resize
            this.actions = actions.createContext( "InteractiveGrid", lIg$[ 0 ], lConfig.regionStaticId );
            this.reportSettingsSeq = 1;             // Incremented each time report settings change in a way that affects the data
            this.modelReportSettingsSeq = {};       // map model name => report setting sequence in use when data last fetched
            this.isRTL = lIg$.css("direction") === "rtl";

            lIg$.addClass( C_IG );

            // Default widget metadata
            this._defaultIGConfig();
            if ( lConfig.maxHeight ) {
                // set overflow to hidden so that as the report settings area expands it doesn't affect the
                // resize width calculation because of scrollbars
                lIg$.height( lConfig.maxHeight ).css( "overflow", "hidden" );
            }
            if ( lConfig.toolbar && !lConfig.toolbarData ) {
                // make a copy to isolate changes made to one IG from all the others
                lConfig.toolbarData = copyDefaultToolbar();
            }
            this._defaultColumns();
            this._createBaseColumnMap();
            this._defaultSavedReports();
            this._registerIGViews();
            this._renderIG();

            this._addActions( this.actions );
            if ( lConfig.initActions ) {
                lConfig.initActions( this.actions );
            }
            if ( lConfig.toolbar ) {
                this._initToolbar();
                this._updateToolbarElements();
            }

            // init all the views
            this._forEachView( function( viewId, view ) {
                view.init( self );
            });

            this._updateActions();
            this.editableView = null; // to hold the id of the view that is editable
            if ( lConfig.editable ) {
                // determine which is the editable view and ensure there is exactly one
                this._forEachView( function( viewId, view ) {
                    if ( view.supports.edit ) {
                        if ( self.editableView === null ) {
                            self.editableView = viewId;
                        } else {
                            debug.warn("Extra editable view ignored: " + viewId);
                        }
                    }
                });
                if ( this.editableView === null ) {
                    throw new Error("No editable view for editable Interactive Grid");
                }
            }

            // Setup resize handlers before doing the initial resize because fetching data can change the size (see bug 31081916)
            // The resize class indicates that the widget participates in a top down approach to resizing the page
            // see apex.theme.pageResizeInit. If not then setup a listener to respond to size changes.
            if ( $( "#" + lConfig.regionStaticId ).hasClass( "resize" ) ) {
                lIg$.addClass( "resize" )
                    .on( "resize", function() {
                        self.resize();
                    } );
            } else {
                widgetUtil.onElementResize( lIg$[ 0 ], function() {
                    // todo think resize can be expensive should this be throttled? Also if you go slow all the extra
                    // width goes to the last column.

                    // Only do resize if ignore flag is not set
                    if ( !self.ignoreResizeHandler ) {
                        self.resize();
                    }
                } );
            }

            // resize before creating views so that the containers have the correct size before views are created
            this.resize();

            // Register IG with our region interface. Do this before any events are triggered.
            region.create( lConfig.regionStaticId, {
                type: "InteractiveGrid",
                parentRegionId: lConfig.parentRegionStaticId,
                widgetName: "interactiveGrid",
                refresh: function() {
                    self.refresh();
                },
                focus: function() {
                    self.focus();
                },
                widget: function() {
                    return self.element;
                },
                gotoError: function( pErrorContext ) {
                    self.gotoCell( null, pErrorContext.record, pErrorContext.column );
                },
                getSessionState: function( pItemsToSubmit ) {
                    var i, lColumn, lActiveRecordMetadata,
                        lSessionState = {
                            beforeAsync: function() {
                                var lViewImpl = self._currentViewImpl();
                                if ( lViewImpl.supports.edit && lViewImpl.lockActive ) {
                                    lViewImpl.lockActive();
                                }
                            },
                            afterAsync: function() {
                                var lViewImpl = self._currentViewImpl();
                                if ( lViewImpl.supports.edit && lViewImpl.unlockActive ) {
                                    lViewImpl.unlockActive();
                                }
                            }
                        },
                        lPageItems = [],
                        lColumnItems = [],
                        lActiveRecordId = self._currentViewImpl().getActiveRecordId();

                    // Split out column and page items from pItemsToSubmit
                    if ( pItemsToSubmit ) {

                        for ( i = 0; i < pItemsToSubmit.length; i++ ) {

                            lColumn = self._getColumnByStaticId( pItemsToSubmit[ i ] );

                            // Check if item is defined in IG column metadata, if so it's a column item, if not assume it's a page item
                            if ( lColumn ) {

                                // Only if we have an active record, will we need to store column items
                                if ( lActiveRecordId ) {
                                    const multiValueStorage = item( pItemsToSubmit[ i ] ).getMultiValueStorage();
                                    let itemDetails = {
                                        n: lColumn.name,
                                        v: item( pItemsToSubmit[ i ] ).getValue(),
                                    };

                                    if ( multiValueStorage ) {
                                        if ( multiValueStorage.type ) {
                                            itemDetails.t = multiValueStorage.type;
                                        }
                                        if ( multiValueStorage.separator ) {
                                            itemDetails.s = multiValueStorage.separator;
                                        }
                                    }

                                    lColumnItems.push( itemDetails );
                                }

                            } else {
                                lPageItems.push( pItemsToSubmit[ i ] );
                            }
                        }
                    }

                    // If there are no column items, just return the page items
                    lSessionState.pageItems = lPageItems;

                    if ( lColumnItems.length > 0 ) {

                        // If there are column items, get the active record metadata and return pageItems and the region data
                        lActiveRecordMetadata = self._currentViewImpl().model.getRecordMetadata( lActiveRecordId );
                        lSessionState.region = self._defaultAjaxRegionData({
                            setSessionState: {
                                values:        lColumnItems,
                                "protected":   lActiveRecordMetadata.protected,
                                salt:          lActiveRecordMetadata.salt
                            }
                        });
                    }
                    return lSessionState;
                },
                alternateLoadingIndicator: function( pElement ) {
                    var lViewImpl = self._currentViewImpl(),
                        cell$;

                    // TODO consider if this should be part of the view interface. For now we know that grid view is the only one that is editable and needs an alternate loading indicator
                    if ( lViewImpl.internalIdentifier === GRID && !lViewImpl.singleRowMode ) {
                        cell$ = lViewImpl.view$.grid( "getActiveCellFromColumnItem", pElement );
                        if ( cell$ ) {
                            return util.showSpinner( cell$, {
                                spinnerClass: "u-Processing--cellRefresh"
                            });
                        }
                    }
                    return null;
                }

            });

            if ( lConfig.headingFixedTo === PAGE && lConfig.toolbar && $.apex.stickyWidget ) {
                // Create the stickyWidget before rendering the views because they may also have stickyWidgets of their
                // own and it is important that they are handled in dom order.
                $( SEL_IG_HEADER, lIg$ ).stickyWidget({
                    stickToEnd: true,
                    bottom: function() {
                        return lIg$.offset().top + $( SEL_IG_BODY, lIg$ ).outerHeight() - self._currentViewImpl().footerHeight();
                    },
                    toggleWidth: true
                });
            }

            // Setup current view
            this._view( this._view(), {
                initialData: o.data,
                fetchData: lConfig.lazyLoading
            });

            /* Commented out because of the issue with changes made in select lists not being immediately saved to the model,
               and only when you tab away from the select. This results in the save button not being immediately enabled either
               which is confusing.

            lModel = this._currentViewImpl().model;
            lModel.subscribe({
                onChange: function( type, change ) {
                    if ( lModel.isChanged() ) {
                        self.actions.enable( "save" );
                    } else {
                        self.actions.disable( "save" );
                    }

                }
            });
            */

            // Setup the handler for when visibility changes, in the case of a show we issue a resize
            widgetUtil.onVisibilityChange( lIg$[ 0 ], function( pShow ) {
                if ( pShow ) {

                    // In the case of show, we need to update any resize sensors used by the widget, as they will not
                    // work properly if only initialised in a hidden state (with 'display: none').
                    widgetUtil.updateResizeSensors( lIg$[ 0 ] );

                    // Update an arbitrary action associated with the toolbar, to trigger the toolbar's action observer
                    // logic, which removes any possible gaps caused by empty toolbar control groups (bug #27853204)
                    self.actions.update( "search" );

                    self.resize();
                }
            });

            /*
             * Master Detail handling
             */
            if ( lConfig.parentRegionStaticId && lConfig.trackParentSelection ) {
                const lParentIg$ = $( "#" + lConfig.parentRegionStaticId + "_ig" ),
                      lParentViews = lParentIg$.interactiveGrid( "getViews" ),
                      lParentConfigViews = lParentIg$.interactiveGrid( "option", "config.views" );

                this._forEachView( function( viewId, view ) {
                    if ( view.view$ ) {
                        view.setNoDataMessage( lConfig.text.noParentSelected );
                    }
                } );

                // We use a 300ms delay, to try and avoid creation of unnecessary models when someone is navigating quickly through a master record set with the next / previous links.
                // todo this handler may not be cleaned up on destroy but not likely ever destroyed
                lParentIg$.on( "interactivegridselectionchange.ig", util.debounce( function( event, data ) {
                    const masterRecord = data.selectedRecords.length === 1 ? data.selectedRecords[0] : null;
                    self.setMasterRecord( data.model, masterRecord );
                }, 300 ) );

                // todo this handler may not be cleaned up on destroy but not likely ever destroyed
                lParentIg$.on( "interactivegridreportchange.ig", function() {
                    self._subscribeToParentModels( lParentViews, lParentConfigViews );
                } );
                this._subscribeToParentModels( lParentViews, lParentConfigViews );
            }

        },
        _subscribeToParentModels: function( parentViews, parentConfigViews ) {
            const self = this,
                o = this.options,
                lConfig = o.config;

            // Set the master record in case the selected record is deleted, refreshed or reverted
            for ( const [viewId, view] of Object.entries( parentViews ) ) {
                const lSharedView = parentConfigViews[ viewId ].useModelFrom;
                let parentObserver,
                    lViewImpl = view,
                    lViewId = lViewImpl.internalIdentifier;

                // when there is a shared model use the report view settings from the shared model view
                if ( lSharedView && parentConfigViews[ lSharedView ].shareModel ) {
                    lViewImpl = parentViews[ lSharedView ];
                }

                // Make sure model is referenced via get and release while observed and
                // cleaned up, so we can resubscribe when needed.
                parentObserver = this.parentObservers[lViewId];
                if ( parentObserver ) {
                    parentObserver.model.unSubscribe( parentObserver.viewId );
                    model.release( parentObserver.modelName );
                    delete this.parentObservers[lViewId];
                }
                if ( lViewImpl.model ) {
                    let parentObserver = {
                        model: lViewImpl.model,
                        modelName: lViewImpl.modelName
                    };

                    model.get( parentObserver.modelName );
                    parentObserver.viewId = lViewImpl.model.subscribe( {
                        onChange: function( type, change ) {
                            // No need to handle destroy. It should not happen because we don't release the model
                            // while observing it. If the parent IG or parent model is really destroyed then have
                            // much bigger problems.
                            if ( ["delete", "revert", "refreshRecords", "clearChanges"].includes( type ) ) {
                                const parentRecordId = self.parentRecordId;

                                // For some changes of the master model need to set the master record again
                                // even if it didn't change. This is to update actions.
                                // Only if parentRecordId matches
                                if ( ( ["delete", "revert", "refreshRecords"].includes( type ) &&
                                        change.recordIds.includes( parentRecordId ) ) ||
                                    ( type === "clearChanges" && (
                                        change.deletedIds.includes( parentRecordId ) ||
                                        change.changedIds.includes( parentRecordId ) ) ) ) {

                                    // After a save, inserted records have their temp identity field (pk) updated
                                    // which will rename the instance model(s). Let the rename happen and don't
                                    // setMasterRecord because that would create a new model with the same
                                    // name as the one that is going to be renamed too.
                                    if ( type === "refreshRecords" && change?.newIds[parentRecordId] ) {
                                        return;
                                    }

                                    self.setMasterRecord( lViewImpl.model,
                                        self.parentRecordId ? lViewImpl.model.getRecord( parentRecordId ) : null );
                                }
                            }
                            // todo if/when we support editing primary key columns need to handle type "instanceRename"
                        },
                        // Just for debugging to make it easier to identify the observers from _getStats
                        progressView: "ig:" + lConfig.regionStaticId
                    } );
                    this.parentObservers[lViewId] = parentObserver;
                }
            }
        },
        _setOption: function ( key, value ) {
            var instanceChanged = false,
                o = this.options;

            // Note most options should only be set when the instance is created

            if ( key === "config" ) {
                if ( value.modelInstanceId !== o.config.modelInstanceId ) {
                    instanceChanged = true;
                }
                value = $.extend( true, o.config, value );
            }
            this._super( key, value );

            if ( instanceChanged ) {
                this._setModelInstance( o.config.modelInstanceId );
            }
        },
        _destroy: function () { // todo consider should destroying an IG even be possible? If not remove.
            var self = this,
                lConfig = this.options.config;

            // Cleanup element resize handler if there was one. No problem if not.
            widgetUtil.offElementResize( this.element[0] );

            // DOM
            this.element
                .removeClass( C_IG )
                .empty();

            // Actions
            actions.removeContext( "InteractiveGrid", this.element[ 0 ] );

            // Models
            this._destroyAllModels();

            this._forEachView( function( viewId, view ) {
                view.destroy( self );
            });

            region.destroy( lConfig.regionStaticId );

        },

        /*
         * Private methods
         */

        // Determines if the Interactive Grid is currently editable. In order for the IG to be editable, both of the
        //following must be true:
        // 1) The IG configuration must have its 'editable' flag set to true
        // 2) Current report must not have flashback defined, or if it does it must not be enabled
        _isCurrentlyEditable: function() {
            var lConfig = this.options.config,
                lFlashback = this._currentReportSettings().flashback,
                lFlashbackEnabled = lFlashback && lFlashback.isEnabled;

            return ( lConfig.editable && !lFlashbackEnabled );
        },

        _setModelInstance: function( pModelInstanceId, pModel, pParentRecord ) {
            const lConfig = this.options.config,
                instanceChanged = pModelInstanceId !== lConfig.modelInstanceId;

            // it is possible for this to be called when the instance id has not changed but something
            // about the parent record has changed. In this case just the parentItemValues are updated.
            this.parentRecordId = null; // default to null
            lConfig.modelInstanceId = pModelInstanceId;
            if ( lConfig.parentRegionStaticId ) {
                this.parentRecordId = lConfig.modelInstanceId;
                // when a new master row is selected, we store the parent item values information
                this.parentItemValues = [];
                if ( pModel && pParentRecord ) {
                    for ( let i = 0; i < this.parentColumnNames.length; i++ ) {
                        this.parentItemValues.push( {
                            n: this.parentColumnNames[ i ],
                            v: pModel.getValue( pParentRecord, this.parentColumnNames[ i ] )
                        } );
                    }
                }
            }

            // only if the instance has changed
            if ( instanceChanged ) {
                let lFetchData = true,
                    lText = lConfig.text,
                    lNoDataMessage = lText.noDataFound;

                if ( pModelInstanceId === null ) {
                    lNoDataMessage = lText.noParentSelected;
                    lFetchData = false;
                }
                // Loop through all views and set model with new instance ID
                this._forEachView( ( viewId, view ) => {
                    if ( view.view$ ) {
                        view.setNoDataMessage( lNoDataMessage );

                        this._setModel( {
                            viewImpl: view,
                            updateComponent: true,
                            fetchData: lFetchData
                        } );
                    }
                } );
            }
        },

        _setInitialSelection: function( pOffset ) {
            var lCurrentViewImpl, lRecord, lSelRecords,
                lConfig = this.options.config;

            // Set selection state to first data element for view
            lCurrentViewImpl = this._currentViewImpl();

            if ( lConfig.initialSelection && lCurrentViewImpl.selectionEnabled() &&
                ( lConfig.pagination.type !== SCROLL || pOffset === 0 ) ) {
                // If either getSelectedRecords returns a non null, non empty array, set selection
                lSelRecords = lCurrentViewImpl.getSelectedRecords();
                if ( !lSelRecords || lSelRecords.length === 0 ) {

                    lRecord = lCurrentViewImpl.model.recordAt( pOffset ); // get first record if there is one
                    if ( lRecord ) {
                        lCurrentViewImpl.setSelectedRecords( [lRecord] );
                    }
                }
            }
        },
        // views call this when the selection changes
        _selectionChange: function( event ) {
            var lViewImpl = this._currentViewImpl(),
                lRecords = lViewImpl.getSelectedRecords() || [];

            this._updateSelectionActions();

            // Propagate selectionChange for the IG widget
            this._trigger( EVENT_SELECTION_CHANGE, event, {
                selectedRecords: lRecords,
                model: lViewImpl.model
            });
        },
        // views call this when the page changes
        _pageChange: function( ui ) {
            var self = this;
            // wait for any page changing logic related to setting selection to complete
            setTimeout( function() {
                self._setInitialSelection( ui.offset );
            }, 1 );
        },
        _registerIGViews: function() {
            var i, viewDef, viewConfig,
                lConfig = this.options.config,
                count = 0;

            for ( i = 0; i < gRegisteredViews.length; i++ ) {
                viewDef = gRegisteredViews[i];
                viewConfig = lConfig.views[viewDef.internalIdentifier];
                // only register views that are configured and not disabled
                if ( viewConfig && !viewConfig.disabled ) {
                    this._registerView( viewDef );
                    count += 1;
                }
            }
            if ( count === 0 ) {
                debug.error("No views registered.");
            }
        },
        _isViewRegistered: function( pView ) {
            return !!this.viewsImpl[pView];
        },

        /**
         * @interface interactiveGridView
         * @classdesc
         * <p>Defines an Interactive Grid view. The {@link interactiveGrid} widget manages a number of different views
         * of the report data. Each view is implemented by a interactiveGridView interface. The types of views are:<p>
         * <ul>
         *  <li>grid: This is implemented by the {@link grid} widget. It also supports single row view.</li>
         *  <li>chart: This is implementd by JET ojchart.</li>
         *  <li>detail: This is implemented by the {@link tableModelView} widget.</li>
         *  <li>icon: This is implemented by the {@link tableModelView} widget. The main difference between this and detail
         *  view is that this supports selection. The {@link tableModelView#useIconList} option is true.</li>
         * </ul>
         * <p>Each view has a {@link model} to manage its data and a widget to implement the user interface.
         * Most of the properties and methods of the view are for internal use by the {@link interactiveGrid} widget.
         * A few of them are useful in advanced use cases to control or configure interactive grid.
         * </p>
         */

        // Register a 'view' with the Interactive Grid (eg grid, icon, chart etc.)
        _registerView: function( pView ) {
            const self = this,
                lView = $.extend( true,
                /**
                 * @lends interactiveGridView.prototype
                 */
                {
                /**
                 * The title of the view. Used in the UI where a friendly name for the view is needed.
                 * @member title
                 * @memberof interactiveGridView.prototype
                 * @type {string}
                 */
                // title: "", // required
                /**
                 * Unique internal identifier for the view.
                 * @member internalIdentifier
                 * @memberof interactiveGridView.prototype
                 * @type {string}
                 */
                // internalIdentifier: "",         // required: ID for model naming, to get list of views, triggered with event data (eg GRID)
                /**
                 * CSS Classes to be applied to the outer most div element of the view.
                 * @member cssClass
                 * @memberof interactiveGridView.prototype
                 * @type {string}
                 */
                // cssClass: "",                   // required: Container applied to container DIV
                /**
                 * The icon to use for the view. Used in the UI where a the view icon is displayed such as in the toolbar.
                 * @member icon
                 * @memberof interactiveGridView.prototype
                 * @type {string}
                 */
                // icon: "",                       // required: Icon used in view menu/pill buttons
                supports: {
                    edit: false,
                    selection: true,
                    cellSelection: false,
                    highlight: false,
                    controlBreak: false,
                    aggregation: false,
                    singleRowView: false,
                    configurableColumns: false,
                    filter: true,
                    sort: true,
                    changeRowsPerPage: true,
                    download: false,
                    totalRows: true
                    // nothing stops a view from creating additional properties here that could be used to enable/disable view specific actions
                },
                isConfigured: function() {                              // return true if the view is fully configured otherwise false which causes a dialog to be opened
                    return !!self._currentReportSettings().views[ this.internalIdentifier ];        // always check if view is configured in current report
                },
                initDialog: null,                                       // function to initialize the view configuration dialog if the view requires a dialog, must set view.dialog$ to dialog DOM element
                openDialog: function() {                                // function to open the view configuration dialog only if the view requires a dialog

                    // Check if dialog exists, if not initialize it
                    if ( !this.dialog$ && this.initDialog ) {
                        this.initDialog( self );
                    }
                    this.dialog$.dialog( "open" );
                },
                clearModelData: function() { // clear the model to cause the view to get fresh data from the server
                    // there is no point in clearing the model if it is the placeholder detail model where there
                    // is a parent model but no associated parent record
                    if ( !this.model.getOption("parentModel") || this.model.getOption("parentRecordId") ) {
                        // remember the report settings sequence at the time this model was refreshed
                        self.modelReportSettingsSeq[this.model.modelId()] = self.reportSettingsSeq;
                        this.model.clearData();
                    }
                },
                setColumnConfig: function( /*pOptions*/ ) {},           // Views setup their columns, options includes baseModelColumns, igConfig, currentReportSettings, ig reference
                                                                        // Returns nothing but side effect is creation of view properties modelColumns and specialColumns
                init: function( /*pIg*/) {},                            // called just once during widget creation to let the view add actions or update menus/toolbars etc.
                updateActions: function( /*pOptions*/ ) {},             // Lets the view update view specific actions. Options:
                                                                        //   ig, editable, canDelete, canCreate, canEdit
                initView: function( /*pOptions*/ ) {},                  // Called to initialize the view, options includes ig reference, ig element, igConfig, currentReportSettings
                viewChanged: function( /*pActive, pIg, pConfig*/ ) {},  // Called each time the active view changes. Useful to update view specific actions.
                setReportOptions: function( /*pIg, pCurrent, pReportSettings, pChange*/ ) {}, // Called when report settings change so the view has a chance to update itself.
                destroyView: function( /*pIg*/ ) {},                    // Called to destroy the view, event handlers, etc.
                destroy: function( /*pIg*/ ) {},                        // Called just once when the widget is being destroyed to cleanup if needed from anything done in init other than
                                                                        // adding actions.
                selectionEnabled: function() {
                    return this.supports.selection;
                },
                /**
                 * <p>Returns the currently selected model records in the view.
                 * If there is no selection or the view does not support selection then an empty array is returned.</p>
                 * @returns {Array} Array of model records selected.
                 */
                getSelectedRecords: function() { return []; },
                /**
                 * <p>Sets the current selection in the view from the given array of model records.
                 * Only applies if the view supports selection.</p>
                 *
                 * @param {Array} pRecords an array of model records or an array of model record ids as returned by model
                 *     getRecordId. If this is an empty array then the selection is cleared.
                 * @param {boolean} [pFocus] if true the first cell/field/item of the selection is given focus.
                 * @param {boolean} [pNoNotify] if true the selection change event will be suppressed
                 */
                setSelectedRecords: function () {},
                getActiveRecordId: function() { return null; },
                /**
                 * Given an element (such as a button in a grid cell) that is within the visual DOM representation of a
                 * record returns an array containing the corresponding model record.
                 *
                 * @param {Element} pContext An element within visual DOM representation of a record.
                 * @returns {Array} Array of model records for the given context element. The array contains at most one
                 * item. If array is empty if the given context element does not correspond with a record or the view
                 * does not support this method.
                 */
                getContextRecord: function( /*pContext*/ ) { return []; },   // Returns the record (but in an array) for the given context for example a row, cell, or field element.
                gotoCell: null,                                         // function( pRecordId, pColumn )
                selectCells: null,                                      // function( pValue ) only implemented by views that support cellSelection
                getColumns: null,                                       // function() returns columns array only implemented by views that support configurableColumns
                canCopy2Clipboard: function() { return false; },        // only if the view supports selection and uses the apex clipboard manager
                setModelName: function( /*pModelName*/ ) {},
                setEditMode: function( /*pMode*/ ) {},
                finishEditing: null,                                    // only for the view that supports editing
                setNoDataMessage: function( /*pMessage*/ ) {},          // Views may need to update their no data message, for example when no data is displayed in a detail grid with no master selected
                focus: function() {},
                refreshColumns: function() {},
                footerHeight: function() { return 0; },                 // return the height of the footer if any in pixels. Used by the sticky toolbar functionality
                refresh: function() {},                                 // View refresh, this context set to view object
                resize: function() {},                                  // View resize, gets widget config, this context set to view object
                show: function() {
                    this.view$.show();
                },
                hide: function() {
                    this.view$.hide();
                }
            }, pView );

            /**
             * <p>The model used by this view.</p>
             * @member model
             * @memberof interactiveGridView.prototype
             * @type {model}
             */
            lView.model = null;
            /**
             * <p>The id of the model used by this view.</p>
             * @member modelName
             * @memberof interactiveGridView.prototype
             * @type {model.ModelId}
             */
            lView.modelName = null;
            lView.modelColumns = null;
            /**
             * <p>The jQuery object for the alternate {@link recordView} widget that implements Single Row View.
             * This only applies if the view supports single row view and the feature is configured.</p>
             *
             * @member singleRowView$
             * @memberof interactiveGridView.prototype
             * @type {jQuery}
             */
            /**
             * <p>The jQuery object for the view.</p>
             * @member view$
             * @memberof interactiveGridView.prototype
             * @type {jQuery}
             */
            lView.view$ = null; // this indicates not yet initialized
            lView.elementId = lView.internalIdentifier + VIEW_CONTAINER_POSTFIX;

            /**
             * <p>True if the view is currently showing Single Row View and false otherwise.
             * This only applies if the view supports Single Row View (it is undefined otherwise).</p>
             *
             * @member singleRowMode
             * @memberof interactiveGridView.prototype
             * @type {boolean}
             */

            // Add to widget storage, index by view internal ID
            this.viewsImpl[ lView.internalIdentifier ] = lView;
        },

        // iterate over all views calling pDo(viewId, viewImpl)
        _forEachView: function( pDo ) {
            var lViewId, lView;

            for ( lViewId in this.viewsImpl ) {
                if ( hasOwnProperty( this.viewsImpl, lViewId ) ) {
                    lView = this.viewsImpl[ lViewId ];
                    pDo( lViewId, lView );
                }
            }
        },

        _getPaginationConfig: function( pConfig, defaultOptions ) {
            var pagination = {},
                cfgPagination = pConfig.pagination;

            // todo jjs consider single default pagination options so don't have to duplicate for grid, icon, detail...
            if ( defaultOptions && pConfig[ defaultOptions ].pagination ) {
                pagination = $.extend( {}, pConfig[ defaultOptions ].pagination );
            }
            pagination.scroll = cfgPagination.type === NONE || cfgPagination.type === SCROLL;
            // todo consider that these settings should have declarative configuration consistent with all regions that do pagination
            //  loadMore, showPageLinks, maxLinks, showPageSelector, showRange, firstAndLastButtons, hideSinglePage
            // Currently some are defaulted based on other options.
            // Note that showTotalRowCount is really a model setting that views also use to control pagination
            if ( pagination.scroll ) {
                pagination.virtual = ifDefined( pagination.virtual, cfgPagination.showTotalRowCount );
            }
            pagination.showPageLinks = ifDefined( pagination.showPageLinks, cfgPagination.type === SET && cfgPagination.showTotalRowCount );
            pagination.firstAndLastButtons = ifDefined( pagination.firstAndLastButtons, cfgPagination.type === SET && cfgPagination.showTotalRowCount );

            return pagination;
        },

        _renderDialogContent: function( contentFunction ) {
            var renderItem, itemContainer$,
                self = this,
                out = util.htmlBuilder();

            renderItem = function( type, settings ) {
                self._renderColumnItem( out, type, settings );
            };

            out.markup( "<div" )
                .attr( CLASS, "a-GV-columnItemContainer u-vh" )
                .attr( A_HIDDEN, true )
                .markup( ">" );
            contentFunction( renderItem, out );
            out.markup( "</div>" );
            itemContainer$ = $( out.toString() );
            this.element.append( itemContainer$ );
            // attach behavior for any items that may need it
            apex.item.attach( itemContainer$ );

        },

        // extra options:
        //  viewDialog: true,
        //  checkboxColumn: true
        _createDialog: function( pBaseName, pRenderFunction, pOptions ) {
            var fields, field, dialogHelp, dlgProp, dlgId, dialog$, initOrig,
                dialogOptions = $.extend( true, {
                width: 640,
                height: 380,
                classPrefix: C_IG_DIALOG,
                labelAlignment: POSITION_START,
                formCssClasses: C_FORM_LABELS_ABOVE + " " + C_FORM_STRETCH_INPUTS,
                useSplitter: true,
                splitterPosition: 280,
                persistSplitter: pBaseName,
                noDataMessage: getIGMessage( "NO_DATA_FOUND" ), // better than null. todo provide a better message
                modelOptions: {
                    shape: "record",
                    editable: true,
                    onlyMarkForDelete: false,
                    identityField: "id"
                }
            }, pOptions );

            pBaseName += "Dialog";
            dlgProp = pBaseName + "$";
            // fooBarBaz -> foo-bar-baz
            dlgId = this._getId( pBaseName.replace(/[A-Z]/g, function( c ) {
                return "_" + c.toLowerCase();
            } ) );

            dialogHelp = dialogOptions.dialogHelp;
            if ( !dialogHelp ) {
                dialogOptions.dialogHelp = dialogHelp = {};
            }
            dialogHelp.helpTextKey = "APEX.IG.HELP." + ( dialogHelp.helpTextKey || dialogOptions.titleKey );
            dialogHelp.titleKey = dialogHelp.titleKey ? ( "APEX.IG.HELP." + dialogHelp.titleKey ) : ( dialogHelp.helpTextKey + "_TITLE" );
            dialogOptions.titleKey = "APEX.IG." + dialogOptions.titleKey;
            dialogOptions.modelName = dialogOptions.modelName ? this._getId( dialogOptions.modelName ) : dlgId;

            fields = dialogOptions.modelOptions.fields;
            for ( let fieldName in fields ) {
                if ( hasOwnProperty( fields, fieldName ) ) {
                    field = fields[fieldName];

                    if ( field.label ) {
                        field.label = getIGMessage( field.label );
                        if ( !field.heading && dialogOptions.modelOptions.shape === "table" ) {
                            field.heading = field.label;
                        }
                    }
                    if ( field.elementId ) {
                        field.elementId = this._getId( field.elementId );
                    }
                }
            }
            if ( pOptions.checkboxColumn ) {
                // todo someday there should be a better way to handle the enabled checkbox
                initOrig = dialogOptions.init;
                dialogOptions.init = function( pModel, pNav$, pRecordView$ ) {
                    var enabledProp = "isEnabled";

                    pNav$.on( "click", SEL_JS_COL_CHECKBOX, function () {
                        var lCell$ = $(this),
                            lRecord = pNav$.grid( "getRecords", [lCell$.parent()] )[0],
                            lChecked = !pModel.getValue( lRecord, enabledProp );

                        pModel.setValue( lRecord, "enabledClass", lChecked ? C_IS_CHECKED : "" );
                        pModel.setValue( lRecord, "enabledText", lChecked ? getIGMessage( "ENABLED" ) : getIGMessage( "DISABLED" ) );
                        pModel.setValue( lRecord, enabledProp, lChecked );

                    }).on( "keydown", SEL_JS_COL_CHECKBOX, function ( pEvent ) {
                        if ( pEvent.which === $.ui.keyCode.SPACE ) {
                            $( this ).trigger( "click" );
                        }
                    });

                    recordViewHideField( pRecordView$, enabledProp ); // todo jjs seems wrong that this is needed. Would virtual work?
                    initOrig.call( this, pModel, pNav$, pRecordView$ );
                };
                fields.enabledClass = {
                    volatile: true,
                    canHide: false,
                    hidden: true,
                    seq: 0,
                    defaultValue: C_IS_CHECKED
                };
                fields.enabledText = {
                    volatile: true,
                    canHide: false,
                    hidden: true,
                    seq: 0,
                    defaultValue: getIGMessage( "ENABLED" )
                };
            }

            this._renderDialogContent(pRenderFunction);

            dialog$ = $.apex.recordView.createModelEditDialog( dlgId, dialogOptions );
            // Create a member variable for each dialog. The main reason for this is to allow the dialog to be
            // in the top level APEX context (if the IG is in an iframe/APEX dialog page then the dialog can be
            // free of the iframe) There are a number of roadblocks to making this work but it starts with saving
            // the jQuery dialog object, setting the experimental appendToTop option to true, and do
            // self.reportSettingsDialog$.dialog rather than $( this ).dialog. This got things working up to a point
            // the next problem is that the parent page may not have the needed CSS rules for the dialog content
            // even if we can never get the dialogs into the top level context storing the dialog in a member variable
            // isn't a bad idea.
            if ( !pOptions.viewDialog ) {
                // all but the view specific dialogs (e.g. chart) are assigned to a member of the IG widget
                // for example if the base name is "reportSettings" then this.reportSettingsDialog$ is the dialog element.
                this[dlgProp] = dialog$;
            }
            return dialog$;
        },

        // Note: if pSettings contains require: true then isRequired must also be set in the view/model column/field config
        _renderColumnItem: function( out, pType, pSettings ) {

            out.markup( "<div" )
                .attr( CLASS, "a-GV-columnItem" )
                .markup( ">" );

            if ( pSettings.id ) {
                pSettings.id = this._getId( pSettings.id );
            }
            switch( pType ) {
                case CHECKBOX:
                    renderCheckbox( out, pSettings );
                    break;
                case SELECT:
                    renderSelect( out, pSettings );
                    break;
                case TEXT:
                    renderText( out, pSettings );
                    break;
                case TEXTAREA:
                    renderTextarea( out, pSettings );
                    break;
                case RADIOS:
                    renderRadioGroup( out, pSettings );
                    break;
                case COLOR:
                    renderColor( out, pSettings );
                    break;
                case ICON_LIST:
                    renderIconList( out, pSettings );
                    break;
            }

            out.markup( "</div>" );
        },

        _renderReportSettingsDialog: function() {
            var lTypeOptions = [], gOriginalType,
                lAuthorizationOptions = [],
                lConfig = this.options.config,
                lDevMode = lConfig.features.saveReport.isDeveloper,
                self = this;

            // Default reports only available for developers
            if ( lDevMode ) {
                lTypeOptions.push({
                    value: PRIMARY,
                    label: getIGMessage( "PRIMARY" )
                });
                lTypeOptions.push({
                    value: ALTERNATIVE,
                    label: getIGMessage( "ALTERNATIVE" )
                });
            }

            lTypeOptions.push({
                value: PRIVATE,
                label: getIGMessage( "SAVED_REPORT_PRIVATE" )
            });

            // Only add public report option if IG config permits
            if ( lConfig.features.saveReport.publicReportCs ) {
                lTypeOptions.push({
                    value: PUBLIC,
                    label: getIGMessage( "SAVED_REPORT_PUBLIC" )
                });
            }

            loadOptions( lConfig.features.saveReport.authorizations, lAuthorizationOptions, "r", "d", "", getIGMessage( M_SELECT ) );

            this._createDialog( "reportSettings" , function( renderItem ) {
                renderItem( SELECT, {
                    id: "SRD_TYPE",
                    options: lTypeOptions
                });
                renderItem( TEXT, {
                    id: "SRD_NAME"
                });

                renderItem( SELECT, {
                    id: "SRD_AUTHORIZATION",
                    options: lAuthorizationOptions
                });
            }, {
                height: 350,
                titleKey: "REPORT",
                defaultButton: true,
                modelOptions: {
                    fields: {
                        id: {
                            canHide: false,
                            hidden: true,
                            seq: 0
                        },
                        type: {
                            label: "TYPE",
                            elementId: "SRD_TYPE",
                            seq: 10,
                            defaultValue: NAMED
                        },
                        name: {
                            label: "NAME",
                            elementId: "SRD_NAME",
                            seq: 20
                        },
                        authorizationId : {
                            label: "AUTHORIZATION",
                            elementId: "SRD_AUTHORIZATION",
                            seq: 30
                        }
                    }
                },
                load: function( pModel ) {
                    var lTitleKey,
                        lDialog$ = $( this ),
                        lSaveAs = lDialog$.dialog( OPTION, "saveAs" ),
                        lReport = $.extend({
                            id:                 "",
                            type:               "",
                            name:               "",
                            authorizationId:    ""
                        }, self._currentReportSettings() );

                    if ( lSaveAs ) {
                        lTitleKey = "REPORT_SAVE_AS";
                    } else {
                        lTitleKey = "REPORT_EDIT";
                    }
                    lDialog$.dialog( OPTION, "title", getIGMessage( lTitleKey ) );

                    gOriginalType = lReport.type;

                    /* Save As handling:
                     *   - Clear name
                     *   - For developers, always set to 'private'
                     *   - For end users, if either default types (primary or alternative), also set to 'private',
                     *     so if it's already 'private', or 'public' then type remains the same and user can save as with
                     *     a different name.
                     */
                    if ( lSaveAs ) {

                        lReport.name = "";

                        if ( lDevMode ) {
                            lReport.type = PRIVATE;
                        } else {
                            if ( [ PRIMARY, ALTERNATIVE ].includes( lReport.type ) ) {
                                lReport.type = PRIVATE;
                            }
                        }
                    }

                    pModel.setData( lReport );

                    return self._report();

                },
                init: function( pModel, pNav$, pRecordView$ ) {
                    var lType$ = self._getElement( "SRD_TYPE" ),
                        lName$ = self._getElement( "SRD_NAME" ),
                        lAuthorization$ = self._getElement( "SRD_AUTHORIZATION" ),
                        lDialog$ = $( this );

                    function typeChanged() {
                        var lType, lDisabled,
                            lSaveAs = lDialog$.dialog( OPTION, "saveAs" );

                        // If this is a save as and the primary report, let's remove primary as an option, because you
                        // cannot duplicate the primary report
                        lDisabled = lSaveAs && gOriginalType === PRIMARY;
                        lType$.find( "option[value=" + PRIMARY + "]").prop( DISABLED, lDisabled );

                        // Get the value after disable / enable primary, in case the value is primary and to avoid getting null
                        lType = lType$.val();

                        /* Type dependent UI:
                         *   - Primary option disabled when original type is primary, because you can only have 1 primary
                         *   - Name is required for alternative, private and public reports (not for primary)
                         *   - Authorization only for alternative
                         */
                        lType$.prop( DISABLED, false );
                        setFieldsRequired( lName$, true );
                        hideFields( lAuthorization$ );
                        switch( lType ) {
                            case PRIMARY:

                                // Let's only disable the primary if this is the original primary. This may not be the case
                                // if a developer is switching a non-primary report to be the primary, and in which case, they
                                // may want to switch it back.
                                if ( gOriginalType === PRIMARY ) {
                                    lType$.prop( DISABLED, true );
                                }

                                setFieldsRequired( lName$, false );
                                break;
                            case ALTERNATIVE:
                                showFields( lAuthorization$ );
                                break;
                            case PRIVATE:
                                break;
                            case PUBLIC:
                                break;
                        }

                    }

                    lType$.on( EVENT_CHANGE, typeChanged );

                    pRecordView$.on( "apexbeginrecordedit", typeChanged );

                },
                store: function( pModel ) {
                    var lSaveAs = $( this ).dialog( OPTION, "saveAs" ),
                        lReport = pModel.getRecord();

                    /*
                     * Update widget metadata and save in one go
                     */
                    if ( lSaveAs ) {
                        lReport.baseReportId = lReport.id;
                        self.addReport( lReport );
                    } else {
                        self.updateReport( lReport.id, lReport );
                    }

                    self._updateReportSettingsActions();
                }
            });

        },
        _renderDownloadDialog: function() {
            var self = this,
                lEmailPlaceholder = getIGMessage( "MAILADDRESSES_COMMASEP" ),
                lDownloadConfig = this.options.config.features.download,
                lDownloadOptions = [],
                lPrintPageSizeOptions = [],
                lPrintOrientationOptions = [],
                lPrintOrientation = lDownloadConfig && lDownloadConfig.print && lDownloadConfig.print.orientation || "VERTICAL",
                lPrintPageSize = lDownloadConfig && lDownloadConfig.print && lDownloadConfig.print.paperSize || "LETTER",
                lPrintAccessible = lDownloadConfig && lDownloadConfig.print && lDownloadConfig.print.accessible || false,
                lPrintStripRichText = NO,
                lDataOnly = NO,
                lFormat;

            if ( lDownloadConfig && lDownloadConfig.formats.length > 0 ) {
                lFormat = lDownloadConfig.formats[ 0 ];
            }

            if ( lDownloadConfig && lDownloadConfig.formats.indexOf( "CSV" ) !== -1 ) {
                lDownloadOptions.push( {
                    value: "CSV",
                    label: getIGMessage( "FORMAT_CSV" ),
                    iconCssClasses: "icon-ig-dl-xls" } );
            }
            if ( lDownloadConfig && lDownloadConfig.formats.indexOf( "HTML" ) !== -1 ) {
                lDownloadOptions.push( {
                    value: "HTML",
                    label: getIGMessage( "FORMAT_HTML" ),
                    iconCssClasses: "icon-ig-dl-html" } );
            }
            if ( lDownloadConfig && lDownloadConfig.formats.indexOf( "PDF" ) !== -1 ) {
                lDownloadOptions.push( {
                    value: "PDF",
                    label: getIGMessage( "FORMAT_PDF" ),
                    iconCssClasses: "icon-ig-dl-pdf" } );

                lPrintPageSizeOptions = [
                    {
                        value: "LETTER",
                        label: getIGMessage( "PRINT_PAGE_SIZE.LOV.LETTER.D" )
                    },
                    {
                        value: "LEGAL",
                        label: getIGMessage( "PRINT_PAGE_SIZE.LOV.LEGAL.D" )
                    },
                    {
                        value: "TABLOID",
                        label: getIGMessage( "PRINT_PAGE_SIZE.LOV.TABLOID.D" )
                    },
                    {
                        value: "A4",
                        label: getIGMessage( "PRINT_PAGE_SIZE.LOV.A4.D" )
                    },
                    {
                        value: "A3",
                        label: getIGMessage( "PRINT_PAGE_SIZE.LOV.A3.D" )
                    }
                ];

                if ( lDownloadConfig && lDownloadConfig.print && lDownloadConfig.print.paperSize === "CUSTOM" ) {
                    lPrintPageSizeOptions.unshift({
                        value: "CUSTOM",
                        label: getIGMessage( "PRINT_PAGE_SIZE.LOV.CUSTOM.D" )
                    });
                }

                lPrintOrientationOptions = [
                    {
                        value: "VERTICAL",
                        label: getIGMessage( "PRINT_ORIENTATION.LOV.VERTICAL.D" )
                    },
                    {
                        value: "HORIZONTAL",
                        label: getIGMessage( "PRINT_ORIENTATION.LOV.HORIZONTAL.D" )
                    }
                ];
            }

            if ( lDownloadConfig && lDownloadConfig.formats.indexOf( "XLSX" ) !== -1 ) {
                lDownloadOptions.push( {
                    value: "XLSX",
                    label: getIGMessage( "FORMAT_XLSX" ),
                    iconCssClasses: "icon-ig-dl-xls" } );
            }

            this._createDialog( DOWNLOAD, function( renderItem ) {

                renderItem( ICON_LIST, {
                    id: "DL_DOWNLOAD_FORMAT",
                    options: lDownloadOptions
                });

                renderItem( SELECT, { id: "DL_PRINT_PAGE_SIZE",  options: lPrintPageSizeOptions });
                renderItem( SELECT, { id: "DL_PRINT_ORIENTATION",  options: lPrintOrientationOptions });
                renderItem( CHECKBOX, {
                    id: "DL_PRINT_ACCESSIBLE",
                    value: YES,
                    checked: lPrintAccessible
                });

                renderItem( CHECKBOX, {
                    id: "DL_PRINT_STRIP_RICH_TEXT",
                    value: YES
                });

                renderItem( CHECKBOX, {
                    id: "DL_DATA_ONLY",
                    value: YES
                });

                renderItem( CHECKBOX, {
                    id: "DL_SEND_AS_EMAIL",
                    value: NO
                });

                renderItem( TEXT, { id: "DL_EMAIL_TO",  placeholder: lEmailPlaceholder });
                renderItem( TEXT, { id: "DL_EMAIL_CC",  placeholder: lEmailPlaceholder });
                renderItem( TEXT, { id: "DL_EMAIL_BCC", placeholder: lEmailPlaceholder });
                renderItem( TEXT, { id: "DL_EMAIL_SUBJECT" });
                renderItem( TEXTAREA, {
                    id: "DL_EMAIL_BODY"
                } );
            }, {
                height: 500,
                titleKey: "DOWNLOAD",
                modelOptions: {
                    fields: {
                        id: {
                            canHide: false,
                            hidden: true,
                            seq: 0
                        },
                        format: {
                            label: "DOWNLOAD_FORMAT",
                            elementId: "DL_DOWNLOAD_FORMAT",
                            seq: 10
                        },
                        dataOnly: {
                            label: "DOWNLOAD_DATA_ONLY",
                            elementId: "DL_DATA_ONLY",
                            seq: 200
                        },
                        sendOrDownload: {
                            label: "SEND_AS_EMAIL",
                            elementId: "DL_SEND_AS_EMAIL",
                            seq: 200
                        },
                        emailTo: {
                            label: "EMAIL_TO",
                            elementId: "DL_EMAIL_TO",
                            seq: 210
                        },
                        emailCc: {
                            label: "EMAIL_CC",
                            elementId: "DL_EMAIL_CC",
                            seq: 220
                        },
                        emailBcc: {
                            label: "EMAIL_BCC",
                            elementId: "DL_EMAIL_BCC",
                            seq: 230
                        },
                        emailSubject: {
                            label: "EMAIL_SUBJECT",
                            elementId: "DL_EMAIL_SUBJECT",
                            seq: 240
                        },
                        emailBody: {
                            label: "EMAIL_BODY",
                            elementId: "DL_EMAIL_BODY",
                            seq: 250
                        },
                        sendEmail: {
                            canHide: false,
                            hidden: true,
                            seq: 0
                        },
                        printPageSize: {
                            label: "PRINT_PAGE_SIZE.PROMPT",
                            elementId: "DL_PRINT_PAGE_SIZE",
                            seq: 100,
                            fieldColSpan: 6
                        },
                        printOrientation: {
                            label: "PRINT_ORIENTATION.PROMPT",
                            elementId: "DL_PRINT_ORIENTATION",
                            seq: 110,
                            fieldColSpan: 6
                        },
                        printAccessible: {
                            label: "PRINT_ACCESSIBLE.PROMPT",
                            elementId: "DL_PRINT_ACCESSIBLE",
                            seq: 120
                        },
                        printStripRichText: {
                            label: "PRINT_STRIP_RICH_TEXT.PROMPT",
                            elementId: "DL_PRINT_STRIP_RICH_TEXT",
                            seq: 130
                        }
                    }
                },
                load: function( pModel ) {


                    pModel.setData( {
                        id: 0,
                        format: lFormat,
                        dataOnly: lDataOnly,
                        sendEmail: NO,
                        printOrientation: lPrintOrientation,
                        printPageSize: lPrintPageSize,
                        printAccessible: ( lPrintAccessible ) ? YES : NO,
                        printStripRichText: lPrintStripRichText
                    } );
                },
                init: function( pModel, pNav$, pRecordView$ ) {
                    var lFormat$                = self._getElement( "DL_DOWNLOAD_FORMAT" ),
                        lSendOrDownload$        = self._getElement( "DL_SEND_AS_EMAIL" ),
                        lEmailTo$               = self._getElement( "DL_EMAIL_TO" ),
                        lEmailCc$               = self._getElement( "DL_EMAIL_CC" ),
                        lEmailBcc$              = self._getElement( "DL_EMAIL_BCC" ),
                        lEmailSubject$          = self._getElement( "DL_EMAIL_SUBJECT" ),
                        lEmailBody$             = self._getElement( "DL_EMAIL_BODY" ),
                        lPrintPageSize$         = self._getElement( "DL_PRINT_PAGE_SIZE" ),
                        lPrintOrientation$      = self._getElement( "DL_PRINT_ORIENTATION" ),
                        lPrintAccessible$       = self._getElement( "DL_PRINT_ACCESSIBLE" ),
                        lPrintStripRichText$    = self._getElement( "DL_PRINT_STRIP_RICH_TEXT" ),
                        lDataOnly$              = self._getElement( "DL_DATA_ONLY" ),
                        lDialog$                = $( this ),
                        lButtons                = lDialog$.dialog( OPTION, "buttons" ),
                        lSaveButtonNo, i
                    ;

                    function sendOrDownloadChanged() {
                        if ( lSendOrDownload$.prop( CHECKED ) === true )  {
                            showFields( [lEmailTo$,lEmailCc$,lEmailBcc$,lEmailSubject$,lEmailBody$] );
                            setFieldsRequired( [lEmailTo$, lEmailSubject$], true );

                            lButtons[ lSaveButtonNo ].text = getIGMessage( "SEND_AS_EMAIL" );
                            lDialog$.dialog( OPTION, "buttons", lButtons );

                            if ( pRecordView$.recordView( "getRecord" ) !== null ) {
                                pModel.setValue( pRecordView$.recordView( "getRecord" ), "sendEmail", YES);
                            }
                        } else {
                            hideFields( [lEmailTo$,lEmailCc$,lEmailBcc$,lEmailSubject$,lEmailBody$] );
                            setFieldsRequired( [lEmailTo$, lEmailSubject$], false );

                            lButtons[ lSaveButtonNo ].text = getIGMessage( "DOWNLOAD" );
                            lDialog$.dialog( OPTION, "buttons", lButtons );

                            if ( pRecordView$.recordView( "getRecord" ) !== null ) {
                                pModel.setValue( pRecordView$.recordView( "getRecord" ), "sendEmail", NO);
                            }
                        }
                    }

                    for ( i = 0; i < lButtons.length; i++ ) {
                        if ( lButtons[ i ].text === getMessage( "APEX.DIALOG.SAVE" ) ) {
                            lSaveButtonNo = i;
                            break;
                        }
                    }

                    function checkRenderDataOnly() {
                        const lView = self._getCurrentView();
                        let lControlBreak,
                            lAggregate,
                            lHighlight,
                            lColumnGroup;

                        function isFeatureEnabled( pSettings ) {
                            return pSettings.some( ( setting ) => {
                                return ( setting.isEnabled && !setting.isInvalid );
                            });
                        }

                        function isControlBreakEnabled( pColumns ) {
                            return pColumns.some( ( column ) => {
                                return ( column.break && column.break.isEnabled );
                            });
                        }

                        function isColumnGroupEnabled( pColumns ) {
                            return pColumns.some( ( column ) => {
                                return ( self._getColumn( column.columnId ).layout.groupId );
                            });
                        }
                        lAggregate = isFeatureEnabled( lView.aggregations );
                        lHighlight = isFeatureEnabled( lView.highlights );
                        lControlBreak = isControlBreakEnabled( lView.columns );
                        lColumnGroup = isColumnGroupEnabled( lView.columns );

                        return ( lControlBreak || lAggregate || lHighlight || lColumnGroup );

                    }



                    pRecordView$.on( "apexbeginrecordedit", function() {
                        var lVal = lFormat$.val();
                        const lView = self._getCurrentView(),
                            lViewColumns = lView.columns,
                            lRenderStripRichText = lViewColumns.some( ( column ) => {
                                return ( column.isVisible && !self._getColumn( column.columnId ).escape );
                            }),
                            lRenderDataOnly = checkRenderDataOnly(),
                            lConditionalElements = [
                                {
                                    fields: [ lPrintPageSize$, lPrintOrientation$, lPrintAccessible$ ],
                                    active: ( pFormat ) => {
                                        return pFormat === "PDF";
                                    }
                                },
                                {
                                    fields: [ lPrintStripRichText$ ],
                                    active: ( pFormat ) => {
                                        return ( [ 'CSV', 'XLSX' ].includes( pFormat ) && lRenderStripRichText );
                                    }
                                },
                                {
                                    fields: [ lDataOnly$ ],
                                    active: ( pFormat ) => {
                                        return ( pFormat !== "CSV" && lRenderDataOnly );
                                    }
                                }
                            ];
                        initIconList( self._getId( "DL_DOWNLOAD_FORMAT" ), lVal );
                        sendOrDownloadChanged();
                        if ( self.options.config.features.download.email === true ) {
                            lSendOrDownload$.on( EVENT_CHANGE, sendOrDownloadChanged );
                        } else {
                            hideFields( lSendOrDownload$ );
                        }

                        lFormat$.on( EVENT_CHANGE, function () {
                            const lVal = $(this).val();
                            pModel.setValue( pRecordView$.recordView( "getRecord" ), "format", lVal );

                            lConditionalElements.forEach( ( el ) => {
                                if ( el.active( lVal ) ) {
                                    showFields( el.fields );
                                } else {
                                    hideFields( el.fields );
                                }
                            } );
                        } );

                    } );
                },
                store: function( pModel ) {
                    var lRecord = pModel.getRecord(),
                        lDownload;

                    // These values will be remembered when this dialog is reopened
                    lFormat = lRecord.format;
                    lPrintAccessible = lRecord.printAccessible;
                    lPrintOrientation = lRecord.printOrientation;
                    lPrintPageSize = lRecord.printPageSize;
                    lPrintStripRichText = lRecord.printStripRichText;
                    lDataOnly = lRecord.dataOnly;

                    lDownload = {
                        format: lRecord.format,
                        dataOnly: ( lRecord.dataOnly === YES )
                    };

                    if ( lRecord.sendEmail === "Y" ) {
                        lDownload.email = {
                            to: lRecord.emailTo,
                            subject: lRecord.emailSubject
                        };
                        if ( lRecord.emailCc   && lRecord.emailCc   !== "" ) { lDownload.email.cc = lRecord.emailCc; }
                        if ( lRecord.emailBcc  && lRecord.emailBcc  !== "" ) { lDownload.email.bcc = lRecord.emailBcc; }
                        if ( lRecord.emailBody && lRecord.emailBody !== "" ) { lDownload.email.body = lRecord.emailBody; }
                    }

                    if ( lRecord.format === "PDF" ) {
                        lDownload.print = {
                            pageSize: lRecord.printPageSize,
                            orientation: lRecord.printOrientation,
                            accessible: ( lRecord.printAccessible === YES ),
                            stripRichText: ( lRecord.printStripRichText === YES )
                        };
                    }

                    if ( [ "CSV", "XLSX" ].includes( lRecord.format ) ) {
                        lDownload.print = {
                            stripRichText: ( lRecord.printStripRichText === YES )
                        };
                    }

                    self._downloadReport( lDownload );
                }
            });
        },
        _columnFilterModelFields: function( pPrefix ) {
             var lPrefix = pPrefix + "_";
             return {
                 type: {
                     label: lPrefix + "TYPE",
                     elementId: lPrefix + "TYPE",
                     seq: 100,
                     canHide: true,
                     hidden: true,
                     defaultValue: COLUMN
                 },
                 search: {
                    label: "SEARCH",
                    elementId: lPrefix + "SEARCH",
                    seq: 119,
                    canHide: true,
                    hidden: true
                 },
                 columnId: {
                     label: "COLUMN",
                     elementId: lPrefix + "COLUMN",
                     seq: 120,
                     fieldColSpan: 6,
                     canHide: true,
                     hidden: true
                 },
                 operator: {
                     label: "OPERATOR",
                     elementId: lPrefix + "OPERATOR",
                     seq: 130,
                     fieldColSpan: 6,
                     canHide: true,
                     hidden: true,
                     defaultValue: EQUALS
                 },
                 value: {
                     label: "VALUE",
                     elementId: lPrefix + "VALUE",
                     seq: 140,
                     canHide: true,
                     hidden: true
                 },
                 dateRangeValue: {
                     label: "VALUE",
                     elementId: lPrefix + "DATE_RANGE_VALUE",
                     seq: 141,
                     fieldColSpan: 6,
                     canHide: true,
                     hidden: true
                 },
                 dateRangeUnit: {
                     label: "UNIT",
                     elementId: lPrefix + "DATE_RANGE_UNIT",
                     seq: 142,
                     fieldColSpan: 6,
                     canHide: true,
                     hidden: true
                 },
                 isCaseSensitive: {
                     label: "CASE_SENSITIVE",
                     elementId:  lPrefix + "CASE_SENSITIVE",
                     seq: 150,
                     canHide: true,
                     hidden: true,
                     defaultValue: "N"
                 },
                 between: {
                     label: "VALUE",
                     elementId: lPrefix + "BETWEEN",
                     seq: 160,
                     fieldColSpan: 6,
                     canHide: true,
                     hidden: true
                 },
                 and: {
                     label: "AND",
                     elementId: lPrefix + "AND",
                     seq: 170,
                     fieldColSpan: 6,
                     canHide: true,
                     hidden: true
                 },
                 expression: {
                     label: "EXPRESSION",
                     elementId: lPrefix + "EXPRESSION",
                     seq: 180,
                     canHide: true,
                     hidden: true
                 },
                 hiddenValue: {
                     seq: 999,
                     canHide: true,
                     hidden: true
                 },
                 hiddenBetween: {
                     seq: 999,
                     canHide: true,
                     hidden: true
                 },
                 hiddenAnd: {
                     seq: 999,
                     canHide: true,
                     hidden: true
                 }
             };
        },

        _renderSortControls: function( renderItem, pPrefix ) {
            renderItem( SELECT, {
                id:  pPrefix + "DIRECTION",
                required: true,
                options: [
                    {
                        value: ASC,
                        label: getIGMessage( "ASCENDING" )
                    },
                    {
                        value: DESC,
                        label: getIGMessage( "DESCENDING" )
                    }
                ]
            });

            renderItem( SELECT, {
                id:  pPrefix + "NULLS",
                required: true,
                options: [
                    {
                        value: FIRST,
                        label: getIGMessage( "FIRST" )
                    },
                    {
                        value: LAST,
                        label: getIGMessage( "LAST" )
                    }
                ]
            });
        },

        _columnFilterDialogControls: function( renderItem, pPrefix ) {
            var i, lColumn, lColumnOptions = [],
                lColumns = this.options.config.columns,
                lPrefix = pPrefix + "_";

            for ( i = 0; i < lColumns.length; i++ ) {
                lColumn = lColumns[ i ];

                // todo consider also current visible state for the column, would be better to have an opt group for visible / not visible columns.

                if ( ( pPrefix === "FD" && this._isColumnFilterable( lColumn.id ) ) ||
                     ( pPrefix === "HD" && !this._getColumn( lColumn.id ).specialType && !this._getColumn( lColumn.id ).isHidden ) ) {
                    lColumnOptions.push({
                        value: lColumn.id,
                        label: this._getColumnLabel( lColumn.id )
                    });
                }
            }
            renderItem( SELECT, {
                id: lPrefix + "TYPE",
                options: [
                    {
                        value: ROW,
                        label: getIGMessage( "ROW" )
                    },
                    {
                        value: COLUMN,
                        label: getIGMessage( "COLUMN" )
                    }
                    /* ccz: COMPLEX filter type disabled for APEX 5.1
                    {
                        value: COMPLEX,
                        label: getIGMessage( "COMPLEX" )
                    }
                     */
                ]
            });

            renderItem( SELECT, {
                id: lPrefix + "COLUMN" ,
                options: lColumnOptions
            });
            renderItem( SELECT, {
                id: lPrefix + "OPERATOR" ,
                options: []     // operators are dependent on column, so are populated in the column change handler
            });
            renderItem( TEXT, {
                maxChars: 4000,
                id: lPrefix + "VALUE"
            });
            renderItem( TEXT, {
                maxChars: 4000,
                id: lPrefix + "SEARCH"
            });
            renderItem( TEXT, {
                maxChars: 20,
                id: lPrefix + "DATE_RANGE_VALUE"
            });
            renderItem( SELECT, {
                id: lPrefix + "DATE_RANGE_UNIT" ,
                options: [
                    { value: MINUTE, label: getIGMessage( "MINUTES" ) },
                    { value: HOUR,   label: getIGMessage( "HOURS" ) },
                    { value: DAY,    label: getIGMessage( "DAYS" ) },
                    { value: WEEK,   label: getIGMessage( "WEEKS" ) },
                    { value: MONTH,  label: getIGMessage( "MONTHS" ) },
                    { value: YEAR,   label: getIGMessage( "YEARS" ) }
                ]
            });
            renderItem( CHECKBOX, {
                id: lPrefix + "CASE_SENSITIVE" ,
                value: YES
            });
            renderItem( TEXT, {
                maxChars: 100,
                id: lPrefix + "BETWEEN"
            });
            renderItem( TEXT, {
                maxChars: 100,
                id: lPrefix + "AND"
            });

            renderItem( TEXT, {
                maxChars: 40,
                id: lPrefix + "NAME"
            });

            renderItem( TEXTAREA, {
                id: lPrefix + "EXPRESSION",
                toolbar: true
            });

        },
        _columnFilterInitActions: function ( pModel, pNav$, pRecordView$, pPrefix, pBeforeRecordEditFunction ) {
            const self = this,
                  lPrefix = pPrefix + "_",
                  lIsFilterDialog = ( pPrefix === "FD" ),
                  lType$ = self._getElement( lPrefix + "TYPE" ),
                  lColumn$ = self._getElement( lPrefix + "COLUMN" ),
                  lOperator$ = self._getElement( lPrefix + "OPERATOR" ),
                  lValue$ = self._getElement( lPrefix + "VALUE" ),
                  lBetween$ = self._getElement( lPrefix + "BETWEEN" ),
                  lAnd$ = self._getElement( lPrefix + "AND" ),
                  lName$ = self._getElement( lPrefix + "NAME" ),
                  lExpression$ = self._getElement( lPrefix + "EXPRESSION" ),
                  lCaseSensitive$ = self._getElement( lPrefix + "CASE_SENSITIVE" ),
                  lDateRangeValue$ = self._getElement( lPrefix + "DATE_RANGE_VALUE" ),
                  lDateRangeUnit$ = self._getElement( lPrefix + "DATE_RANGE_UNIT" ),
                  lSearch$ = self._getElement( lPrefix + "SEARCH" );
            let lLastColumnID,
                lLastFilterType,
                lCurrentColumn,
                lLastOperator,
                lFilterValues = [];

            // helper function: generate the filter name and update the model
            function generateFilterName() {
                var lName;

                if ( lIsFilterDialog ) {
                    if ( pRecordView$.recordView("getRecord") !== null ) {

                        // The filter name can't be longer than the maxlenght of the input item holding the same name
                        lName = self._shortenString(self._getSettingLabel( FILTER, pRecordView$.recordView("getRecord") ), 37);
                        lName$.val( lName ).trigger( "change" );
                    }
                }
            }

            // helper function: destroy date picker or combobox for an element
            function makePlainTextField( pElement$ ) {
                if ( pElement$.hasClass( C_HASCOMBOBOX ) ) {
                    pElement$.combobox( DESTROY );
                }

                pElement$.removeClass( C_HASNUMBERFIELD );

                if ( pElement$.hasClass( C_HASDATEPICKER ) ) {
                    pElement$.parent().find( "a-date-picker" ).remove();
                    pElement$.show();
                    pElement$.removeClass( C_HASDATEPICKER );
                }

                pElement$.removeAttr( "placeholder" );
                pElement$.removeAttr( "format" );
            }

            // makes "value" a date picker for date-related operators, combobox otherwise,
            function toggleInputTypes() {
                var lValue, lBetween, lAnd, lRecord;

                function addNumberField( pElement$, pValue ) {
                    const formatMask = lCurrentColumn.appearance.formatMask;

                    pElement$.attr( "placeholder", lang.formatMessageNoEscape( M_APEX_SAMPLE_FORMAT_SHORT, ( "" + lCurrentColumn.appearance.formatExample ).trim() ) );
                    pElement$.addClass( C_HASNUMBERFIELD );

                    // if format is NaN set the original value to the item
                    if ( locale.formatNumber( pValue, formatMask ) === "NaN" ) {
                        pElement$.val ( pValue );
                    } else {
                        pElement$.val ( locale.formatNumber( pValue, formatMask ) );
                    }
                }

                function addDatePicker( pSelector, pValue ) {
                    const formatMask = lCurrentColumn.appearance.dateFormatMask,
                          hasTime    = ( formatMask && formatMask.toLowerCase().indexOf( "hh" ) !== -1 );
                    let setValue = pValue;

                    if ( setValue ) {
                        try {
                            setValue = date.format(
                                date.parse( setValue, CANNONICAL_FORMAT ),
                                formatMask
                            );
                        } catch ( e ) {
                            // just set value as it is
                        }
                    }

                    $( "<a-date-picker>" )
                        .attr( "show-time", hasTime )
                        .attr( "autocomplete", "off" )
                        .attr( "format", formatMask )
                        .attr( "id", pSelector.substring(1) + "_dp" )
                        .attr( "value", setValue )
                        .attr( "today-button", "true" )
                        .attr( "change-month", "true" )
                        .attr( "change-year", "true" )
                        .attr( "aria-labelledby", pSelector.substring(1) + "_LABEL" )
                        .attr( "placeholder", lang.formatMessageNoEscape( M_APEX_SAMPLE_FORMAT_SHORT, lCurrentColumn.appearance.formatExample ) )
                        .change( function() {
                            let setString = item( this ).getValue();

                            if ( setString ) {
                                try {
                                    setString = date.format(
                                        date.parse( setString, formatMask ),
                                        CANNONICAL_FORMAT
                                    );
                                } catch ( e ) {
                                    // just set value as it is
                                }
                            }

                            $(pSelector).val( setString );
                            $(pSelector).trigger("change");
                        } )
                        .appendTo( $( pSelector ).parent() );

                    $( pSelector ).hide();
                    $( pSelector ).val( pValue );
                    $( pSelector ).addClass( C_HASDATEPICKER );

                } // addDatePicker

                lRecord = pRecordView$.recordView("getRecord");
                lValue   = pModel.getValue( lRecord, "hiddenValue" );
                lBetween = pModel.getValue( lRecord, "hiddenBetween" );
                lAnd     = pModel.getValue( lRecord, "hiddenAnd" );

                makePlainTextField( lValue$ );
                makePlainTextField( lBetween$ );
                makePlainTextField( lAnd$ );

                $(  "#" + self._getId( lPrefix + "VALUE" ) + "_LABEL ").text( getIGMessage( "VALUE" ) );

                if ( DATE_TIMESTAMP_ARRAY.includes( lCurrentColumn.filter.dataType ) ) {

                    if ( lCurrentColumn.filter.dataType === TIMESTAMP_TZ ) {
                        $(  "#" + self._getId( lPrefix + "VALUE" ) + "_LABEL ").text( getIGMessage( "VALUE_TIMESTAMP_TZ" ) );
                    }

                    addDatePicker( "#" + self._getId( lPrefix + "VALUE" ), lValue );
                    addDatePicker( "#" + self._getId( lPrefix + "BETWEEN" ), lBetween );
                    addDatePicker( "#" + self._getId( lPrefix + "AND" ), lAnd );

                } else if ( lCurrentColumn.filter.dataType === NUMBER ) {

                    addNumberField( lValue$, lValue );
                    addNumberField( lBetween$, lBetween );
                    addNumberField( lAnd$, lAnd );

                } else {
                    lValue$.combobox({
                        "label": getIGMessage( "VALUE" )
                    });
                    lBetween$.combobox({
                        "label": getIGMessage( "VALUE" )
                    });
                    lAnd$.combobox({
                        "label": getIGMessage( "AND" )
                    });
                    lValue$.val ( lValue );
                    lBetween$.val ( lBetween );
                    lAnd$.val ( lAnd );
                }
            } // toggleInputTypes

            // write to model early so values are available for change handlers
            function writeToModel( pField, pValue ) {
                const record = pRecordView$.recordView( "getRecord" );

                if ( record !== null ) {
                    pModel.setValue( record, pField, pValue );
                }
            }

            // read from model
            function readFromModel( pField ) {
                const record = pRecordView$.recordView( "getRecord" );

                if ( record !== null ) {
                    return pModel.getValue( record, pField );
                }
            }

            function typeChanged( pClearValues ) {
                var lType = lType$.val(),
                    lOperatorVal = lOperator$.val();

                hideFields( [lColumn$,lOperator$,lValue$,lBetween$,lAnd$,lExpression$,lCaseSensitive$,lDateRangeValue$,lDateRangeUnit$,lSearch$] );

                if ( lIsFilterDialog ) {
                    hideFields( lName$ );
                }

                writeToModel( "type", lType );

                switch( lType ) {

                    case ROW:
                        showFields( lSearch$ );

                        // disable case-sensitive when Oracle TEXT is enabled; case sensitivity then depends on the Index
                        if ( self.options.config.filter.oracleText ) {
                            lCaseSensitive$.prop( DISABLED, true );
                            hideFields( lCaseSensitive$ );
                        } else {
                            lCaseSensitive$.prop( DISABLED, false );
                            showFields( lCaseSensitive$ );
                        }

                        makePlainTextField( lValue$ );

                        generateFilterName();
                        lLastFilterType = lType; // set last filter type to row that columnChanged really executes when changed back to type "column"
                        break;

                    case COLUMN:
                        showFields( [lColumn$, lOperator$] );

                        // The value control used depends on the operator
                        if ( [ BETWEEN, NOT_BETWEEN ].includes( lOperatorVal ) ) {
                            showFields( [lBetween$, lAnd$] );
                        } else if ( [ IN_THE_LAST, IN_THE_NEXT, NOT_IN_THE_LAST, NOT_IN_THE_NEXT ].includes( lOperatorVal ) ) {
                            showFields( [lDateRangeValue$, lDateRangeUnit$] );
                        } else {
                            showFields( lValue$ );
                        }

                        columnChanged( pClearValues );
                        break;
                    /* ccz: Complex filter type disabled for 5.1
                    case COMPLEX:
                        showFields( [lName$,lExpression$] );

                        if ( pClearValues ) {
                            if ( lIsFilterDialog ) { lName$.val( "" ).change(); }
                            lExpression$.val( "" ).change();
                        }
                        generateFilterName();
                        break;
                    */
                }

            } // typeChanged

            function columnChanged( pClearFilterValues ) {
                const lColumnId   = lColumn$.val(),
                      lFilterType = lType$.val();
                let lRows,
                    i,
                    lOperator,
                    lOperatorBuffer,
                    lOperatorOptions = {};

                // prevent additional roundtrips due to different change event e.g. from the model #35087260
                if ( readFromModel( "columnId" ) && lColumnId === lLastColumnID && lFilterType === lLastFilterType && lOperator$.val() === readFromModel( "operator" ) ) {
                    return;
                }
                lLastColumnID = lColumnId;
                lLastFilterType = lFilterType;

                // Only proceed if the current type is column
                if ( lFilterType === COLUMN && lColumnId ) {

                    lCurrentColumn = self._getColumn( lColumnId );
                    if ( lCurrentColumn.filter.textCase ) {
                        switch ( lCurrentColumn.filter.textCase.toLowerCase() ) {
                            case "upper": lValue$.css(   { "text-transform": "uppercase" } );
                                          lBetween$.css( { "text-transform": "uppercase" } );
                                          lAnd$.css(     { "text-transform": "uppercase" } );
                                          break;
                            case "lower": lValue$.css(   { "text-transform": "lowercase" } );
                                          lBetween$.css( { "text-transform": "lowercase" } );
                                          lAnd$.css(     { "text-transform": "lowercase" } );
                                          break;
                            default:      lValue$.css(   { "text-transform": "none" } );
                                          lBetween$.css( { "text-transform": "none" } );
                                          lAnd$.css(     { "text-transform": "none" } );
                                          break;
                        }
                    }

                    if ( pPrefix === "HD" ) {
                        switch( lCurrentColumn.dataType ) {
                            case VARCHAR2:
                                lOperatorOptions[ EQUALS ]      = getIGMessage( OPERATOR[ EQUALS ] );
                                lOperatorOptions[ NOT_EQUALS ]  = getIGMessage( OPERATOR[ NOT_EQUALS ] );
                                lOperatorOptions[ IS_NULL ]     = getIGMessage( OPERATOR[ IS_NULL ] );
                                lOperatorOptions[ IS_NOT_NULL ] = getIGMessage( OPERATOR[ IS_NOT_NULL ] );
                                lOperatorOptions[ IN ]          = getIGMessage( OPERATOR[ IN ] );
                                lOperatorOptions[ NOT_IN ]      = getIGMessage( OPERATOR[ NOT_IN ] );
                                lOperatorOptions[ CONTAINS ]                   = getIGMessage( OPERATOR[ CONTAINS ] );
                                lOperatorOptions[ DOES_NOT_CONTAIN ]           = getIGMessage( OPERATOR[ DOES_NOT_CONTAIN ] );
                                lOperatorOptions[ STARTS_WITH ]                = getIGMessage( OPERATOR[ STARTS_WITH ] );
                                lOperatorOptions[ DOES_NOT_START_WITH ]        = getIGMessage( OPERATOR[ DOES_NOT_START_WITH ] );
                                lOperatorOptions[ MATCHES_REGULAR_EXPRESSION ] = getIGMessage( OPERATOR[ MATCHES_REGULAR_EXPRESSION ] );
                                break;
                            case NUMBER:
                                lOperatorOptions[ EQUALS ]                 = getIGMessage( OPERATOR[ EQUALS ] );
                                lOperatorOptions[ NOT_EQUALS ]             = getIGMessage( OPERATOR[ NOT_EQUALS ] );
                                lOperatorOptions[ GREATER_THAN ]           = getIGMessage( OPERATOR[ GREATER_THAN ] );
                                lOperatorOptions[ GREATER_THAN_OR_EQUALS ] = getIGMessage( OPERATOR[ GREATER_THAN_OR_EQUALS ] );
                                lOperatorOptions[ LESS_THAN ]              = getIGMessage( OPERATOR[ LESS_THAN ] );
                                lOperatorOptions[ LESS_THAN_OR_EQUALS ]    = getIGMessage( OPERATOR[ LESS_THAN_OR_EQUALS ] );
                                lOperatorOptions[ IS_NULL ]                = getIGMessage( OPERATOR[ IS_NULL ] );
                                lOperatorOptions[ IS_NOT_NULL ]            = getIGMessage( OPERATOR[ IS_NOT_NULL ] );
                                lOperatorOptions[ IN ]                     = getIGMessage( OPERATOR[ IN ] );
                                lOperatorOptions[ NOT_IN ]                 = getIGMessage( OPERATOR[ NOT_IN ] );
                                lOperatorOptions[ BETWEEN ]                = getIGMessage( OPERATOR[ BETWEEN ] );
                                lOperatorOptions[ NOT_BETWEEN ]            = getIGMessage( OPERATOR[ NOT_BETWEEN ] );
                                break;

                            // Date and timestamp column are treated the same
                            case DATE:
                            case TIMESTAMP:
                            case TIMESTAMP_TZ:
                            case TIMESTAMP_LTZ:
                                lOperatorOptions[ EQUALS ]                 = getIGMessage( OPERATOR[ EQUALS ] );
                                lOperatorOptions[ NOT_EQUALS ]             = getIGMessage( OPERATOR[ NOT_EQUALS ] );
                                lOperatorOptions[ GREATER_THAN ]           = getIGMessage( OPERATOR[ GREATER_THAN ] );
                                lOperatorOptions[ GREATER_THAN_OR_EQUALS ] = getIGMessage( OPERATOR[ GREATER_THAN_OR_EQUALS ] );
                                lOperatorOptions[ LESS_THAN ]              = getIGMessage( OPERATOR[ LESS_THAN ] );
                                lOperatorOptions[ LESS_THAN_OR_EQUALS ]    = getIGMessage( OPERATOR[ LESS_THAN_OR_EQUALS ] );
                                lOperatorOptions[ IS_NULL ]                = getIGMessage( OPERATOR[ IS_NULL ] );
                                lOperatorOptions[ IS_NOT_NULL ]            = getIGMessage( OPERATOR[ IS_NOT_NULL ] );

                                // Date range checks depend on the dateRanges allowed by the column, can be all, past or future
                                if ( [ ALL, PAST ].includes( lCurrentColumn.filter.dateRanges ) ) {
                                    lOperatorOptions[ IN_THE_LAST ]        = getIGMessage( OPERATOR[ IN_THE_LAST ] );
                                    lOperatorOptions[ NOT_IN_THE_LAST ]    = getIGMessage( OPERATOR[ NOT_IN_THE_LAST ] );
                                }

                                if ( [ ALL, FUTURE ].includes( lCurrentColumn.filter.dateRanges ) ) {
                                    lOperatorOptions[IN_THE_NEXT]          = getIGMessage( OPERATOR[IN_THE_NEXT]);
                                    lOperatorOptions[NOT_IN_THE_NEXT]      = getIGMessage( OPERATOR[NOT_IN_THE_NEXT]);
                                }

                                lOperatorOptions[ BETWEEN ]                = getIGMessage( OPERATOR[ BETWEEN ] );
                                lOperatorOptions[ NOT_BETWEEN ]            = getIGMessage( OPERATOR[ NOT_BETWEEN ] );
                                break;
                            case CLOB:
                                lOperatorOptions[ IS_NULL ]                = getIGMessage( OPERATOR[ IS_NULL ] );
                                lOperatorOptions[ IS_NOT_NULL ]            = getIGMessage( OPERATOR[ IS_NOT_NULL ] );
                                break;

                         }

                    } else {

                        lCaseSensitive$.prop( DISABLED, true );

                        for ( i = 0; i < lCurrentColumn.filter.operators.length; i++ ) {
                            lOperator = lCurrentColumn.filter.operators[ i ];


                            if ( lOperator.name === "$std$" ) {

                                switch( lCurrentColumn.filter.dataType ) {
                                    case VARCHAR2:
                                        lOperatorOptions[ EQUALS ]      = getIGMessage( OPERATOR[ EQUALS ] );
                                        lOperatorOptions[ NOT_EQUALS ]  = getIGMessage( OPERATOR[ NOT_EQUALS ] );
                                        lOperatorOptions[ IS_NULL ]     = getIGMessage( OPERATOR[ IS_NULL ] );
                                        lOperatorOptions[ IS_NOT_NULL ] = getIGMessage( OPERATOR[ IS_NOT_NULL ] );
                                        lOperatorOptions[ IN ]          = getIGMessage( OPERATOR[ IN ] );
                                        lOperatorOptions[ NOT_IN ]      = getIGMessage( OPERATOR[ NOT_IN ] );
                                        break;
                                    case NUMBER:
                                        lOperatorOptions[ EQUALS ]                 = getIGMessage( OPERATOR[ EQUALS ] );
                                        lOperatorOptions[ NOT_EQUALS ]             = getIGMessage( OPERATOR[ NOT_EQUALS ] );
                                        lOperatorOptions[ GREATER_THAN ]           = getIGMessage( OPERATOR[ GREATER_THAN ] );
                                        lOperatorOptions[ GREATER_THAN_OR_EQUALS ] = getIGMessage( OPERATOR[ GREATER_THAN_OR_EQUALS ] );
                                        lOperatorOptions[ LESS_THAN ]              = getIGMessage( OPERATOR[ LESS_THAN ] );
                                        lOperatorOptions[ LESS_THAN_OR_EQUALS ]    = getIGMessage( OPERATOR[ LESS_THAN_OR_EQUALS ] );
                                        lOperatorOptions[ IS_NULL ]                = getIGMessage( OPERATOR[ IS_NULL ] );
                                        lOperatorOptions[ IS_NOT_NULL ]            = getIGMessage( OPERATOR[ IS_NOT_NULL ] );
                                        lOperatorOptions[ IN ]                     = getIGMessage( OPERATOR[ IN ] );
                                        lOperatorOptions[ NOT_IN ]                 = getIGMessage( OPERATOR[ NOT_IN ] );
                                        lOperatorOptions[ BETWEEN ]                = getIGMessage( OPERATOR[ BETWEEN ] );
                                        lOperatorOptions[ NOT_BETWEEN ]            = getIGMessage( OPERATOR[ NOT_BETWEEN ] );
                                        break;

                                    // Date and timestamp column are treated the same
                                    case DATE:
                                    case TIMESTAMP:
                                    case TIMESTAMP_TZ:
                                    case TIMESTAMP_LTZ:
                                        lOperatorOptions[ EQUALS ]                 = getIGMessage( OPERATOR[ EQUALS ] );
                                        lOperatorOptions[ NOT_EQUALS ]             = getIGMessage( OPERATOR[ NOT_EQUALS ] );
                                        lOperatorOptions[ GREATER_THAN ]           = getIGMessage( OPERATOR[ GREATER_THAN ] );
                                        lOperatorOptions[ GREATER_THAN_OR_EQUALS ] = getIGMessage( OPERATOR[ GREATER_THAN_OR_EQUALS ] );
                                        lOperatorOptions[ LESS_THAN ]              = getIGMessage( OPERATOR[ LESS_THAN ] );
                                        lOperatorOptions[ LESS_THAN_OR_EQUALS ]    = getIGMessage( OPERATOR[ LESS_THAN_OR_EQUALS ] );
                                        lOperatorOptions[ IS_NULL ]                = getIGMessage( OPERATOR[ IS_NULL ] );
                                        lOperatorOptions[ IS_NOT_NULL ]            = getIGMessage( OPERATOR[ IS_NOT_NULL ] );

                                        // Date range checks depend on the dateRanges allowed by the column, can be all, past or future
                                        if ( [ ALL, PAST ].includes( lCurrentColumn.filter.dateRanges ) ) {
                                            lOperatorOptions[ IN_THE_LAST ]        = getIGMessage( OPERATOR[ IN_THE_LAST ] );
                                            lOperatorOptions[ NOT_IN_THE_LAST ]    = getIGMessage( OPERATOR[ NOT_IN_THE_LAST ] );
                                        }

                                        if ( [ ALL, FUTURE ].includes( lCurrentColumn.filter.dateRanges ) ) {
                                            lOperatorOptions[IN_THE_NEXT]          = getIGMessage( OPERATOR[IN_THE_NEXT]);
                                            lOperatorOptions[NOT_IN_THE_NEXT]      = getIGMessage( OPERATOR[NOT_IN_THE_NEXT]);
                                        }

                                        lOperatorOptions[ BETWEEN ]                = getIGMessage( OPERATOR[ BETWEEN ] );
                                        lOperatorOptions[ NOT_BETWEEN ]            = getIGMessage( OPERATOR[ NOT_BETWEEN ] );
                                        break;
                                    case CLOB:
                                        lOperatorOptions[ IS_NULL ]                = getIGMessage( OPERATOR[ IS_NULL ] );
                                        lOperatorOptions[ IS_NOT_NULL ]            = getIGMessage( OPERATOR[ IS_NOT_NULL ] );
                                        break;

                                }

                            } else if ( lOperator.name === "$perform$" ) {

                                // Note: This operator name means all the performance

                                // Performance related operators are only relevant for text based columns
                                if ( [ VARCHAR2, CLOB ].includes( lCurrentColumn.filter.dataType ) ) {

                                    lOperatorOptions[ CONTAINS ]                   = getIGMessage( OPERATOR[ CONTAINS ] );
                                    lOperatorOptions[ DOES_NOT_CONTAIN ]           = getIGMessage( OPERATOR[ DOES_NOT_CONTAIN ] );
                                    lOperatorOptions[ STARTS_WITH ]                = getIGMessage( OPERATOR[ STARTS_WITH ] );
                                    lOperatorOptions[ DOES_NOT_START_WITH ]        = getIGMessage( OPERATOR[ DOES_NOT_START_WITH ] );
                                    lOperatorOptions[ MATCHES_REGULAR_EXPRESSION ] = getIGMessage( OPERATOR[ MATCHES_REGULAR_EXPRESSION ] );

                                    // the default allows case insensitive search, so we show the case sensitive checkbox
                                    if ( lCurrentColumn.filter.textCase && lCurrentColumn.filter.textCase.toUpperCase() === "MIXED" ) {
                                        lCaseSensitive$.prop( DISABLED, false );
                                    }


                                }

                            } else {

                                // case sensitive flag is handled slightly differently, as it's an attribute not an operator
                                if ( lOperator.name === CASE_INSENSITIVE ) {
                                    if ( lCurrentColumn.filter.textCase && lCurrentColumn.filter.textCase.toUpperCase() === "MIXED" ) {
                                        lCaseSensitive$.prop( DISABLED, false );
                                    }

                                } else {

                                    // Here is where non-default operators are added
                                    lOperatorOptions[ lOperator.name ] = getIGMessage( OPERATOR[ lOperator.name ] );
                                }
                            }
                        }
                    }

                    lOperatorBuffer = pModel.getValue( pRecordView$.recordView( "getRecord" ), "operator" );
                    lOperator$.empty();
                    for ( const [pValue, pKey] of Object.entries( lOperatorOptions ) ) {
                        lOperator$.append( $( M_EMPTY_OPTION )
                            .attr( "value", pValue ).text( pKey ) );
                    }
                    if ( lOperatorBuffer && lOperatorBuffer !== null && lOperatorBuffer in lOperatorOptions ) {
                        lOperator$.val( lOperatorBuffer );
                    }

                    if ( lOperator$.val() === null ) {
                        lOperator$.val( EQUALS );
                    }

                    writeToModel( "operator", lOperator$.val() );

                    // set up date pickers or combo boxes
                    toggleInputTypes();

                    // Get new filter values for the value combobox, but only if column has a filter LOV defined
                    // Otherwise it just stays as a plain input field.
                    // When column is of type date then we have LOV support but in the dialog we show date picker and so we don't
                    // need AJAX request for LOV Data
                    if ( self._hasColumnFilterLov( lColumnId ) && self._getColumn( lColumnId ).filter?.dataType !== DATE ) {
                        self._getFilterValues( lColumnId, false, function( pData ) {

                            lFilterValues = [];

                            if ( pData.regions[ 0 ].filterValues ) {
                                lRows = pData.regions[ 0 ].filterValues;

                                for ( i = 0; i < lRows.length; i++ ) {
                                    lFilterValues.push({
                                        label: lRows[ i ],
                                        value: lRows[ i ]
                                    });
                                }
                            }

                            if ( lBetween$.hasClass( C_HASCOMBOBOX ) ) {
                                lBetween$.combobox( OPTION, "source", lFilterValues );
                            }
                            if ( lAnd$.hasClass( C_HASCOMBOBOX ) ) {
                                lAnd$.combobox( OPTION, "source", lFilterValues );
                            }
                            if ( lValue$.hasClass( C_HASCOMBOBOX ) ) {
                                lValue$.combobox( OPTION, "source", lFilterValues );
                            }

                        });
                    } else {
                        // remove only combobox classes
                        if ( lValue$.hasClass( C_HASCOMBOBOX ) ) {
                            lValue$.combobox( DESTROY );
                        }
                        if ( lBetween$.hasClass( C_HASCOMBOBOX ) ) {
                            lBetween$.combobox( DESTROY );
                        }
                        if ( lAnd$.hasClass( C_HASCOMBOBOX ) ) {
                            lAnd$.combobox( DESTROY );
                        }
                    }

                    // save selection to model before other change handlers fire
                    writeToModel( "columnId", lColumnId );

                    if ( pClearFilterValues ) {
                        lValue$.val ( "" ).trigger( "change" );
                        lBetween$.val( "" ).trigger( "change" );
                        lAnd$.val( "" ).trigger( "change" );
                    } else {
                        // set values also to the state when only operator is changed or save is pressed, because internal state is type number unformatted
                        if ( lValue$.hasClass( C_HASNUMBERFIELD ) ) {
                            lValue$.val ( lValue$.val() ).trigger( "change" );
                        }
                        if ( lValue$.hasClass( C_HASNUMBERFIELD ) ) {
                            lBetween$.val( lBetween$.val() ).trigger( "change" );
                        }
                        if ( lValue$.hasClass( C_HASNUMBERFIELD ) ) {
                            lAnd$.val( lAnd$.val() ).trigger( "change" );
                        }
                    }

                    // Operator has no null value so will default to showing the first operator as selected, usually this is equals.
                    // As this may constitute a change from what was previously selected, lets call operatorChanged.
                    operatorChanged();
                }

            } // columnChanged

            function operatorChanged() {
                var lOperator   = lOperator$.val(),
                    lFilterType = lType$.val();

                if ( lFilterType === COLUMN ) {
                    hideFields( [lValue$, lBetween$, lAnd$, lDateRangeValue$, lDateRangeUnit$, lCaseSensitive$] );

                    if ( lOperator !== null ) {
                        if ( !DATE_TIMESTAMP_ARRAY.includes( lCurrentColumn.filter.dataType ) ) {
                            if ( lValue$.hasClass( C_HASCOMBOBOX ) ) {
                                if ( [ IN, NOT_IN ].includes( lOperator ) ) {
                                    lValue$.combobox( OPTION, "multipleValues", true );
                                    lValue$.combobox( OPTION, "multipleValueDelimiter", IN_DELIMITER + " " );
                                    lValue$.prop( "placeholder", lang.formatMessage( "APEX.IG.PLACEHOLDER_INVALUES", IN_DELIMITER ) );
                                } else {
                                    lValue$.combobox( OPTION, "multipleValues", false );
                                    lValue$.prop( "placeholder", "" );
                                }
                            }
                        }

                        if ( [ CONTAINS, DOES_NOT_CONTAIN, MATCHES_REGULAR_EXPRESSION, STARTS_WITH, DOES_NOT_START_WITH ].includes( lOperator ) ) {
                            if ( lCaseSensitive$.prop( DISABLED ) === false ) {
                                showFields( lCaseSensitive$ );
                            }
                        }

                        if ( [ BETWEEN, NOT_BETWEEN ].includes( lLastOperator ) && ![ BETWEEN, NOT_BETWEEN ].includes( lOperator ) ) {
                            lValue$.trigger( EVENT_CHANGE );
                        }

                        if ( ![ BETWEEN, NOT_BETWEEN ].includes( lLastOperator ) && [ BETWEEN, NOT_BETWEEN ].includes( lOperator ) ) {
                            lBetween$.trigger( EVENT_CHANGE ); lAnd$.trigger( EVENT_CHANGE );
                        }

                        if ( [ IN_THE_LAST, IN_THE_NEXT, NOT_IN_THE_LAST, NOT_IN_THE_NEXT ].includes( lLastOperator ) &&
                             ![ IN_THE_LAST, IN_THE_NEXT, NOT_IN_THE_LAST, NOT_IN_THE_NEXT ].includes( lOperator ) ) {
                            lValue$.trigger( EVENT_CHANGE );
                        }

                        // Value control(s) differ on whether this is a between style operator
                        if ( [ BETWEEN, NOT_BETWEEN ].includes( lOperator )  ) {
                            showFields( [lBetween$, lAnd$] );
                        } else if ( [ IN_THE_LAST, IN_THE_NEXT, NOT_IN_THE_LAST, NOT_IN_THE_NEXT ].includes( lOperator ) ) {
                            showFields( [lDateRangeValue$, lDateRangeUnit$] );
                            dateRangeChanged();
                        } else if ( ![ IS_NULL, IS_NOT_NULL ].includes( lOperator ) ) {
                            showFields( lValue$ );
                        }

                    }
                }

                lLastOperator = lOperator;
                generateFilterName();
            } // operatorChanged

            function valueChanged( pItem ) {
                var lElement$ = self._getElement( lPrefix + pItem ),
                    lRecordField,
                    lDateValue, lValue, lDisplayValue;

                if ( pItem === "VALUE" )   { lRecordField = "hiddenValue"; }
                if ( pItem === "SEARCH" )  { lRecordField = "hiddenValue"; }
                if ( pItem === "BETWEEN" ) { lRecordField = "hiddenBetween"; }
                if ( pItem === "AND" )     { lRecordField = "hiddenAnd"; }

                pModel.setValidity( VALID, pRecordView$.recordView( "getRecord" ).id, pItem.toLowerCase() );

                // get date from datepicker or timepicker ...
                if ( lElement$.hasClass( C_HASDATEPICKER ) ) {

                    if ( lElement$.val() === "" ) {
                        lDisplayValue = "";
                        lValue = "";
                    } else {
                        lDateValue = lElement$.parent().find( "a-date-picker" )[0].getNativeValue();

                        if ( lDateValue && !isNaN( lDateValue.getTime() ) ) {
                            lDisplayValue = lElement$.val();
                            lValue        = convertDateToCanonical( lDateValue );
                        } else {
                            if ( lElement$.val() !== "" ) {
                                pModel.setValidity(
                                    ERROR,
                                    pRecordView$.recordView( "getRecord" ).id,
                                    pItem.toLowerCase(),
                                    getIGMessage( "DATE_INVALID_VALUE" )
                                );
                            }
                            lDisplayValue = lElement$.val();
                            lValue        = lElement$.val();
                        }
                    }
                } else {
                    if ( lElement$.css( "text-transform" ) === "uppercase" ) {
                        lValue        = lElement$.val().toUpperCase();
                        lDisplayValue = lElement$.val().toUpperCase();
                    } else if ( lElement$.css( "text-transform" ) === "lowercase" ) {
                        lValue        = lElement$.val().toLowerCase();
                        lDisplayValue = lElement$.val().toLowerCase();
                    } else {
                        lValue        = lElement$.val();
                        lDisplayValue = lElement$.val();
                    }
                }

                writeToModel( lRecordField,        lValue );
                writeToModel( pItem.toLowerCase(), lDisplayValue );
                generateFilterName();
            } // valueChanged

            /* for future use
            function _setupComplexDialog() {
                var lComplexFunctions = [],
                    lComplexColumns   = [];

                $.each( FILTERFUNCS, function( n, v ) {
                    lComplexFunctions.push( {
                        type:   ACTION,
                        action: function () {
                            var t = v.label;
                            if ( v.params > 0 ) {
                                t = t + "( )";
                            }
                            html_ReturnToTextSelection( t , lExpression$.get( 0 ) );
                        },
                        label:  v.label
                    } );
                } );

                $.each( self.options.config.columns, function ( i, o ) {
                    if ( self._isColumnFilterable( o.id ) ) {
                        lComplexColumns.push({
                            type:   ACTION,
                            action: function () {
                                html_ReturnToTextSelection( "\u0022" + self._getColumnLabel( o.id ) + "\u0022", lExpression$.get( 0 ) );
                            },
                            label:  self._getColumnLabel( o.id )
                        });
                    }
                } );

                self._getElement( lPrefix + "EXPRESSION_toolbar" ).toolbar({
                    actionsContext: self.actions,
                    small: true,
                    simple: true,
                    data: [
                        {
                            controls: [
                                {
                                    type:     TB_MENU,
                                    id:       "expression_columns",
                                    labelKey: "APEX.IG.COLUMNS",
                                    icon:     "icon-tree-report-column",
                                    iconOnly: true,
                                    menu:     { items: lComplexColumns }
                                },
                                {
                                    type:     TB_MENU,
                                    id:       "expression_functions_operators",
                                    labelKey: "APEX.IG.FUNCTIONS_AND_OPERATORS",
                                    icon:     "icon-calculator",
                                    iconOnly: true,
                                    menu:     { items: lComplexFunctions }
                                }
                            ]
                        }
                    ]
                });
            } // setupComplexDialog
            */

            function dateRangeChanged() {
                lValue$.val( lDateRangeValue$.val() + FILTER_SEPARATOR + lDateRangeUnit$.val() );
                writeToModel( "value", lValue$.val() );
                writeToModel( "dateRangeValue", lDateRangeValue$.val() );
                writeToModel( "dateRangeUnit", lDateRangeUnit$.val() );
                generateFilterName();
            }

            lDateRangeValue$.on( EVENT_CHANGE, dateRangeChanged );
            lDateRangeUnit$.on( EVENT_CHANGE, dateRangeChanged );

            // ccz: Complex filter type disabled for 5.1
            // _setupComplexDialog();

            lCaseSensitive$.on( EVENT_CHANGE, function () {
                var lCheck = lCaseSensitive$.prop( CHECKED );
                writeToModel( "isCaseSensitive", lCheck );
                lCaseSensitive$.prop( CHECKED, lCheck );
            } );

            // note: when to do this depends on if multiple dialogs will share the same set of column items
            lType$.on( EVENT_CHANGE, function() { typeChanged( true ); } );
            lColumn$.on( EVENT_CHANGE, function() { columnChanged( true ); } );
            lOperator$.on( EVENT_CHANGE, operatorChanged );

            lValue$.on( EVENT_CHANGE, function()   { valueChanged( "VALUE"   ); } );
            lSearch$.on( EVENT_CHANGE, function()  { valueChanged( "SEARCH"  ); } );
            lBetween$.on( EVENT_CHANGE, function() { valueChanged( "BETWEEN" ); } );
            lAnd$.on( EVENT_CHANGE, function()     { valueChanged( "AND"     ); } );

            pRecordView$.on( "apexbeginrecordedit", function() {
                typeChanged();

                if ( typeof pBeforeRecordEditFunction === "function" ) {
                    pBeforeRecordEditFunction();
                }
            });
        },  //renderColumnFilterActions
        _renderFilterDialog: function() {
            var self = this;

            this._createDialog( FILTER, function( renderItem ) {
                // render controls to be shared with highlight (and other) dialogs
                self._columnFilterDialogControls( renderItem, "FD" );
            }, {
                titleKey: "FILTERS",
                dialogHelp: {
                    helpTextKey: "FILTER"
                },
                checkboxColumn: true,
                modelOptions: {
                    shape: "table",
                    fields: $.extend( {
                            id: {
                                canHide: false,
                                hidden: true,
                                seq: 0
                            },
                            isEnabled: dialogCheckboxColumn(),
                            name: {
                                headingAlignment: POSITION_START,
                                label: "NAME",
                                elementId: "FD_NAME",
                                width: 100,
                                seq: 105,
                                escape: false
                            }
                        }, this._columnFilterModelFields( "FD" )
                    )
                },
                load: function( pModel ) {
                    var i, lIsEnabled, lFilter, lBetweenValues, lRangeValues,
                        lData = [],
                        lFilters = self.getFilters(),
                        lFilterId = $( this ).dialog( OPTION, "id" );

                    if ( lFilters.length > 0 ) {
                        for ( i = 0; i < lFilters.length; i++ ) {
                            lFilter = $.extend({
                                id:                "",
                                type:               "",
                                columnId:           "",
                                operator:           "",
                                value:              "",
                                hiddenValue:        "",
                                dateRangeValue:     "",
                                dateRangeUnit:      "",
                                isCaseSensitive:    false,
                                between:            "",
                                and:                "",
                                hiddenBetween:      "",
                                hiddenAnd:          "",
                                isEnabled:          "",
                                enabledClass:       "",
                                enabledText:        "",
                                name:               "",
                                expression:         "",
                                search:             "",
                            }, lFilters[ i ] );

                            lIsEnabled = lFilter.isEnabled;

                            lFilter.enabledClass = ( lIsEnabled ? C_IS_CHECKED : "" );
                            lFilter.enabledText = ( lIsEnabled ? getIGMessage( "ENABLED" ) : getIGMessage( "DISABLED" ) );
                            lFilter.name = self._getSettingLabel( FILTER, lFilter );

                            switch ( lFilter.type ) {
                                case ROW:
                                    lFilter.search = lFilter.value;
                                    lFilter.hiddenValue = lFilter.value;
                                    break;

                                case COLUMN:
                                    lFilter.hiddenValue = lFilter.value;

                                    // If the operator is between or not between, we need to combine that back into the 'value' property
                                    if ( [ BETWEEN, NOT_BETWEEN ].includes( lFilter.operator ) ) {
                                        lBetweenValues         = lFilter.value.split( FILTER_SEPARATOR );

                                        lFilter.hiddenBetween  = lBetweenValues[ 0 ];
                                        lFilter.hiddenAnd      = lBetweenValues[ 1 ];
                                        lFilter.hiddenValue    = "";
                                        lFilter.value          = "";
                                    } else if ( [ IN_THE_LAST, IN_THE_NEXT, NOT_IN_THE_LAST, NOT_IN_THE_NEXT ].includes( lFilter.operator ) ) {
                                        lRangeValues           = lFilter.value.split( FILTER_SEPARATOR );
                                        lFilter.dateRangeValue = lRangeValues[ 0 ];
                                        lFilter.dateRangeUnit  = lRangeValues[ 1 ];
                                        lFilter.hiddenValue    = "";
                                        lFilter.value          = "";
                                    }
                                    if ( [ IN, NOT_IN ].includes( lFilter.operator ) ) {
                                        lFilter.value = lFilter.value.split( "\u0001" ).join( IN_DELIMITER + " " );
                                        lFilter.hiddenValue = lFilter.value;
                                    }
                                    break;

                                /* ccz: Complex filter type disabled for 5.1
                                case COMPLEX:
                                    lFilter.expression = self._convertNamesToLabels( lFilter.expression );
                                    break;
                                 */
                            }

                            lFilter.isCaseSensitive = ( lFilter.isCaseSensitive ? YES : NO );
                            lData.push( lFilter );
                        }

                        pModel.setData( lData );

                    } else {

                        // If there are no existing filters, let's insert a new one into the dialog
                        lFilterId = pModel.insertNewRecord();
                    }

                    return lFilterId;

                },
                init: function( pModel, pNav$, pRecordView$ ) {

                    recordViewHideField( pRecordView$, "hiddenValue" );
                    recordViewHideField( pRecordView$, "hiddenBetween" );
                    recordViewHideField( pRecordView$, "hiddenAnd" );

                    self._columnFilterInitActions( pModel, pNav$, pRecordView$, "FD" );
                },
                validate: function( pModel, valid, error ) {
                    var lIsValid = true,
                        lColumn,
                        lColumnDataType,
                        lColumnFormatMask,
                        lValuesToCheck;

                    pModel.forEach( function ( pRecord, pIndex, pId ) {

                        valid( pId, "between" );
                        valid( pId, "and" );
                        valid( pId, "value" );
                        valid( pId, "expression" );
                        switch ( pRecord.type ) {
                            case COLUMN:
                                lColumn = self._getColumn( pRecord.columnId );
                                lColumnDataType = lColumn.filter.dataType;
                                lColumnFormatMask = lColumn.appearance.formatMask;
                                switch ( pRecord.operator ) {
                                    case BETWEEN:
                                    case NOT_BETWEEN:
                                        if ( !pRecord.hiddenBetween || pRecord.hiddenBetween === "" ) {
                                            lIsValid = false;
                                            error( pId, "between", getIGMessage( M_VALUE_REQUIRED ) );
                                        }
                                        if ( !pRecord.hiddenAnd || pRecord.hiddenAnd === "" ) {
                                            lIsValid = false;
                                            error( pId, "and", getIGMessage( M_VALUE_REQUIRED ) );
                                        }
                                        if ( lIsValid ) {
                                            if ( lColumnDataType === NUMBER ) {
                                                if ( isNaN( locale.toNumber( pRecord.hiddenBetween, lColumnFormatMask ) ) ) {
                                                    lIsValid = false;
                                                    error( pId, "between", getIGMessage( M_INVALID_FORMAT_NUMBER ) );
                                                } else {
                                                    pRecord.hiddenBetween = locale.toNumber( pRecord.hiddenBetween, lColumnFormatMask );
                                                }
                                                if ( isNaN( locale.toNumber( pRecord.hiddenAnd, lColumnFormatMask ) ) ) {
                                                    lIsValid = false;
                                                    error( pId, "and", getIGMessage( M_INVALID_FORMAT_NUMBER ) );
                                                } else {
                                                    pRecord.hiddenAnd = locale.toNumber( pRecord.hiddenAnd, lColumnFormatMask );
                                                }
                                            } else if ( DATE_TIMESTAMP_ARRAY.includes( lColumnDataType ) ) {
                                                if ( pRecord.hiddenBetween !== convertDateToCanonical( convertCanonicalToDate( pRecord.hiddenBetween ) ) ) {
                                                    lIsValid = false;
                                                    error( pId, "between", getIGMessage( M_INVALID_VALUE ) );
                                                }
                                                if ( pRecord.hiddenAnd !== convertDateToCanonical( convertCanonicalToDate( pRecord.hiddenAnd ) ) ) {
                                                    lIsValid = false;
                                                    error( pId, "and", getIGMessage( M_INVALID_VALUE ) );
                                                }
                                            }
                                        }
                                        break;

                                    case IN_THE_LAST:
                                    case IN_THE_NEXT:
                                    case NOT_IN_THE_LAST:
                                    case NOT_IN_THE_NEXT:
                                        if ( !pRecord.dateRangeValue || pRecord.dateRangeValue === "" ) {
                                            lIsValid = false;
                                            error( pId, "dateRangeValue", getIGMessage( M_VALUE_REQUIRED ) );
                                        }
                                        if ( !pRecord.dateRangeUnit || pRecord.dateRangeUnit === "" ) {
                                            lIsValid = false;
                                            error( pId, "dateRangeUnit", getIGMessage( M_VALUE_REQUIRED ) );
                                        }
                                        break;
                                    case EQUALS:
                                    case NOT_EQUALS:
                                    case GREATER_THAN:
                                    case GREATER_THAN_OR_EQUALS:
                                    case LESS_THAN:
                                    case LESS_THAN_OR_EQUALS:
                                    case IN:
                                    case NOT_IN:
                                        if ( !pRecord.hiddenValue || pRecord.hiddenValue === "" ) {
                                            lIsValid = false;
                                            error( pId, "value", getIGMessage( M_VALUE_REQUIRED ) );
                                        } else {
                                            if ( lColumnDataType === NUMBER ) {

                                                // in case of IN and NOT_IN each value in this list must be validated
                                                lValuesToCheck = [IN, NOT_IN].includes( pRecord.operator ) ?
                                                    pRecord.hiddenValue.split( IN_DELIMITER ) :
                                                    [ pRecord.hiddenValue ];

                                                // if at least one value in the array is invalid, show error
                                                if( lValuesToCheck.some( val => isNaN( locale.toNumber( val, lColumnFormatMask ) ) ) ) {
                                                    lIsValid = false;
                                                    error( pId, "value", getIGMessage( M_INVALID_FORMAT_NUMBER ) );
                                                } else {
                                                    // ensure we send back the values without a format mask
                                                    pRecord.hiddenValue = lValuesToCheck.map( val => locale.toNumber( val, lColumnFormatMask ) ).join( IN_DELIMITER );
                                                }
                                            } else if ( DATE_TIMESTAMP_ARRAY.includes( lColumnDataType ) ) {
                                                if ( pRecord.hiddenValue !== convertDateToCanonical( convertCanonicalToDate( pRecord.hiddenValue ) ) ) {
                                                    lIsValid = false;
                                                    error( pId, "value", getIGMessage( "DATE_INVALID_VALUE" ) );
                                                }
                                            }
                                        }
                                        break;
                                }
                                break;
                            case ROW:
                                if ( !pRecord.hiddenValue || pRecord.hiddenValue === "" ) {
                                    lIsValid = false;
                                    error( pId, "search", getIGMessage( M_VALUE_REQUIRED ) );
                                }
                                break;
                            /* ccz: Complex filter type disabled for 5.1
                            case COMPLEX:
                                if ( !pRecord.expression || pRecord.expression === "" ) {
                                    lIsValid = false;
                                    error( pId, "expression", getIGMessage( M_VALUE_REQUIRED ) );
                                }
                                if ( !pRecord.name || pRecord.name === "" ) {
                                    lIsValid = false;
                                    error( pId, "name", getIGMessage( M_VALUE_REQUIRED ) );
                                }
                                break;
                             */
                        }
                    });

                    return lIsValid;
                },
                store: function( pModel ) {
                    self._ifNoChangesDo( function() {
                        var i, lChange, lFilter,
                            lReportOptions = {
                                save: false,
                                // refreshData doesn't apply when save is false
                                skipNoChangesCheck: true
                            },
                            lChanges = pModel.getChanges();

                        for ( i = 0; i < lChanges.length; i++ ) {
                            lChange = lChanges[ i ];
                            lFilter = lChange.record;

                            // Remove dialog specific properties added in load
                            delete lFilter.enabledClass;
                            delete lFilter.enabledText;

                            switch( lFilter.type ) {
                                case ROW:

                                    lFilter.value = lFilter.search;

                                    // For ROW based filters, set the 'value' property as entered into the 'Search' control
                                    delete lFilter.expression;
                                    delete lFilter.columnId;
                                    delete lFilter.and;
                                    delete lFilter.between;
                                    delete lFilter.hiddenAnd;
                                    delete lFilter.hiddenBetween;
                                    delete lFilter.dateRangeValue;
                                    delete lFilter.dateRangeUnit;
                                    delete lFilter.operator;
                                    delete lFilter.search;

                                    // Transform isCaseSensitive flag back to boolean
                                    lFilter.isCaseSensitive = ( lFilter.isCaseSensitive === YES );

                                    break;
                                case COLUMN:

                                    // If the operator is between or not between, we need to combine that back into the 'value' property
                                    lFilter.value = lFilter.hiddenValue;

                                    if ( [ BETWEEN, NOT_BETWEEN ].includes( lFilter.operator ) ) {
                                        lFilter.value = lFilter.hiddenBetween + FILTER_SEPARATOR + lFilter.hiddenAnd;
                                    } else if ( [ IN_THE_LAST, IN_THE_NEXT, NOT_IN_THE_LAST, NOT_IN_THE_NEXT ].includes( lFilter.operator ) ) {
                                        lFilter.value = lFilter.dateRangeValue + FILTER_SEPARATOR + lFilter.dateRangeUnit;
                                    }

                                    if ( [ IN, NOT_IN ].includes( lFilter.operator ) ) {
                                        lFilter.value = trimArrayValues( lFilter.value.split( IN_DELIMITER ) ).join( "\u0001" );
                                    }
                                    delete lFilter.dateRangeValue;
                                    delete lFilter.dateRangeUnit;
                                    delete lFilter.between;
                                    delete lFilter.and;

                                    delete lFilter.hiddenValue;
                                    delete lFilter.hiddenBetween;
                                    delete lFilter.hiddenAnd;
                                    delete lFilter.expression;
                                    delete lFilter.search;

                                    // Transform isCaseSensitive flag back to boolean
                                    lFilter.isCaseSensitive = ( lFilter.isCaseSensitive === YES );

                                    break;
                                /* ccz: Complex filter type disabled for 5.1
                                case COMPLEX:

                                    lFilter.expression = self._convertLabelsToNames( lFilter.expression );

                                    delete lFilter.hiddenValue;
                                    delete lFilter.hiddenAnd;
                                    delete lFilter.hiddenBetween;
                                    delete lFilter.value;
                                    delete lFilter.and;
                                    delete lFilter.between;
                                    delete lFilter.dateRangeValue;
                                    delete lFilter.dateRangeUnit;
                                    delete lFilter.operator;
                                    delete lFilter.isCaseSensitive;
                                    delete lFilter.columnId;
                                    break;
                                 */
                            }

                            // Update IG widget metadata
                            if ( lChange.inserted ) {

                                // For new filters, the model adds its own ID value, which we don't want, so delete it
                                delete lFilter.id;
                                lFilter.columnType = COLUMN;    //todo hard-coded

                                self.addFilter( lFilter, lReportOptions );
                            } else if ( lChange.updated ) {
                                lFilter.columnType = COLUMN;    //todo hard-coded

                                self.updateFilter( lFilter.id, lFilter, lReportOptions );
                            } else if ( lChange.deleted ) {

                                self.deleteFilter( lFilter.id, lReportOptions );
                            }

                        }

                        self._setReportSettings({
                            refreshModel: true
                        });

                    });
                }
            });
        },
        _renderColumnsDialog: function() {
            var self = this,
                lColumnGroups = [],
                lFeatures = this.options.config.views[this._view()].features;

            function loadModel( pVisibleFilter ) {
                var i, lColumn, lViewColumn, lDialogColumn, lDialogColumns = [],
                    lViewColumns = self._getCurrentView().columns;

                function _grepColumn( e ) {
                    return e.id === lViewColumn.columnId && ( !e.specialType || e.specialType === "actions" ) && !e.isHidden;
                }

                for ( i = 0; i < lViewColumns.length; i++ ) {
                    lViewColumn = lViewColumns[ i ];

                    // find matching report column for view column
                    // change this analog to setSorts
                    lColumn = $.grep(
                        self.options.config.columns,
                        _grepColumn
                    );
                    if ( lColumn.length > 0 ) { lColumn = lColumn[ 0 ]; } else { lColumn = false; }

                    if ( lColumn ) {

                        lDialogColumn = {
                            id:            lViewColumn.columnId,
                            columnId:      lViewColumn.columnId,
                            columnWidth:   lViewColumn.width,
                            seq:           ( i + 1 ), // compute new sequence on model load to avoid duplicate values
                            heading:       lColumn.specialType === "actions" ? getIGMessage( "ROW_ACTIONS" ) : lColumn.heading.label,
                            groupId:       lColumn.layout.groupId,
                            canHide:       lColumn.features.canHide,
                            isVisible:     lViewColumn.isVisible,
                            enabledClass:  ( lViewColumn.isVisible ? C_IS_CHECKED : "" )
                        };

                        if ( pVisibleFilter === "ALL" ) {
                            lDialogColumns.push( lDialogColumn );
                        } else if ( pVisibleFilter === "VISIBLE" && lViewColumn.isVisible ) {
                            lDialogColumns.push( lDialogColumn );
                        } else if ( pVisibleFilter === "INVISIBLE" && !lDialogColumn.isVisible ) {
                            lDialogColumns.push( lDialogColumn );
                        }
                    }

                }
                return lDialogColumns;
            }

            loadOptions( this.options.config.columnGroups, lColumnGroups, "id", "label", "", "" );

            this._createDialog( COLUMNS, function( renderItem ) {
                renderItem( TEXT, {
                    id: "CD_COLUMN_WIDTH"
                });
                renderItem( SELECT, {
                    id: "CD_COLUMN_GROUP",
                    options: lColumnGroups
                });
            }, {
                titleKey: "COLUMNS",
                modelOptions: {
                    shape: "table",
                    canDelete: false,
                    canAdd: false,
                    sequenceField: lFeatures.reorderColumns ? "seq" : null,
                    fields: {
                        id: {
                            canHide: false,
                            hidden: true,
                            seq: 0
                        },
                        isVisible: dialogCheckboxColumn( "VISIBLE" ),
                        heading: {
                            label: "COLUMN",
                            headingAlignment: POSITION_START,
                            elementId: "CD_COLUMN_HEADING",
                            canHide: true,
                            hidden: false,
                            width: 100,
                            seq: 20
                        },
                        groupId: {
                            label: "GROUP",
                            elementId: "CD_COLUMN_GROUP",
                            canHide: true,
                            escape: false,
                            volatile: true,
                            hidden: true,
                            seq: 30
                        },
                        columnWidth: {
                            label: "WIDTH",
                            elementId: "CD_COLUMN_WIDTH",
                            canHide: true,
                            hidden: true,
                            seq: 40
                        },
                        columnId: {
                            label: "COLUMN",
                            elementId: "CD_COLUMN",
                            seq: 0, // todo jjs this doesn't seem right
                            canHide: true,
                            hidden: true
                        },
                        seq: {
                            canHide: false,
                            hidden: true,
                            seq: 0
                        },
                        canHide: {
                            canHide: false,
                            hidden: true,
                            seq: 0
                        },
                        // todo missing enabled text?
                        enabledClass: {
                            volatile: true,
                            canHide: false,
                            hidden: true,
                            defaultValue: C_IS_CHECKED,
                            seq: 0
                        }
                    }
                },
                load: function( pModel ) {
                    pModel.setData( loadModel ( this.showColumns ) );
                },
                init: function( pModel, pNav$, pRecordView$, pToolBar$ ) {
                    var dialog = this,
                        lToolbarControls;

                    if ( !this.showColumns ) { this.showColumns = "ALL"; }

                    lToolbarControls = [
                        {
                            type: TB_BUTTON,
                            iconOnly: true,
                            icon: "icon-up-chevron",
                            action: "move-up"
                        },
                        {
                            type: TB_BUTTON,
                            iconOnly: true,
                            icon: "icon-down-chevron",
                            action: "move-down"
                        },
                        {
                            type: TB_MENU,
                            labelKey: "APEX.IG.SHOW",
                            icon: "icon-ig-select-cols",
                            iconOnly: true,
                            menu: {
                                items: [
                                    {
                                        type: RADIO_GROUP,
                                        action: "show-columns"
                                    }
                                ]
                            }
                        }
                    ];
                    actions.findContext("ModelEditDialog", this).add( [
                        {
                            name: "show-columns",
                            choices: [
                                 {label: getIGMessage( "ALL" ),       value: "ALL"},
                                 {label: getIGMessage( "VISIBLE" ),   value: "VISIBLE"},
                                 {label: getIGMessage( "INVISIBLE" ), value: "INVISIBLE"}
                            ],
                            get: function() {
                                 return dialog.showColumns;
                            },
                            set: function( pValue ) {
                                dialog.showColumns = pValue;
                                // todo fix this can cause rapid flashing switching between two different records
                                var lModelData = loadModel ( pValue );
                                    pModel.setData( lModelData );
                            }
                        }]);

                    pToolBar$.toolbar( {
                        data: [
                            {
                                align: "start",
                                controls: lToolbarControls
                            }
                        ]
                    } );

                    // this checkbox is a little different from the others so can't factor out
                    pNav$.on( "click", SEL_JS_COL_CHECKBOX, function() {
                        var lChecked, lRecord,
                            lCell$ = $( this );

                        lRecord = pNav$.grid( "getRecords", [ lCell$.parent() ] )[ 0 ];
                        if ( pModel.getValue( lRecord, "canHide" ) ) {
                            lChecked = !pModel.getValue( lRecord, "isVisible" );

                            pModel.setValue( lRecord, "enabledClass", lChecked ? C_IS_CHECKED : "" );
                            pModel.setValue( lRecord, "isVisible", lChecked );
                        }

                    } ).on( "keydown", SEL_JS_COL_CHECKBOX, function( pEvent ) {
                        if ( pEvent.which === $.ui.keyCode.SPACE ) {
                            $( this ).trigger( "click" );
                        }
                    });

                    pRecordView$.on( "apexbeginrecordedit", function () {
                        if ( pModel.getValue( pRecordView$.recordView("getRecord"), "groupId" ) === "" ) {
                            recordViewHideField( pRecordView$, "groupId" );
                        } else {
                            recordViewShowField( pRecordView$, "groupId" );
                        }
                    });

                    recordViewHideField( pRecordView$, "columnId" );
                    recordViewHideField( pRecordView$, "isVisible" );
                },
                validate: function( pModel, valid, error ) {
                    var lColumnWidth,
                        lValid       = true;

                    pModel.forEach( function ( pRecord, pIndex, pId ) {
                        lColumnWidth = pRecord.columnWidth;
                        if ( lColumnWidth === null || lColumnWidth === "" || !isNaN( parseInt( lColumnWidth, 10 ) ) ) {
                            valid( pId, "columnWidth" );
                        } else {
                            error( pId, "columnWidth", getIGMessage( M_INVALID_VALUE ) );
                            lValid = false;
                        }
                    });

                    return lValid;
                },
                store: function( pModel ) {
                    var i, j, lColumnWidth, lLastFrozenCol = false,
                        lViewColumns = self._getCurrentView().columns,
                        lGridColumns = self._currentViewImpl().getColumns(); // columns dialog only shown when view supports configurableColumns

                    // find frozen column to maintain frozen state even when column sequence
                    // is being completely changed for all columns.
                    lViewColumns.sort( function( a, b ) { return a.seq - b.seq; });
                    for ( i = 0; i < lViewColumns.length; i++ ) {
                        if ( lViewColumns[ i ].isFrozen === true ) { lLastFrozenCol = i + 1; }
                    }

                    pModel.forEach( function ( pRecord ) {

                        lColumnWidth = pRecord.columnWidth;
                        if ( !lColumnWidth || lColumnWidth === null) { lColumnWidth = ""; }
                        lColumnWidth = lColumnWidth.toString();

                        self._currentViewColumn( pRecord.columnId, {
                            isVisible: pRecord.isVisible,
                            width:     parseInt( lColumnWidth, 10 ),
                            seq:       parseFloat( pRecord.seq )
                        } );

                    });

                    lViewColumns.sort( function( a, b ) { return a.seq - b.seq; });

                    for ( i = 0; i < lViewColumns.length; i++ ) {
                        for ( j = 0; j < lGridColumns.length; j++ ) {
                            if ( lViewColumns[ i ].columnId === lGridColumns[ j ].id  ) {
                                 lGridColumns[ j ].seq = lViewColumns[ i ].seq;
                                 if ( lGridColumns[ j ].canHide ) {
                                     lGridColumns[ j ].hidden = !lViewColumns[ i ].isVisible;
                                 }
                                 lGridColumns[ j ].width = lViewColumns[ i ].width;
                                 // make "seq" column strictly sequential
                                 lViewColumns[ i ].seq = i;

                                 if ( lLastFrozenCol !== false && i >= lLastFrozenCol ) {
                                     lViewColumns[ i ].isFrozen = false;
                                     lGridColumns[ j ].frozen = false;
                                 }
                                 if ( lLastFrozenCol !== false && i < lLastFrozenCol ) {
                                     lViewColumns[ i ].isFrozen = true;
                                     lGridColumns[ j ].frozen = true;
                                 }
                                 break;
                            }
                        }
                    }

                    self._setReportSettings( {
                        refreshView: true,
                        refreshColumns: true
                    } );

                }
            });
        },
        _renderHighlightDialog: function() {
            var self = this,
                lColumns = this.options.config.columns,
                lColumn, lColumnOptions = [], i;

            for ( i = 0; i < lColumns.length; i++ ) {
                lColumn = lColumns[ i ];

                if ( !this._getColumn( lColumn.id ).specialType && !this._getColumn( lColumn.id ).isHidden ) {
                    lColumnOptions.push({
                        value: lColumn.id,
                        label: this._getColumnLabel( lColumn.id )
                    });
                }
            }

            this._createDialog( HIGHLIGHT, function( renderItem ) {
                // render controls to be shared with highlight (and other) dialogs
                self._columnFilterDialogControls( renderItem, "HD" );

                renderItem( COLOR, {
                    id: "HD_BACKGROUND_COLOR",
                    size: "7",
                    colors: B_COLORS,
                    contrastItem: self._getId( "HD_TEXT_COLOR" ),
                    itemLabel: getIGMessage( "BACKGROUND_COLOR" )
                });
                renderItem( COLOR, {
                    id: "HD_TEXT_COLOR",
                    size: "7",
                    colors: F_COLORS,
                    contrastItem: self._getId( "HD_BACKGROUND_COLOR" ),
                    itemLabel: getIGMessage( "TEXT_COLOR" )
                });
                renderItem( SELECT, {
                    id: "HD_HIGHLIGHT_TYPE",
                    options: [ {
                        value: ROW,
                        label: getIGMessage( "ROW" )
                    }, {
                        value: COLUMN,
                        label: getIGMessage( "COLUMN" )
                    }]
                });
                renderItem( SELECT, {
                    id: "HD_HIGHLIGHT_COLUMN",
                    options: lColumnOptions
                });
            }, {
                width: 800,
                height: 580,
                titleKey: "HIGHLIGHT",
                checkboxColumn: true,
                modelOptions: {
                    shape: "table",
                    sequenceField: "seq",
                    fields: $.extend( {
                            id: {
                                canHide: false,
                                hidden: true,
                                seq: 0
                            },
                            seq: {
                                canHide: false,
                                hidden: true,
                                seq: 0
                            },
                            isEnabled: dialogCheckboxColumn(),
                            name: {
                                label: "NAME",
                                headingAlignment: POSITION_START,
                                elementId: "HD_NAME",
                                isRequired: true,
                                width: 100,
                                seq: 15
                            },
                            highlightType: {
                                label: "HIGHLIGHT",
                                elementId: "HD_HIGHLIGHT_TYPE",
                                seq: 20,
                                canHide: true,
                                hidden: true
                            },
                            highlightColumnId: {
                                label: "COLUMN",
                                elementId: "HD_HIGHLIGHT_COLUMN",
                                seq: 30,
                                canHide: true,
                                hidden: true
                            },
                            backgroundColor: {
                                label: "BACKGROUND_COLOR",
                                elementId: "HD_BACKGROUND_COLOR",
                                seq: 40,
                                isRequired: true,
                                // get first quickpick as default background color
                                defaultValue: B_COLORS.split(";")[0],
                                fieldColSpan: 4,
                                canHide: true,
                                hidden: true
                            },
                            textColor: {
                                label: "TEXT_COLOR",
                                elementId: "HD_TEXT_COLOR",
                                seq: 50,
                                fieldColSpan: 4,
                                canHide: true,
                                hidden: true
                            },
                            preview: {
                                label: "COLOR_PREVIEW",
                                cellTemplate: `<div id='${this._getId("HD_PREVIEW")}' class='a-IG-highlightPreview'>Aa</div><div class='a-IG-highlightContrast'>${apex.widget.util.colorPicker.renderColorContrastReport( this._getId("HD_CONTRAST") )}</div>`,
                                seq: 60,
                                fieldColSpan: 4,
                                canHide: true,
                                hidden: true
                            }
                        }, this._columnFilterModelFields( "HD" )
                    )
                },
                load: function( pModel ) {
                    var i, lBetweenValues, lRangeValues,
                        lData = [], lRecord,
                        lHighlights = self.getHighlights(), lHighlight,
                        lHighlightId = $( this ).dialog( OPTION, "id" );

                    if ( lHighlights.length > 0 ) {
                        for ( i = 0; i < lHighlights.length; i++ ) {
                            lHighlight = lHighlights[ i ];
                            lRecord = {
                                id:                  lHighlight.id,
                                seq:                 lHighlight.seq,
                                name:                lHighlight.name,
                                highlightType:       lHighlight.type,
                                highlightColumnType: lHighlight.columnType,
                                highlightColumnId:   lHighlight.columnId,
                                backgroundColor:     lHighlight.backgroundColor,
                                textColor:           lHighlight.textColor,
                                type:                lHighlight.condition.type,
                                columnType:          lHighlight.condition.columnType,
                                columnId:            lHighlight.condition.columnId,
                                operator:            lHighlight.condition.operator,
                                isCaseSensitive:     ( lHighlight.condition.isCaseSensitive ? YES : NO ),
                                value:               lHighlight.condition.value,
                                expression:          lHighlight.condition.expression,
                                isEnabled:           lHighlight.isEnabled,
                                hiddenValue:         "",
                                dateRangeValue:      "",
                                dateRangeUnit:       "",
                                between:             "",
                                and:                 "",
                                hiddenBetween:       "",
                                hiddenAnd:           "",
                                enabledClass:        "",
                                enabledText:         "",
                                search:              "",
                            };

                            lRecord.enabledClass = ( lRecord.isEnabled ? C_IS_CHECKED : "" );
                            lRecord.enabledText = ( lRecord.isEnabled ? getIGMessage( "ENABLED" ) : getIGMessage( "DISABLED" ) );
                            lRecord.hiddenValue = lRecord.value;

                            switch ( lRecord.type ) {
                                case ROW:
                                    lRecord.search = lRecord.value;
                                    break;
                                case COLUMN:
                                    if ( [ BETWEEN, NOT_BETWEEN ].includes( lRecord.operator ) ) {
                                        lBetweenValues         = lRecord.value.split( FILTER_SEPARATOR );

                                        lRecord.hiddenBetween  = lBetweenValues[ 0 ];
                                        lRecord.hiddenAnd      = lBetweenValues[ 1 ];
                                        lRecord.hiddenValue    = "";
                                        lRecord.value          = "";
                                    } else if ( [ IN_THE_LAST, IN_THE_NEXT, NOT_IN_THE_LAST, NOT_IN_THE_NEXT ].includes( lRecord.operator ) ) {
                                        lRangeValues           = lRecord.value.split( FILTER_SEPARATOR );
                                        lRecord.dateRangeValue = lRangeValues[ 0 ];
                                        lRecord.dateRangeUnit  = lRangeValues[ 1 ];
                                        lRecord.hiddenValue    = "";
                                        lRecord.value          = "";
                                    }

                                    if ( [ IN, NOT_IN ].includes( lRecord.operator ) ) {
                                        lRecord.value = lRecord.value.split( "\u0001" ).join( IN_DELIMITER + " " );
                                        lRecord.hiddenValue = lRecord.value;
                                    }
                                    break;
                                /* ccz: Complex filter type disabled for 5.1
                                case COMPLEX:
                                    lRecord.expression = self._convertNamesToLabels( lRecord.expression );
                                    break;
                                 */

                            }

                            lData.push( lRecord );
                        }

                        pModel.setData( lData );

                    } else {

                        // If there are no existing highlights, let's insert a new one into the dialog
                        lHighlightId = pModel.insertNewRecord();
                    }

                    return lHighlightId;

                },
                init: function( pModel, pNav$, pRecordView$ ) {
                    let lHighlightType$   = self._getElement( "HD_HIGHLIGHT_TYPE" ),
                        lHighlightColumn$ = self._getElement( "HD_HIGHLIGHT_COLUMN" ),
                        lTextColor$       = self._getElement( "HD_TEXT_COLOR" ),
                        lBackgroundColor$ = self._getElement( "HD_BACKGROUND_COLOR" ),
                        lName$            = self._getElement( "HD_NAME" );

                    lTextColor$.add( lBackgroundColor$ ).on( "change", () => {
                        let contrast,
                            preview$ = self._getElement( "HD_PREVIEW" ),
                            contrast$ = self._getElement( "HD_CONTRAST" ),
                            backgroundColor = lBackgroundColor$[0].getValue() || "#ffffff", // can these defaults be picked up from variables?
                            textColorItem = lTextColor$[0],
                            textColor = textColorItem.getValue() || "#000000";

                        preview$.css( {
                            backgroundColor: backgroundColor,
                            color: textColor
                        } );
                        contrast = textColorItem.contrastWith( backgroundColor );
                        apex.widget.util.colorPicker.updateColorContrastReport( contrast$, contrast );
                    } );

                    function highlightTypeChanged() {
                        var lHighlightType = lHighlightType$.val(),
                            lItem = item( lHighlightColumn$.attr( "id" ) );

                        if ( lHighlightType === ROW ) {
                            hideFields( lHighlightColumn$ );
                        } else {
                            showFields( lHighlightColumn$ );
                            // make sure the model has an initial value
                            lItem.setValue( lItem.getValue() );
                        }
                    }

                    function beforeRecordEdit() {
                        highlightTypeChanged();
                        // have the preview refresh upon new value load
                        lTextColor$.trigger( EVENT_CHANGE );
                        lBackgroundColor$.trigger( EVENT_CHANGE );
                    }

                    setFieldsRequired( lName$, true );

                    recordViewHideField( pRecordView$, "hiddenValue" );
                    recordViewHideField( pRecordView$, "hiddenBetween" );
                    recordViewHideField( pRecordView$, "hiddenAnd" );

                    self._columnFilterInitActions( pModel, pNav$, pRecordView$, "HD", beforeRecordEdit );

                    lHighlightType$.on( EVENT_CHANGE, highlightTypeChanged );

                },
                validate: function( pModel, valid, error ) {
                    var lIsValid   = true;

                    pModel.forEach( function ( pRecord, pIndex, pId ) {
                        let lColumn,
                            lColumnDataType,
                            lColumnFormatMask;

                        valid( pId, "between" );
                        valid( pId, "and" );
                        valid( pId, "value" );
                        valid( pId, "expression" );
                        valid( pId, "name" );
                        valid( pId, "textColor" );
                        valid( pId, "backgroundColor" );

                        // ccz this check must be kept, since it's only an error, when neither background nor foreground color are defined.
                        if ( pRecord.textColor === "" && pRecord.backgroundColor === "" ) {
                            error( pId, "textColor", getIGMessage( M_VALUE_REQUIRED ) );
                            error( pId, "backgroundColor", getIGMessage( M_VALUE_REQUIRED ) );
                        }

                        if ( pRecord.name === "" ) {
                            error( pId, "name", getIGMessage( M_VALUE_REQUIRED ) );
                        }

                        switch ( pRecord.type ) {
                            case COLUMN:
                                lColumn = self._getColumn( pRecord.columnId );
                                lColumnDataType = lColumn.filter.dataType;
                                lColumnFormatMask = lColumn.appearance.formatMask;
                                switch ( pRecord.operator ) {
                                    case BETWEEN:
                                    case NOT_BETWEEN:
                                        if ( !pRecord.hiddenBetween || pRecord.hiddenBetween === "" ) {
                                            lIsValid = false;
                                            error( pId, "between", getIGMessage( M_VALUE_REQUIRED ) );
                                        }
                                        if ( !pRecord.hiddenAnd || pRecord.hiddenAnd === "" ) {
                                            lIsValid = false;
                                            error( pId, "and", getIGMessage( M_VALUE_REQUIRED ) );
                                        }
                                        if ( lIsValid ) {
                                            if ( lColumnDataType === NUMBER ) {
                                                if ( isNaN( locale.toNumber( pRecord.hiddenBetween, lColumnFormatMask ) ) ) {
                                                    lIsValid = false;
                                                    error( pId, "between", getIGMessage( M_INVALID_FORMAT_NUMBER ) );
                                                } else {
                                                    pRecord.hiddenBetween = locale.toNumber( pRecord.hiddenBetween, lColumnFormatMask );
                                                }
                                                if ( isNaN( locale.toNumber( pRecord.hiddenAnd, lColumnFormatMask ) ) ) {
                                                    lIsValid = false;
                                                    error( pId, "and", getIGMessage( M_INVALID_FORMAT_NUMBER ) );
                                                } else {
                                                    pRecord.hiddenAnd = locale.toNumber( pRecord.hiddenAnd, lColumnFormatMask );
                                                }
                                            } else if ( DATE_TIMESTAMP_ARRAY.includes( lColumnDataType ) ) {
                                                if ( pRecord.hiddenBetween !== convertDateToCanonical( convertCanonicalToDate( pRecord.hiddenBetween ) ) ) {
                                                    lIsValid = false;
                                                    error( pId, "between", getIGMessage( M_INVALID_VALUE ) );
                                                }
                                                if ( pRecord.hiddenAnd !== convertDateToCanonical( convertCanonicalToDate( pRecord.hiddenAnd ) ) ) {
                                                    lIsValid = false;
                                                    error( pId, "and", getIGMessage( M_INVALID_VALUE ) );
                                                }
                                            }
                                        }
                                        break;

                                    case IN_THE_LAST:
                                    case IN_THE_NEXT:
                                    case NOT_IN_THE_LAST:
                                    case NOT_IN_THE_NEXT:
                                        if ( !pRecord.dateRangeValue || pRecord.dateRangeValue === "" ) {
                                            lIsValid = false;
                                            error( pId, "dateRangeValue", getIGMessage( M_VALUE_REQUIRED ) );
                                        }
                                        if ( !pRecord.dateRangeUnit || pRecord.dateRangeUnit === "" ) {
                                            lIsValid = false;
                                            error( pId, "dateRangeUnit", getIGMessage( M_VALUE_REQUIRED ) );
                                        }
                                        break;

                                    case EQUALS:
                                    case NOT_EQUALS:
                                    case GREATER_THAN:
                                    case GREATER_THAN_OR_EQUALS:
                                    case LESS_THAN:
                                    case LESS_THAN_OR_EQUALS:
                                    case IN:
                                    case NOT_IN:
                                        if ( !pRecord.hiddenValue || pRecord.hiddenValue === "" ) {
                                            lIsValid = false;
                                            error( pId, "value", getIGMessage( M_VALUE_REQUIRED ) );
                                        } else {
                                            if ( lColumnDataType === NUMBER ) {
                                                if( isNaN( locale.toNumber( pRecord.hiddenValue, lColumnFormatMask ) ) ) {
                                                    lIsValid = false;
                                                    error( pId, "value", getIGMessage( M_INVALID_FORMAT_NUMBER ) );
                                                }
                                            } else if ( DATE_TIMESTAMP_ARRAY.includes( lColumnDataType ) ) {
                                                if ( pRecord.hiddenValue !== convertDateToCanonical( convertCanonicalToDate( pRecord.hiddenValue ) ) ) {
                                                    lIsValid = false;
                                                    error( pId, "value", getIGMessage( "DATE_INVALID_VALUE" ) );
                                                }
                                            }
                                        }
                                        break;
                                }
                                break;
                            case ROW:
                                if ( !pRecord.hiddenValue || pRecord.hiddenValue === "" ) {
                                    lIsValid = false;
                                    error( pId, "search", getIGMessage( M_VALUE_REQUIRED ) );
                                }
                                break;
                            /* ccz: Complex filter type disabled for 5.1
                            case COMPLEX:
                                if ( !pRecord.expression || pRecord.expression === "" ) {
                                    lIsValid = false;
                                    error( pId, "expression", getIGMessage( M_VALUE_REQUIRED ) );
                                }
                                if ( !pRecord.name || pRecord.name === "" ) {
                                    lIsValid = false;
                                    error( pId, "name", getIGMessage( M_VALUE_REQUIRED ) );
                                }
                                break;
                            */
                        }
                    });
                    return lIsValid;
                },
                store: function( pModel ) {
                    self._ifNoChangesDo( function() {
                        var i, lChange, lHighlight, lRecord, lCondition,
                            lReportOptions = {
                                save: false,
                                // refreshData doesn't apply when save is false
                                skipNoChangesCheck: true
                            },
                            lChanges = pModel.getChanges();

                        for ( i = 0; i < lChanges.length; i++ ) {
                            lChange = lChanges[i];
                            lRecord = lChange.record;

                            // Remove dialog specific properties added in load

                            switch ( lRecord.type ) {
                                case ROW:
                                    lCondition = {
                                        type: ROW,
                                        value: lRecord.search,
                                        isCaseSensitive: ( lRecord.isCaseSensitive === YES )
                                    };

                                    break;
                                case COLUMN:
                                    lCondition = {
                                        type: COLUMN,
                                        value: lRecord.hiddenValue,
                                        columnId: lRecord.columnId,
                                        operator: lRecord.operator,
                                        columnType: COLUMN,                //todo hard-coded
                                        isCaseSensitive: ( lRecord.isCaseSensitive === YES )
                                    };

                                    if ( [IN, NOT_IN].includes( lRecord.operator ) ) {
                                        lCondition.value = trimArrayValues( lRecord.hiddenValue.split( IN_DELIMITER ) ).join( "\u0001" );
                                    }

                                    if ( [BETWEEN, NOT_BETWEEN].includes( lRecord.operator ) ) {
                                        lCondition.value = lRecord.hiddenBetween + FILTER_SEPARATOR + lRecord.hiddenAnd;
                                    } else if ( [IN_THE_LAST, IN_THE_NEXT, NOT_IN_THE_LAST, NOT_IN_THE_NEXT].includes( lRecord.operator ) ) {
                                        lCondition.value = lRecord.dateRangeValue + FILTER_SEPARATOR + lRecord.dateRangeUnit;
                                    }

                                    break;
                                /* ccz: Complex filter type disabled for 5.1
                                 case COMPLEX:
                                 lCondition = {
                                 type: COMPLEX,
                                 expression: self._convertLabelsToNames( lRecord.expression )
                                 };

                                 break;
                                 */
                            }

                            lHighlight = {
                                id: lRecord.id,
                                seq: parseFloat( lRecord.seq ),
                                name: lRecord.name,
                                type: lRecord.highlightType,
                                textColor: lRecord.textColor,
                                backgroundColor: lRecord.backgroundColor,
                                condition: lCondition,
                                isEnabled: lRecord.isEnabled
                            };

                            if ( lRecord.highlightType === COLUMN ) {
                                lHighlight.type = COLUMN;
                                lHighlight.columnType = COLUMN;
                                lHighlight.columnId = lRecord.highlightColumnId;
                            } else if ( lRecord.highlightType === ROW ) {
                                lHighlight.type = ROW;
                                delete lHighlight.columnType;
                                delete lHighlight.columnId;
                            }

                            // Update IG widget metadata
                            if ( lChange.inserted ) {

                                // For new filters, the model adds its own ID value, which we don't want, so delete it
                                delete lHighlight.id;

                                self.addHighlight( lHighlight, lReportOptions );
                            } else if ( lChange.updated ) {

                                self.updateHighlight( lHighlight.id, lHighlight, lReportOptions );
                            } else if ( lChange.deleted ) {

                                self.deleteHighlight( lHighlight.id, lReportOptions );
                            }

                        }
                        self._setReportSettings( {
                            refreshModel: true,
                            changeIdentifier: "views.grid.highlights"
                        } );
                    } );
                }
            });
        },

        _loadColumnOptions: function( pOptions, pFeature ) {
            var i, lFirstColumn, lColumn,
                lColumns = this.options.config.columns;

            pOptions.push( {
                value: "",
                label: getIGMessage( M_SELECT )
            } );
            for ( i = 0; i < lColumns.length; i++ ) {
                lColumn = lColumns[ i ];

                if ( !lColumn.specialType && lColumn.features[pFeature] && !lColumn.isHidden ) {

                    // Remember the first column, as we use it in the load callback to default for a new record
                    if ( !lFirstColumn ) {
                        lFirstColumn = lColumn;
                    }
                    pOptions.push( {
                        value: lColumn.id,
                        label: this._getColumnLabel( lColumn.id )
                    } );
                }
            }
            return lFirstColumn;
        },

        // todo consider if we could just use a grid for this, createModelEditDialog would have to be extended to support that though.
        _renderSortDialog: function() {
            var lColumnOptions = [],
                self = this;

            // Determine options for column select list
            // TODO default select list to first column when a new one is added? all other dialogs do this
            this._loadColumnOptions( lColumnOptions, "sort" );

            this._createDialog( SORT, function( renderItem ) {
                renderItem( SELECT, {
                    id: "SD_COLUMN",
                    required: true,
                    options: lColumnOptions
                });

                self._renderSortControls( renderItem, "SD_" );
            }, {
                titleKey: "SORT",
                modelOptions: {
                    shape: "table",
                    identityField: "order",
                    sequenceField: "seq",
                    fields: {
                        order: {
                            canHide: false,
                            hidden: true,
                            seq: 10
                        },
                        seq: {
                            seq: 20,
                            canHide: false,
                            hidden: true
                        },
                        columnId: {
                            label: "COLUMN",
                            headingAlignment: POSITION_START,
                            elementId: "SD_COLUMN",
                            isRequired: true,
                            width: 100,
                            seq: 30,
                            canHide: true,
                            hidden: false
                        },
                        direction: {
                            label: "DIRECTION",
                            headingAlignment: POSITION_START,
                            elementId: "SD_DIRECTION",
                            width: 60,
                            seq: 40,
                            defaultValue: ASC,
                            canHide: true,
                            hidden: false
                        },
                        nulls: {
                            label: "NULLS",
                            elementId: "SD_NULLS",
                            seq: 50,
                            defaultValue: LAST,
                            canHide: true,
                            hidden: true
                        }
                    }
                },
                load: function( pModel ) {
                    var i, lSeq,
                        lSorts = self.getSorts();

                    // getSorts doesn't include the order property as that's implied by the array order, let's
                    // use a 'seq' property in the dialog, as it's used as the ID and SEQ field
                    for ( i = 0; i < lSorts.length; i++ ) {
                        lSorts[ i ].seq = i + 1;
                        lSorts[ i ].order = i + 1;
                    }

                    if ( lSorts.length > 0 ) {
                        pModel.setData( lSorts );
                    } else {
                        lSeq = pModel.insertNewRecord();
                    }

                    return lSeq;

                },
                init: function( pModel, pNav$, pRecordView$ ) {
                    var lColumn$ = self._getElement( "SD_COLUMN" ),
                        lDirection$ = self._getElement( "SD_DIRECTION" );

                    //
                    // hide the "Sort Nulls" field if the server reported that functionality
                    // as unsupported, e.g. for a REST Data Source.
                    //
                    if ( self.options.config.unsupported.sortFunctions.includes( "NULLS" ) ) {
                        recordViewHideField( pRecordView$, "nulls" );
                    } else {
                        recordViewShowField( pRecordView$, "nulls" );
                    }

                    function columnChanged() {

                        // We need to explicitly set columnId in the model on change, so that it shows up in the nav panel
                        pModel.setValue(
                            pRecordView$.recordView( "getRecord" ),
                            "columnId",
                            lColumn$.val()
                        );
                    }

                    function directionChanged() {

                        // We need to explicitly set direction in the model on change, so that it shows up in the nav panel
                        pModel.setValue(
                            pRecordView$.recordView( "getRecord" ),
                            "direction",
                            lDirection$.val()
                        );
                    }

                    lColumn$.on( EVENT_CHANGE, columnChanged );
                    lDirection$.on( EVENT_CHANGE, directionChanged );

                },
                validate: function( pModel ) {
                    var lColumnCnt = {},
                        lIsValid   = true
                        ;

                    pModel.forEach( function ( pRecord ) {
                        if ( !lColumnCnt[ pRecord.columnId ] ) {
                            lColumnCnt[ pRecord.columnId ] = true;
                        } else {
                            lIsValid = false;
                        }
                    });
                    if ( lIsValid === false ) {
                        return getIGMessage( "SORT_ONLY_ONE_PER_COLUMN" );
                    } else {
                        return true;
                    }
                },
                store: function( pModel ) {
                    var i, j, lChange, lNewSort, lOldSort,
                        lChanges = pModel.getChanges(),
                        lSorts = self.getSorts();

                    // We need to add the sequence, because that's used to order the array after we have combined
                    // the changes.
                    for ( i = 0; i < lSorts.length; i++ ) {
                        lSorts[ i ].seq = i + 1;
                    }

                    // update widget state
                    for ( i = 0; i < lChanges.length; i++ ) {

                        lChange = lChanges[ i ];
                        lNewSort = lChange.record;
                        lOldSort = lChange.original;

                        lNewSort.seq = parseFloat( lNewSort.seq );

                        if ( lChange.inserted ) {

                            // For a new sort, just add it to the sorts array
                            lSorts.push( lNewSort );

                        } else if ( lChange.updated ) {

                            if ( lOldSort.columnId === lNewSort.columnId ) {
                                // Sort attributes for a column have been updated, find that sort and update it
                                for ( j = 0; j < lSorts.length; j++ ) {
                                    if ( lNewSort.columnId === lSorts[ j ].columnId ) {
                                        lSorts[ j ] = lNewSort;
                                        break;
                                    }
                                }
                            } else {
                                // Sort column has been updated, remove sort for old column and add for new column
                                for ( j = 0; j < lSorts.length; j++ ) {
                                    if ( lOldSort.columnId === lSorts[ j ].columnId ) {
                                        lSorts.splice( j, 1 );
                                        break;
                                    }
                                }
                                lSorts.push( lNewSort );
                            }
                        } else if ( lChange.deleted ) {

                            // For a deleted sort, find that sort and remove it from the array
                            for ( j = 0; j < lSorts.length; j++ ) {
                                if ( lNewSort.columnId === lSorts[ j ].columnId ) {
                                    lSorts.splice( j, 1 );
                                    break;
                                }

                            }

                        }

                    }

                    // Prior to calling setSorts, array must be in the right order, determined by the sequence field.
                    if ( lSorts.length > 0 ) {
                        lSorts = lSorts.sort( function( a, b ) {
                            return a.seq - b.seq;
                        });
                    }

                    // Once we're done, and if there are changes we call setSorts, which updates widget state and also the server
                    if ( lChanges.length > 0 ) {
                        self.setSorts( lSorts );
                    }

                }
            });
        },
        _renderAggregateDialog: function() {
            var lColumnOptions = [], lFirstColumn,
                lAggregateFunctions            = [],
                self                           = this,
                lUnsupportedAggregateFunctions = self.options.config.unsupported.aggregateFunctions;

            function addAggregateFunctions( pFunctionsArray ) {
                pFunctionsArray.forEach( function( object ) {
                    if ( !lUnsupportedAggregateFunctions.includes( object.value ) ) {
                        lAggregateFunctions.push( object );
                    }
                } );
            }

            // Determine options for column select list
            lFirstColumn = this._loadColumnOptions( lColumnOptions, "aggregate" );

            addAggregateFunctions( [
                { value: AGGREGATEFUNCS.CNT,           label: getIGMessage( AGGREGATEFUNCS.CNT ) },
                { value: AGGREGATEFUNCS.CNT_DIST,      label: getIGMessage( AGGREGATEFUNCS.CNT_DIST ) },
            //    { value: AGGREGATEFUNCS.APPR_CNT_DIST, label: getIGMessage( AGGREGATEFUNCS.APPR_CNT_DIST ) },
                { value: AGGREGATEFUNCS.MIN,           label: getIGMessage( AGGREGATEFUNCS.MIN ) },
                { value: AGGREGATEFUNCS.MAX,           label: getIGMessage( AGGREGATEFUNCS.MAX ) },
                { value: AGGREGATEFUNCS.MEDIAN,        label: getIGMessage( AGGREGATEFUNCS.MEDIAN ) },
                { value: AGGREGATEFUNCS.SUM,           label: getIGMessage( AGGREGATEFUNCS.SUM ) },
                { value: AGGREGATEFUNCS.AVG,           label: getIGMessage( AGGREGATEFUNCS.AVG ) }
            ] );

            this._createDialog( AGGREGATE, function( renderItem ) {
                renderItem( SELECT, {
                    id: "AD_COLUMN",
                    required: true,
                    options: lColumnOptions
                });
                renderItem( SELECT, {
                    id:  "AD_AGGREGATION",
                    required: true,
                    options: lAggregateFunctions
                });
                renderItem( TEXT, {
                    maxlength: "30",
                    id: "AD_TOOLTIP"
                });
                renderItem( CHECKBOX, {
                    id: "AD_SHOW_GRAND_TOTAL",
                    value: YES
                });
            }, {
                titleKey: "AGGREGATION",
                dialogHelp: {
                    helpTextKey: "AGGREGATE"
                },
                checkboxColumn: true,
                modelOptions: {
                    shape: "table",
                    fields: {
                        id: {
                            canHide: false,
                            hidden: true,
                            seq: 0
                        },
                        isEnabled: dialogCheckboxColumn(),
                        columnId: {
                            label: "COLUMN",
                            headingAlignment: POSITION_START,
                            elementId: "AD_COLUMN",
                            isRequired: true,
                            defaultValue: "",
                            seq: 30,
                            width: 80,
                            canHide: true,
                            hidden: false
                        },
                        "function": {
                            label: "AGGREGATION",
                            headingAlignment: POSITION_START,
                            elementId: "AD_AGGREGATION",
                            isRequired: true,
                            seq: 40,
                            width: 80,
                            defaultValue: "",
                            canHide: true,
                            hidden: false
                        },
                        tooltip: {
                            label: "TOOLTIP",
                            elementId: "AD_TOOLTIP",
                            seq: 50,
                            defaultValue: "",
                            canHide: true,
                            hidden: true
                        },
                        showGrandTotal: {
                            label: "SHOW_OVERALL_VALUE",
                            elementId: "AD_SHOW_GRAND_TOTAL",
                            seq: 60,
                            defaultValue: YES,
                            canHide: true,
                            hidden: true
                        }
                    }
                },
                load: function( pModel ) {
                    var i, lAggregate, lInitialFunction,
                        lData = [],
                        lDialog$ = $( this ),
                        lAggregateId = lDialog$.dialog( OPTION, "id" ),
                        lNewAggregateColumnId = lDialog$.dialog( OPTION, "columnId" ),
                        lAggregates = self.getAggregates();

                    // Add new aggregate function, either because there are none existing, or because the dialog is opened as a
                    // result of selecting aggregate from a specific column header, where that column will be defaulted.
                    function _addNewAggregate( pColumnId ) {
                        var lColumn = self._getColumn( pColumnId ),
                            lNewId;

                        if ( lColumn.filter.dataType === NUMBER ) {
                            lInitialFunction = AGGREGATEFUNCS.SUM;
                        } else {
                            lInitialFunction = AGGREGATEFUNCS.CNT;
                        }
                        lNewId = pModel.insertNewRecord( null, null, {
                            columnId: pColumnId,
                            isEnabled: true,
                            enabledClass: C_IS_CHECKED,
                            "function": lInitialFunction
                        });
                        return lNewId;
                    }

                    if ( lAggregates.length > 0 ) {
                        for ( i = 0; i < lAggregates.length; i++ ) {

                            lAggregate = $.extend({
                                id:             "",
                                columnId:       "",
                                "function":     "",
                                tooltip:        "",
                                showGrandTotal: "",
                                isEnabled:      "",
                                enabledClass:   "",
                                enabledText:    ""
                            }, lAggregates[ i ] );

                            lAggregate.enabledClass = ( lAggregate.isEnabled ? C_IS_CHECKED: "" );
                            lAggregate.enabledText = ( lAggregate.isEnabled ? getIGMessage( "ENABLED" ) : getIGMessage( "DISABLED" ) );
                            lAggregate.showGrandTotal = ( lAggregate.showGrandTotal ? YES : NO );

                            lData.push( lAggregate );

                        }

                        pModel.setData( lData );

                        if ( lNewAggregateColumnId ) {
                            lAggregateId = _addNewAggregate( lNewAggregateColumnId );
                        }

                    } else {

                        // If there are no existing aggregates and a specific column ID is passed, insert a new one
                        // and use that column ID to default, otherwise if no specific column ID is passed, use the first column
                        if ( lNewAggregateColumnId ) {
                            lAggregateId = _addNewAggregate( lNewAggregateColumnId );
                        } else {
                            lAggregateId = _addNewAggregate( lFirstColumn.id );
                        }

                    }
                    return lAggregateId;

                },
                init: function( pModel, pNav$, pRecordView$ ) {
                    var lColumn$ = self._getElement( "AD_COLUMN" ),
                        lFunction$ = self._getElement( "AD_AGGREGATION" ),
                        lShowGrandTotal$ = self._getElement( "AD_SHOW_GRAND_TOTAL" );

                    function columnChanged() {
                        var lIGColumn,
                            lAggregateFunctionOptions = {},
                            lFunctionBuffer,
                            lColumnId = lColumn$.val();

                        lIGColumn = self._getColumn( lColumnId );

                        if ( !lColumnId || lColumnId === "" ) {
                            recordViewHideField( pRecordView$, "function" );
                            recordViewHideField( pRecordView$, "tooltip" );
                            recordViewHideField( pRecordView$, "showGrandTotal" );
                            pModel.setValue( pRecordView$.recordView("getRecord"), "columnId", "");
                            lFunction$.val( "" ).trigger( "change" );
                        } else {
                            recordViewShowField( pRecordView$, "function" );
                            recordViewShowField( pRecordView$, "tooltip" );
                            recordViewShowField( pRecordView$, "showGrandTotal" );

                            // Build the aggregate functions options list, depending on type
                            lAggregateFunctionOptions[ AGGREGATEFUNCS.CNT ] = getIGMessage( AGGREGATEFUNCS.CNT );

                            if ( lIGColumn.filter.dataType === VARCHAR2 || lIGColumn.filter.dataType === NUMBER || lIGColumn.filter.dataType === DATE ) {
                                if ( !lUnsupportedAggregateFunctions.includes( AGGREGATEFUNCS.CNT_DIST ) ) {
                                    lAggregateFunctionOptions[ AGGREGATEFUNCS.CNT_DIST ] = getIGMessage( AGGREGATEFUNCS.CNT_DIST );
                                }
                                if ( !lUnsupportedAggregateFunctions.includes( AGGREGATEFUNCS.MIN ) ) {
                                    lAggregateFunctionOptions[ AGGREGATEFUNCS.MIN ] = getIGMessage( AGGREGATEFUNCS.MIN );
                                }
                                if ( !lUnsupportedAggregateFunctions.includes( AGGREGATEFUNCS.MAX ) ) {
                                   lAggregateFunctionOptions[ AGGREGATEFUNCS.MAX ] = getIGMessage( AGGREGATEFUNCS.MAX );
                                }
                            }

                            if (    !lUnsupportedAggregateFunctions.includes( AGGREGATEFUNCS.MEDIAN )
                                 && ( lIGColumn.filter.dataType === NUMBER || lIGColumn.filter.dataType === DATE ) ) {
                                lAggregateFunctionOptions[ AGGREGATEFUNCS.MEDIAN ] = getIGMessage( AGGREGATEFUNCS.MEDIAN );
                            }

                            if ( lIGColumn.filter.dataType === NUMBER ) {
                                if ( !lUnsupportedAggregateFunctions.includes( AGGREGATEFUNCS.SUM ) ) {
                                    lAggregateFunctionOptions[ AGGREGATEFUNCS.SUM ] = getIGMessage( AGGREGATEFUNCS.SUM );
                                }
                                if ( !lUnsupportedAggregateFunctions.includes( AGGREGATEFUNCS.AVG ) ) {
                                    lAggregateFunctionOptions[ AGGREGATEFUNCS.AVG ] = getIGMessage( AGGREGATEFUNCS.AVG );
                                }
                            }

                            lFunctionBuffer = lFunction$.val();

                            // Update the DOM
                            lFunction$.empty();
                            lFunction$.append( $( M_EMPTY_OPTION )
                                .attr( "value", "" ).text( getIGMessage( M_SELECT ) ) );
                            for ( const [pValue, pKey] of Object.entries( lAggregateFunctionOptions ) ) {
                                lFunction$.append( $( M_EMPTY_OPTION )
                                    .attr( "value", pValue ).text( pKey ) );
                            }

                            // Now let's set the initial value, again depending on type
                            if ( lFunctionBuffer !== "" ) {
                                lFunction$.val( lFunctionBuffer );
                            }
                            if ( lFunction$.val() ==="" || lFunction$.val() === null ) {
                                if ( lIGColumn.filter.dataType === NUMBER ) {
                                    lFunction$.val( AGGREGATEFUNCS.SUM );
                                } else {
                                    lFunction$.val( AGGREGATEFUNCS.CNT );
                                }
                            }

                            // update the model immediately to reflect change on left NAV panel
                            pModel.setValue(
                                pRecordView$.recordView("getRecord"),
                                "columnId",
                                lColumnId
                            );
                            functionChanged();
                        }
                    }

                    function functionChanged() {
                        pModel.setValue( pRecordView$.recordView("getRecord"), "function", lFunction$.val() );
                    }

                    function grandTotalChanged() {
                        pModel.setValue(
                            pRecordView$.recordView("getRecord"),
                            "showGrandTotal",
                            lShowGrandTotal$.prop( CHECKED ) ? "Y" : "N"
                        );
                    }

                    showFields( lColumn$ );

                    lColumn$.on( EVENT_CHANGE, columnChanged );
                    lFunction$.on( EVENT_CHANGE, functionChanged );
                    lShowGrandTotal$.on( EVENT_CHANGE, grandTotalChanged );

                    pRecordView$.on( "apexbeginrecordedit", function () {
                        columnChanged();
                    });

                },
                validate: function( pModel, valid, error ) {
                    var lColumnCnt = {},
                        lIsValid   = true,
                        lLookupKey;

                    pModel.forEach( function ( pRecord, pIndex, pId ) {
                        lLookupKey = pRecord.columnId.toString() + pRecord.function;
                        if ( !lColumnCnt[ lLookupKey ] ) {
                            lColumnCnt[ lLookupKey ] = true;
                            valid( pId, "columnId" );
                            valid( pId, "function" );
                        } else {
                            lIsValid = false;
                            error( pId, "columnId", getIGMessage( "DUPLICATE_AGGREGATION" ) );
                            error( pId, "function", getIGMessage( "DUPLICATE_AGGREGATION" ) );
                        }
                        if ( pRecord.columnId === "" ) {
                            error( pId, "columnId", getIGMessage( "DUPLICATE_AGGREGATION" ) );
                            lIsValid = false;
                        }
                    });
                    return lIsValid;
                },
                store: function( pModel ) {
                    self._ifNoChangesDo( function() {
                        let lChange, lAggregate,
                            lReportOptions = {
                                save: false,
                                // refreshData doesn't apply when save is false
                                skipNoChangesCheck: true
                            },
                            lChanges = pModel.getChanges();

                        for ( let i = 0; i < lChanges.length; i++ ) {
                            lChange = lChanges[ i ];
                            if ( lChange.record.columnId && lChange.record.columnId !== "") {
                                lAggregate = lChange.record;

                                // Remove dialog specific properties added in load
                                delete lAggregate.enabledClass;
                                delete lAggregate.enabledText;

                                lAggregate.showGrandTotal = ( lAggregate.showGrandTotal === YES );

                                // Update IG widget metadata
                                if ( lChange.inserted ) {

                                    delete lAggregate.id;
                                    lAggregate.columnType = COLUMN;    //todo hard-coded

                                    self.addAggregate( lAggregate, lReportOptions );
                                } else if ( lChange.updated ) {
                                    self.updateAggregate( lAggregate.id, lAggregate, lReportOptions );
                                } else if ( lChange.deleted ) {
                                    self.deleteAggregate( lAggregate.id, lReportOptions );
                                }
                            }

                        }
                        self._setReportSettings({
                            refreshModel: true,
                            refreshColumns: true,
                            changeIdentifier: "views.grid.aggregations"
                        });

                    });
                }
            });
        },
        /* todo future
        _renderComputeDialog: function() {
            var self = this,
                lColumnGroups = [],
                lUseGroupFor, lHasGroups = false,
                lDataTypes, lAlignOptions;

            loadOptions( this.options.config.columnGroups, lColumnGroups, "id", "label", "", getIGMessage( M_SELECT ) );

            lUseGroupFor = [
                { value: "heading",        label: getIGMessage( "HEADING"         ) },
                { value: "srv",            label: getIGMessage( "SINGLE_ROW_VIEW" ) },
                { value: "both",           label: getIGMessage( "BOTH"            ) }
            ];

            lAlignOptions = [
                { value: POSITION_START,   label: getIGMessage( "POSITION_START"  ) },
                { value: POSITION_END,     label: getIGMessage( "POSITION_END"    ) },
                { value: POSITION_CENTER,  label: getIGMessage( "POSITION_CENTER" ) }
            ];

            lDataTypes = [
                { value: VARCHAR2,         label: getIGMessage( "VARCHAR2"        ) },
                { value: NUMBER,           label: getIGMessage( "NUMBER"          ) },
                { value: DATE,             label: getIGMessage( "DATE"            ) }
            ];


            this._renderDialogContent( function( renderItem ) {
                renderItem( TEXT,   { id: "CPD_HEADING_HEADING",    required: true          } );
                renderItem( TEXT,   { id: "CPD_HEADING_LABEL"                               } );

                renderItem( SELECT, { id: "CPD_HEADING_ALIGN",      options: lAlignOptions  } );
                renderItem( SELECT, { id: "CPD_LAYOUT_ALIGN",       options: lAlignOptions  } );

                renderItem( SELECT, { id: "CPD_LAYOUT_GROUPID"    , options: lColumnGroups  } );
                renderItem( SELECT, { id: "CPD_LAYOUT_USEGROUPFOR", options: lUseGroupFor   } );

                renderItem( SELECT, { id: "CPD_DATATYPE",           options: lDataTypes     } );
                renderItem( TEXT,   { id: "CPD_FORMATMASK"                                  } );

                renderItem( TEXTAREA, {
                    id: "CPD_FUNCTION_SQLEXPR",
                    toolbar: true,
                    required: true
                } );
            } );

            // note since this was commented out there has been much refactoring so uncomment with care
            this.computeDialog$ = $.apex.recordView.createModelEditDialog( this._getId( "compute-dialog" ), {
                width: 800,
                height: 580,
                titleKey: "APEX.IG.COMPUTE",
                modelName: this._getId( "compute" ),
                labelAlignment: POSITION_START,
                formCssClasses: C_FORM_LABELS_ABOVE + " " + C_FORM_STRETCH_INPUTS,
                useSplitter: true,
                dialogHelp: {
                    helpTextKey: "APEX.IG.HELP.COMPUTE",
                    titleKey: "APEX.IG.HELP.COMPUTE_TITLE"
                },
                modelOptions: {
                    editable: true,
                    onlyMarkForDelete: false,
                    identityField: "id",
                    fields: {
                        isEnabled: dialogCheckboxColumn()
                        headingHeading: {
                            heading: getIGMessage( "HEADING" ),
                            label: getIGMessage( "HEADING" ),
                            headingAlignment: POSITION_START,
                            elementId: this._getId( "CPD_HEADING_HEADING" ),
                            isRequired: true,
                            fieldColSpan: 7,
                            seq: 10
                        },
                        headingLabel: {
                            heading: getIGMessage( "LABEL" ),
                            label: getIGMessage( "LABEL" ),
                            elementId: this._getId( "CPD_HEADING_LABEL" ),
                            canHide: true,
                            hidden: true,
                            fieldColSpan: 5,
                            seq: 20
                        },
                        headingAlign: {
                            label: getIGMessage( "HEADING_ALIGN" ),
                            elementId: this._getId( "CPD_HEADING_ALIGN" ),
                            defaultValue: POSITION_CENTER,
                            seq: 30,
                            fieldColSpan: 7,
                            canHide: true,
                            hidden: true
                        },
                        layoutAlign: {
                            label: getIGMessage( "LAYOUT_ALIGN" ),
                            elementId: this._getId( "CPD_LAYOUT_ALIGN" ),
                            seq: 40,
                            defaultValue: POSITION_END,
                            fieldColSpan: 5,
                            canHide: true,
                            hidden: true
                        },
                        layoutGroupId: {
                            label: getIGMessage( "GROUP" ),
                            elementId: this._getId( "CPD_LAYOUT_GROUPID" ),
                            seq: 50,
                            fieldColSpan: 7,
                            canHide: true,
                            hidden: true
                        },
                        layoutUseGroupFor: {
                            label: getIGMessage( "LAYOUT_USEGROUPFOR" ),
                            elementId: this._getId( "CPD_LAYOUT_USEGROUPFOR" ),
                            seq: 60,
                            defaultValue: "both",
                            fieldColSpan: 5,
                            canHide: true,
                            hidden: true
                        },
                        sqlExpression: {
                            label: getIGMessage( "EXPRESSION" ),
                            elementId: this._getId( "CPD_FUNCTION_SQLEXPR" ),
                            isRequired: true,
                            seq: 70,
                            canHide: true,
                            hidden: true
                        },
                        dataType: {
                            label: getIGMessage( "DATA_TYPE" ),
                            elementId: this._getId( "CPD_DATATYPE" ),
                            seq: 80,
                            fieldColSpan: 7,
                            isRequired: true,
                            defaultValue: NUMBER,
                            canHide: true,
                            hidden: true
                        },
                        formatMask: {
                            label: getIGMessage( "FORMATMASK" ),
                            elementId: this._getId( "CPD_FORMATMASK" ),
                            seq: 90,
                            fieldColSpan: 5,
                            canHide: true,
                            hidden: true
                        },
                        enabledClass: {
                            volatile: true,
                            canHide: false,
                            hidden: true,
                            seq: 999,
                            defaultValue: C_IS_CHECKED
                        },
                        enabledText: {
                            volatile: true,
                            canHide: false,
                            hidden: true,
                            seq: 999,
                            defaultValue: getIGMessage( "ENABLED" )
                        },
                        id: {
                            canHide: false,
                            hidden: true,
                            seq: 0
                        }
                    }
                },
                load: function( pModel ) {
                    var i,
                        lData = [], lRecord,
                        lComputes = self.getComputes(), lCompute,
                        lComputeId = $( this ).dialog( OPTION, "id" );

                    if ( lComputes.length > 0 ) {
                        for ( i = 0; i < lComputes.length; i++ ) {
                            lCompute = lComputes[ i ];
                            lRecord = {
                                id:                    lCompute.id,
                                isEnabled:             ( lCompute.isEnabled !== false ),
                                headingHeading:        lCompute.heading.heading,
                                headingLabel:          lCompute.heading.label,
                                headingAlign:          ( lCompute.heading.alignment ? lCompute.heading.alignment : POSITION_CENTER ),
                                layoutAlign:           ( lCompute.layout.columnAlignment ? lCompute.layout.columnAlignment : POSITION_END ),
                                layoutGroupId:         lCompute.layout.groupId,
                                layoutUseGroupFor:     ( lCompute.layout.useGroupFor ? lCompute.layout.useGroupFor : "both" ),
                                dataType:              ( lCompute.dataType ? lCompute.dataType : NUMBER ),
                                formatMask:            lCompute.formatMask,
                                sqlExpression:         self._convertNamesToLabels( lCompute.function.sqlExpression )
                            };

                            lRecord.enabledClass = ( lRecord.isEnabled ? C_IS_CHECKED : "" );
                            lRecord.enabledText  = ( lRecord.isEnabled ? getIGMessage( "ENABLED" ) : getIGMessage( "DISABLED" ) );

                            lData.push( lRecord );
                        }

                        pModel.setData( lData );

                    } else {

                        // If there are no existing filters, let's insert a new one into the dialog
                        lComputeId = pModel.insertNewRecord();
                    }

                    return lComputeId;

                },
                init: function( pModel, pNav$, pRecordView$ ) {
                    var lHeadingHeading$      = self._getElement( "CPD_HEADING_HEADING" ),
                        lHeadingLabel$        = self._getElement( "CPD_HEADING_LABEL" ),
                        lLayoutGroupId$       = self._getElement( "CPD_LAYOUT_GROUPID" ),
                        lLayoutUseGroupFor$   = self._getElement( "CPD_LAYOUT_USEGROUPFOR" ),
                        lDataType$            = self._getElement( "CPD_DATATYPE" ),
                        lFormatMask$          = self._getElement( "CPD_FORMATMASK" ),
                        lFunctionSqlExpr$     = self._getElement( "CPD_FUNCTION_SQLEXPR" );

                    function _setupComplexDialog() {
                        var lComplexFunctions = [],
                            lComplexColumns   = [];

                        $.each( FILTERFUNCS, function( n, v ) {
                            lComplexFunctions.push( {
                                type:   ACTION,
                                action: function () {
                                    var t = v.label;
                                    if ( v.params > 0 ) {
                                        t = t + "( )";
                                    }
                                    html_ReturnToTextSelection( t , lFunctionSqlExpr$.get( 0 ) );
                                },
                                label:  v.label
                            } );
                        } );

                        $.each( self.options.config.columns, function ( i, o ) {
                            if ( self._isColumnFilterable( o.id ) ) {
                                lComplexColumns.push({
                                    type:   ACTION,
                                    action: function () {
                                        html_ReturnToTextSelection( "\u0022" + self._getColumnLabel( o.id ) + "\u0022", lFunctionSqlExpr$.get( 0 ),true );
                                    },
                                    label:  self._getColumnLabel( o.id )
                                });
                            }
                        } );

                        self._getElement( "CPD_FUNCTION_SQLEXPR_toolbar" ).toolbar({
                            actionsContext: self.actions,
                            small: true,
                            simple: true,
                            data: [
                                {
                                    controls: [
                                        {
                                            type:     TB_MENU,
                                            id:       "expression_columns",
                                            labelKey: "APEX.IG.COLUMNS",
                                            icon:     "icon-tree-report-column",
                                            iconOnly: true,
                                            menu:     { items: lComplexColumns }
                                        },
                                        {
                                            type:     TB_MENU,
                                            id:       "expression_functions_operators",
                                            labelKey: "APEX.IG.FUNCTIONS_AND_OPERATORS",
                                            icon:     "icon-calculator",
                                            iconOnly: true,
                                            menu:     { items: lComplexFunctions }
                                        }
                                    ]
                                }
                            ]
                        });
                    } // setupComplexDialog

                    _setupComplexDialog();


                    pNav$.on( "click", SEL_JS_COL_CHECKBOX, function( pEvent ) {
                        var lChecked, lRecord,
                            lCell$ = $( this ),
                            lCheckbox$ = lCell$.find( ".ro-checkbox" );

                        lRecord = pNav$.grid( "getRecords", [ lCell$.parent() ] )[ 0 ];

                        lChecked = !pModel.getValue( lRecord, "isEnabled" );

                        pModel.setValue( lRecord, "enabledClass", lChecked ? C_IS_CHECKED : "" );
                        pModel.setValue( lRecord, "enabledText", lChecked ? getIGMessage( "ENABLED" ) : getIGMessage( "DISABLED" ) );
                        pModel.setValue( lRecord, "isEnabled", lChecked );

                    } ).on( "keydown", SEL_JS_COL_CHECKBOX, function( pEvent ) {
                        if ( pEvent.which === $.ui.keyCode.SPACE ) {
                            $( this ).trigger( "click" );
                        }
                    });
                    recordViewHideField( pRecordView$, "isEnabled" );


                    lHeadingHeading$.change( function() {
                        if ( lHeadingLabel$.val() === "" ) { lHeadingLabel$.val( lHeadingHeading$.val() ).change(); }
                    } );

                    lLayoutGroupId$.change( function() {
                        if ( lLayoutGroupId$.val() === "" ) {
                            hideFields( lLayoutUseGroupFor$ );
                        } else {
                            showFields( lLayoutUseGroupFor$ );
                        }
                    } );

                    lDataType$.change( function() {
                         lFormatMask$.val( "" ).change();
                        if ( lDataType$.val() === DATE || lDataType$.val() === NUMBER ) {
                            showFields( lFormatMask$ );
                            if ( lDataType$.val() === DATE ) {
                                lFormatMask$.combobox().combobox( OPTION, "source", FORMATMASKS_DATE );
                            } else {
                                lFormatMask$.combobox().combobox( OPTION, "source", FORMATMASKS_NUM );
                            }
                        } else {
                            hideFields( lFormatMask$ );
                        }
                    } );

                    pRecordView$.on( "apexbeginrecordedit", function () {
                        lDataType$.change();
                        lLayoutGroupId$.change();

                        if ( !lHasGroups ) {
                            hideFields( [lLayoutUseGroupFor$, lLayoutGroupId$] );
                        } else {
                            lLayoutGroupId$.change();
                        }
                    } );
                },
                validate: function( pModel ) {
                    var lIsValid   = true;

                    // todo remove or explain commented out code and if there is nothing to do remove this empty function
                    // revisit in 5.2 when that feature will be added in
                    // pModel.forEach( function ( pRecord, pIndex, pId ) {
                    // } );
                    return lIsValid;
                },
                store: function( pModel ) {
                    var i, lChange, lCompute, lRecord,
                        lChanges = pModel.getChanges();

                    for ( i = 0; i < lChanges.length; i++ ) {
                        lChange = lChanges[ i ];
                        lRecord = lChange.record;

                        // Remove dialog specific properties added in load

                        lCompute = {
                            id:         lRecord.id,
                            isEnabled:  lRecord.isEnabled,
                            heading:    {
                                heading:   lRecord.headingHeading,
                                label:     ( lRecord.headingLabel !== "" ? lRecord.headingLabel : lRecord.headingHeading ),
                                alignment: lRecord.headingAlign
                            },
                            layout:     {
                                columnAlignment: lRecord.layoutAlign
                            },
                            dataType:   lRecord.dataType,
                            "function":   {
                                type: "SQL_EXPRESSION",
                                sqlExpression: self._convertLabelsToNames( lRecord.sqlExpression )
                            }
                        };

                        if ( lRecord.layoutGroupId !== "" ) {
                            lCompute.layout.groupId = lRecord.layoutGroupId;
                            lCompute.layout.useGroupFor = lRecord.layoutUseGroupFor;
                        }
                        if ( lRecord.formatMask !== "" ) {
                            lCompute.formatMask = lRecord.formatMask;
                        }

                        // Update IG widget metadata
                        if ( lChange.inserted ) {

                            // For new filters, the model adds its own ID value, which we don't want, so delete it
                            delete lCompute.id;

                            self.addCompute( lCompute, {
                                save:               false,
                                refreshData:        true,
                                skipNoChangesCheck: true
                            });
                        } else if ( lChange.updated ) {

                            self.updateCompute( lCompute.id, lCompute, {
                                save:               false,
                                refreshData:        false,
                                skipNoChangesCheck: true
                            });
                        } else if ( lChange.deleted ) {

                            self.deleteCompute( lCompute.id, {
                                save:               false,
                                refreshData:        false,
                                skipNoChangesCheck: true
                            });
                        }

                    }
                    self._setReportSettings({
                        refreshModel: true
                    });
                }
            });
        }, // renderComputeDialog
        */
        /*
        _renderPivotDialog: function() {
        },
        */
        _renderControlBreakDialog: function() {
            var lColumnOptions = [], lFirstColumn,
                self = this;

            // Determine options for column select list
            lFirstColumn = this._loadColumnOptions( lColumnOptions, "sort" );

            this._createDialog( CONTROL_BREAK, function( renderItem ) {
                renderItem( SELECT, {
                    id: "CBD_COLUMN",
                    required: true,
                    options: lColumnOptions
                });

                self._renderSortControls( renderItem, "CBD_" );
            }, {
                titleKey: "CONTROL_BREAK",
                checkboxColumn: true,
                modelOptions: {
                    shape: "table",
                    sequenceField: "sequenceField",
                    fields: {
                        id: {
                            canHide: false,
                            hidden: true,
                            seq: 0
                        },
                        sequenceField: {
                            canHide: false,
                            hidden: true,
                            seq: 0
                        },
                        oldColumnId: {
                            canHide: false,
                            hidden: true,
                            seq: 0
                        },
                        isEnabled: dialogCheckboxColumn(),
                        columnId: {
                            label: "COLUMN",
                            headingAlignment: POSITION_START,
                            elementId: "CBD_COLUMN",
                            isRequired: true,
                            seq: 20,
                            width: 100,
                            canHide: true,
                            hidden: false
                        },
                        direction: {
                            label: "DIRECTION",
                            elementId: "CBD_DIRECTION",
                            defaultValue: ASC,
                            seq: 30,
                            canHide: true,
                            hidden: true
                        },
                        nulls: {
                            label: "NULLS",
                            elementId: "CBD_NULLS",
                            defaultValue: LAST,
                            seq: 40,
                            canHide: true,
                            hidden: true
                        }
                    }
                },
                load: function( pModel ) {
                    var i, lColumn, lControlbreak, br,
                        lControlbreaks  = [],
                        lControlbreakId = $( this ).dialog( OPTION, "id" ),
                        lColumns        = self._getCurrentView().columns
                    ;

                    for ( i = 0; i < lColumns.length; i++ ) {
                        lColumn = lColumns[ i ];

                        br = lColumn.break;
                        if ( br ) {

                            lControlbreak = $.extend( {}, {
                                id:            lColumn.columnId,
                                columnId:      lColumn.columnId,
                                oldColumnId:   lColumn.columnId,
                                direction:     lColumn.direction,
                                nulls:         lColumn.nulls,
                                sequenceField: parseFloat( br.order ),
                                isEnabled:     br.isEnabled,
                                enabledClass:  ( br.isEnabled ? C_IS_CHECKED : "" )
                            });

                            lControlbreaks.push( lControlbreak );
                        }

                    }
                    if ( lControlbreaks.length > 0 ) {

                        lControlbreaks.sort( function ( a, b ) {
                            if ( a.sequenceField < b.sequenceField ) {
                                return -1;
                            } else if ( a.sequenceField > b.sequenceField ) {
                                return 1;
                            } else {
                                return 0;
                            }
                        } );

                        pModel.setData( lControlbreaks );

                    } else {

                        lControlbreakId = pModel.insertNewRecord( {
                            isEnabled:       true,
                            id:              lFirstColumn.columnId,
                            columnId:        lFirstColumn.columnId,
                            oldColumnId:     lFirstColumn.columnId,
                            direction:       ( lFirstColumn.sort ? lFirstColumn.sort.direction : ASC ),
                            nulls:           ( lFirstColumn.sort ? lFirstColumn.sort.nulls : LAST )
                        } );
                    }
                    return lControlbreakId;
                },
                init: function( pModel, pNav$, pRecordView$ ) {
                    var lColumn$    = self._getElement( "CBD_COLUMN" ),
                        lDirection$ = self._getElement( "CBD_DIRECTION" ),
                        lNulls$     = self._getElement( "CBD_NULLS" );

                    function columnChanged() {

                        pModel.setValue( pRecordView$.recordView( "getRecord" ), "columnId", lColumn$.val());
                        if ( lColumn$.val() === "" ) {
                            hideFields( [lDirection$, lNulls$] );
                        } else {
                            showFields( [lDirection$, lNulls$] );
                        }

                    }

                    lColumn$.on( EVENT_CHANGE, columnChanged );
                    lDirection$.on( EVENT_CHANGE, function() { pModel.setValue( pRecordView$.recordView( "getRecord" ), "direction", lDirection$.val()); } );
                    lNulls$.on( EVENT_CHANGE, function() { pModel.setValue( pRecordView$.recordView( "getRecord" ), "nulls", lNulls$.val()); } );

                    pRecordView$.on( "apexbeginrecordedit", columnChanged );
                },
                validate: function( pModel, valid, error ) {
                    var lColumnCnt = {},
                        lIsValid   = true
                    ;

                    pModel.forEach( function ( pRecord, pIndex, pId ) {
                         if ( !lColumnCnt[ pRecord.columnId ] ) {
                             lColumnCnt[ pRecord.columnId ] = true;
                         } else {
                             lIsValid = false;
                             error( pId, "columnId", getIGMessage( "DUPLICATE_CONTROLBREAK" ) );
                         }
                         if ( pRecord.columnId === "" ) {
                             lIsValid = false;
                         }
                    });
                    return lIsValid;
                },
                store: function( pModel ) {
                    self._ifNoChangesDo( function() {
                        var i, lChange, lControlbreak,
                            lReportOptions = {
                                save: false,
                                // refreshData doesn't apply when save is false
                                skipNoChangesCheck: true
                            },
                            lChanges = pModel.getChanges();

                        function addControlbreak() {
                            self.addControlBreak(
                                self._currentViewImpl().modelColumns[self._getColumn( lControlbreak.columnId ).name],
                                {
                                    isEnabled: lControlbreak.isEnabled,
                                    order: parseFloat( lControlbreak.sequenceField ),
                                    direction: lControlbreak.direction,
                                    nulls: lControlbreak.nulls
                                }, lReportOptions
                            );
                        }

                        for ( i = 0; i < lChanges.length; i++ ) {
                            lChange = lChanges[i];
                            lControlbreak = lChange.record;

                            if ( lChange.inserted ) {

                                addControlbreak();

                            } else if ( lChange.updated ) {

                                if ( lControlbreak.columnId !== lControlbreak.oldColumnId ) {
                                    self.deleteControlBreak(
                                        lControlbreak.oldColumnId,
                                        lReportOptions
                                    );
                                    addControlbreak();
                                } else {
                                    self.updateControlBreak(
                                        lControlbreak.columnId,
                                        {
                                            isEnabled: lControlbreak.isEnabled,
                                            order: parseFloat( lControlbreak.sequenceField ),
                                            direction: lControlbreak.direction,
                                            nulls: lControlbreak.nulls

                                        }, lReportOptions
                                    );
                                }

                            } else if ( lChange.deleted ) {

                                self.deleteControlBreak(
                                    lControlbreak.columnId,
                                    lReportOptions
                                );
                            }
                        }

                        // Save the new settings
                        self._setReportSettings( {
                            refreshModel: true,
                            refreshColumns: true
                        } );
                    } );
                }
            });
        },

        _addActions: function( pActions ) {
            var self = this,
                lConfig = this.options.config;

            pActions.add([
                {
                    name: "search-case-sensitive",
                    labelKey: "APEX.IG.CASE_SENSITIVE",
                    value: false,
                    get: function() {
                        return self.searchCaseSensitive;
                    },
                    set: function( pValue ) {
                        self.searchCaseSensitive = pValue;
                    }
                },
                {
                    name: "filter-column",
                    labelKey: "APEX.IG.SELECT_COLUMNS_TO_SEARCH",
                    get: function() {
                        return self.currentFilterColumnId;
                    },
                    set: function( pValue ) {
                        self._setFilterColumn( pValue );
                    }
                },
                {
                    name: "search",
                    labelKey: "APEX.IG.GO",
                    /* Function that gets the search value, can be customised by a developer for custom search, for
                     * example:
                     *     var lEmpRegion = apex.region( "emp" ).widget(),      //assumes static ID of 'emp'
                     *         lSearchAction = lEmpRegion.interactiveGrid( "getActions" ).lookup( "search" );
                     *
                     *     lSearchAction.getSearchValue = function(callback) {
                     *         callback( $v( "P1_MY_SEARCH_VALUE" ) );
                     *     }
                     */
                    getSearchValue: function( callback ) {
                        let lValue = "";
                        if ( lConfig.toolbar && lConfig.toolbar.searchField ) {
                            lValue = self._tbFindElement( "search_field" ).val();
                            // clear search_field as for IR
                            self._tbFindElement( "search_field" ).val("");
                        }
                        callback( lValue );
                    },
                    action: function() {
                        this.getSearchValue( function( lValue ) {
                            let lSetting,
                                lFilters = self._currentReportSettings().filters.filter(f => f.value === lValue && f.type === ROW );

                            if ( lValue && !lFilters.length ) {
                                if ( self.currentFilterColumnId ) {
                                    lSetting = {
                                        type:               COLUMN,
                                        columnType:         COLUMN,     //todo hard-coded
                                        columnId:           self.currentFilterColumnId,
                                        operator:           CONTAINS,
                                        value:              lValue,
                                        isCaseSensitive:    self.searchCaseSensitive
                                    };
                                } else {
                                    lSetting = {
                                        type:               ROW,
                                        value:              lValue,
                                        isCaseSensitive:    self.searchCaseSensitive
                                    };
                                }

                                // Also saves the filter and refreshes the data
                                self.addFilter( lSetting );
                            } else {

                                // Just refresh if we have no search term or if filter already exists for term
                                self.refresh();
                            }
                        });
                    }
                },
                {
                    name: "change-report",
                    labelKey: "APEX.IG.SAVED_REPORTS",
                    hide: true,
                    choices: [],                    // we update choices when saved report data is available
                    get: function() {
                        return self._report();
                    },
                    set: function(v) {
                        // changing reports does change the data so check for changes
                        self._ifNoChangesDo( function( wasChanged ) {
                            if ( wasChanged ) {
                                // Can't just ignore changes because changing the report currently destroys all models
                                // but a model with changes will not be deleted and so the model along with its changes
                                // may get reused. Clear changes so that the model is deleted when destroyed.
                                self.clearChanges();
                            }
                            self._report( v );
                        } );
                    }
                },
                {
                    name: "change-view",
                    labelKey: "APEX.IG.CHANGE_VIEW",
                    choices: [],                    // we update choices when the view is set / changed
                    get: function() {
                        return self._view();
                    },
                    set: function( pValue ) {
                        self._view(pValue, {
                            fetchData: true
                        });
                    }
                },
                {
                    name: "show-columns-dialog",
                    labelKey: "APEX.IG.COLUMNS",
                    icon: "icon-ig-select-cols",
                    action: function() {
                        self._openDialog( COLUMNS );
                        return true; // dialog takes focus
                    }
                },
                {
                    name: "show-filter-dialog",
                    labelKey: "APEX.IG.FILTER",
                    icon: "icon-ig-filter",
                    hide: true,
                    action: function() {
                        self._openDialog( FILTER );
                        return true; // dialog takes focus
                    }
                },
                {
                    // This action is view specific. If the chart view doesn't exist then this action should not exist
                    // however the action is used in the default toolbar action menu so it is globally known.
                    // Other actions may also be specific or at least related to one or more views but they
                    // are more closely related to a capability of the view or a global feature like editing.
                    // This action is hidden if the chart view is not registered.
                    name: "chart-view",
                    labelKey: "APEX.IG.CHART",
                    icon: "icon-ig-chart",
                    hide: !self._isViewRegistered( CHART ),
                    action: function() {
                        if ( self._isViewRegistered( CHART ) ) {
                            // If view is already configured, switch to it
                            if ( self.viewsImpl[CHART].isConfigured() ) {
                                self._view( CHART, {
                                    fetchData: true
                                } );
                            }

                            // Always show edit dialog, will be empty if view is not already configured
                            self.viewsImpl[CHART].openDialog();
                        } else {
                            debug.error( "Chart view is not defined." );
                        }
                    }
                },
                {
                    name: "show-sort-dialog",
                    labelKey: "APEX.IG.SORT",
                    icon: "icon-ig-sort",
                    action: function() {
                        self._openDialog( SORT );
                        return true; // dialog takes focus
                    }
                },
                {
                    name: "show-aggregate-dialog",
                    labelKey: "APEX.IG.AGGREGATE",
                    icon: "icon-ig-aggregate",
                    action: function() {
                        self._openDialog( AGGREGATE );
                        return true; // dialog takes focus
                    }
                },
                /* todo future
                {
                    name: "show-compute-dialog",
                    labelKey: "APEX.IG.COMPUTE",
                    icon: "icon-ig-compute",
                    hide: true,
                    action: function() {
                        self._openDialog( COMPUTE );
                        return true; // dialog takes focus
                    }
                },*/
                {
                    name: "show-flashback-dialog",
                    labelKey: "APEX.IG.FLASHBACK",
                    icon: "icon-ig-flashback",
                    hide: true,
                    action: function() {
                        self._openDialog( FLASHBACK );
                        return true; // dialog takes focus
                    }
                },
                {
                    name: "show-highlight-dialog",
                    labelKey: "APEX.IG.HIGHLIGHT",
                    icon: "icon-ig-highlight",
                    hide: true,
                    action: function() {
                        self._openDialog( HIGHLIGHT );
                        return true; // dialog takes focus
                    }
                },
                {
                    name: "show-control-break-dialog",
                    labelKey: "APEX.IG.CONTROL_BREAK",
                    icon: "icon-ig-control-break",
                    action: function() {
                        self._openDialog( CONTROL_BREAK );
                        return true; // dialog takes focus
                    }
                },
                {
                    name: "stretch-columns",
                    labelKey: "APEX.IG.STRETCH_COLUMNS",
                    hide: true,
                    get: function() {
                        var curView = self._view(),
                            reportView = self._currentReportSettings().views[curView];
                        return reportView && reportView.stretchColumns;
                    },
                    set: function( pValue ) {
                        var lReportSettings = self._currentReportSettings(),
                            curView = self._view(),
                            reportView = lReportSettings.views[ curView ];

                        if ( reportView ) {
                            reportView.stretchColumns = pValue;
                        }
                        self._setOperationUpdate( lReportSettings );
                        self._setReportSettings({
                            changeIdentifier: "views.grid.columns"
                        });
                    }
                },
                {
                    name: "change-rows-per-page",
                    labelKey: "APEX.IG.ROWS_PER_PAGE",
                    choices: [
                        {labelKey: "APEX.IG.AUTO",  value:"null"},
                        {label:"5",                 value:5},
                        {label:"10",                value:10},
                        {label:"15",                value:15},
                        {label:"20",                value:20},
                        {label:"25",                value:25},
                        {label:"50",                value:50},
                        {label:"100",               value:100},
                        {label:"1000",              value:1000}
                    ],
                    get: function() {
                        var val = self._currentReportSettings().rowsPerPage;
                        // force value to be a string
                        return ( val === null ) ? "null" : val;
                    },
                    set: function( pValue ) {
                        var lReportSettings = self._currentReportSettings();

                        // force value to be a number or null
                        pValue = ( pValue === "null" ) ? null : parseInt( pValue, 10 );

                        // Update report settings
                        lReportSettings.rowsPerPage = pValue;
                        self._setOperationUpdate( lReportSettings );
                        self._setReportSettings({
                            changeIdentifier: "rowsPerPage",
                            refreshView: true
                        });

                    }
                },
                {
                    name: "save-report",
                    labelKey: "APEX.IG.SAVE",
                    icon: "icon-ig-save",
                    action: function() {
                        var lReport = self._currentReportSettings();
                        self.updateReport( lReport.id, lReport );
                    }
                },
                {
                    name: "show-save-report-as-dialog",
                    labelKey: "APEX.IG.SAVE_AS",
                    icon: "icon-ig-save-as",
                    action: function() {
                        self._openDialog( SAVE_AS_REPORT );
                        return true; // dialog takes focus
                    }
                },
                {
                    name: "show-edit-report-dialog",
                    labelKey: "APEX.IG.EDIT",
                    icon: "icon-ig-edit",
                    action: function() {
                        self._openDialog( EDIT_REPORT );
                        return true; // dialog takes focus
                    }
                },
                {
                    name: "delete-report",
                    labelKey: "APEX.IG.DELETE",
                    icon: "icon-ig-delete",
                    action: function() {
                        message.confirm( getIGMessage( "DELETE_REPORT_CONFIRM" ),
                            function( ok ) {
                                if ( ok ) {
                                    self.deleteReport( self._report() );
                                }
                            }
                        );
                    }
                },
                {
                    name: "show-download-dialog",
                    labelKey: "APEX.IG.DOWNLOAD",
                    icon: "icon-ig-download",
                    hide: true,
                    action: function() {
                        self._openDialog( DOWNLOAD );
                        return true; // dialog takes focus
                    }
                },
                /*
                {
                    name: "show-subscription-dialog",
                    labelKey: "APEX.IG.SUBSCRIPTION",
                    icon: "icon-ig-subscription",
                    hide: true,
                    action: function() {
                        self._openDialog( SUBSCRIPTION );
                    }
                },
                */
                {
                    name: "show-help-dialog",
                    labelKey: "APEX.IG.HELP",
                    icon: "icon-ig-help",
                    action: function() {
                        var lConfig = self.options.config;

                        lang.loadMessagesIfNeeded( [ "APEX.IG.HELP.ACTIONS.INTRO_HEADING", "APEX.IG.HELP.ACTIONS.INTRO",
                            "APEX.IG.HELP.ACTIONS.REPORTING_HEADING", "APEX.IG.HELP.ACTIONS.REPORTING",
                            "APEX.IG.HELP.ACTIONS.EDITING_HEADING", "APEX.IG.HELP.ACTIONS.EDITING" ], function() {
                            var out = util.htmlBuilder();

                            function addSection( out, pContent ) {
                                var lContent = $.extend( {
                                    headingKey:     "",
                                    helpText:       "",
                                    helpTextKey:    ""
                                }, pContent );

                                if ( lContent.headingKey ) {
                                    out.markup( "<h2>" )
                                        .content( getMessage( lContent.headingKey ) )
                                        .markup( "</h2>" );
                                }
                                if ( lContent.helpText ) {
                                    out.markup( "<div" )
                                        .attr( CLASS, "apex-help-custom" )
                                        .markup( ">" )
                                        .markup( lContent.helpText )                            // Allow HTML
                                        .markup( "</div>" );
                                }
                                if ( lContent.helpTextKey ) {
                                    out.markup( "<p>" )
                                        .markup( getMessage( lContent.helpTextKey ) )       // Allow HTML
                                        .markup( "</p>" );
                                }
                            }

                            if ( lConfig.text.help ) {
                                addSection( out, {
                                    helpText: lConfig.text.help
                                });
                            }
                            addSection( out, {
                                headingKey: "APEX.IG.HELP.ACTIONS.INTRO_HEADING",
                                helpTextKey: "APEX.IG.HELP.ACTIONS.INTRO"
                            });
                            addSection( out, {
                                headingKey: "APEX.IG.HELP.ACTIONS.REPORTING_HEADING",
                                helpTextKey: "APEX.IG.HELP.ACTIONS.REPORTING"
                            });
                            if ( lConfig.editable ) {
                                addSection( out, {
                                    headingKey: "APEX.IG.HELP.ACTIONS.EDITING_HEADING",
                                    helpTextKey: "APEX.IG.HELP.ACTIONS.EDITING"
                                });
                            }

                            theme.popupFieldHelp( {
                                title: getIGMessage( "HELP.ACTIONS_TITLE" ),
                                helpText: out.toString()
                            });
                        });
                    }
                },
                {
                    name: "selection-mode", // toggle action: true if in row selection mode
                    onLabelKey: "APEX.IG.SEL_MODE_CELL",
                    offLabelKey: "APEX.IG.SEL_MODE_ROW",
                    shortcut: "F8",
                    hide: true,
                    get: function() {
                        var lViewImpl = self._currentViewImpl();
                        if ( !lViewImpl.view$ || !lViewImpl.supports.cellSelection ) {
                            return true;
                        } else {
                            return !lViewImpl.selectCells();
                        }
                    },
                    set: function( v ) {
                        var lViewImpl = self._currentViewImpl();
                        if ( lViewImpl.view$ && lViewImpl.supports.cellSelection ) {
                            lViewImpl.selectCells(!v);
                        }
                    }
                },
                {
                    name: "selection-duplicate",
                    type: ACTION,
                    labelKey: "APEX.IG.DUPLICATE_ROWS",
                    icon: "icon-ig-duplicate",
                    hide: true,
                    action: function() {
                        const lViewImpl = self._currentViewImpl();

                        if ( lViewImpl.supports.edit ) { // IG must be editable or this action would stay hidden
                            const lRecords = lViewImpl.getSelectedRecords();

                            if ( lRecords.length > 0 ) {
                                // focus view first so that it will focus the copied row and go into edit mode if needed
                                lViewImpl.focus();
                                lViewImpl.model.copyRecords( lRecords, null, lRecords[ lRecords.length - 1 ] );
                                return true; // inserting copied records should set focus to first one.
                            }
                        }
                    }
                },
                {
                    name: "selection-delete",
                    labelKey: "APEX.IG.DELETE_ROWS",
                    icon: "icon-ig-delete",
                    hide: true,
                    action: function() {
                        var i, lRecords,
                            lViewImpl = self._currentViewImpl();

                        if ( lViewImpl.supports.edit ) { // IG must be editable or this action would stay hidden
                            lRecords = lViewImpl.getSelectedRecords();

                            // exclude selected rows which may be marked for deletion already
                            for ( i = 0; i < lRecords.length; i++ ) {
                                if ( !lViewImpl.model.allowDelete( lRecords[ i ] ) ) {
                                    lRecords.splice( i, 1 );
                                    i -= 1;     // i stays the same for next iteration
                                }
                            }
                            if ( lRecords.length > 0 ) {
                                lViewImpl.model.deleteRecords( lRecords );
                            }
                        }
                    }
                },
                {
                    name: "selection-refresh",
                    labelKey: "APEX.IG.REFRESH_ROWS",
                    icon: "icon-ig-refresh",
                    action: function() {
                        const lViewImpl = self._currentViewImpl();

                        if ( lViewImpl.model.getOption( "identityField" ) ) {
                            let lRecords = lViewImpl.getSelectedRecords();

                            if ( lRecords.length > 0 ) {
                                if ( lViewImpl.supports.edit ) {
                                    lViewImpl.finishEditing().then( function () { // finish editing first, fix for Bug 34888991
                                        lViewImpl.model.fetchRecords( lRecords );
                                    } );
                                } else {
                                    lViewImpl.model.fetchRecords( lRecords );
                                }
                            }
                        }
                    }
                },
                {
                    name: "selection-revert",
                    labelKey: "APEX.IG.REVERT_CHANGES",
                    icon: "icon-ig-revert",
                    hide: true,
                    action: function() {
                        var i, lRecords,
                            lViewImpl = self._currentViewImpl();

                        if ( lViewImpl.supports.edit ) {  // IG must be editable or this action would stay hidden
                            lRecords = lViewImpl.getSelectedRecords();

                            // exclude selected rows which aren't eligible for revert
                            for ( i = 0; i < lRecords.length; i++ ) {
                                if ( !lViewImpl.model.canRevertRecord( lRecords[ i ] ) ) {
                                    lRecords.splice( i, 1 );
                                    i -= 1;     // i stays the same for next iteration
                                }
                            }
                            if ( lRecords.length > 0 ) {
                                lViewImpl.model.revertRecords( lRecords );
                                self._updateSelectionActions();
                            }
                        }
                    }
                },
                {
                    name: "selection-copy",
                    labelKey: "APEX.IG.COPY_CB",
                    icon: "icon-ig-copy",
                    action: function() {
                        var lViewImpl = self._currentViewImpl();

                        if ( lViewImpl.canCopy2Clipboard() ) {
                            lViewImpl.focus();
                            apex.clipboard.copy();
                        }
                    }
                },
                {
                    name: "refresh",
                    labelKey: "APEX.IG.REFRESH",
                    icon: "icon-ig-refresh",
                    action: function() {
                        self.refresh();
                    }
                },
                {
                    name: "reset-report",
                    labelKey: "APEX.IG.RESET",
                    disabled: true,
                    icon: "icon-ig-reset",
                    action: function() {
                        self._resetReportSettings();
                    }
                },
                {
                    name: "edit",
                    labelKey: "APEX.IG.EDIT",
                    ariaControls: this._getId( "content_container" ),
                    offStateDescription: getIGMessage( "VIEW_MODE_DESCRIPTION" ),
                    onStateDescription: getIGMessage( "EDIT_MODE_DESCRIPTION" ),
                    hide: true,
                    get: function() {
                        return self.editMode;
                    },
                    set: function( v ) {
                        self._setEditMode( v );
                    }
                },
                {
                    // todo* jjs the save button only always apply to the editable model/view[s], so we need to ensure it works like this
                    name: "save",
                    labelKey: "APEX.IG.SAVE",
                    hide: true,
                    shortcut: "Ctrl+Alt+S", // todo ctrl+alt is bad choice because AltGr
                    /*disabled: true,           todo   Commented out because of the issue with changes made in select lists not being immediately saved to the model,
                                                   and only when you tab away from the select. This results in the save button not being immediately enabled either
                                                   which is confusing.*/
                    action: function() {
                        var p, finished,
                            lConfig = self.options.config,
                            lEditableViewModelName = self.editableViewImpl.model.name;

                        // Let's only proceed with the save if the current model does not have errors
                        if ( !model.anyErrors( false, lEditableViewModelName, true ) ) {

                            finished = self.editableViewImpl.finishEditing();
                            finished.done( function() {
                                var lSaveOptions = null;

                                if ( lConfig.saveLoadingIndicatorPosition !== undefined || lConfig.saveLoadingIndicator !== undefined ) {
                                    lSaveOptions = {
                                        loadingIndicatorPosition: lConfig.saveLoadingIndicatorPosition || null,
                                        loadingIndicator: lConfig.saveLoadingIndicator || null
                                    };
                                }
                                // want to save all the related views if there are more than just what is currently in use
                                p = model.save( null, lSaveOptions, lEditableViewModelName, true );

                                if ( p ) {
                                    p.done( function( responseData ) {
                                        var i, lRegion,
                                            status = "",
                                            lMessage = "";

                                        if ( responseData.errors ) {
                                            message.clearErrors();
                                            message.showErrors( responseData.errors );
                                            status = ERROR;
                                        } else if ( responseData.regions ) {

                                            // gather any success message(s)
                                            for ( i = 0; i < responseData.regions.length; i++ ) {
                                                lRegion = responseData.regions[ i ];
                                                if ( lRegion.fetchedData && lRegion.fetchedData.successMessage ) {

                                                    // its not likely that there are multiple success messages but just in case
                                                    if ( lMessage ) {
                                                        lMessage += "<br>";
                                                    }
                                                    lMessage += lRegion.fetchedData.successMessage;
                                                }
                                            }

                                            if ( !lMessage ) {
                                                lMessage = getIGMessage( "CHANGES_SAVED" );
                                            }
                                            message.showPageSuccess( lMessage );
                                            status = "success";
                                        }
                                        // Saving does not change the selection but it does update the model for records modified.
                                        // For records inserted in the master of a master detail it is important that the detail regions
                                        // are updated so trigger the selection change logic
                                        self._selectionChange( null );

                                        self._trigger( EVENT_SAVE, null, {
                                            status: status
                                        });
                                    } ).fail( function( /* jqXHR, textStatus, errorThrown */ ) {
                                        self._trigger( EVENT_SAVE, null, {
                                            status: "fail"
                                        });
                                    } ).always( function() {
                                        // enable save button
                                        self.actions.enable( "save" );
                                    } );

                                    // disable save button temporarily
                                    self.actions.disable( "save" );
                                }
                            } );
                        } else {
                            message.alert( getMessage( "APEX.CORRECT_ERRORS" ), function() {
                                // todo focus first error
                            });
                        }
                    }
                },
                {
                    name: "selection-add-row",
                    label: lConfig.text.addRowButton,
                    hide: true,
                    action: function() {
                        const lViewImpl = self._currentViewImpl(),
                            lSelectedRecords = lViewImpl.getSelectedRecords();
                        // If in cell selection mode then no records are returned which means the row is added at the beginning.

                        // in single row view use insert-record action instead of this one
                        if ( lViewImpl.supports.singleRowView && lViewImpl.singleRowMode ) {
                            self.getActions().invoke( "insert-record" );
                            return;
                        }

                        // focus view first so that it will focus the inserted row and go into edit mode if needed
                        lViewImpl.focus();
                        // Insert after any selected rows. If no selected rows, insert at the beginning.
                        lViewImpl.model.insertNewRecord( null, lSelectedRecords[ lSelectedRecords.length - 1 ] );

                        // insertNewRecord also sets focus, so lets return true so the action knows not to set focus
                        return true;
                    }
                },
                {
                    name: "single-row-view",
                    label: getIGMessage( "SINGLE_ROW_VIEW" ),
                    icon: "icon-ig-single-row-view",
                    hide: true,
                    action: function( event, el ) {
                        var lMenuItem,
                            lRecord = null,
                            lEditMode = self.editMode,
                            lViewImpl = self._currentViewImpl();

                        // if the view supports single row view, and it is enabled, and not in that view mode already
                        if ( lViewImpl.supports.singleRowView && lViewImpl.singleRowView$ &&
                                lViewImpl.singleRowView$.length && !lViewImpl.singleRowMode ) {

                            if ( el ) {
                                lRecord = lViewImpl.getContextRecord( el )[0];
                            }
                            if ( !lRecord ) {
                                // note if in cell selection mode could return empty array
                                // Doesn't cause a serious problem will just show first record or last record
                                // most of the time an appropriate element is or should be passed in to the action.
                                lRecord = lViewImpl.getSelectedRecords()[0];
                            }

                            if ( lEditMode ) {
                                // leave edit mode in the view that is being hidden
                                lViewImpl.view$.grid( "setEditMode", false ); // todo think this assumes grid widget is all that supports edit mode
                            }
                            lViewImpl.singleRowMode = true;
                            lViewImpl.view$.hide();
                            lViewImpl.curInst = lViewImpl.singleRowView$.recordView( "instance" );

                            self._updateLandmark();

                            // selection menu doesn't apply in single row view
                            lMenuItem = self._tbFind( "selection_submenu" );
                            if ( lMenuItem ) {
                                lMenuItem.disabled = true;
                            }

                            lViewImpl.singleRowView$.show().recordView( RESIZE );
                            if ( lRecord ) {
                                lViewImpl.setSelectedRecords( [lRecord] );
                            }
                            if ( lEditMode ) {
                                // enter edit mode in the view that is being shown
                                lViewImpl.singleRowView$.recordView( "setEditMode", true );
                            } else {
                                lViewImpl.singleRowView$.recordView( "focus" );
                            }
                            return true;
                        }
                    }
                },
                {
                    name: "row-add-row",
                    label: getIGMessage( "ADD_ROW" ),
                    icon: "icon-ig-add-row",
                    hide: true,
                    action: function( menu, el ) {
                        const lViewImpl = self._currentViewImpl(),
                            lRecords = lViewImpl.getContextRecord( el );

                        // focus view first so that it will focus the inserted row and go into edit mode if needed
                        lViewImpl.focus();
                        // Insert new row straight after current row
                        lViewImpl.model.insertNewRecord( null, lRecords[ 0 ] );

                        // insertNewRecord also sets focus, so lets return true so the action knows not to set focus
                        return true;
                    }
                },
                {
                    name: "row-duplicate",
                    label: getIGMessage( "DUPLICATE_ROW" ),
                    icon: "icon-ig-duplicate",
                    hide: true,
                    action: function ( menu, el ) {
                        const lViewImpl = self._currentViewImpl(),
                            lRecords = lViewImpl.getContextRecord( el );

                        // focus view first so that it will focus the copied row and go into edit mode if needed
                        lViewImpl.focus();
                        lViewImpl.model.copyRecords( lRecords, null, lRecords[ 0 ] );

                        return true; // inserting copied records should set focus to first one.
                    }
                },
                {
                    name: "row-delete",
                    label: getIGMessage( "DELETE_ROW" ),
                    icon: "icon-ig-delete",
                    hide: true,
                    action: function ( menu, el ) {
                        var lViewImpl = self._currentViewImpl(),
                            lRecords = lViewImpl.getContextRecord( el );

                        lViewImpl.model.deleteRecords( lRecords );
                    }
                },
                {
                    name: "row-refresh",
                    label: getIGMessage( "REFRESH_ROW" ),
                    icon: "icon-ig-refresh",
                    action: function ( menu, el ) {
                        var lViewImpl = self._currentViewImpl(),
                            lRecords = lViewImpl.getContextRecord( el );

                        lViewImpl.model.fetchRecords( lRecords );
                    }
                },
                {
                    name: "row-revert",
                    label: getIGMessage( "REVERT_CHANGES" ),
                    icon: "icon-ig-revert",
                    hide: true,
                    action: function ( menu, el ) {
                        var lViewImpl = self._currentViewImpl(),
                            lRecords = lViewImpl.getContextRecord( el );

                        // put focus back before doing revert so it will refocus after dom is replaced
                        lViewImpl.focus();
                        lViewImpl.model.revertRecords( lRecords );
                    }
                }
            ]);
        },
        _initToolbar: function() {
            var lActionsMenu$,
                lData = this.options.config.toolbarData,
                self = this;

            // Initialise the toolbar
            delete lData.toolbarFind; // this method if present is no longer needed because have find method
            delete lData.toolbarRemove;
            delete lData.toolbarInsertAfter;
            this.toolbar$ = this._getElement( "toolbar" ).toolbar({
                label: lang.formatMessage( "APEX.IG.TOOLBAR" ),
                actionsContext: this.actions,
                data: lData
            });

            // Cache the toolbar menus
            lActionsMenu$ = this._tbFindElement( "actions_button_menu" ); // todo think: this is using internal knowledge of how toolbar forms the menu id

            // Hide any toolbar controls that do not have actions associated directly with them (text fields, menu buttons)
            this._tbFindElement( "column_filter_button" ).hide();
            this._tbFindElement( "search_field" ).hide();
            this._tbFindElement( "actions_button" ).hide();

            // Set default filter column if defined
            if ( this._currentReportSettings().defaultFilterColumn ) {
                this._setFilterColumn( this._currentReportSettings().defaultFilterColumn.columnId );
            } else {
                this._setFilterColumn( null );      // set to null for 'all text columns'
            }

            // Show rows per page in actions menu if pagination type permits
            lActionsMenu$.on( "menubeforeopen", function() {
                var menuItem;

                // todo if we improve this to not show when the IG has a fixed height, then ensure this is also done on the server
                menuItem = lActionsMenu$.menu( "find", "rows" );
                if ( menuItem ) {
                    menuItem.hide = ( self.options.config.pagination.type !== SET );
                }
            });
        },

        _getId: function ( pId ) {
            return ( pId ? this.idPrefix + "_" + pId : "" );
        },
        _getIdSelector: function ( pId ) {
            return "#" + this._getId( pId );
        },
        _getElement: function( pId ) {
            return $( this._getIdSelector( pId ) );
        },
        _setEditMode: function( pEditMode ) {
            const
                lCurrentViewImpl = this._currentViewImpl(),
                self = this,
                lColumns = this.options.config.columns,
                lContentContainer = this._getElement( "content_container" );
            let lSetReportSettings = false;

            function setEditMode() {

                lCurrentViewImpl.setEditMode( self.editMode );

                // If going into edit mode, focus on grid
                if ( pEditMode ) {

                    // toggle items are not expected to change the focus so do this after the action sets the focus
                    // todo JJS consider if edit should be an action or if toggles should never set focus the problem is that this causes flashing of focus in the cell
                    setTimeout( function() {
                        lCurrentViewImpl.focus();
                    }, 100 );

                }
            }

            // Update widget global
            this.editMode = pEditMode;

            if ( pEditMode ) {

                // First let's get a list of all required columns for the IG
                let lRequiredColumns = {};
                for ( let i = 0; i < lColumns.length; i++ ) {
                    if ( lColumns[ i ].validation && lColumns [ i ].validation.isRequired ) {
                        lRequiredColumns[ lColumns[ i ].id ] = lColumns[ i ];
                    }
                }

                // Only carry on if there are required columns
                if ( Object.keys( lRequiredColumns ).length > 0 ) {
                    const lCurrentViewColumns = this._getCurrentView().columns;

                    for ( let i = 0; i < lCurrentViewColumns.length; i++ ) {

                        // If this is a required column, and it is not currently visible, show it
                        if ( lRequiredColumns[ lCurrentViewColumns[ i ].columnId ] && !lCurrentViewColumns[ i ].isVisible ) {

                            // If this required column is currently hidden, show it
                            lCurrentViewColumns[ i ].isVisible = true;
                            this._setOperationUpdate( lCurrentViewColumns[ i ] );

                            lSetReportSettings = true;

                        }
                    }

                    if ( lSetReportSettings ) {
                        this._setReportSettings({
                            changeIdentifier: "views.grid.columns"
                        }, setEditMode );
                    }
                }
            }

            if ( !lSetReportSettings ) {
                setEditMode();
                lContentContainer.attr( A_LABEL, this._getLandmarkLabel() );
            }

        },

        // Called to configure a view. If view is not yet configured loads the configuration dialog. If view is configured
        // opens the configuration dialog with the current settings. Also switches to the view if it is not already the
        // current view.
        _configureView: function( pViewId ) {
            // If view is already configured, switch to it
            if ( this.viewsImpl[ pViewId ].isConfigured() ) {
                this._view( pViewId, {
                    fetchData: true
                });
            }

            // Always show edit dialog, will be empty if view is not already configured
            this.viewsImpl[ pViewId ].openDialog();
        },

        // Gets an IG column object from the config
        _getColumn: function( pColumnId ) {
            return this.columnMap[ pColumnId ];
        },
        _getColumnByName: function( pColumnName ) {
            var i,
                lColumns = this.options.config.columns;

            for ( i = 0; i < lColumns.length; i++ ) {
                if ( lColumns[ i ].name === pColumnName ) {
                    return lColumns[ i ];
                }
            }

            // If the function has not yet returned, this must be because a column name was passed that was not found, so let's warn
            debug.warn( "No column exists with name: ", pColumnName );
        },
        _getColumnByStaticId: function( pStaticId ) {
            var i,
                lColumns = this.options.config.columns;

            for ( i = 0; i < lColumns.length; i++ ) {
                if ( lColumns[ i ].staticId === pStaticId ) {
                    return lColumns[ i ];
                }
            }

            // If the function has not yet returned, this must be because a column static ID was passed that was not found, so let's warn
            debug.warn( "No column exists with static ID: ", pStaticId );
        },
        // For a given IG column, checks if the textCase attribute is set, if it is either 'upper' or 'lower', returns
        // the appropriate utility class (that will pick up the appropriate CSS text-transform value). If either 'mixed'
        // is defined, or null, then the function returns undefined.
        _getTextTransformClass: function( pColumn ) {
            var lTextTransform,
                lTextCase = pColumn.filter.textCase,
                TEXT_TRANSFORM_MAP = {
                    lower: C_TEXT_LOWER,
                    upper: C_TEXT_UPPER
                };

            if ( lTextCase ) {
                lTextTransform = TEXT_TRANSFORM_MAP[ lTextCase.toLowerCase() ];
            }
            return lTextTransform;
        },
        _convertNamesToLabels: function( pExpression ) {
            var i,
                lColumns = this.options.config.columns,
                lColumnMap = {};

            for ( i = 0; i < lColumns.length; i++ ) {
                lColumnMap[ lColumns[i].name ] = lColumns[ i ].heading.label;
            }
            if ( pExpression && pExpression !== "" ) {
                return pExpression.replace(/(")(.*?)(")/g, function ( pMatch, p1, p2 ) { return "\"" + lColumnMap[ p2 ] + "\""; } );
            } else {
                return pExpression;
            }
        },
        _convertLabelsToNames: function( pExpression ) {
            var i,
                lColumns = this.options.config.columns,
                lColumnMap = {};

            for ( i = 0; i < lColumns.length; i++ ) {
                lColumnMap[ lColumns[i].heading.label ] = lColumns[ i ].name;
            }

            if ( pExpression && pExpression !== "" ) {
                return pExpression.replace(/(")(.*?)(")/g, function ( pMatch, p1, p2 ) { return "\"" + lColumnMap[ p2 ] + "\""; } );
            } else {
                return pExpression;
            }
        },
        _getColumnLabel: function( pColumnId ) {
            var lLabel,
                lColumn = this._getColumn( pColumnId );

            if ( !lColumn.isHidden ) {
                lLabel = lColumn.heading.label;
            } else {
                debug.info( "_getColumnLabel called on hidden column, check calling logic", pColumnId );
            }
            return lLabel;
        },
        // Determine if a column is filterable
        _isColumnFilterable: function( pColumnId ) {
            var lIGColumn = this._getColumn( pColumnId );

            return ( !lIGColumn.specialType && lIGColumn.filter && !lIGColumn.isHidden );
        },
        // Determine if a column has a filter lov
        _hasColumnFilterLov: function( pColumnId ) {
            const lIGColumn = this._getColumn( pColumnId );

            return ( lIGColumn.filter && lIGColumn.filter.hasLov );
        },
        // Gets the object containing all the metadata for the current view in the current saved report
        _getColumnType: function( /* pColumnId */ ) {
            return COLUMN;      //todo hard-coded COLUMN type
        },

        _getCurrentView: function() {
            var effectiveReportView = this._view(),
                o = this.options,
                lConfigViews = o.config.views,
                sharedView = lConfigViews[effectiveReportView].useModelFrom;

            // when there is a shared model use the report view settings from the shared model view
            if ( sharedView && lConfigViews[sharedView].shareModel ) {
                effectiveReportView = sharedView;
            }
            return o.savedReports[ this.currentSavedReportIdx ].views[ effectiveReportView ];
        },

        _currentViewImpl: function() {
            return this.viewsImpl[ this._view() ];
        },

        // getter / setter for current view in the current saved report, setting view both updates UI and metadata
        // get and set both deal with view Identifier.
        // Note: This does not itself set the new view state on the server, that will be done when the view makes its first request for data.

        _view: function( pViewId, pOptions ) {
            var i, lResizeDone,
                key, lViewImpl, lOldViewImpl, lConfigViewFeatures, lSupports, lMenuItem,
                self = this,
                lConfig = this.options.config,
                lActions = this.actions,
                lHasFilterableColumns = false,
                lHasTextFilterableColumns = false,
                lCurrentSavedReport = this._currentReportSettings(),
                lCreated = false,
                lColumnMenuChoices = [],
                lOptions = $.extend( {
                    initialData: null,
                    fetchData: false
                }, pOptions );

            if ( pViewId ) {

                // Changing views while there are unsaved changes may show data inconsistencies but doesn't lose the changes.
                // This is just another scenario where users have to deal with the possibility of stale data following a change
                // (aggregates being another). Saving changes is always based on the editable view rather than the current view.

                lOldViewImpl = this._currentViewImpl();

                // First check if the new view is configured. If it is then it can be created if needed and shown otherwise open its configuration dialog
                if ( this.viewsImpl[ pViewId ].isConfigured() ) {

                    /*
                     * This is the beginning of the actual view switching logic
                     */

                    // Update widget state
                    lCurrentSavedReport.currentView = pViewId;

                    lViewImpl = this._currentViewImpl();
                    lConfigViewFeatures = lConfig.views[pViewId].features;
                    lSupports = lViewImpl.supports;

                    // Hide the old view
                    if ( lOldViewImpl && lOldViewImpl.view$ ) {
                        lOldViewImpl.hide();
                    }

                    // if not already initialized create the view for the first time, this also sets up the model
                    // and calls the view initialisation
                    if ( !lViewImpl.view$ ) {

                        // Show the new view
                        this._getElement( lViewImpl.elementId ).show();

                        lViewImpl.view$ = this._getElement( lViewImpl.elementId );

                        // Call views setColumnConfig method, this will set member variable modelColumns
                        lViewImpl.setColumnConfig({
                            baseModelColumns:      this.baseModelColumns,
                            igConfig:              lConfig,
                            ig:                    this,
                            currentReportSettings: lCurrentSavedReport
                        });

                        // We have everything we need to create the model for this view
                        lOptions.viewImpl = lViewImpl;
                        this._setModel( lOptions );

                        // If this view is the editable one for this IG, then let's store it as a member variable
                        if ( lOptions.viewImpl.supports.edit ) {
                            this.editableViewImpl = lOptions.viewImpl;
                        }

                        // Call current view's initialisation, passing in the view's container ID, and widget config
                        lViewImpl.initView({
                            ig$:                   this.element,
                            ig:                    this,
                            igConfig:              lConfig,
                            currentReportSettings: lCurrentSavedReport
                        });

                        this._setInitialSelection( 0 );
                        lCreated = true;
                    } else {

                        // else just show the existing view
                        lViewImpl.show();

                        // We need to update the model with the new view information
                        this._updateModelRegionData( lViewImpl );

                        // if view settings changed while the view was not visible refresh now
                        if ( lViewImpl.pendingRefresh ) {
                            lViewImpl.pendingRefresh = false;
                            lViewImpl.refresh();
                        }
                        // Also update report settings on the server, so the current view is stored properly
                        this._setReportSettings({
                            changeIdentifier: "view.change"
                        });
                    }

                    // Report settings
                    // Don't refresh report settings until after new view exists because this can call resize which can call back into the view
                    lResizeDone = this._refreshReportSettings();

                    /*
                     * Update other UI that is view dependent
                     */
                    this._updateLandmark();

                    lColumnMenuChoices.push({
                        labelKey: "APEX.IG.ALL_TEXT_COLUMNS",
                        value: null
                    });

                    // Update column search menu choices
                    for( key in lViewImpl.modelColumns ) {
                        if ( hasOwnProperty( lViewImpl.modelColumns, key ) ) {

                            // Store column menu choices
                            if ( lViewImpl.modelColumns[ key ].id ) {
                                // is the column filterable?
                                if ( this._isColumnFilterable( lViewImpl.modelColumns[ key ].id ) ) {
                                    lHasFilterableColumns = true;
                                    // is it a text column (varchar2, clob) ...?
                                    if ( [ VARCHAR2, CLOB ].includes( this._getColumn(lViewImpl.modelColumns[ key ].id).filter.dataType ) ) {
                                        // does it support the CONTAINS operator?
                                        for ( i = 0; i < this._getColumn(lViewImpl.modelColumns[ key ].id).filter.operators.length; i++ ) {
                                             if ( [ "$perform$", "C" ].includes( this._getColumn(lViewImpl.modelColumns[ key ].id).filter.operators[i].name ) ) {
                                                 lHasTextFilterableColumns = true;
                                                 lColumnMenuChoices.push({
                                                     label: lViewImpl.modelColumns[ key ].label,
                                                     value: lViewImpl.modelColumns[ key ].id
                                                 });
                                             }
                                        }
                                    }
                                }
                            }
                        }
                    }

                    // has Oracle TEXT been enabled?
                    if ( lConfig.filter.oracleText ) {
                        lHasTextFilterableColumns = true;
                    }

                    lActions.lookup( "filter-column" ).choices = lColumnMenuChoices;
                    lActions.updateChoices( "filter-column" );

                    // update the change view actions, and pill visibility
                    this._updateChangeViewActions();

                    // Disable toolbar search controls when there are no filterable text columns supporting CONTAINS or Oracle TEXT is not enabled
                    this._toggleEnableAction( lHasTextFilterableColumns, "search" );
                    if ( lConfig.toolbar && lConfig.toolbar.searchField && lConfig.toolbar.columnSelection ) {
                        this._tbFindElement( "column_filter_button" ).prop( DISABLED, !lHasTextFilterableColumns );
                    }


                    // creating a view will resize it, so only resize if not created
                    // also avoid doing another resize if it was already done by  _refreshReportSettings
                    if ( !lCreated && !lResizeDone ) {
                        // resize the view in case the container changed size while it was not visible
                        lViewImpl.resize();
                    }

                    // update actions based on what the view supports and what is configured

                    // there is just one editable view
                    this._toggleEnableAction( lConfig.editable && lSupports.edit,
                        [ "edit", "save", "selection-add-row",      //todo save will change when we have save disabled state hooked up
                          // if not editable then disable these here so we don't have to update on each selection change
                          "selection-add-row", "row-add-row", "selection-duplicate", "row-duplicate",
                          "selection-delete", "row-delete", "selection-revert", "row-revert" ] );
                    this._toggleEnableAction( lConfig.editable && lSupports.edit && lSupports.singleRowView,
                        [ "insert-record", "delete-record", "revert-record", "duplicate-record" ]);

                    // configurable per view
                    this._toggleEnableAction( lSupports.controlBreak && lConfigViewFeatures.controlBreak, "show-control-break-dialog" );
                    this._toggleEnableAction( lSupports.aggregation && lConfigViewFeatures.aggregate, "show-aggregate-dialog" );
                    this._toggleEnableAction( lSupports.highlight && lConfigViewFeatures.highlight, "show-highlight-dialog" );
                    this._toggleEnableAction( lSupports.changeRowsPerPage && lConfigViewFeatures.changeRowsPerPage, "change-rows-per-page" ); // todo this doesn't do what we think; has no impact on the choices
                    this._toggleEnableAction( lSupports.singleRowView && lConfigViewFeatures.singleRowView, [ "single-row-view", "refresh-record" ] );
                    this._toggleShowAction( lViewImpl.canCopy2Clipboard(), "selection-copy" );
                    // todo jjs consider if copy 2 clipboard not supported and not editable what use is there in cell selection?
                    this._toggleShowAction( lViewImpl.model.getOption( "identityField" ), "selection-refresh" );

                    // global for all views
                    this._toggleShowAction( lSupports.cellSelection, "selection-mode" );
                    lMenuItem = this._tbFind( "selection_submenu" );
                    if ( lMenuItem ) {
                        lMenuItem.disabled = !lViewImpl.selectionEnabled();
                    }
                    this._toggleEnableAction( lSupports.configurableColumns, ["show-columns-dialog", "stretch-columns"] );
                    this._toggleEnableAction( lSupports.filter && lConfig.features.filter, "show-filter-dialog" );
                    // disable "filter" menu option when there are no filterable columns
                    if ( !lHasFilterableColumns ) {
                        this._toggleEnableAction( false, "show-filter-dialog" );
                    }
                    this._toggleEnableAction( lSupports.sort, "show-sort-dialog" );
                    this._toggleEnableAction( lSupports.download && lConfig.features.download, "show-download-dialog" );

                    // Trigger the viewChange event
                    this._trigger( EVENT_VIEW_CHANGE, null, {
                        view: pViewId,
                        created: lCreated
                    });

                    // Trigger the selection change logic, as selection can be different across views
                    this._selectionChange( null );

                    // let each view update any view specific actions when the view changes
                    this._forEachView( function( viewId, view ) {
                        view.viewChanged( viewId === pViewId, self, lConfig );
                    });

                } else {
                    this.viewsImpl[ pViewId ].openDialog();
                }

            } else {
                return lCurrentSavedReport.currentView;
            }
        },

        _destroyAllModels: function() {
            var self = this;

            this._forEachView( function( viewId, view ) {
                // Remove all models for each registered view
                self._setModel( {
                    viewImpl: view,
                    remove: true
                } );

                // Destroy old view if there is one
                if ( view.view$ ) {
                    view.hide(); // hide first to make sure it takes up no space when views are recreated
                    view.destroyView( self );
                    view.view$ = null;
                }
            } );
        },

        // Gets, or sets the current saved report
        _report: function ( pReportId ) {
            var i, lViewImpl,
                o = this.options;

            if ( pReportId ) {

                // todo jjs THINK it would be so much better if changing (or resetting) reports didn't destroy and recreate models and views
                // First let's clear up all old models and views
                this._destroyAllModels();

                // Clear any success messages
                message.hidePageSuccess();

                // Find the index to the report being changed to, and store the index in widget state
                for ( i = 0; i < o.savedReports.length; i++ ) {
                    if ( o.savedReports[ i ].id === pReportId ) {
                        this.currentSavedReportIdx = i;
                        break;
                    }
                }

                lViewImpl = this._currentViewImpl();

                // Hide all registered views
                this._forEachView( function( viewId, view ) {
                    if ( view.view$ ) {
                        view.hide();
                    }
                } );

                // if the current view exists, cache it
                if ( !lViewImpl.view$ ) {
                    lViewImpl.view$ = this._getElement( lViewImpl.elementId );
                }

                this._updateLandmark();

                lViewImpl.view$.show();


                // Call views setColumnConfig method, this will set member variable modelColumns
                lViewImpl.setColumnConfig({
                    baseModelColumns:   this.baseModelColumns,
                    igConfig:           o.config,
                    currentReportSettings: this._currentReportSettings(),
                    ig:                 this
                });

                // when the report changes we assume it affects the data
                this.reportSettingsSeq += 1;

                // We have everything we need to create the model for this view
                this._setModel({
                    viewImpl:          lViewImpl
                    // no need to updateComponent as the view is re-initialised
                });

                // Call current view's initialisation, passing in the view's container ID, and widget config
                lViewImpl.initView({
                    ig$:                this.element,
                    ig:                 this,
                    igConfig:           o.config,
                    currentReportSettings: this._currentReportSettings()
                });

                // update actions
                this._updateActions();
                // when changing reports the view is never in edit mode so update edit action
                this.editMode = false;
                this.actions.update( "edit" );

                // Update change view action, views may be different for different report
                this._updateChangeViewActions();

                // Also clear search field
                this._clearToolbarSearch();

                // The view may not have changed but it was recreated so trigger the viewChange event
                this._trigger( EVENT_VIEW_CHANGE, null, {
                    view: lViewImpl.internalIdentifier,
                    created: true
                });

                // Report settings
                this._refreshReportSettings();

                // We need to update the model with the new report information
                this._updateModelRegionData( lViewImpl );
                this.refresh();

                // Trigger report change event
                this._trigger( EVENT_REPORT_CHANGE, null, {
                    report: this._report()
                });

            } else {
                return this._currentReportSettings().id;
            }
        },
        // getter for current report settings, in case of set this also updates the UI
        _currentReportSettings: function() {
            return this.options.savedReports[ this.currentSavedReportIdx ];
        },

        _updateModelRegionData: function( viewImpl ) {
            var effectiveReportView = viewImpl.internalIdentifier,
                lConfigViews = this.options.config.views,
                sharedView = lConfigViews[effectiveReportView].useModelFrom,
                lRequestData = viewImpl.model.getOption( "regionData" );

            lRequestData.reportId = this._report();
            // when there is a shared model use the report view settings from the shared model view
            if ( sharedView && lConfigViews[sharedView].shareModel ) {
                effectiveReportView = sharedView;
            }
            lRequestData.view = effectiveReportView;
        },

        _updateLandmark: function() {

            // Set accessible name for the grid container
            this._getElement( "content_container" ).attr( A_LABEL, this._getLandmarkLabel() );

        },

        // todo use css to add the '...'
        // todo jjs this could be a module level function rather than a widget member (more efficient to call and more private)
        _shortenString: function ( pString, pChars ) {
            var lChars = ( pChars ? pChars: 20 );
            return ( pString.length > lChars ? pString.substr( 0, lChars ) + "..." : pString );
        },

        _adjustControlBreakSort: function() {

            // This function adjusts the displayed sort order in the column header and
            // is being called after changes in Control Breaks or Sorts.
            // The goal is to label the sorted columns by increasing numbers, starting with 1
            // and without gaps. The function does only affect grid display, not the report
            // settings.

            var lSortsArray = [],
                self = this,
                lCurrentReportColumns = self._getCurrentView().columns,
                i, j
                ;

            for ( i = 0; i < lCurrentReportColumns.length; i++ ) {
                if ( lCurrentReportColumns[ i ].sort &&
                    lCurrentReportColumns[ i ].sort.order !== null &&
                    !( lCurrentReportColumns[ i ].break && lCurrentReportColumns[ i ].break.isEnabled )
                ) {
                    lSortsArray.push( {
                        columnId: lCurrentReportColumns[ i ].columnId,
                        order:    lCurrentReportColumns[ i ].sort.order
                    } ) ;
                }
            }
            lSortsArray.sort( function ( a, b ) { return a.order - b.order; } );

            for ( i = 0; i < lSortsArray.length; i++ ) {
                for ( j = 0; j < lCurrentReportColumns.length; j++ ) {
                    if ( lSortsArray[ i ].columnId === lCurrentReportColumns[ j ].columnId ) {
                        $.extend( self._currentViewImpl().modelColumns[ self._getColumn( lCurrentReportColumns[ j ].columnId ).name ], {
                            sortIndex: i + 1
                        });
                    }
                }
            }
        },

        // Returns the display label for a setting. Returns safe, escaped text.
        // todo case sensitive suffix, to show when isCaseSensitive = true and when appropriate (row always, or column with certain operators).
        _getSettingLabel: function( pType, pSetting ) {
            var lSettingLabel, lValues,
                lMsgName = "APEX.IG.",
                MSG_FMT_X_OP_Y = [ EQUALS, NOT_EQUALS, GREATER_THAN, GREATER_THAN_OR_EQUALS, LESS_THAN, LESS_THAN_OR_EQUALS,
                                   LIKE, NOT_LIKE, CONTAINS, DOES_NOT_CONTAIN, MATCHES_REGULAR_EXPRESSION,
                                   STARTS_WITH, DOES_NOT_START_WITH, ORACLE_TEXT ],
                MSG_FMT_X_OP = [ IS_NULL, IS_NOT_NULL ],
                MSG_FMT_X_BETWEEN_Y_AND_Z = [ BETWEEN, NOT_BETWEEN],
                MSG_FMT_X_RANGE_UNIT = [ IN_THE_LAST, NOT_IN_THE_LAST, IN_THE_NEXT, NOT_IN_THE_NEXT ];

            function formatDate( pCanonicalDate, pFormatMask ) {
                if ( pCanonicalDate && pCanonicalDate.match( /^\d{14}/ ) !== null ) {
                    return date.format( date.parse( pCanonicalDate, CANNONICAL_FORMAT ), pFormatMask );
                } else {
                    return "";
                }
            }

            function formatNumber( pValue, pFormatMask ) {
                const num = locale.formatNumber( pValue, pFormatMask );

                if ( num !== "NaN" ) {
                    return num;
                } else {
                    return pValue;
                }
            }

            let column;

            switch ( pType ) {
                case FILTER:
                    switch ( pSetting.type ) {
                        case COLUMN:
                            column = this._getColumn( pSetting.columnId );
                            lMsgName += "X.";

                            // if there is no column id on the filter, get first column id as a default
                            pSetting.columnId = pSetting.columnId ? pSetting.columnId : this._getCurrentView().columns[0].columnId;

                            // First the messages of format: x.[operator].y
                            if ( MSG_FMT_X_OP_Y.includes( pSetting.operator ) ) {
                                lMsgName += OPERATOR[ pSetting.operator ] + ".Y";

                                if ( DATE_TIMESTAMP_ARRAY.includes( column.filter.dataType ) ) {
                                    lSettingLabel = lang.formatMessage(
                                        lMsgName,
                                        this._getColumnLabel( pSetting.columnId ),
                                        formatDate(
                                            ( pSetting.hiddenValue ? pSetting.hiddenValue : pSetting.value ),
                                            column.appearance.dateFormatMask
                                        )
                                    );
                                } else if ( column.filter.dataType === NUMBER ) {
                                    lSettingLabel = lang.formatMessage(
                                        lMsgName,
                                        this._getColumnLabel( pSetting.columnId ),
                                        formatNumber(
                                            ( pSetting.hiddenValue ? pSetting.hiddenValue : pSetting.value ),
                                            column.appearance.formatMask
                                        )
                                    );
                                } else {
                                    lSettingLabel = lang.formatMessage( lMsgName, this._getColumnLabel( pSetting.columnId ), pSetting.value );
                                }
                            }

                            // IN filter - change \u0001 separator to the value of IN_DELIMITER
                            if ( [ IN, NOT_IN ].includes( pSetting.operator ) ) {
                                lMsgName += OPERATOR[ pSetting.operator ] + ".Y";
                                lSettingLabel = lang.formatMessage( lMsgName, this._getColumnLabel( pSetting.columnId ), pSetting.value.split( "\u0001" ).join( IN_DELIMITER + " " ) );

                            }
                            // is null, is not null
                            if ( MSG_FMT_X_OP.includes( pSetting.operator ) ) {
                                lMsgName += OPERATOR[ pSetting.operator ];

                                lSettingLabel = lang.formatMessage( lMsgName, this._getColumnLabel( pSetting.columnId ) );
                            }

                            // between / not between
                            if ( MSG_FMT_X_BETWEEN_Y_AND_Z.includes( pSetting.operator ) ) {
                                lMsgName += OPERATOR[ pSetting.operator ] + ".Y.AND.Z";

                                if ( pSetting.hiddenBetween || pSetting.hiddenAnd ) {
                                    lValues = [ pSetting.hiddenBetween, pSetting.hiddenAnd ];
                                } else {
                                    lValues = pSetting.value.split( FILTER_SEPARATOR );
                                }
                                if ( DATE_TIMESTAMP_ARRAY.includes( column.filter.dataType ) ) {
                                    lSettingLabel = lang.formatMessage(
                                        lMsgName,
                                        this._getColumnLabel( pSetting.columnId ),
                                        formatDate( lValues[ 0 ], column.appearance.dateFormatMask ),
                                        formatDate( lValues[ 1 ], column.appearance.dateFormatMask )
                                    );
                                } else if ( column.filter.dataType === NUMBER ) {
                                    lSettingLabel = lang.formatMessage(
                                        lMsgName,
                                        this._getColumnLabel( pSetting.columnId ),
                                        formatNumber( lValues[ 0 ], column.appearance.formatMask ),
                                        formatNumber( lValues[ 1 ], column.appearance.formatMask )
                                    );
                                } else {
                                    lSettingLabel = lang.formatMessage( lMsgName, this._getColumnLabel( pSetting.columnId ), lValues[ 0 ], lValues[ 1 ] );
                                }
                            }

                            // in the last / next x mins,days, etc.
                            if ( MSG_FMT_X_RANGE_UNIT.includes( pSetting.operator ) ) {

                                lValues = pSetting.value.split( FILTER_SEPARATOR );

                                if ( lValues.length !== 2 ) {
                                    lValues = [ "", "MI" ];
                                }

                                // 1 is stored as part of a string in the DB column
                                if ( lValues[ 0 ] === "1" ) {
                                    lMsgName += OPERATOR[ pSetting.operator ] + "_" + UNIT[ lValues[ 1 ] ];
                                    lSettingLabel = lang.formatMessage( lMsgName, this._getColumnLabel( pSetting.columnId ) );
                                } else {
                                    lMsgName += OPERATOR[ pSetting.operator ] + ".Y." + UNIT[ lValues[ 1 ] ] + "S";
                                    lSettingLabel = lang.formatMessage( lMsgName, this._getColumnLabel( pSetting.columnId ), lValues[ 0 ] );
                                }
                            }

                            /*
                            if ( pSetting.isCaseSensitive ) {
                                lSettingLabel += " " + getIGMessage( "CASE_SENSITIVE_WITH_BRACKETS" );
                            }
                            */

                            break;
                        case COMPLEX:
                            lSettingLabel = pSetting.name;
                            break;
                        case ROW:
                            lMsgName += "SEARCH_FOR.X";
                            lSettingLabel = lang.formatMessage( lMsgName, pSetting.search || pSetting.value );

                            /*
                            if ( pSetting.isCaseSensitive ) {
                                lSettingLabel += " " + getIGMessage( "CASE_SENSITIVE_WITH_BRACKETS" );
                            }
                            */
                            break;
                    }
                    break;
                case CONTROL_BREAK:
                    lSettingLabel = this._getColumnLabel( pSetting.columnId );
                    break;
                case AGGREGATE:
                    lSettingLabel = getIGMessage( pSetting.function ) + " (" + this._getColumnLabel( pSetting.columnId ) + ")";
                    break;
                case HIGHLIGHT:
                    lSettingLabel = this._shortenString( pSetting.name ? pSetting.name : this._getColumnLabel( pSetting.condition.columnId ) );
                    break;
                case FLASHBACK:
                    if ( pSetting.minsAgo === 1 ) {
                        lMsgName += "REPORT_DATA_AS_OF_ONE_MINUTE_AGO";
                        lSettingLabel = getMessage( lMsgName );
                    } else {
                        lMsgName += "REPORT_DATA_AS_OF.X.MINUTES_AGO";
                        lSettingLabel = lang.formatMessage( lMsgName, pSetting.minsAgo );
                    }
                    break;
            }

            return lSettingLabel;

        },
        _getSettingSummaryLabel: function( pType, pSetting ) {
            var lSettingSummaryLabel,
                lMsgName = "APEX.IG.";

            switch( pType ) {
                case FILTER:
                    switch ( pSetting.type ) {
                        case COLUMN:
                            lSettingSummaryLabel = this._getColumnLabel( pSetting.columnId );
                            break;
                        case COMPLEX:
                            lSettingSummaryLabel = this._shortenString( pSetting.name );
                            break;
                        case ROW:
                            lSettingSummaryLabel = "'" + this._shortenString( pSetting.value, 18 ) + "'";
                            break;
                    }
                    break;
                case CONTROL_BREAK:
                    lSettingSummaryLabel = this._getColumnLabel( pSetting.columnId );
                    break;
                case HIGHLIGHT:
                    lSettingSummaryLabel = this._shortenString( pSetting.name ? pSetting.name : this._getColumnLabel( pSetting.condition.columnId ) );
                    break;
                case FLASHBACK:
                    if ( pSetting.minsAgo === 1 ) {
                        lMsgName += "ONE_MINUTE_AGO";
                        lSettingSummaryLabel = getMessage( lMsgName );
                    } else {
                        lMsgName += "X.MINUTES_AGO";
                        lSettingSummaryLabel = lang.formatMessage( lMsgName, pSetting.minsAgo );
                    }
                    break;
                case AGGREGATE:
                    lSettingSummaryLabel = this._shortenString( this._getColumnLabel( pSetting.columnId ) );
                    break;

            }

            return lSettingSummaryLabel;

        },

        /*
         * Report settings
         * todo consider if we should store this total in state, instead of calculating it each time.
         */
        _getTotalReportSettings: function() {
            var i,
                lTotalSettingsCount = 0,
                lCurrentSavedReportView = this._getCurrentView(),
                lCurrentSavedReport = this._currentReportSettings();

            // Report wide settings
            if ( lCurrentSavedReport.filters ) {
                lTotalSettingsCount += lCurrentSavedReport.filters.length;
            }
            if ( lCurrentSavedReport.flashback ) {
                lTotalSettingsCount += 1;
            }

            // Some settings are view specific
            switch ( this._view() ) {
                case GRID:
                    for ( i = 0; i < lCurrentSavedReportView.columns.length; i++ ) {
                        if ( lCurrentSavedReportView.columns[ i ].break ) {
                            lTotalSettingsCount += 1;
                        }
                    }
                    if ( lCurrentSavedReportView.highlights ) {
                        lTotalSettingsCount += lCurrentSavedReportView.highlights.length;
                    }
                    if ( lCurrentSavedReportView.aggregations ) {
                        lTotalSettingsCount += lCurrentSavedReportView.aggregations.length;
                    }
                    break;
                /*
                case GROUP_BY:
                    if ( lCurrentSavedReportView.highlights ) {
                        lTotalSettingsCount += lCurrentSavedReportView.highlights.length;
                    }
                    break;
                */
                /*
                case PIVOT:
                    if ( lCurrentSavedReportView.highlights ) {
                        lTotalSettingsCount += lCurrentSavedReportView.highlights.length;
                    }
                    break;
                */
                case CHART:
                    if ( lCurrentSavedReportView ) {
                        lTotalSettingsCount += 1;
                    }
            }

            return lTotalSettingsCount;

        },

        // Show the report settings
        // todo read-only support for all settings (where config.reportsSettingsArea.disabled === true)
        _renderReportSettings: function( out ) {
            var i,
                lBreakColumns = [],
                self = this,
                lCurrentSavedReportView = this._getCurrentView(),
                lCurrentSavedReport = this._currentReportSettings(),
                lIsVisible = ( this._getTotalReportSettings() > 0 );

            function renderExpanded( out ) {

                // Renders an individual report setting (eg filter, highlight, etc.)
                // pSetting.label is assumed to already be safe / escaped when passed to renderSetting
                function renderSetting( out, pSetting ) {
                    var lSettingDataAttributes = {},
                        lSetting = $.extend( {
                            type:           "",
                            id:             "",
                            active:         false,
                            label:          "",
                            excludeToggle:  false,
                            isInvalid:      false,
                            linkStyle:      ""
                        }, pSetting ),
                        lListClass = C_IG_CONTROLS_ITEM + " " + C_IG_CONTROLS_ITEM_MOD_PRE + lSetting.type;

                    // Custom data attributes shared by toggle checkbox and delete button
                    lSettingDataAttributes.setting = lSetting.type;
                    lSettingDataAttributes[ "setting-id" ] = lSetting.id;

                    if ( lSetting.isInvalid ) {
                        lListClass += " " + C_IS_ERROR;
                    }

                    out.markup( "<li" )
                        .attr( CLASS, lListClass )
                        .attr( ROLE, REGION )
                        .attr( A_LABELLEDBY, "control_text" + lSetting.id )
                        .markup( ">" );

                    out.markup( "<span" )
                        .attr( CLASS, C_IG_CONTROLS_CELL )
                        .markup( ">" );

                    if ( !lSetting.excludeToggle ) {
                        renderCheckbox( out, {
                            id:              self._getId( "control_" + lSetting.id ),
                            cssClasses:      C_IG_CONTROLS_CHECKB0X,
                            checked:         lSetting.active,
                            ariaLabel:       SETTING_TYPE_MSG[ lSetting.type ],
                            ariaDescribedBy: "control_text" + lSetting.id,
                            data:            lSettingDataAttributes,
                            disabled:        lSetting.isInvalid,
                            invalid:         lSetting.isInvalid
                        });
                        renderLabel( out, {
                            labelFor:           self._getId( "control_" + lSetting.id ),
                            cssClasses:         C_IG_CONTROLS_CHECKB0X_LABEL,
                            ariaHidden:         true
                        });
                    }

                    out.markup( "</span>" ); // end checkbox cell

                    // Icon Cell
                    out.markup( "<span" )
                        .attr( CLASS, C_IG_CONTROLS_CELL )
                        .markup( ">" )
                        .markup( "<span" )
                        .attr( A_HIDDEN, "true" )
                        .attr( CLASS, C_ICON + " " + C_IG_CONTROLS_ICON + " " + C_IG_ICON_PRE + getHyphenatedClass( lSetting.type ) )
                        .markup( "></span>" )
                        .markup( "</span>" ); // end icon cell

                    // Label Cell
                    out.markup( "<span" )
                        .attr( CLASS, C_IG_CONTROLS_CELL + " " + C_IG_CONTROLS_CELL_LABEL )
                        .markup( ">" );

                    if ( !lSetting.isInvalid ) {
                        out.markup( "<button type='button'" )
                            .attr( CLASS, C_IG_CONTROLS_LABEL )
                            .attr(
                                A_LABEL,
                                lang.formatMessage( "APEX.IG.EDIT_CONTROL", SETTING_TYPE_MSG[ lSetting.type ] ) )
                            .optionalAttr(
                                A_CONTROLS,
                                lSetting.excludeToggle ? null : self._getId( "control_" + lSetting.id ) )
                            .attr( A_DESCRIBEDBY, "control_text" + lSetting.id )
                            .attr( "data-setting", lSetting.type )
                            .attr( "data-setting-id", lSetting.id )
                            .optionalAttr( "style", lSetting.linkStyle )
                            .markup( ">" );

                        out.markup( "<span" )
                            .attr( "id", "control_text" + lSetting.id )
                            .markup( ">" )
                            .markup( lSetting.label )       //no need to escape because label is already escaped
                            .markup( "</span>" );

                        out.markup( "</button>" );
                    } else {
                        out.markup( "<span" )
                            .attr( "id", "control_text" + lSetting.id )
                            .attr( CLASS, C_IG_CONTROLS_LABEL )
                            .markup( ">" )
                            .markup( lSetting.label )       //no need to escape because label is already escaped
                            .markup( "</span>" );
                    }

                    out.markup( "</span>" ); // end label cell

                    // Remove Cell
                    out.markup( "<span" )
                        .attr( CLASS, C_IG_CONTROLS_CELL + " " + C_IG_CONTROLS_CELL_REMOVE )
                        .markup( ">" );
                    renderButton( out, {
                        buttonClass:     C_BUTTON + " " + C_BUTTON_NO_UI + " " + C_IG_BUTTON + " " + C_IG_BUTTON_REMOVE,
                        iconOnly:        true,
                        icon:            C_ICON_REMOVE,
                        label:           lang.formatMessage(
                                             "APEX.IG.REMOVE_CONTROL",
                                             SETTING_TYPE_MSG[ lSetting.type ] ),
                        data:            lSettingDataAttributes,
                        ariaControls:    lSetting.excludeToggle ? null : self._getId( "control_" + lSetting.id ),
                        ariaDescribedBy: "control_text" + lSetting.id
                    });
                    out.markup( "</span>" ); //end delete cell

                    out.markup( "</li>" );
                }


                out.markup( "<div" )
                    .attr( CLASS, C_MEDIA_BLOCK_CONTENT )
                    .markup( ">" );

                out.markup( "<ul" )
                    .attr( CLASS, C_IG_CONTROLS )
                    .markup( ">" );


                /*
                 * Report-wide settings
                 */

                // If the current report has a chart defined, and the current view is the chart, show the setting
                if ( lCurrentSavedReport.views.chart && self._view() === CHART ) {
                    renderSetting( out, {
                        type:           CHART,
                        excludeToggle:  true,
                        label:          getIGMessage( "EDIT_CHART" )
                    });
                }

                // If the current report has a chart defined, and the current view is the chart, show the setting
                /*
                 if ( lCurrentSavedReport.views.chart && self._view() === GROUP_BY ) {
                    renderSetting( out, {
                        type:           GROUP_BY,
                        excludeToggle:  true,
                        label:          getIGMessage( "EDIT_GROUP_BY" )
                    });
                 }
                 */

                // Filters
                if ( lCurrentSavedReport.filters ) {
                    for ( i = 0; i < lCurrentSavedReport.filters.length; i++ ) {
                        if ( lCurrentSavedReport.filters[ i ].operation !== OP_DELETE ) {
                            renderSetting( out, {
                                type:       FILTER,
                                id:         lCurrentSavedReport.filters[ i ].id,
                                active:     lCurrentSavedReport.filters[ i ].isEnabled,
                                label:      self._getSettingLabel( FILTER, lCurrentSavedReport.filters[ i ] ),
                                isInvalid:  lCurrentSavedReport.filters[ i ].isInvalid
                            });
                        }
                    }
                }

                /*
                 * View specific settings, rendered based on the supports property with the registered view
                 */

                if ( self._currentViewImpl().supports.controlBreak ) {

                    // We have to first check if there is a saved report view (may not be for detail / icon view)
                    if ( lCurrentSavedReportView ) {
                        for ( i = 0; i < lCurrentSavedReportView.columns.length; i++ ) {
                            if ( lCurrentSavedReportView.columns[ i ].break && lCurrentSavedReportView.columns[ i ].break.operation !== OP_DELETE ) {

                                // store control break
                                lBreakColumns.push( lCurrentSavedReportView.columns[ i ] );
                            }
                        }
                        if ( lBreakColumns.length > 0 ) {
                            // Sort Control Breaks by order
                            lBreakColumns.sort( function ( a, b ) {
                                var lOrderA = a.break.order,
                                    lOrderB = b.break.order;
                                if      ( lOrderA < lOrderB ) { return -1; }
                                else if ( lOrderA > lOrderB ) { return  1; }
                                else                                      { return  0; }
                            } );

                            for ( i = 0; i < lBreakColumns.length; i++ ) {
                                renderSetting( out, {
                                    type:   CONTROL_BREAK,
                                    id:     lBreakColumns[ i ].columnId,
                                    active: lBreakColumns[ i ].break.isEnabled,
                                    label:  self._getSettingLabel( CONTROL_BREAK, lBreakColumns[ i ] )
                                });
                            }
                        }
                    }
                }

                if ( self._currentViewImpl().supports.highlight ) {
                    if ( lCurrentSavedReportView.highlights ) {
                        for ( i = 0; i < lCurrentSavedReportView.highlights.length; i++ ) {
                            if ( lCurrentSavedReportView.highlights[ i ].operation !== OP_DELETE ) {
                                renderSetting( out, {
                                    type:       HIGHLIGHT,
                                    id:         lCurrentSavedReportView.highlights[ i ].id,
                                    active:     lCurrentSavedReportView.highlights[ i ].isEnabled,
                                    label:      self._getSettingLabel( HIGHLIGHT, lCurrentSavedReportView.highlights[ i ] ),
                                    isInvalid:  lCurrentSavedReportView.highlights[ i ].isInvalid,
                                    linkStyle:  "background:" + lCurrentSavedReportView.highlights[ i ].backgroundColor + ";" +
                                                "color:" + lCurrentSavedReportView.highlights[ i ].textColor
                                });
                            }
                        }
                    }
                }

                if ( self._currentViewImpl().supports.aggregation ) {
                    if ( lCurrentSavedReportView.aggregations ) {
                        for ( i = 0; i < lCurrentSavedReportView.aggregations.length; i++ ) {
                            if ( lCurrentSavedReportView.aggregations[ i ].operation !== OP_DELETE ) {
                                renderSetting( out, {
                                    type:   AGGREGATE,
                                    id:     lCurrentSavedReportView.aggregations[ i ].id,
                                    active: lCurrentSavedReportView.aggregations[ i ].isEnabled,
                                    label:  self._getSettingLabel( AGGREGATE, lCurrentSavedReportView.aggregations[ i ] )
                                });
                            }
                        }
                    }
                }

                // Flashback
                if ( lCurrentSavedReport.flashback ) {
                    if ( lCurrentSavedReport.flashback.operation !== OP_DELETE ) {
                        renderSetting( out, {
                            type: FLASHBACK,
                            id: FLASHBACK,
                            active: lCurrentSavedReport.flashback.isEnabled,
                            label: self._getSettingLabel( FLASHBACK, lCurrentSavedReport.flashback )
                        });
                    }
                }

                out.markup( "</ul></div>" ); // end C_IG_CONTROLS end C_MEDIA_BLOCK_CONTENT
            }

            function renderCollapsed( out ) {
                var lInactiveSettings = 0,
                    lInvalidSettings = 0;

                function checkIfEnabled( out, pType, pSettings ) {
                    var i, lIsEnabled, lIsInvalid,
                        lSummaryLabel = "",
                        lEnabledSettingsIndexes = [],
                        lIsFirstEnabled = true;

                    for ( i = 0; i < pSettings.length; i++ ) {

                        if ( pSettings[ i ].operation !== OP_DELETE ) {

                            // Control break structure is slightly different, as it is the column object being passed
                            if ( pType === CONTROL_BREAK ) {
                                lIsEnabled = pSettings[ i ].break.isEnabled;

                                //Note: Breaks can't be invalid
                            } else {
                                lIsEnabled = pSettings[ i ].isEnabled;
                                lIsInvalid = pSettings[ i ].isInvalid;
                            }

                            if ( lIsInvalid ) {
                                lInvalidSettings += 1;
                            } else {
                                if ( lIsEnabled ) {

                                    lEnabledSettingsIndexes.push( i );

                                    // Build up the label, if not the first, prefix a comma
                                    if ( !lIsFirstEnabled ) {
                                        lSummaryLabel += ", ";
                                    }
                                    lSummaryLabel += self._getSettingSummaryLabel( pType, pSettings[ i ] );

                                    lIsFirstEnabled = false;

                                } else {
                                    lInactiveSettings += 1;
                                }
                            }

                        }

                    }

                    if ( lEnabledSettingsIndexes.length > 0 ) {
                        renderSettingSummary( out, {
                            type:   pType,
                            id:     pSettings[ lEnabledSettingsIndexes[ 0 ] ],      // just pass first ID, to allow pre-selection of first
                            count:  lEnabledSettingsIndexes.length,
                            label:  lSummaryLabel
                        });
                    }
                }

                function renderSettingSummary( out, pSettingSummary ) {
                    var lSettingSummary = $.extend( {
                        type:   "",
                        id:     "",
                        count:  0,
                        label: ""
                    }, pSettingSummary );

                    out.markup( "<li" )
                        .attr( CLASS, C_IG_REPORT_SUMMARY_ITEM + " " + C_IG_REPORT_SUMMARY_ITEM_PRE + lSettingSummary.type )
                        .markup( ">" );

                    out.markup( "<a href='#'" )
                        .attr( CLASS, C_IG_REPORT_SUMMARY_LABEL )
                        .attr( "data-setting", lSettingSummary.type )
                        .optionalAttr( "data-setting-id", lSettingSummary.id )
                        .markup( ">" );

                    out.markup( "<span" )
                        .attr( CLASS, C_IG_REPORT_SUMMARY_ICON )
                        .attr( ROLE, "img" )
                        .attr( A_LABEL, SETTING_TYPE_MSG[ lSettingSummary.type ] )
                        .markup( ">" );

                    out.markup( "<span" )
                        .attr( CLASS, C_ICON + " " + C_IG_ICON_PRE + getHyphenatedClass( lSettingSummary.type ) )
                        .markup( "></span>" );

                    /* Show count when any of the following are true:
                     * - Any setting where greater than 1
                     * - Inactive settings where greater than 0
                     * - Invalid settings where greater than 0
                      */
                    if ( lSettingSummary.count > 1 ||
                         lSettingSummary.type === INACTIVE_SETTINGS ||
                         lSettingSummary.type === INVALID_SETTINGS )
                    {
                        out.markup( "<span" )
                            .attr( CLASS, C_IG_REPORT_SUMMARY_COUNT )
                            .markup( ">" )
                            .content( lSettingSummary.count )
                            .markup( "</span>" );
                    }

                    out.markup( "</span>" ); //end C_IG_REPORT_SUMMARY_ICON

                    out.markup( "<span" )
                        .attr( CLASS, C_IG_REPORT_SUMMARY_VALUE )
                        .markup( ">" )
                        .content( lSettingSummary.label )
                        .markup( "</span>" );

                    out.markup( "</a>" ); //end C_IG_REPORT_SUMMARY_LABEL

                }


                out.markup( "<div" )
                    .attr( CLASS, C_IG_REPORT_SUMMARY_CONTAINER );

                if ( lCurrentSavedReport.reportSettingsArea === EXPANDED ) {
                    out.attr( "style", "display:none;" );
                }

                out.attr( "id", self._getId( "report_settings_summary" ) );

                if ( !lIsVisible ) {
                    out.attr( "style", "display:none;" );
                }

                out.markup( ">" );
                out.markup( "<ul" )
                    .attr( CLASS, C_IG_REPORT_SUMMARY )
                    .markup( ">" );

                // Chart
                if ( lCurrentSavedReport.views.chart && self._view() === CHART ) {
                    renderSettingSummary( out, {
                        type:  CHART,
                        label: getIGMessage( "EDIT_CHART" )
                    });
                }

                // Group By
                /*
                 if ( lCurrentSavedReport.views.chart && self._view() === GROUP_BY ) {
                    renderSettingSummary( out, {
                        type:  GROUP_BY,
                        label: getIGMessage( "EDIT_GROUP_BY" )
                    });
                 }
                 */

                // Filters
                if ( lCurrentSavedReport.filters ) {
                    checkIfEnabled( out, FILTER, lCurrentSavedReport.filters );
                }

                // Control breaks
                if ( lBreakColumns.length > 0 ) {
                    checkIfEnabled( out, CONTROL_BREAK, lBreakColumns );
                }

                // Highlights
                if ( lCurrentSavedReportView.highlights ) {
                    checkIfEnabled( out, HIGHLIGHT, lCurrentSavedReportView.highlights );
                }

                // Aggregations
                if ( lCurrentSavedReportView.aggregations ) {
                    checkIfEnabled( out, AGGREGATE, lCurrentSavedReportView.aggregations );
                }

                // Flashback
                if ( lCurrentSavedReport.flashback ) {
                    if ( lCurrentSavedReport.flashback.isEnabled ) {
                        renderSettingSummary( out, {
                            type:   FLASHBACK,
                            label:  self._getSettingSummaryLabel( FLASHBACK, lCurrentSavedReport.flashback )
                        });
                    } else {
                        lInactiveSettings += 1;
                    }
                }

                // Inactive
                if ( lInactiveSettings > 0 ) {
                    renderSettingSummary( out, {
                        type: INACTIVE_SETTINGS,
                        count: lInactiveSettings,
                        label: ( lInactiveSettings === 1 ? getIGMessage( "INACTIVE_SETTING" ) : getIGMessage( "INACTIVE_SETTINGS" ) )
                    });
                }

                // Invalid
                if ( lInvalidSettings > 0 ) {
                    renderSettingSummary( out, {
                        type: INVALID_SETTINGS,
                        count: lInvalidSettings,
                        label: ( lInactiveSettings === 1 ? getIGMessage( "INVALID_SETTING" ) : getIGMessage( "INVALID_SETTINGS" ) )
                    });
                }

                out.markup( "</ul></div>" ); // end controls end C_IG_REPORT_SUMMARY_CONTAINER
            }

            // Container
            out.markup( "<div" )
                .attr( CLASS, C_MEDIA_BLOCK + " " + C_IG_CONTROLS_CONTAINER )
                .attr( ROLE, REGION )
                .attr( A_LABEL, getIGMessage( "REPORT_SETTINGS" ) )
                .attr( "id", this._getId( "report_settings" ) );
            if ( !lIsVisible ) {
                out.attr( "style", "display:none;" );
            }
            out.markup( ">" );

            // Report settings element that is used as the collapsible
            out.markup( "<div" )
                .attr( CLASS, C_MEDIA_BLOCK_GRAPHIC )
                .attr( ROLE, "heading" )
                .attr( A_LEVEL, "3" )
                .markup( ">" );
            out.markup( "<h3" )
                .attr( A_HIDDEN, "true" )
                .attr( CLASS, C_VISUALLY_HIDDEN )
                .markup( ">" )
                .content( getIGMessage( "REPORT_SETTINGS" ) )
                .markup( "</h3>" );
            renderButton( out, {
                buttonClass: C_BUTTON + " " + C_IG_BUTTON + " " + C_IG_BUTTON_CONTROLS
            });
            out.markup( "</div>" ); //end C_MEDIA_BLOCK_GRAPHIC


            renderExpanded( out );

            renderCollapsed( out );

            out.markup( "</div>" ); //end C_MEDIA_BLOCK + C_IG_CONTROLS_CONTAINER

        },
        _initReportSettings: function() {
            var self = this,
                lMaxHeight = this.options.config.maxHeight,
                lSettingsArea$ = this._getElement( "report_settings" ),
                lReportSettings = self._currentReportSettings();

            function toggle( init, final, showHide ) {
                if ( lReportSettings.reportSettingsArea === init ) {
                    var lFocusOnControllingElement = lSettingsArea$.data( "apex-collapsible" ).controllingElement$.is( ":focus" );

                    // Update report settings
                    lReportSettings.reportSettingsArea = final;
                    self._setOperationUpdate( lReportSettings );
                    self._setReportSettings({}, function () {
                        // Focus on the newly rendered controlling element
                        if ( lFocusOnControllingElement ) {
                            self._getElement( "report_settings" ).data( "apex-collapsible" ).controllingElement$.trigger( "focus" );
                        }
                    });

                    // Show / hide the summary area
                    self._getElement( "report_settings_summary" )[showHide]();

                    // Resize the widget, as the expand / collapse may have caused height changes
                    self.resize();
                }
            }

            if ( this._getTotalReportSettings() > 0 ) {

                this._on( lSettingsArea$, {

                    /*
                     * Edit settings
                     */

                    // Expanded view
                    "click button.a-IG-controlsLabel": function ( pEvent ) {
                        var lLink$ = $( pEvent.currentTarget );

                        this._openDialog( lLink$.data( "setting" ), {
                            id: lLink$.data( "setting-id" ) + ""
                        });

                        pEvent.preventDefault();
                    },

                    // Now collapsed view
                    "click a.a-IG-reportSummary-label": function( pEvent ) {
                        var lLink$ = $( pEvent.currentTarget),
                            lSetting = lLink$.data( "setting" );

                        if ( lSetting === INACTIVE_SETTINGS || lSetting === INVALID_SETTINGS ) {
                            lSettingsArea$.collapsible( EXPAND );
                        } else {
                            this._openDialog( lSetting, {
                                id: lLink$.data( "setting-id" ) + ""
                            });
                        }

                        pEvent.preventDefault();

                    },

                    /*
                     * Toggle settings
                     */
                    "click input.a-IG-controlsCheckbox": function ( pEvent ) {
                        var lCheckbox$ = $( pEvent.target ),
                            lChecked = ( lCheckbox$.prop( CHECKED ) ),
                            lType = lCheckbox$.data( "setting" ),
                            lId = lCheckbox$.data( "setting-id" ) + "";

                        switch( lType ) {
                            case FILTER:

                                this.updateFilter( lId, {
                                    isEnabled: lChecked
                                });

                                break;
                            case AGGREGATE:

                                this.updateAggregate( lId, {
                                    isEnabled: lChecked
                                });

                                break;
                            case HIGHLIGHT:

                                this.updateHighlight( lId, {
                                    isEnabled: lChecked
                                });

                                break;
                            case CONTROL_BREAK:

                                this.updateControlBreak( lId, {
                                    isEnabled: lChecked
                                });

                                break;
                            case FLASHBACK:
                                this.updateFlashback({
                                    isEnabled: lChecked
                                });
                                break;
                        }
                    },

                    /*
                     * Delete settings (same for both expanded and collapsed)
                     */
                    "click button.a-IG-button--remove": function ( pEvent ) {
                        var lButton$ = $( pEvent.currentTarget ),
                            lType = lButton$.data( "setting" ),
                            lId = lButton$.data( "setting-id" ) + "";

                        pEvent.preventDefault();

                        switch( lType ) {
                            case FILTER:

                                //todo optimisation to not refresh data when deleting a disabled filter

                                this.deleteFilter( lId );
                                break;
                            case AGGREGATE:
                                this.deleteAggregate( lId );
                                break;
                            case HIGHLIGHT:
                                this.deleteHighlight( lId );
                                break;
                            case CONTROL_BREAK:
                                this.deleteControlBreak( lId );
                                break;
                            case FLASHBACK:
                                this.deleteFlashback();
                                break;
                            case CHART:
                                this.deleteChart();
                                break;
                        }

                    }

                });

                lSettingsArea$.collapsible({
                    content:    "div." + C_MEDIA_BLOCK_CONTENT,
                    collapsed:  ( lReportSettings.reportSettingsArea === COLLAPSED ),
                    collapse:   function() {
                        toggle( EXPANDED, COLLAPSED, SHOW );
                    },
                    expand: function() {
                        toggle( COLLAPSED, EXPANDED, HIDE );
                    }
                });
                // if the region height is fixed then don't let the report settings area take up too much space
                // let it scroll
                if ( lMaxHeight ) {
                    lSettingsArea$.find( ".a-Collapsible-content" ).css( {
                        "max-height": ( ( lMaxHeight - ( $( SEL_IG_HEADER, this.element ).outerHeight() || 0 ) ) / 3 ) + "px",
                        "overflow": "auto"
                    } );
                }
            }

        },

        _isSettingsCheckboxFocused: function ( pId, pType ) {
            var lData;
            if (!document.activeElement || document.activeElement.type !== "checkbox" ) {
                return false;
            } else {
                lData = $(document.activeElement).data();
                return ( lData.setting === pType && "" + lData.settingId === pId );
            }

        },

        _focusOnSettingsCheckbox: function ( pFocus, pId, pType ) {
            var lCondition;
            if ( pFocus ) {
                lCondition = "." + C_IG_CONTROLS_CHECKB0X + "[data-setting=" + pType + "]";
                if ( pId ) {
                    lCondition += "[data-setting-id=" + pId + "]";
                }
                this._getElement( "report_settings" ).find( lCondition ).trigger( "focus" );
            }
        },

        // _currentViewColumn gets, or sets the IG widget's saved report column metadata for the current view
        // todo consider optimisation to use map of cols instead of having to loop
        _currentViewColumn: function( pColumnId, pColumnSettings ) {
            var i, lColumn,
                lColumns = this._getCurrentView().columns;

            for ( i = 0; i < lColumns.length; i++ ) {
                if ( lColumns[ i ].columnId === pColumnId ) {

                    lColumn = lColumns[ i ];

                    // Now we found the column, no need to continue looking
                    break;
                }
            }

            if ( $.isPlainObject( pColumnSettings ) ) {

                // Only set what we want to change
                lColumn = $.extend( true, lColumn, pColumnSettings );

                this._setOperationUpdate( lColumn );

            }

            return lColumn;

        },

        _refreshReportSettings: function() {
            var prevHeight,
                settingsArea$ = this._getElement( "report_settings" ),
                out = util.htmlBuilder();

            if ( settingsArea$[0] ) {
                prevHeight = settingsArea$[0].clientHeight;
                // Replace report settings with report settings for current view
                this._renderReportSettings( out );
                settingsArea$.replaceWith( out.toString() );

                // Note the above replaceWith wipes out previous registered event handlers on report settings controls,
                // so we are fine to call initReportSettings again to re-register them. This also sets up the collapsible
                // logic for the settings.
                this._initReportSettings();
                // can't use settingsArea$ because it was replaced
                if ( prevHeight !== this._getElement( "report_settings" )[0].clientHeight ) {
                    this.resize(); // need to resize because this changes the available height for the view (bug 25407894)
                    // retun true if resize was done so can optimize away later calls to resize
                    return true;
                }
            }
            return false;
        },

        _defaultAjaxRegionData: function ( pRegionData ) {
            var lConfig = this.options.config,
                lRegionData = $.extend( true, {
                    id:                 lConfig.regionId,
                    ajaxIdentifier:     lConfig.ajaxIdentifier,
                    ajaxColumns:        lConfig.ajaxColumns,
                    reportId:           this._report(),
                    view:               this._view()
                }, pRegionData );

            if ( this._isCurrentlyEditable() ) {
                lRegionData.allowedOperations = lConfig.editable.allowedOperations.protected;
            }

            return lRegionData;

        },

        // Base Ajax calling
        _call: function( pRegionData, pOptions ) {
            var lConfig = this.options.config,
                lRegionData = this._defaultAjaxRegionData( pRegionData ),
                lData = {
                    regions: [ lRegionData ]
                };

            if ( lConfig.parentRegionStaticId && this.parentItemValues.length > 0 ) {
                lData.regions[ 0 ].parentItems = {
                    values: this.parentItemValues
                };
            }

            /* todo think about showing a loading indicator
             * Most of the time saving report settings is very quick but over a slow network it can take a noticable amount of time
             * Currently by default progress is only shown for model operations.
             * Consider if and how the back to back ajax requests for report settings and model data can share if
             * not the same ajax call at least the same progress.
             */
            if ( lConfig.loadingIndicator ) {
                pOptions.loadingIndicator = lConfig.loadingIndicator;
            }
            return ( lConfig.callServer || server.plugin )( lData, pOptions );

        },

        // todo  consider use of lazy write queue, or a small delay for settings that do not affect data (column sizing, freezing for example)
        //          may help with situations where too many requests are sent (eg column resize with keyboard, where columnResize could fire multiple times
        _setReportSettings: function ( pOptions, pCallback ) {

            /*
             * Dismiss items which don't have an associated operation,
             * And those which are already currently being processed in another request
             */
            function removeUnchangedArrayItems( pArray ) {
                for ( let i = 0; i < pArray.length; i++ ) {
                    if ( !pArray[ i ].operation || pArray[ i ]._isBeingProcessed ) {
                        pArray.splice( i, 1 );
                        i -= 1;                 // i stays the same for next iteration
                    }
                }
            }

            /*
             * Flag currentReportSettings items which are about to be inserted or deleted on the server
             * This way, if another request is to be sent before this one has returned,
             * these items will not be sent again (inserted or deleted multiple times)
             *
             * pArray must be a pointer to the actual reportSettings, not the local clone.
             *
             * The _isBeingProcessed flag is automatically reset when the request returns,
             * as it is not re-generated by the server. No need to set it to false.
             *
             * TODO consider passing all other report settings through this function, e.g Highlights.
             * Especially useful when functions like addHighlight will be documented.
             *
             * See #33491785
             */
            function flagArrayItemsBeingProcessed( pArray ) {
                for ( let i = 0; i < pArray.length; i++ ) {
                    if ( pArray[ i ].operation && [ OP_INSERT, OP_DELETE ].includes( pArray[ i ].operation ) ) {
                        pArray[ i ]._isBeingProcessed = true;
                    }
                }
            }

            var lReportSettings, lServerOptions,
                lRegionData = {},
                lConfig = this.options.config,
                self = this,
                lOptions = $.extend({
                    refreshView:                false,      // do we need to just refresh the view (not the model), for example when changing the rows per page, if true, refreshModel is ignored
                    refreshModel:               false,      // do we need to refresh the view's model as a result of this settings change, if so pass true
                    affectsOtherViewsModels:    false,      // is this setting report specific rather than view-specific, if so pass true, requires that refreshModel is true
                    refreshColumns:             false,      // does this report settings update warrant a column definition change, if so pass true
                    changeIdentifier:           ""
                }, pOptions );

            /*
             * Overriding lOptions in specific cases.
             * If
             *  - the report is the base report (baseReportId being null) and
             *  - the report has highlights
             * then, once the request is done, the report will become a session-based report, with a not-null baseReportId.
             *
             * In this case, any highlights will be duplicated for this new report and come back with new ids.
             * The model must therefore be refreshed as well, as it would still include metadata referencing the ids of the "old" highlights
             *      which wouldn't match the new highlight CSS on the page.
             * This workaround can be removed once a model's highlights can be recomputed and reapplied client-side.
             *
             * See #31042456
             * Not all views support highlights
             */
            lOptions.refreshModel = lOptions.refreshModel ||
                ( !this._currentReportSettings().baseReportId && this._getCurrentView()?.highlights?.length > 0 );

            // Make a copy of the report settings, because we only want to send what has changed and don't want to change the main settings
            lReportSettings = $.extend( true, {}, this._currentReportSettings() );

            /*
             * Payload Optimisation
             */

            // View agnostic
            if ( lReportSettings.filters && lReportSettings.filters.length > 0 ) {
                removeUnchangedArrayItems( lReportSettings.filters );
                flagArrayItemsBeingProcessed( this._currentReportSettings().filters );
            }

            // View specific: Note: Don't need to check if a view is the current view, because we optimise for all current supported views
            if ( lConfig.views.grid ) {
                removeUnchangedArrayItems( lReportSettings.views.grid.columns );
            }
            if ( lConfig.views.icon ) {
                removeUnchangedArrayItems( lReportSettings.views.icon.columns );
            }
            if ( lConfig.views.detail ) {
                removeUnchangedArrayItems( lReportSettings.views.detail.columns );
            }
            // todo more optimisation, eg view aggregations if supported, others?

            // For public reports, we need the checksum from the config (only present if end user has such rights)
            if ( lConfig.features.saveReport && lConfig.features.saveReport.publicReportCs ) {
                lRegionData.publicReportCs = lConfig.features.saveReport.publicReportCs;
            }

            /*
             * Ajax Options
             */
            lServerOptions = {
                success: function( pData ) {
                    let lCurrentView, lCurInst, lViewImpl,
                        lNewReportSettings = self._defaultSavedReport( pData.regions[ 0 ].setReportSettings[ 0 ] );

                    // Clear any success messages
                    message.hidePageSuccess();

                    // If the current view has changed, switch views first
                    // Note: Needs to happen before we update the current report settings, because view switching needs to
                    // know which was the old view (which would be lost if the report settings were overwritten).
                    if ( self._view() !== lNewReportSettings.currentView ) {
                        self._view( lNewReportSettings.currentView, {
                            fetchData: true
                        });
                    }

                    // update widget metadata with new settings data (includes IDs)
                    self.options.savedReports[ self.currentSavedReportIdx ] = lNewReportSettings;

                    // If the report got aggs, set the row header to LABEL; if there are no aggs but checkbox in
                    // the row header and row header is LABEL then PLAIN, otherwise NONE
                    // (It only applies to grid view)
                    lCurrentView = self.getCurrentView();
                    if ( lCurrentView.internalIdentifier === GRID ) {
                        lCurInst = lCurrentView.curInst;
                        if ( self.getAggregates()?.length > 0 ) {
                            lCurInst.options.rowHeader = LABEL;
                        } else if ( lCurInst.options.rowHeader === LABEL) {
                            lCurInst.options.rowHeader = lCurInst.options.rowHeaderCheckbox ? PLAIN : NONE;
                        }
                    }

                    // Update the saved report select list, as report IDs will change if a session-based report has been created
                    //todo could be optimised to only update when the session-based report has just been created
                    self._updateChangeReportAction();

                    // Update the change view action, views could change if say a view is deleted
                    self._updateChangeViewActions();

                    // Update reset action
                    self._updateReportSettingsActions();

                    // Report settings
                    self._refreshReportSettings();

                    // We need to update the model with the new report and view information
                    lViewImpl = self._currentViewImpl();
                    self._updateModelRegionData( lViewImpl );

                    // Call all view's setReportOptions method passing in the change identifier. Allows them to update
                    // themselves accordingly, depending on the report setting changed.
                    lNewReportSettings = self._currentReportSettings();
                    self._forEachView( function( viewId, view ) {

                        view.setReportOptions( self, viewId === lNewReportSettings.currentView, lNewReportSettings, lOptions.changeIdentifier );

                        // Always update the highlight options of the views that support it
                        if ( view.supports.highlight && lOptions.changeIdentifier !== "views.grid.highlights" ) {
                            view.setReportOptions( self, viewId === lNewReportSettings.currentView, lNewReportSettings, "views.grid.highlights" );
                        }
                    });

                    if ( lOptions.refreshColumns ) {
                        // tell view about the new column definition
                        lViewImpl.refreshColumns();
                    }

                    if ( lOptions.refreshView ) {
                        // Just refresh the view
                        lViewImpl.refresh();

                    } else if ( lOptions.refreshModel ) {
                        // The report setting have changed in a way that affects the model
                        self.reportSettingsSeq += 1;

                        if ( lOptions.affectsOtherViewsModels ) {

                            // If this setting affects other views (eg filters), then we need to invalidate the other views underlying
                            // models, to force a refresh
                            self._forEachView( function( viewId, view ) {
                                if ( view.model ) {
                                    view.clearModelData();
                                }
                            } );
                        } else {

                            // Otherwise, just refresh the current view's model
                            lViewImpl.clearModelData();
                        }

                    }

                    // todo If refreshView or refreshModel are set, or the view is switched these will create async operations too,
                    // which could mean the callback is executed prior to them finishing execution.
                    if ( pCallback ) {
                        pCallback();
                    }

                    self._trigger( EVENT_REPORT_SETTINGS_CHANGE, null, {
                        // todo what makes sense here? lOptions? lNewReportSettings or just the ID?
                        report: lNewReportSettings.id
                    });
                },
                queue: {
                    name: "set.report.settings.wait",
                    action: "wait"
                }
            };

            $.extend(lRegionData, {
                setReportSettings: [ lReportSettings ]
            });

            /*
             * Make the call
             */
            return this._call( lRegionData, lServerOptions );

        },
        _downloadReport: function ( pDownloadOptions ) {
            var lData,
                lParentItems,
                lConfig = this.options.config,
                self    = this;

            lData = {
                pageItems:          lConfig.itemsToSubmit,
                regions: [
                    {
                        id:             lConfig.regionId,
                        ajaxIdentifier: lConfig.ajaxIdentifier,
                        ajaxColumns:    lConfig.ajaxColumns,
                        reportId:       this._report(),
                        view:           this._view(),
                        download:       $.extend( {
                                            downloadCs: lConfig.features.download.downloadCs
                                        },
                                        pDownloadOptions ),
                    }
                ],
                salt: $v( "pSalt" ) };

            lParentItems = region( lConfig.regionStaticId ).getParentItems();
            if ( lParentItems ) {
                lData.regions[ 0 ].parentItems = lParentItems;
            }

            if ( pDownloadOptions.email ) {
                server.plugin( lData, {
                    dataType: TEXT,
                    loadingIndicator: self.element,
                    loadingIndicatorPosition: "centered",
                    success: function() {
                        message.showPageSuccess( getIGMessage( "EMAIL_SENT" ) );
                    }
                });
            } else {
                server.plugin( lData, {
                    loadingIndicator: self.element,
                    loadingIndicatorPosition: "centered",
                    success: function( pData ) {
                        var lUrl;

                        message.showPageSuccess( getIGMessage( "FILE_PREPARED" ) );

                        lUrl = server.ajaxUrl(
                            { regions: [
                                 {
                                     id:                 lConfig.regionId,
                                     reportId:           self._report(),
                                     ajaxIdentifier:     lConfig.ajaxIdentifier,
                                     downloadFileId:     pData.regions[ 0 ].download.id

                                 }
                              ],
                              salt: $v( "pSalt" ) } );

                        debug.info( "Calling URL to get file:", lUrl);
                        debug.info( "URL length:", lUrl.length );
                        navigation.download( lUrl );
                    }
                });
            }
        },
        _saveReport: function( pReport, pOperation ) {
            var lMessage,
                lRegionData = {},
                self = this,
                lConfig = this.options.config;

            if ( lConfig.features.saveReport ) {

                lRegionData.saveReport = pReport;

                // For public reports, we need the checksum from the config (only present if end user has such rights)
                if ( lConfig.features.saveReport.publicReportCs ) {
                    lRegionData.publicReportCs = lConfig.features.saveReport.publicReportCs;
                }

                return this._call( lRegionData, {
                    success: function( pData ) {

                        self.options.savedReports = self._defaultSavedReports({
                            reports: pData.regions[ 0 ].savedReports
                        });

                        self._updateChangeReportAction();

                        self._updateReportSettingsActions();

                        self._refreshReportSettings();

                        // We need to update the model with the new report information
                        self._updateModelRegionData( self._currentViewImpl() );

                        switch ( pOperation ) {
                            case OP_INSERT:
                            case OP_UPDATE:
                                switch ( self._currentReportSettings().type ) {
                                    case PRIMARY:
                                        lMessage = getIGMessage( "REPORT.SAVED.DEFAULT" );
                                        break;
                                    case ALTERNATIVE:
                                        lMessage = getIGMessage( "REPORT.SAVED.ALTERNATIVE" );
                                        break;
                                    case PRIVATE:
                                        lMessage = getIGMessage( "REPORT.SAVED.PRIVATE" );
                                        break;
                                    case PUBLIC:
                                        lMessage = getIGMessage( "REPORT.SAVED.PUBLIC" );
                                        break;
                                }
                                break;
                            case OP_DELETE:
                                lMessage = getIGMessage( "REPORT.DELETED" );
                                break;
                        }

                        message.showPageSuccess( lMessage );

                        // We only need to refresh in the case of a delete
                        if ( pOperation === OP_DELETE ) {
                            self.refresh();
                        }

                        self._updateLandmark();

                    }
                });
            } else {
                debug.warn( "Unable to save report settings because the configuration disallows it." );
            }
        },

        // Function to get values for a specific column
        _getFilterValues: function( pColumnId, pRespectFilters, pCallback ) {
            var self = this;

            return this._call({
                getFilterValues: {
                    columnId: pColumnId,
                    columnType: COLUMN,                 //todo hard coded, pass in, or determine dynamically?
                    respectFilters: pRespectFilters
                }
            }, {
                success: function( pData ) {
                    if ( typeof pCallback === "function" ) {
                        pCallback.call( self, pData );
                    }
                }
            });

        },
        _updateChangeReportAction: function() {
            var i, lSavedReport, lReportGroup, lName,
                lSavedReportChoices = [],
                lConfig = this.options.config,
                lSavedReportsConfig = this.options.savedReports,
                lActions = this.actions;

            // Update saved report select choices, if there are > 1 saved report
            if ( lSavedReportsConfig.length > 1 ) {
                for ( i = 0; i < lSavedReportsConfig.length; i++ ) {
                    lSavedReport = lSavedReportsConfig[ i ];
                    lName = lSavedReport.name;
                    switch ( lSavedReport.type ) {
                        case PRIMARY:
                            lReportGroup = "APEX.IG.SAVED_REPORT_DEFAULT";

                            // For the primary report, if no name is define let's use a sensible default
                            if ( !lSavedReport.name ) {
                                lName = getIGMessage( "PRIMARY_REPORT" );
                            }
                            break;
                        case ALTERNATIVE:
                            lReportGroup = "APEX.IG.SAVED_REPORT_DEFAULT";
                            break;
                        case PRIVATE:
                            lReportGroup = "APEX.IG.SAVED_REPORT_PRIVATE";
                            break;
                        case PUBLIC:
                            lReportGroup = "APEX.IG.SAVED_REPORT_PUBLIC";
                            break;
                    }

                    lSavedReportChoices.push({
                        group: getMessage( lReportGroup ),
                        label: lName,
                        value: lSavedReport.id
                    });
                }

                // Show if either no toolbar, or if we have a toolbar, check if toolbar.savedReports is true (the default)
                this.actions.lookup( "change-report" ).hide = !( !lConfig.toolbar || ( lConfig.toolbar && lConfig.toolbar.savedReports ) );

            } else {

                // Always hide when no reports
                this.actions.lookup( "change-report" ).hide = true;
            }

            this.actions.update( "change-report" );
            lActions.lookup( "change-report" ).choices = lSavedReportChoices;
            lActions.updateChoices( "change-report" );

        },
        // this updates an action property safely with no error if the action doesn't exist for some reason
        // first arg is one of enable, disable, show, hide
        _updateAction: function( pStateMethod, pName ) {
            if ( this.actions.lookup( pName ) ) {
                this.actions[ pStateMethod ]( pName );
            }
        },
        _toggleEnableAction: function( pCondition, pName ) {
            this._toggleAction( "enable", pCondition, pName );
        },
        _toggleShowAction: function( pCondition, pName ) {
            this._toggleAction( SHOW, pCondition, pName );
        },
        _toggleAction: function( pToggleType, pCondition, pName ) {
            let lMethod;

            switch ( pToggleType ) {
                case SHOW:
                    lMethod = pCondition ? SHOW : HIDE;
                    break;
                case "enable":
                    lMethod = pCondition ? "enable" : "disable";
                    break;
            }

            if ( isArray( pName ) ) {
                pName.forEach( n =>  {
                    this._updateAction( lMethod, n );
                } );
            } else {
                this._updateAction( lMethod, pName );
            }
        },

        _getLandmarkLabel: function() {
            const view = this.getCurrentView(),
                report = this._currentReportSettings(),
                viewLabel = view.label,
                savedReportName = report.name;
            let label;

            if ( view.internalIdentifier === 'grid' ) {
                if ( view.supports.singleRowView && view.singleRowMode ) {
                    label = getIGMessage( "SINGLE_ROW_VIEW" );
                } else {
                    label = getIGMessage( "GRID_VIEW" );
                }
                if ( this.editMode ) {
                    label = apex.lang.formatMessage( "APEX.IG.EDIT_MODE", label );
                }
            } else {
                label = viewLabel;
            }

            // No need to add "Primary Report"to the landmark if there is primary report only
            // In such case, we do not show "Primary Report" visually, no need to expose it to screen readers
            if ( this.options.savedReports.length > 1 ) {
                if ( !savedReportName && report.type === PRIMARY ) {
                    label += ", " + getIGMessage( "PRIMARY_REPORT" );
                } else {
                    label += ", " + lang.formatMessage( "APEX.IG.SAVED_REPORT", savedReportName );
                }
            }

            return label;

        },

        _updateToolbarElements: function() {
            var lConfig = this.options.config,
                lToolbar = lConfig.toolbar;

            if ( lToolbar ) {

                // If we have a search field, then we need a search group, can contain either just a search field and search
                // button, or a search field and button, with column selection.
                if ( lToolbar.searchField ) {
                    if ( lToolbar.columnSelection ) {
                        this._tbFindElement( "column_filter_button" ).show();
                    }
                    this._tbFindElement( "search_field" ).show();
                }

                // Show actions menu button if configuration says so
                if ( lToolbar.actionMenu ) {
                    this._tbFindElement( "actions_button" ).show();
                }
            }
        },

        /*
         * Update actions based on configuration
         * For the most part this sets actions show/hide based on configuration that doesn't change and it would
         * be tempting to only call this when the IG is first initialized. However the current editability
         * depends on a report setting so this must be called when that report setting could change.
         * Assumes that if IG is editable then there should be a view that supports editing
         */
        _updateActions: function() {
            var self = this,
                lConfig = this.options.config,
                lFeatures = lConfig.features,
                lSRV = false,
                lHighlight = false,
                lStretchCols = false,
                lIsEditable = this._isCurrentlyEditable(),
                lOps = lConfig.editable.allowedOperations,
                lCanCreate = lIsEditable && lOps.create,
                lCanDelete = lIsEditable && lOps[ DELETE ],
                lCanRevert = lIsEditable && ( lOps.update || lOps[ DELETE ] ), // revert after update or delete
                lToolbar = lConfig.toolbar,
                // For edit and save, as these can be hidden / shown via toolbar config, we also need to check that
                lCanEdit = lIsEditable &&
                           ( lOps.update || lOps.create ) &&
                           ( !lToolbar || ( lToolbar && lToolbar.editing ) ),
                lCanSave = lIsEditable &&
                           ( lOps.create || lOps.update || lOps[ DELETE ] ) &&
                           ( !lToolbar || ( lToolbar && lToolbar.save ) ),
                lShowSearch = !lToolbar || ( lToolbar && lToolbar.searchField ),
                lShowReset = !lToolbar || ( lToolbar && lToolbar.reset ),
                lHasRowsPerPage = lConfig.pagination.type === SET;

            /*
             * Global feature related actions
             */
            if( lFeatures.saveReport ) {
                this._updateChangeReportAction();
            }
            this._toggleShowAction( lFeatures.filter, "show-filter-dialog" );
            this._toggleShowAction( lFeatures.download, "show-download-dialog" );
            this._toggleShowAction( lFeatures.flashback, "show-flashback-dialog" );
            //todo
            //this._toggleShowAction( lFeatures.compute, "show-compute-dialog" );
            //this._toggleShowAction( lFeatures.subscription, "show-subscription-dialog" );

            /*
             * Report settings related actions
             */
            this._updateReportSettingsActions();

            /*
             * Editable related actions (can change during widget lifetime so need to toggle)
             */

            // Add Row and Duplicate both required create privilege
            this._toggleShowAction( lCanCreate, [ "selection-add-row", "row-add-row", "selection-duplicate", "row-duplicate" ] );

            // Delete
            this._toggleShowAction( lCanDelete, [ "selection-delete", "row-delete" ] );

            // Revert, applicable for either update or delete
            this._toggleShowAction( lCanRevert, [ "selection-revert", "row-revert" ] );

            // Edit button
            this._toggleShowAction( lCanEdit, "edit" );
            //todo call grid view option that will cause it to never go into edit mode, when it's available. JJS yes but this is done when grid view init

            // Save button
            this._toggleShowAction( lCanSave, "save" );

            /*
             * Toolbar related actions
             */
            this._toggleShowAction( lShowSearch, "search" );
            this._toggleShowAction( lShowReset, "reset-report" );

            // for single row view and highlight see if any view supports it and desires it
            // todo consider if this should apply to other settings like controlBreak meaning if no view uses it then hide it.
            this._forEachView( function( viewId, view ) {
                var viewConfigFeatures = lConfig.views[viewId].features;
                if ( view.supports.singleRowView && viewConfigFeatures.singleRowView ) {
                    lSRV = true;
                }
                if ( view.supports.highlight && viewConfigFeatures.highlight ) {
                    lHighlight = true;
                }
                // currently configurable columns implies stretchable columns but only if actually have a grid view
                if ( view.supports.configurableColumns && viewConfigFeatures.stretchColumns === null && viewConfigFeatures.gridView !== false ) {
                    lStretchCols = true;
                }
                view.updateActions( {
                    ig: self,
                    editable: lIsEditable,
                    canDelete: lCanDelete,
                    canCreate: lCanCreate,
                    canEdit: lCanEdit
                });
            } );
            this._toggleShowAction( lSRV, [ "single-row-view", "refresh-record" ] );
            this._toggleShowAction( lCanCreate && lSRV , [ "insert-record", "duplicate-record" ] );
            this._toggleShowAction( lCanDelete && lSRV, [ "delete-record" ] );
            this._toggleShowAction( lCanRevert && lSRV, [ "revert-record" ] );
            this._toggleShowAction( lHighlight, "show-highlight-dialog" );
            this._toggleShowAction( lHasRowsPerPage, "change-rows-per-page" );
            this._toggleShowAction( lStretchCols, "stretch-columns" );
        },
        _updateReportSettingsActions: function() {
            var lCurrentReportSettings = this._currentReportSettings(),
                lSaveReportFeatureEnabled = this.options.config.features.saveReport,
                lCurrentReportSettingsEditable = !lCurrentReportSettings.isReadOnly;

            /* Save - Enable when:
             *   a) IG config allows changing saved reports
             *   b) Current saved report settings are not read-only
             *   c) When this is a temporary session-based report
             */
            this._toggleEnableAction( lSaveReportFeatureEnabled && lCurrentReportSettingsEditable && lCurrentReportSettings.baseReportId, "save-report" );

            /* Save As - Enable when:
             *   a) IG config allows changing saved reports
             *
             * Note: No need to check if the current report settings are not read-only, because this is just a copy.
             */
            this._toggleEnableAction( lSaveReportFeatureEnabled, "show-save-report-as-dialog" );

            /* Edit - Enable when:
             *   a) IG config allows changing saved reports
             *   b) Current saved report settings are not read-only
             */
            this._toggleEnableAction( lSaveReportFeatureEnabled && lCurrentReportSettingsEditable, "show-edit-report-dialog" );

            /* Delete - Enable when:
             *   a) IG config allows changing saved reports
             *   b) Current saved report settings are not read-only
             *   c) This is not the primary report (cannot be deleted)
             */
            this._toggleEnableAction( lSaveReportFeatureEnabled && lCurrentReportSettingsEditable && lCurrentReportSettings.type !== PRIMARY, "delete-report" );

            /* Reset - Enable when:
             *   a) When this is a temporary session-based report
             *
             * Note: We don't need to check if saved reports can be changed here because any user (including a
             * public user) can reset a session-based report.
             */
            this._toggleEnableAction( lCurrentReportSettings.baseReportId, "reset-report" );
        },

        // Update change view action; updated view choices and also visibility of change view pills (shown if configured views > 1)
        _updateChangeViewActions: function() {
            var lConfiguredViews = [],
                lActions = this.actions;

            // Update change view choices
            this._forEachView( function( viewId, view ) {
                if ( view.isConfigured() ) {
                    lConfiguredViews.push({
                        label: view.title,
                        value: viewId,
                        icon: view.icon
                    });
                }
            } );

            // Show / hide the change-view radio group
            this._toggleShowAction( lConfiguredViews.length > 1, "change-view" );

            lActions.lookup( "change-view" ).choices = lConfiguredViews;
            lActions.updateChoices( "change-view" );
        },

        /*
         * Update any actions that are sensitive to the current selection
         */
        _updateSelectionActions: function() {
            var lSelectedRecords,
                lAllowDelete,
                lCanRevert,
                lSelectionLength,
                lConfig = this.options.config,
                lThisView = this._currentViewImpl(),
                lEditable = ( lConfig.editable && lThisView.supports.edit );

            if ( !lThisView.singleRowMode ) {

                // for selectCells to be implemented supports.cellSelection must be true
                if ( lThisView.selectCells && lThisView.selectCells() ) {

                    /*
                     * In range selection mode
                     */
                    lSelectionLength = lThisView.view$.grid( "getSelectedRange" ).recordIds.length;

                    // selection-refresh never applies for cell selection
                    this._toggleEnableAction( false, [ "selection-refresh" ] );

                    // selection-copy requires at least one cell is selected
                    this._toggleEnableAction( lSelectionLength !== 0, [ "selection-copy" ] );

                    // Editable specific actions
                    if ( lEditable ) {

                        // todo consider if don't want to allow fill, clear, copyDown on row selection then need to disable based on selection mode
                        this._toggleEnableAction( this._isCurrentlyEditable() && lSelectionLength !== 0, [ "selection-fill", "selection-clear", "selection-revert" ] );

                        // Disable row-centric actions that never apply with cell selection
                        this._toggleEnableAction( false, [ "selection-duplicate", "selection-delete", "selection-revert", "row-delete" ] );

                        // selection-copy-down requires at least two rows the others at least 1
                        this._toggleEnableAction( lSelectionLength >= 2, [ "selection-copy-down" ] );
                    }

                } else {

                    /*
                     * In row selection mode
                     */
                    lSelectedRecords = lThisView.getSelectedRecords();
                    // not all views support selection
                    lSelectionLength = lSelectedRecords ? lSelectedRecords.length : 0;

                    // requires at least one row is selected
                    this._toggleEnableAction( lSelectionLength !== 0, [ "selection-refresh", "selection-copy" ] );

                    // the following only applies when editable
                    if ( lEditable ) {

                        // at least one row selected, and must be currently editable (eg not flashback state)
                        this._toggleEnableAction( this._isCurrentlyEditable() && lSelectionLength !== 0, [
                            "selection-duplicate", "selection-delete", "selection-revert", "selection-fill", "selection-clear"
                        ]);

                        if ( lConfig.editable.allowedOperations[ DELETE ] ) {
                            lAllowDelete = lSelectedRecords.some( function ( record ) {
                                return lThisView.model.allowDelete( record );
                            } );
                            this._toggleEnableAction( lAllowDelete, [ "row-delete", "selection-delete", "selection-fill", "selection-clear" ] );
                        }

                        lCanRevert = lSelectedRecords.some( function ( record ) {
                            return lThisView.model.canRevertRecord ( record );
                        } );
                        this._toggleEnableAction( lCanRevert, [ "row-revert", "selection-revert" ] );
                        this._toggleEnableAction( lSelectionLength >= 2, [ "selection-copy-down" ] );
                    }

                }
            }
        },

        _setFilterColumn: function( pColumnId ) {
            var lSearchLabel;

            this.currentFilterColumnId = pColumnId;

            if ( pColumnId ) {
                lSearchLabel = lang.formatMessage( "APEX.IG.SEARCH.COLUMN", this._getColumn( pColumnId ).heading.label );
            } else {
                if ( this.options.config.filter.oracleText ) {
                    lSearchLabel = getIGMessage( "SEARCH.ORACLE_TEXT" );
                } else {
                    lSearchLabel = getIGMessage( "SEARCH.ALL_COLUMNS" );
                }
            }

            // Update toolbar search field title and placeholder text with new column selection
            this._tbFindElement( "search_field" )
                .attr({
                    placeholder: lSearchLabel,
                    title: lSearchLabel
                });
        },

        _defaultIGConfig: function() {
            var i, lColumnGroup,
                lConfig = this.options.config;

            // More complex defaulting...
            if ( lConfig.filter.maxRowCount ) {
                lConfig.text.moreDataFound = lang.formatMessage( "APEX.IG.MORE_DATA_FOUND", lConfig.filter.maxRowCount );
            }
            if ( lConfig.columnGroups.length > 0 ) {
                for ( i = 0; i < lConfig.columnGroups.length; i++ ) {
                    lColumnGroup = lConfig.columnGroups[i];
                    // id, heading are required the server must supply them
                    // Complex defaults label defaults to heading
                    if ( !lColumnGroup.label ) {
                        lColumnGroup.label = lColumnGroup.heading;
                    }
                }
            }
            if ( lConfig.editable ) {
                lConfig.editable = $.extend( true, {
                    allowedOperations: {
                        create:     true,
                        update:     true,
                        "delete":     true,
                        "protected":  ""                          // required
                    },
                    autoAddRow: true
                }, lConfig.editable );
                if ( !lConfig.editable.allowedOperations.create ) {
                    lConfig.editable.autoAddRow = false; // if can't add (create) then can't autoAdd
                }
            }
            if ( lConfig.features.download ) {
                lConfig.features.download = $.extend({
                    formats:        [],                         // required
                    email:          true
                }, lConfig.features.download );
            }
            if ( lConfig.views.icon ) {
                lConfig.views.icon = $.extend( true, {
                    disabled:       false,
                    labelColumn:    "",                         // required
                    features: {
                        sort:           true,
                        highlight:      true, // todo
                        rowSelector: {
                            multiSelect: true,
                            selectAll: false,
                            hideControl: false
                        }
                    }
                }, lConfig.views.icon );
            }
            if ( lConfig.views.detail ) {
                lConfig.views.detail = $.extend( true, {
                    disabled:       false,
                    beforeRows:     "",
                    row:            "",                         // required
                    afterRows:      "",
                    features: {
                        sort:           true,
                        controlBreak:   true
                    }
                }, lConfig.views.detail );
            }

        },
        _defaultColumns: function() {
            var i, lNewColumn,
                lColumns = this.options.config.columns;

            for ( i = 0; i < lColumns.length; i++ ) {

                lNewColumn = $.extend( true, {
                    id: "",                                     // required
                    name: "",                                   // required
                    staticId: "",                               // required todo this could be optimised to default to 'C' + id if null
                    dataType: VARCHAR2,
                    specialType: "",
                    isHidden: false,
                    isReadOnly: true,
                    heading: {                                  // required if isHidden = false
                        heading: "",                                // can be null, when label will be used as accessible label in the grid
                        label: "",                                  // later defaults to heading.heading if null
                        alignment: POSITION_CENTER
                    },
                    layout: {                                   // required if isHidden = false
                        columnAlignment: POSITION_START,
                        groupId: "",
                        useGroupFor: "both"                         // only used when groupId is not null
                    },
                    appearance: {
                        columnCssClasses: "",
                        formatExample: ""
                    },
                    validation: {
                        isRequired: false,                          // required
                        restrictedCharacters: ""
                    },
                    link: {
                        text: "",                                   // required for a link
                        attributes: ""
                    },
                    filter: {
                        operators: [ { name: "$std$" }, { name: "$perform$" } ],
                        //textCase: "",
                        dateRanges: ALL,
                        isRequired: false,
                        hasLov: true,
                        dataType: VARCHAR2
                    },
                    accessibility: {
                        usedAsRowHeader: false
                    },
                    features: {                                     // required if isHidden = false
                        canHide: true,
                        highlight: true,
                        compute: true,
                        sort: true,
                        controlBreak: true,
                        aggregate: true,
                        groupBy: true/*,
                        pivot: true*/
                    },
                    isPrimaryKey: false,
                    parentColumnName: "",
                    "default": {
                        value: "",
                        duplicate: true
                    },
                    escape: true,
                    helpid: ""
                }, lColumns[ i ] );

                // Complex defaults
                if ( !lNewColumn.heading.label ) {
                    lNewColumn.heading.label = lNewColumn.heading.heading;
                }

                if ( lNewColumn.filter.dataType === VARCHAR2 && !lNewColumn.filter.textCase ) {
                    lNewColumn.filter.textCase = MIXED;
                }

                lColumns[ i ] = lNewColumn;

            }

        },

        /* Create base column information (specifically setting up widget variables: baseModelColumns and
         * primaryKeyColumns), which can then be used by a view implementation in setting up its own columns.
         */
        //todo computeColumns
        //todo optimisation: add column groups
        _createBaseColumnMap: function() {
            var i, lColumn, lBaseModelColumn,
                lColumns = this.options.config.columns,
                lOffset = 0;

            for ( i = 0; i < lColumns.length; i++ ) {
                lColumn = lColumns[ i ];
                lBaseModelColumn = this.baseModelColumns[ lColumn.id ] = {
                    index:    i - lOffset,
                    hidden:   lColumn.isHidden,
                    readonly: lColumn.isReadOnly,
                    escape:   lColumn.escape,
                    sanitize: lColumn.sanitize, // todo to be removed once #35154278 is fixed
                    id:       lColumn.id,
                    dataType: lColumn.dataType
                };
                if ( lColumn.isHidden ) {

                    // This is when the column is always hidden
                    lBaseModelColumn.canHide = false;
                } else {

                    // Base properties when column is visible
                    lBaseModelColumn.heading = lColumn.heading.heading;
                    lBaseModelColumn.headingAlignment = lColumn.heading.alignment;
                    lBaseModelColumn.label = lColumn.heading.label;
                    lBaseModelColumn.alignment = lColumn.layout.columnAlignment;
                    if ( lColumn.appearance.formatMask ) {
                        lBaseModelColumn.formatMask = lColumn.appearance.formatMask;
                    }
                }

                // If the column has a parent column ID, then set parentField model column property
                if ( lColumn.parentColumnName ) {
                    lBaseModelColumn.parentField = lColumn.parentColumnName;
                    this.parentColumnNames.push( lColumn.parentColumnName );
                }
                this.columnMap[ lColumn.id ] = lColumn;
                if ( lColumn.isPrimaryKey ) {
                    this.primaryKeyColumns.push( lColumn.name );
                }

                // Set the offset for columns that don't emit data. We can do this because we are iterating
                // over the IG columns, and these are always in the same order as the data
                if ( lColumn.specialType === "actions" ) {
                    lOffset = lOffset + 1;
                }
            }

            // Add the metadata column, which will always be in the last array position for any given row (hence
            // why we use the offset i value for the index.
            this.baseModelColumns[ META ] = {
                index: i - lOffset,
                seq: i,
                hidden: true,
                canHide: false
            };
        },

        _defaultSavedReport: function( pSavedReport ) {
            var i, lNewReport, lNewFilter, lNewAggregate, lNewHighlight,
                lColumnMappingType, lNewMapping,
                self = this,
                lConfig = this.options.config,
                lConfigViews = lConfig.views;

            function initReportColumns( reportColumns, checkMissing ) {
                var i, lIGColumn, lNewColumn,
                    lIGColumnMap = {};

                // some views (like grid) should always include all the columns in the report settings and others
                // like (icon) only include columns that settings
                if ( checkMissing ) {
                    // Check if any config columns are missing from the view's columns (eg if a developer has added a
                    // new column to the IG). If so, add it to the report's column array, but hidden.
                    for ( i = 0; i < reportColumns.length; i++ ) {
                        lIGColumnMap[reportColumns[i].columnId] = 1;
                    }
                    for ( i = 0; i < lConfig.columns.length; i++ ) {
                        lIGColumn = lConfig.columns[i];

                        // If IG column doesn't exist in column map, add it
                        if ( !lIGColumnMap[lIGColumn.id] ) {
                            reportColumns.push( {
                                columnId: lIGColumn.id,
                                operation: OP_INSERT,
                                isVisible: false
                            } );
                        }
                    }
                }

                // Column defaulting
                for ( i = 0; i < reportColumns.length; i++ ) {
                    lNewColumn = $.extend({
                        seq:                null,
                        columnType:         COLUMN,
                        columnId:           "",                 // required
                        isVisible:          true,
                        isFrozen:           false, // grid view specific
                        width:              null, // grid view specific
                        priority:           null, // grid view specific TODO
                        "break":            false,
                        sort:               false
                    }, reportColumns[ i ] );

                    if ( lNewColumn.seq !== ( i + 1 ) ) {
                        // make "seq" attribute strictly sequential; because column reordering seems to have
                        // problems with gaps or fractional values in "seq" attribute.
                        // server returns columns ordered by display_seq
                        lNewColumn.seq = i + 1;

                        // the sequence must also be fixed on the server. see #32131583
                        self._setOperationUpdate( lNewColumn );
                    }

                    if ( lNewColumn.break ) {
                        lNewColumn.break = $.extend({
                            order:              null,               // required
                            isEnabled:          true,
                            direction:          ASC,
                            nulls:              LAST
                        }, lNewColumn.break );
                    }
                    if ( lNewColumn.sort ) {
                        lNewColumn.sort = $.extend({
                            order:              null,               // required
                            direction:          ASC,
                            nulls:              LAST
                        }, lNewColumn.sort );
                    }

                    // If the IG Column metadata is not available (possible if either a condition or authorization
                    // failed), then remove the corresponding column from the report's view.
                    if ( !self._getColumn( lNewColumn.columnId ) ) {
                        reportColumns.splice( i, 1 );
                        i -= 1;     // i stays the same for next iteration
                    } else {
                        reportColumns[ i ] = lNewColumn;
                    }
                }
            }

            lNewReport = $.extend( true, {
                id:                     "",                     // required
                baseReportId:           "",
                name:                   "",
                isCurrent:              false,
                type:                   PRIMARY,
                isReadOnly:             true,
                authorizationId:        "",
                rowsPerPage:            null,                   // null is used for 'auto'
                showRowNumbers:         false,
                reportSettingsArea:     COLLAPSED,
                defaultFilterColumn:    false,
                flashback:              false,
                versionNumber:          "",                     // required
                //computeColumns:         [],
                filters:                [],
                currentView:            GRID,
                views: {
                    grid:                   false,
                    //groupby:                false,
                    //pivot:                  false,
                    chart:                  false,
                    icon:                   false,
                    detail:                 false
                }
            }, pSavedReport );

            // Make sure the currentView exists. It may not exist because the develop developer has removed that view
            // Example: The last saved report was icon but then the developer removes the ability to have an icon view.
            // Note currently the server side assumes there will always be a grid view but Adv. JavaScript config can
            // disable grid view.
            // Using config views (rather than viewsImpl) because view may not be registered yet
            if ( !lConfigViews[ lNewReport.currentView ] || lConfigViews[ lNewReport.currentView ].disabled ) {
                lNewReport.currentView = null;
                // if it doesn't pick the first one that does
                for ( i in lConfigViews ) {
                    if ( hasOwnProperty( lConfigViews, i ) && lConfigViews[ i ] && !lConfigViews[ i ].disabled ) {
                        lNewReport.currentView = i;
                        break;
                    }
                }
                // If the current view has changed it means that any data provided to init this widget
                // is not applicable so get rid of it
                this.options.data = null;
                lConfig.lazyLoading = true;
                debug.warn("Current view not available. Using view %s. Forcing lazy load.", lNewReport.currentView );
            }

            if ( lNewReport.flashback ) {
                lNewReport.flashback = $.extend( {
                    minsAgo:    null,                               // required
                    isEnabled:  true
                }, lNewReport.flashback );
            }

            /*
            if ( lNewReport.computeColumns.length > 0 ) {
                for ( i = 0; i < lNewReport.computeColumns.length; i++ ) {
                    lNewComputeColumn = $.extend( true, {
                        id:                 "",                     // required
                        heading: {                                      // required
                            heading:            "",                         // required
                            label:              "",                         // defaults to heading if not defined
                            alignment:          POSITION_CENTER
                        },
                        layout: {
                            alignment:          POSITION_END,
                            groupId:            "",
                            useGroupFor:        "both"
                        },
                        dataType:               NUMBER,           // required, and defaulted
                        formatMask:             "",
                        "function": {                                 // required
                            type:                   ""                  // required
                            //sqlExpression:          "",
                            //columnType:             "",
                            //columnId:               "",
                            // spec. says FUTURE:
                            //partitionByClause:      "",
                            //orderByClause:          ""
                        }
                    }, lNewReport.computeColumns[ i ] );

                    // Additional defaults
                    if ( !lNewComputeColumn.label ) {
                        lNewComputeColumn.label = lNewComputeColumn.heading;
                    }

                    lNewReport.computeColumns[ i ] = lNewComputeColumn;
                }
            }
            */

            for ( i = 0; i < lNewReport.filters.length; i++ ) {
                lNewFilter = $.extend( true, {
                    id:                     "",                 // required
                    type:                   ROW,
                    //name:                   "",
                    //columnType:             "",
                    //columnId:               "",
                    //operator:               "",
                    isCaseSensitive:        false,
                    value:                  "",
                    //expression:             "",
                    isEnabled:              true
                }, lNewReport.filters[ i ] );

                if ( lNewFilter.columnId && !lNewFilter.columnType ) {
                    lNewFilter.columnType = COLUMN;
                }

                // For a column-based filter, if the IG Column metadata is not available (possible if either a
                // condition or authorization failed), then remove the corresponding filter from this report.
                if ( lNewFilter.type === COLUMN && !this._getColumn( lNewFilter.columnId ) ) {
                    lNewReport.filters.splice( i, 1 );
                    i -= 1;     // i stays the same for next iteration
                } else {
                    lNewReport.filters[ i ] = lNewFilter;
                }
            }

            if ( lNewReport.views.grid || lConfigViews.grid ) {

                // report.views.grid level defaulting
                lNewReport.views.grid = $.extend( true, {
                    editMode:               false,
                    singleRowView: {
                        excludeNullValues:      false,
                        onlyDisplayColumns:     true
                    },
                    columns:                [],
                    aggregations:           [],
                    highlights:             [],
                    initialBreakState:      COLLAPSED,
                    stretchColumns:         true
                }, lNewReport.views.grid );


                /*
                 * Grid Columns
                 */
                initReportColumns( lNewReport.views.grid.columns, true );

                // aggregations
                for ( i = 0; i < lNewReport.views.grid.aggregations.length; i++ ) {
                    lNewAggregate = $.extend({
                        id:                 "",                 // required
                        "function":         "",
                        columnType:         COLUMN,
                        columnId:           "",                 // required
                        tooltip:            "",
                        showGrandTotal:     true,
                        isEnabled:          true
                    }, lNewReport.views.grid.aggregations[ i ] );

                    // Additional defaults
                    if ( !lNewAggregate.label ) {
                        lNewAggregate.label = lNewAggregate.function;
                    }

                    // If the IG Column metadata is not available (possible if either a condition or authorization
                    // failed), then remove the corresponding aggregate from this report's grid view.
                    if ( !this._getColumn( lNewAggregate.columnId ) ) {
                        lNewReport.views.grid.aggregations.splice( i, 1 );
                        i -= 1;     // i stays the same for next iteration
                    } else {
                        lNewReport.views.grid.aggregations[ i ] = lNewAggregate;
                    }
                }
                // highlights
                for ( i = 0; i < lNewReport.views.grid.highlights.length; i++ ) {
                    lNewHighlight = $.extend( true, {
                        id:                 "",                 // required
                        name:               "",
                        type:               ROW,
                        columnType:         COLUMN,
                        columnId:           "",
                        backgroundColor:    "",
                        textColor:          "",
                        condition: {                            // required
                            type:               COLUMN,
                            columnType:         COLUMN,
                            columnId:           "",
                            operator:           "",
                            isCaseSensitive:    false,
                            value:              "",
                            expression:         ""
                        },
                        isEnabled:              true
                    }, lNewReport.views.grid.highlights[ i ] );

                    // If either the IG Column metadata is not available for a column-based highlight, or the IG
                    // column metadata is not available for a column referenced in the highlight condition (both
                    // possible if either a condition or authorization failed for that column), then remove the
                    // corresponding highlight from this report's grid view.
                    if ( lNewHighlight.type === COLUMN && !this._getColumn( lNewHighlight.columnId ) ||
                         lNewHighlight.condition.type === COLUMN && !this._getColumn( lNewHighlight.condition.columnId ) ) {
                        lNewReport.views.grid.highlights.splice( i, 1 );
                        i -= 1;     // i stays the same for next iteration
                    } else {
                        lNewReport.views.grid.highlights[ i ] = lNewHighlight;
                    }

                }
            }

            if ( lNewReport.views.icon || lConfigViews.icon ) {

                lNewReport.views.icon = $.extend( true, {
                    columns:                [],
                    initialBreakState:      COLLAPSED
                }, lNewReport.views.icon );

                // columns
                initReportColumns( lNewReport.views.icon.columns );
                // todo controlBreak, highlight
            }

            if ( lNewReport.views.detail || lConfigViews.detail ) {

                lNewReport.views.detail = $.extend( true, {
                    columns:                [],
                    initialBreakState:      COLLAPSED
                }, lNewReport.views.detail );

                // columns
                initReportColumns( lNewReport.views.detail.columns );
                // todo controlBreak
            }

            if ( lNewReport.views.chart ) {
                lNewReport.views.chart = $.extend( true, {
                    type:           BAR,                         // required
                    orientation:    VERTICAL,
                    stack:          OFF
                }, lNewReport.views.chart );

                if ( lNewReport.views.chart.axis ) {
                    lNewReport.views.chart.axis = $.extend({
                        label: "",
                        value: "",
                        valueDecimalPlaces: ""
                    }, lNewReport.views.chart.axis );
                }

                // Chart column mappings
                for ( lColumnMappingType in lNewReport.views.chart.chartColumns ) {
                    if ( hasOwnProperty( lNewReport.views.chart.chartColumns, lColumnMappingType ) ) {

                        lNewMapping = lNewReport.views.chart.chartColumns[ lColumnMappingType ];
                        lNewMapping = $.extend( {
                            columnType: COLUMN
                        }, lNewMapping );

                        if ( lNewMapping.sort ) {
                            lNewMapping.sort = $.extend({
                                order:              null,           // required
                                direction:          ASC,
                                nulls:              LAST
                            }, lNewMapping.sort );
                        }

                        lNewReport.views.chart.chartColumns[ lColumnMappingType ] = lNewMapping;

                    }
                }

            }

            return lNewReport;

        },

        // Apply defaults for all saved report configuration. pOptions parameter includes the following options
        // - reports - Optional parameter to default specific reports, if not defined this.options.savedReports is defaulted
        _defaultSavedReports: function( pOptions ) {
            var i, lIsCurrentSet = false,
                lOptions = $.extend( {
                    reports:            this.options.savedReports
                }, pOptions );

            for ( i = 0; i < lOptions.reports.length; i++ ) {

                lOptions.reports[ i ] = this._defaultSavedReport( lOptions.reports[ i ] );

                // Also we can save the current report index here, whilst we're looping through saved report data
                if ( lOptions.reports[ i ].isCurrent ) {
                    lIsCurrentSet = true;
                    this.currentSavedReportIdx = i;
                }

            }

            //todo shouldn't need this, if server always sent 1 report with 'isCurrent'
            if ( !lIsCurrentSet ) {
                this.currentSavedReportIdx = 0;
            }

            return lOptions.reports;

        },
        //todo change from IR styles
        _renderColumnHeaderMenu: function( out, pCanFilter, pFilterHasLov, pColumnId ) {

            function renderMenuAction( out, pButtonOptions ) {
                var lButtonOptions = $.extend( true, {
                    buttonClass:    "a-IRR-button " + C_IG_COLUMN_HEADER_MENU_BUTTON,
                    label:          "",
                    iconOnly:       true,
                    icon:           "",
                    isToggle:       false,
                    toggleState:    null,
                    attributes:     {},
                    data:           {}
                }, pButtonOptions );

                out.markup( "<li" )
                    .attr( CLASS, C_IG_COLUMN_HEADER_MENU_ACTIONS_ITEM )
                    .markup( ">" );

                // If this is a toggle, we need to set state and style properties according to state
                if ( lButtonOptions.isToggle ) {
                    lButtonOptions.attributes[ "aria-pressed" ] = lButtonOptions.toggleState;

                    if ( lButtonOptions.toggleState ) {
                        lButtonOptions.buttonClass += " " + C_IS_ACTIVE;
                    }

                    delete lButtonOptions.isToggle;
                    delete lButtonOptions.toggleState;
                }

                renderButton( out, lButtonOptions );

                out.markup( "</li>" );  //end C_IG_COLUMN_HEADER_MENU_ACTIONS_ITEM
            }

            var i, lTextTransformClass,
                lIsFrozen = false,
                SEARCH_FIELD_ID = this._getId( "column_header_search" ),
                lIGColumn = this._getColumn( pColumnId ),
                lViewColumns = this._currentReportSettings().views.grid.columns,
                lCurrentSeq, lLastSeq = 0;

            // Visually hidden modal dialog title
            out.markup( "<h1" )
                .attr( CLASS, C_VISUALLY_HIDDEN )
                .attr( A_ROLE_DESC, lang.getMessage( "APEX.DIALOG.VISUALLY_HIDDEN_TITLE" ) )
                .markup( ">" )
                .content( lang.formatMessage( "APEX.IG.COLUMN_HEADER_ACTIONS_FOR", lIGColumn.heading.label ) )
                .markup( "</h1><ul" )
                .attr( CLASS, C_IG_COLUMN_HEADER_MENU_ACTIONS )
                .markup( ">" );

            /*
             * Render the action buttons in order; break, aggregate, compute, freeze, remove, help
             * Some may not be included, depending on the current column.
             */
            if ( lIGColumn.features.controlBreak ) { // todo should the config.views[*].features.controlBreak be considerd here?
                renderMenuAction( out, {
                    label: getIGMessage( "CONTROL_BREAK" ),
                    icon: "icon-ig-control-break",
                    data: { option: "break" }
                });
            }

            if ( lIGColumn.features.aggregate ) { // todo should the config.views[*].features.aggregate be considerd here?
                renderMenuAction( out, {
                    label: getIGMessage( "AGGREGATE" ),
                    icon: "icon-ig-aggregate",
                    data: { option: "aggregate" }
                });
            }

            //todo computation

            // We need to get the current frozen state from the saved report metadata.
            for ( i = 0; i < lViewColumns.length; i++ ) {
                if ( lViewColumns[ i ].columnId === pColumnId ) {
                    lIsFrozen = lViewColumns[ i ].isFrozen;
                    break;
                }
            }

            // Are we working on the last column ...?
            for ( i = 0; i < lViewColumns.length; i++ ) {
                if ( lViewColumns[ i ].isVisible &&
                     !this._getColumn( lViewColumns[ i ].columnId ).isHidden &&
                     lViewColumns[ i ].seq > lLastSeq
                ) {
                    lLastSeq = lViewColumns[ i ].seq;
                }
                if ( lViewColumns[ i ].columnId === pColumnId ) {
                    lCurrentSeq = lViewColumns[ i ].seq;
                }
            }

            // Show Free/Unfreeze attribute only if not the last column
            if ( lCurrentSeq < lLastSeq ) {
                renderMenuAction( out, {
                    label: ( lIsFrozen ? getIGMessage( "UNFREEZE" ) : getIGMessage( "FREEZE" ) ),
                    icon: "icon-ig-frozen-column",
                    isToggle: true,
                    toggleState: lIsFrozen,
                    data: { option: "freeze" }
                });
            }

            if ( lIGColumn.features.canHide ) {
                renderMenuAction(out, {
                    label: getIGMessage( "HIDE" ),
                    icon: "icon-ig-remove-col",
                    data: { option: HIDE }
                });
            }

            if ( lIGColumn.helpid ) {
                renderMenuAction( out, {
                    label: getIGMessage( "HELP" ),
                    icon: "icon-ig-help",
                    data: { option: "help" }
                });
            }

            out.markup( "</ul>" );

            // Column value search, if column allows filtering
            if ( pCanFilter ) {
                out.markup( "<div" )
                    .attr( CLASS, C_IG_COLUMN_HEADER_MENU_SEARCH )
                    .markup( ">" );

                renderLabel( out, {
                    labelFor:           SEARCH_FIELD_ID,
                    cssClasses:         C_IG_COLUMN_HEADER_MENU_SEARCH_LABEL,
                    // Bug 36020140 - REDWOOD LIGHT THEME STYLE, INTERACTIVE GRID COLUMN ACTIONS DIALOG HAS UNLABELED IMAGE WITHOUT A SEMANTIC ROLE - Memory usage - 55.2 MB -
                    // To prevent rendering an unlabeled object without an ARIA semantic role caused by CSS-styled image
                    // the label is provided below, directly on the input element, through aria-label
                    ariaHidden:         true,
                    labelTextHidden:    true
                });

                if ( lIGColumn.filter.textCase ) {
                    lTextTransformClass = this._getTextTransformClass( lIGColumn );
                }

                renderBaseInput( out, {
                    id:                 SEARCH_FIELD_ID,
                    cssClasses:         C_IG_COLUMN_HEADER_MENU_SEARCH_FIELD + ( lTextTransformClass ? " " + lTextTransformClass : "" ),
                    ariaLabel:          getIGMessage( "SEARCH" ),
                    placeholder:        getIGMessage( "FILTER_WITH_DOTS" )
                });

                if ( pFilterHasLov ) {
                    out.markup( "<div" )
                        .attr( CLASS, C_IG_COLUMN_HEADER_MENU_ROWS )
                        .attr( "id", this._getId( "column_header_menu_rows" ) )
                        .markup( ">" );
                    out.markup( "</div>" ); //end C_IG_COLUMN_HEADER_MENU_ROWS
                }

                out.markup( "</div>" ); //end C_IG_COLUMN_HEADER_MENU_SEARCH
            }

        },
        //todo this does not need to be a member because doesn't use this also fix null block
        _setOperationUpdate: function ( pObject ) {

            // If this is a column to insert, keep OP_INSERT operation
            if ( pObject.operation && pObject.operation === OP_INSERT ) {
                // do nothing
            } else {

                // otherwise, this is an update
                pObject.operation = OP_UPDATE;
            }
        },


        _renderIG: function() {
            var self = this,
                ctrl$ = this.element,
                out = util.htmlBuilder(),
                lConfig = this.options.config;

            /****************
             * Rendering
             ****************/

            /*
             * Header
             */
            if ( lConfig.toolbar ) {
                out.markup( "<div" )
                    .attr( CLASS, C_IG_HEADER )
                    .markup( "><div" )
                        .attr( "id", this._getId( "toolbar" ) )
                        .markup( ">" )
                    .markup( "</div></div>" );
            }

            /*
             * Body
             */
            out.markup( "<div" )
                .attr( CLASS, C_IG_BODY )
                .markup( ">" );

            // Report settings area
            if ( lConfig.reportSettingsArea ) {
                this._renderReportSettings( out );
            }

            // Content container, including containers for registered views
            out.markup( "<div" )
                .attr( CLASS, C_IG_CONTENT_CONTAINER )
                .attr( "id", this._getId( "content_container" ) )
                .attr( ROLE, REGION )
                .attr( A_LABEL, this._getLandmarkLabel() )
                .markup( ">" );

            this._forEachView( function( viewId, view ) {
                out.markup( "<div" )
                    .attr( "id", self._getId( view.elementId ) )
                    .attr( CLASS, view.cssClass )
                    // we need aria-label on grid views only to provide accessible name for the grid table
                    // todo: once PIVOT and/or GROUP_BY views are added, the label should be added accordingly
                    .optionalAttr( A_LABEL, ( view.internalIdentifier === "grid" ? self.options.config.regionAccTitle : "" ) )
                    .markup( " style='display:none'></div>" );
            } );

            out.markup( "</div></div>" ); // end C_IG_CONTENT_CONTAINER,  end C_IG_BODY

            ctrl$.append( out.toString() );


            /****************
             * Initialisation
             ****************/

            /*
             * Report settings
             */
            if ( lConfig.reportSettingsArea ) {
                this._initReportSettings();
            }

        },

        _resetReportSettings: function () {
            var self = this;

            this._ifNoChangesDo( function( wasChanged ) {

                // Let's only proceed with the reset if there is a baseReportId (otherwise there will be nothing to reset)
                if ( self._currentReportSettings().baseReportId ) {

                    return self._call({
                        resetReportSettings: [ self._report() ]
                    }, {
                        success: function( pData ) {
                            var lResetReportSettings = self._defaultSavedReport( pData.regions[ 0 ].resetReportSettings[ 0 ] );

                            // Update the current report settings with the reset settings
                            self.options.savedReports[ self.currentSavedReportIdx ] = lResetReportSettings;

                            if ( wasChanged ) {
                                // Can't just ignore changes because changing the report currently destroys all models
                                // but a model with changes will not be deleted and so the model along with its changes
                                // may get reused. Clear changes so that the model is deleted when destroyed.
                                self.clearChanges();
                            }
                            // Now switch to this report (as this is effectively a report switch)
                            self._report( lResetReportSettings.id );

                            // Update the saved report select list, as report IDs will change because the session-based report will have been deleted
                            self._updateChangeReportAction();
                        }
                    });
                }
            });
        },

        // Function which is called to open all dialogs, accepts dialog type and data (dependent on dialog)
        _openDialog: function( pType, pData ) {
            var value,
                self = this;

            function checkDlg( dlgName ) {
                var dlg = dlgName + "Dialog$",
                    render = "_render" + dlgName.substr(0,1).toUpperCase() + dlgName.substr(1) + "Dialog";
                if ( !self[dlg] ) {
                    self[render]();
                }
                return self[dlg];
            }

            function open( dlgName, id ) {
                var dlg$ = checkDlg( dlgName );
                if (id) {
                    dlg$.dialog( OPTION, "id", id );
                }
                dlg$.dialog( "open" );
            }

            pData = pData || {};

            switch ( pType ) {
                case COLUMNS:
                case FILTER:
                case SORT:
                case HIGHLIGHT:
                case CONTROL_BREAK:
                    open(pType, pData.id);
                    break;
                case AGGREGATE:
                    checkDlg( pType )
                        .dialog( OPTION, {
                            id:         pData.id,
                            columnId:   pData.columnId
                        } )
                        .dialog( "open" );
                    break;
                /* todo future (should be able to use open)
                 case COMPUTE:
                    if ( !this.computeDialog$ ) {
                        this._renderComputeDialog();
                    }
                    this.computeDialog$
                        .dialog( OPTION, "id", pData.id )
                        .dialog( "open" );
                    break;
                 */
                case FLASHBACK:
                    value = self._currentReportSettings().flashback;
                    if ( value ) {
                        value = value.minsAgo;
                    } else {
                        value = 5;
                    }
                    simplePromptDialog( {
                        labelKey: "APEX.IG.MINUTES_AGO",
                        titleKey: "APEX.IG.FLASHBACK",
                        okLabelKey: "APEX.DIALOG.SAVE",
                        helpKey: "APEX.IG.HELP.FLASHBACK",
                        helpTitleKey: "APEX.IG.HELP.FLASHBACK_TITLE",
                        value: value
                    }, function( value ) {
                        if ( value !== false ) {
                            self.updateFlashback( {
                                isEnabled: true,
                                minsAgo: parseInt( value, 10 )
                            } );
                        }
                    } );
                    break;
                /*
                 case GROUP_BY:
                    this.viewsImpl[ GROUP_BY ].openDialog();
                    break;
                 */
                /*
                 case PIVOT:
                    break;
                 */
                case CHART:
                    this.viewsImpl[ CHART ].openDialog();
                    break;
                case EDIT_REPORT:
                    checkDlg( "reportSettings" )
                        .dialog( OPTION, "saveAs", false )
                        .dialog( "open" );
                    break;
                case SAVE_AS_REPORT:
                    checkDlg( "reportSettings" )
                        .dialog( OPTION, "saveAs", true )
                        .dialog( "open" );
                    break;
                case DOWNLOAD:
                    open(pType);
                    break;
                /*
                case SUBSCRIPTION:
                    //todo
                    break;
                */
            }
        },

        /*
         * pOptions:
         *   viewImpl
         *   updateComponent: bool
         *   fetchData
         *   initialData: { values: , totalRows, moreData }
         *   remove: bool if true the model is removed
         *
         * Updates the viewImpl with:
         *  modelName
         *  model
         *
         */
        _setModel: function( pOptions ) {
            var lModel, lParentIg$, lDataValues, lTotalRows, lMoreData, lDataOverflow, lModelName,
                lViewModelSuffix, lSharedView, lSharedViewId, lEditable,
                lCanAdd = false,
                lCanEdit = false,
                lCanDelete = false,
                lConfig = this.options.config,
                lHasTotal = lConfig.pagination.showTotalRowCount,
                lViewImpl = pOptions.viewImpl,
                lViewId = lViewImpl.internalIdentifier,
                lConfigView = lConfig.views[lViewId];

            // If the view already has a model then release it because a new one is about to be created
            if ( lViewImpl.model ) {
                // todo think: any need to see if the new model name is the same as the old one and what if there are changes in the config? check the version?
                model.release( lViewImpl.modelName );
                lViewImpl.modelName = null;
                lViewImpl.model = null;
            }

            if ( !pOptions.remove ) {

                /*
                 * If the view is configured to share the model with another view then the model name is
                 * derived from the view that has shared its model. Otherwise it is based on the id of
                 * this view.
                 * To share a model the views must have matching column and special column metadata.
                 */
                if ( lConfigView.useModelFrom && lConfig.views[lConfigView.useModelFrom].shareModel ) {
                    lSharedView = this.getViews( lConfigView.useModelFrom );
                    lSharedViewId = lSharedView.internalIdentifier;
                    lViewModelSuffix = lSharedViewId + "_shared";
                } else {
                    lSharedView = lViewImpl;
                    lSharedViewId = lViewId;
                    if ( lConfigView.shareModel ) {
                        lViewModelSuffix =  lSharedViewId + "_shared";
                    } else {
                        lViewModelSuffix = lSharedViewId;
                    }
                }

                lEditable = ( this._isCurrentlyEditable() ) && lSharedView.supports.edit;

                if ( lEditable ) {
                    lCanAdd = lConfig.editable.allowedOperations.create;
                    lCanEdit = lConfig.editable.allowedOperations.update;
                    lCanDelete = lConfig.editable.allowedOperations[ DELETE ];
                }

                // if there is a master model and this is the placeholder model for when there is nothing selected in the master
                // then it cannot be edited
                if ( lConfig.parentRegionStaticId && lConfig.modelInstanceId === null ) {
                    lEditable = false;
                }

                if ( lConfig.modelInstanceId ) {
                    lModelName = [ lConfig.regionStaticId + "_" + lViewModelSuffix, lConfig.modelInstanceId ];
                } else {
                    lModelName = lConfig.regionStaticId + "_" + lViewModelSuffix;
                }

                lViewImpl.modelName = lModelName;

                // first check if there is an existing model
                lViewImpl.model = model.get( lModelName );
                // todo may need to check the version and if it doesn't match release it? or is release not needed because a create is going to be done?

                // if there is no existing model create one
                if ( !lViewImpl.model ) {

                    if ( !lSharedView.supports.totalRows ) {
                        lHasTotal = false;
                    }
                    lModel = $.extend( {
                        // default to not show flash of empty content ony any kind of refresh
                        delayClearData: true
                    }, lConfig.defaultModelOptions, {
                        recordIsArray:      true,
                        hasTotalRecords:    lHasTotal,
                        // todo* JJS somehow need to set the version
                        regionId:           lConfig.regionId,
                        regionStaticId:     lConfig.regionStaticId, // todo JJS discuss with Anthony. Model used to check if error.regionStaticId === o.regionId and it worked now it fails
                        ajaxIdentifier:     lConfig.ajaxIdentifier,
                        pageItemsToSubmit:  lConfig.itemsToSubmit,
                        parentRecordId:     this.parentRecordId,
                        fields:             lViewImpl.modelColumns,
                        editable:           lEditable,
                        saveSelection:      lEditable && lConfig.submitSelectedRows,
                        paginationType:     PROGRESSIVE, // todo JJS I think this needs to be set to none if the pagination type is none (when none is available)
                        regionData: {
                            reportId:       this._report(),
                            view:           lSharedViewId,
                            ajaxColumns:    lConfig.ajaxColumns
                        }
                    } );

                    if ( !lModel.types ) {
                        lModel.types = {
                            "default": {
                                operations: {
                                    canAdd:     lCanAdd,
                                    canEdit:    lCanEdit,
                                    canDelete:  lCanDelete
                                }
                            }
                        };
                    }

                    ["identityField", "metaField", "typeField", "sequenceField"].forEach( prop => {
                        if ( lViewImpl.specialColumns[prop] ) {
                            lModel[prop] = lViewImpl.specialColumns[prop];
                        }
                    } );

                    if ( lConfig.parentRegionStaticId ) {
                        if ( this.parentModel ) {
                            lModel.parentModel = this.parentModel;
                        } else {
                            lParentIg$ = $( "#" + lConfig.parentRegionStaticId + "_ig" );

                            //todo* what about instance ID if parent is also a detail?
                            //todo this may also be confused if master is using a shared model
                            lModel.parentModel = lConfig.parentRegionStaticId + "_" + lParentIg$.interactiveGrid( "getCurrentViewId" );
                        }
                    }

                    if ( lEditable ) {
                        lModel.regionData.allowedOperations = lConfig.editable.allowedOperations.protected;
                    }

                    // Model is initialised slightly different when we have data
                    if ( pOptions.initialData ) {

                        // If we have the data, we can create the model with all the data parameters
                        lDataValues = pOptions.initialData.values;
                        lTotalRows = lHasTotal ? pOptions.initialData.totalRows : null;
                        lMoreData = pOptions.initialData.moreData;
                        lDataOverflow = pOptions.initialData.dataOverflow;

                        lViewImpl.model = model.create( lModelName, lModel, lDataValues, lTotalRows, lMoreData, lDataOverflow );

                    } else if ( pOptions.fetchData ) {

                        // No initial data, but fetch straight away (used by lazy loading, and detail models when a master row has been selected
                        lViewImpl.model = model.create( lModelName, lModel );

                    } else {

                        // Empty model, and does not get the data
                        lViewImpl.model = model.create( lModelName, lModel, [], 0 );

                    }
                    // When a model is first created it will soon fetch data according to the current report settings
                    // and be rendered in a view. Each model tracks what report settings were in effect when they were
                    // last rendered.
                    this.modelReportSettingsSeq[lModelName] = this.reportSettingsSeq;
                }

                // todo should this be just when created or when changed/created
                this._trigger( EVENT_VIEW_MODEL_CREATE, null, {
                    viewId: lViewId,
                    model: lViewImpl.model
                });

                // update current with the new model name, this also refreshes the view
                if ( pOptions.updateComponent ) {
                    // if the report settings have changed since this model was last associated with the view then get new data
                    if ( this.reportSettingsSeq > this.modelReportSettingsSeq[lModelName] ) {
                        this._updateModelRegionData( lViewImpl ); // just in case the report has changed
                        lViewImpl.clearModelData();
                    }

                    lViewImpl.setModelName( lViewImpl.modelName, lViewImpl.modelColumns );   // todo JJS could this cause an extra refresh???
                }
            }

        },
        /*
         * Returns true if the current IG instance has any changes. Checks the editable view's model, and also its
         * dependent models (for detail views with multiple instances).
         */
        _anyChanges: function() {
            var lViewImpl = this.editableViewImpl;

            // todo consider if dependent model changes should be considered. How can refreshing data in the master affect the details
            //   foreign key value change? deleted master record? inserted record with inserted details
            if ( lViewImpl && this._isCurrentlyEditable() ) {
                if ( lViewImpl.model && model.anyChanges( false, lViewImpl.model.name, true ) ) {
                    return true;
                }
            }
            return false;
        },

        /*
         * For operations that clear the model it is important to check that there are no edits/changes that can be lost.
         * If the editable model is not changed perform pOperation.
         * If the editable model is changed then, unless pSkipConfirm is true, ask the user if they want to proceed with
         * the operation and lose changes.
         *   If the user says yes then do the operation otherwise do nothing.
         *   if pSkipConfirm is true then don't prompt and do nothing
         * pSkipConfirm is optional and the default is false todo this is not implemented remove if not needed may have been intended to consolidate code
         */
        //todo think how this should be made public, for similar cases to dialog storage, where you don't want the individual api's to perform the check
        _ifNoChangesDo: function( pSkipConfirm, pOperation ) {
            var self = this,
                lChanged = this._anyChanges();

            if ( !pOperation ) {
                pOperation = pSkipConfirm;
                pSkipConfirm = false;
            }

            if ( lChanged ) {
                if ( !pSkipConfirm ) {
                    // In some cases this function is called from a dialog that is about to close
                    // opening a new dialog right before closing one results in a JavaScript exception because a
                    // handler related to the overlay isn't cleaned up. You get this error: this._trackingInstances(...)[0] is undefined
                    // so do the confirm in a moment to let the previous (if any) dialog close.
                    setTimeout( function() {
                        message.confirm( getIGMessage( "UNSAVED_CHANGES_CONTINUE_CONFIRM" ),
                            function ( ok ) {
                                if ( ok ) {

                                    // Before proceeding, let's turn off edit mode, which prevents possible issues with stale column items
                                    self._setEditMode( false );

                                    pOperation( lChanged );
                                } else {

                                    // If the user cancels, then let's update the report settings in case these need to be reset (eg if action is to disabled a filter)
                                    //todo think if this could be optimised to only update the settings for certain operations
                                    self._refreshReportSettings();
                                }
                            } );
                    }, 1 );
                }
            } else {
                pOperation( lChanged );
            }
        },

        _clearToolbarSearch: function() {
            var lConfig = this.options.config;
            if ( lConfig.toolbar && lConfig.toolbar.searchField && lConfig.toolbarData ) {
                this._tbFindElement( "search_field" ).val( "" );
            }
        },

        _tbFind: function( id ) {
            var item = null,
                tb$ = this.getToolbar();

            // there may not be a toolbar so check that before calling find
            if ( tb$ ) {
                item = tb$.toolbar( "find", id );
            }
            return item;
        },

        _tbFindElement: function( id ) {
            var el$,
                tb$ = this.getToolbar();

            if ( tb$ ) {
                el$ = tb$.toolbar( "findElement", id );
            } else {
                el$ = $();
            }
            return el$;
        },

        /*
         * Public methods
         */

        /**
         * Call this method when the size of the widget element changes. This can happen if the browser window
         * changes for example. This will resize the current view.
         * Note: Most of the time it is not necessary to call this method as Interactive Grid detects when its
         * size changes.
         */
        resize: function() {
            var lHeight, lNewContainerHeight, lHeader$, lReportSettings$,
                lConfig = this.options.config,
                lHeaderHeight = 0,
                lReportSettingsHeight = 0,
                lIg$ = this.element,
                lWidth = lIg$.width(),
                lViewImpl = this._currentViewImpl(),
                lViewsAndContainer$ = $( SEL_IG_CONTENT_CONTAINER, lIg$ ).children().addBack();

            // Tell the widget to ignore the onElementResize handler, which could be triggered by a manual resize
            this.ignoreResizeHandler = true;

            // Size the view container and all the views now (they all occupy the same space).
            // Only the current view will get resized the others will be resized when they become current (visible)

            lViewsAndContainer$.width( lWidth );

            if ( lConfig.maxHeight ) {

                // View container needs to be set to the total width height, minus the toolbar and settings area heights
                lHeight = lIg$.height();

                lHeader$ = $( SEL_IG_HEADER, lIg$ );
                lReportSettings$ = $( SEL_IG_CONTROLS_CONTAINER, lIg$ );

                // For header (toolbar) and report settings' heights, first check if they are visible, and secondly
                // use outerHeight (to also include any padding that contributes to their occupied vertical space)
                if ( lHeader$.filter( ":visible" ).length > 0 ) {
                    lHeaderHeight = lHeader$.outerHeight();
                }
                if ( lReportSettings$.filter( ":visible" ).length > 0 ) {
                    lReportSettingsHeight = lReportSettings$.outerHeight();
                }

                lNewContainerHeight = lHeight - ( lHeaderHeight + lReportSettingsHeight );

                lViewsAndContainer$.height( lNewContainerHeight );
            }

            // refresh toolbar sticky widgets that may be confused by the resize
            if ( $.apex.stickyWidget ) {

                // note views are responsible for resizing their own content including stickywidgets
                lIg$.find( ".a-IG-header.js-stickyWidget-toggle, .a-GV-footer.js-stickyWidget-toggle" ).stickyWidget( REFRESH );
            }

            // Call the view's resize method if there is one
            if ( lViewImpl && lViewImpl.view$ ) {
                lViewImpl.resize();
            }

            // reset ignore resize flag back to false, as we're done with the manual resize
            this.ignoreResizeHandler = false;

        },


        /**
         * Cause the Interactive Grid to get fresh data from the server.
         * A warning is given if the model has any outstanding changes and the user can choose to allow the refresh or not.
         */
        refresh: function() {
            var self = this;

            // Only proceed with refresh, if there are no changes pending
            this._ifNoChangesDo( function() {
                self._forEachView( function( viewId, view ) {
                    if ( view.model ) {
                        // todo preservePagination functionality should be a config option
                        view.clearModelData();
                    }
                } );
            } );
        },

        /**
         * @ignore
         */
        clearChanges: function() {
            var viewModel;
            // todo this should be in sync with _anyChanges
            // if there is an editable view and its model has changes
            if ( this.editableViewImpl ) {
                viewModel = this.editableViewImpl.model;
                if ( viewModel && viewModel.isChanged() ) {
                    viewModel.clearChanges();
                }
            }
        },

        /**
         * <p>Set the instance of this Interactive Grid to correspond to the specified master record.
         * Normally this is done automatically when the master region selection changes. However, it can
         * also be done manually when the {@link interactiveGrid#trackParentSelection} option is false.</p>
         * @param {model} pMasterModel The model of the master region.
         * @param {model.Record} pMasterRecord The record of the master region that determines which records this
         *   detail region will show.
         */
        setMasterRecord: function( pMasterModel, pMasterRecord ) {
            if ( !this.options.config.parentRegionStaticId ) {
                debug.warn("No master region defined.");
                return;
            }

            // when the parent model changes, need to resubscribe to parent model
            if ( !model.equalModelIds( this.parentModel, pMasterModel.modelId() ) ) {
                const lParentIg$ = $( "#" + this.options.config.parentRegionStaticId + "_ig" ),
                    lParentViews = lParentIg$.interactiveGrid( "getViews" ),
                    lParentConfigViews = lParentIg$.interactiveGrid( "option", "config.views" );

                // Store the parentModel id, we'll need it when setting up the new model
                this.parentModel = pMasterModel.modelId();

                this._subscribeToParentModels( lParentViews, lParentConfigViews );
            }

            if ( pMasterRecord ) {
                const lMasterRecordId = pMasterModel.getRecordId( pMasterRecord );

                this._setModelInstance( lMasterRecordId, pMasterModel, pMasterRecord );

                // enable the add row button if the master record is not deleted
                if ( !pMasterModel.getRecordMetadata( lMasterRecordId ).deleted ) {
                    this.actions.enable( "selection-add-row" );
                } else {
                    this.actions.disable( "selection-add-row" );
                }

            } else {
                this._setModelInstance( null );
                // there is an empty model and it is not possible to add a row so disable the add row button.
                this.actions.disable( "selection-add-row" );
            }
        },

        /**
         * Put focus in the cell (or field etc.) given by pRecordId and pColumn. This is used to focus rows or cells
         * that have errors. This will switch to the "editable" view.
         * This delegates to the view. Not all views will support going to a cell.
         *
         * @param {String} [pModelInstanceId] model instance id. only needed if using multiple models such as in master
         *                                  detail and the model has not already been set correctly by the master.
         * @param {String} pRecordId the record id of the row to go to.
         * @param {String} [pColumn] column in the record row to go to.
         */
        gotoCell: function( pModelInstanceId, pRecordId, pColumn ) {
            var lViewImpl;

            // if needed switch to the editable view so the errors can be seen
            if ( this._view() !== this.editableView ) {
                this._view( this.editableView );
            }
            lViewImpl = this._currentViewImpl();

            // todo currently error info doesn't have this. Needed to handle case with master detail
            // todo is error checking needed to make sure that the model exists?
            if ( pModelInstanceId ) {
                this._setModelInstance( pModelInstanceId );
            }
            if ( lViewImpl.gotoCell ) {
                lViewImpl.gotoCell( pRecordId, pColumn );
            }
        },

        /**
         * Returns the actions context for this Interactive Grid instance
         * @return {apex.actions} the actions context
         * @example
         *     apex.region("emp").widget().interactiveGrid("getActions").invoke("save");
         */
        getActions: function() {
            return this.actions;
        },

        /**
         * Returns the toolbar widget element.
         *
         * @return {jQuery} jQuery object of the interactive grid toolbar or null if there is no toolbar
         */
        getToolbar: function() {
            return this.toolbar$;
        },

        /**
         * Return the underlying data model records corresponding to the current selection in the current view.
         * Use the apex.model API to manipulate these records. Make sure you are using the model for the current
         * view for example: apex.region(<static-id>).widget().interactiveGrid("getCurrentView").model
         *
         * Note: Depending on the view and the submitSelectedRows option the selected records returned could
         * span multiple pages. To get just the records that are selected in the current page requires
         * using view widget specific methods.
         *
         * @return {Array} array of records from the model corresponding to the selected rows/records
         * Returns empty array if there is no selection. Returns null if the current view doesn't support
         * selection.
         */
        getSelectedRecords: function() {
            const lViewImpl = this._currentViewImpl();

            if ( lViewImpl.selectionEnabled() ) {
                return lViewImpl.getSelectedRecords();
            }
            return null;
        },

        /**
         * Set the current selection to the records specified. Only applies for views that support selection.
         *
         * Note that the records or record ids given may not yet exist in the model or may not be visible in the view.
         *
         * Note if you set pNoNotify to true then any detail regions will not get updated to reflect the current selection.
         *
         * @param {Array} pRecords an array of model records or an array of model record ids as returned by model
         *                  getRecordId. If this is an empty array then the selection is cleared.
         * @param {boolean} [pFocus] if true the first cell of the selection is given focus
         * @param {boolean} [pNoNotify] if true the selection change event will be suppressed
         */
        setSelectedRecords: function( pRecords, pFocus, pNoNotify ) {
            const lViewImpl = this._currentViewImpl();
            let recIds, rec, model;

            if ( lViewImpl.selectionEnabled() ) {
                if ( pRecords.length ) {
                    if ( typeof pRecords[0] === "string" ) {
                        // convert array of record ids into records
                        model = lViewImpl.model;
                        recIds = pRecords;
                        pRecords = [];
                        for ( let i = 0; i < recIds.length; i++ ) {
                            rec = model.getRecord( recIds[i] );
                            if ( rec ) {
                                pRecords.push( rec );
                            }
                        }
                    }
                }
                lViewImpl.setSelectedRecords( pRecords, pFocus, pNoNotify );
            }
        },

        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        getReports: function( pId ) {
            const lSavedReports = this.options.savedReports;

            if ( pId ) {
                for ( let i = 0; i < lSavedReports.length; i++ ) {
                    if ( lSavedReports[ i ].id === pId ) {
                        return lSavedReports[ i ];
                    }
                }
            } else {
                return lSavedReports;
            }

            // If the function has not yet returned, this must be because an ID was passed that was not found, so let's warn
            debug.warn( "No report exists with ID: ", pId );
        },
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        addReport: function( pReport, pServerOptions ) {
            var lReport = $.extend( pReport, {
                    operation:          OP_INSERT,
                    isEnabled:          true
                }),
                lServerOptions = $.extend( {
                    save:           true
                }, pServerOptions );

            if ( this.options.config.features.saveReport ) {
                this.getReports().push( lReport );

                if( lServerOptions.save ) {
                    this._saveReport( lReport, OP_INSERT );
                }
            } else {
                debug.warn( "Unable to add report settings because the configuration disallows it." );
            }

        },
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        updateReport: function( pId, pReport, pServerOptions ) {
            var i, lSavedReport,
                lSavedReports = this.getReports(),
                lServerOptions = $.extend( {
                    save:           true
                }, pServerOptions );

            if ( this.options.config.features.saveReport ) {

                for ( i = 0; i < lSavedReports.length; i++ ) {
                    lSavedReport = lSavedReports[ i ];

                    if ( lSavedReport.id === pId ) {
                        this._setOperationUpdate( pReport );
                        lSavedReport = $.extend( true, lSavedReport, pReport );
                        break;
                    }
                }
                if( lServerOptions.save ) {
                    this._saveReport( lSavedReport, OP_UPDATE );
                }
            } else {
                debug.warn( "Unable to update report settings because the configuration disallows it." );
            }
        },
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        deleteReport: function( pId, pServerOptions ) {
            var lReport = {},
                lServerOptions = $.extend( {
                    save:           true
                }, pServerOptions );

            if ( this.options.config.features.saveReport ) {
                lReport.id = pId;
                lReport.operation = OP_DELETE;

                //todo think what if save is no, saved report action would not be updated, likewise for add and update

                if ( lServerOptions.save ) {
                    this._saveReport( lReport, OP_DELETE );
                }
            } else {
                debug.warn( "Unable to delete report settings because the configuration disallows it." );
            }
        },

        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        getFilters: function( pId ) {
            var i,
                lFilters = this._currentReportSettings().filters;

            if ( pId ) {
                for ( i = 0; i < lFilters.length; i++ ) {
                    if ( lFilters[ i ].id === pId ) {
                        return lFilters[ i ];
                    }
                }
            } else {
                return lFilters;
            }

            // If the function has not yet returned, this must be because an ID was passed that was not found, so let's warn
            debug.warn( "No filter exists with ID: ", pId );

        },
        //todo add setFilters

        // Function to add a filter
        //   pFilter: The new filter settings
        //   pOptions:
        //     save:                Specify whether to save the new filter immediately to the database (defaults to true)
        //     refreshData:         Specify whether to update the view data (defaults true)
        //     skipNoChangesCheck:  You can skip the no changes check, if this has already been done elsewhere (defaults to false)
        //
        // todo raise errors when api is called with insufficient information (missing columnName for column filters, missing columnType, invalid operator etc.)
        // todo shouldn't have to pass columnType, derive internally.
        //
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        addFilter: function( pFilter, pOptions ) {
            let self = this,
                lFilter = $.extend( pFilter, {
                    operation:  OP_INSERT,
                    isEnabled:  true
                }),
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false,
                    validate:           true
                }, pOptions );

            function _addFilter() {

                // API supports use of column name, if this is used let's lookup the corresponding ID to use to create the filter
                if ( lFilter.columnName ) {
                    lFilter.columnId = self._getColumnByName( lFilter.columnName ).id;
                    delete lFilter.columnName;
                }

                // Add to widget state
                self.getFilters().push( lFilter );

                // Save if required
                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:               lOptions.refreshData,
                        affectsOtherViewsModels:    true
                    });
                }
            }

            // Only proceed with adding the filter if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _addFilter();
            } else {
                this._ifNoChangesDo( _addFilter );
            }

        },

        //todo doc
        //todo add support for use of columnName, as with addFilter
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        updateFilter: function( pId, pFilter, pOptions ) {
            var self = this,
                lFilters = this.getFilters(),
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false,
                    validate:           true
                }, pOptions );

            function _updateFilter() {
                var i,
                    lFocus = self._isSettingsCheckboxFocused( pId, FILTER );

                // Update widget state
                for ( i = 0; i < lFilters.length; i++ ) {
                    if ( lFilters[ i ].id === pId ) {
                        self._setOperationUpdate( pFilter );

                        // Extend current filter setting, which allows passing all or some of the filter properties in the API
                        lFilters[ i ] = $.extend( true, lFilters[ i ], pFilter );

                        // exit now we have found the filter
                        break;
                    }
                }

                // Save if required
                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:               lOptions.refreshData,
                        affectsOtherViewsModels:    true
                    }, function () {
                        self._focusOnSettingsCheckbox( lFocus, pId, FILTER );
                    });
                }
            }

            // Only proceed with adding the filter if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _updateFilter();
            } else {
                this._ifNoChangesDo( _updateFilter );
            }

        },
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        deleteFilter: function( pId, pOptions ) {
            var self = this,
                lFilters = this.getFilters(),
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );

            function _deleteFilter() {
                var i;

                // Update widget state
                for ( i = 0; i < lFilters.length; i++ ) {
                    if ( lFilters[ i ].id === pId ) {
                        lFilters[ i ] = $.extend( true, lFilters[ i ], {
                            operation: OP_DELETE
                        });

                        // exit now we have found the filter
                        break;
                    }
                }

                // Save if required
                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:               lOptions.refreshData,
                        affectsOtherViewsModels:    true
                    });
                }
            }

            // Only proceed with adding the filter if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _deleteFilter();
            } else {
                this._ifNoChangesDo( _deleteFilter );
            }

        },

        // API Highlights
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        getHighlights: function( pId ) {
            var i,
                lHighlights = this._getCurrentView().highlights;


            if ( pId ) {
                for ( i = 0; i < lHighlights.length; i++ ) {
                    if ( lHighlights[ i ].id === pId ) {
                        return lHighlights[ i ];
                    }
                }
            } else {
                return lHighlights;
            }

            // If the function has not yet returned, this must be because an ID was passed that was not found, so let's warn
            debug.warn( "No highlight exists with ID: ", pId );

        },
        //todo add setHighlights

        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        addHighlight: function( pHighlight, pOptions ) {
            var self = this,
                lHighlight = $.extend( pHighlight, {
                    operation:  OP_INSERT,
                    isEnabled:  true
                }),
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );


            function _addHighlight() {

                // API supports use of column name, if this is used let's lookup the corresponding ID to use to create the Highlight
                if ( lHighlight.columnName ) {
                    lHighlight.columnId = self._getColumnByName( lHighlight.columnName ).id;
                    delete lHighlight.columnName;
                }

                // Add to widget state
                self.getHighlights().push( lHighlight );

                // Save if required
                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:               lOptions.refreshData,
                        affectsOtherViewsModels:    true
                    });
                }
            }

            // Only proceed with adding the Highlight if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _addHighlight();
            } else {
                this._ifNoChangesDo( _addHighlight );
            }

        }, // addHighlight

        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        updateHighlight: function( pId, pHighlight, pOptions ) {
            var self = this,
                lHighlights = this.getHighlights(),
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );

            function _updateHighlight() {
                var i,
                    lFocus = self._isSettingsCheckboxFocused( pId, HIGHLIGHT );

                // Update widget state
                for ( i = 0; i < lHighlights.length; i++ ) {
                    if ( lHighlights[ i ].id === pId ) {
                        self._setOperationUpdate( pHighlight );

                        // Extend current Highlight setting, which allows passing all or some of the Highlight properties in the API
                        lHighlights[ i ] = $.extend( true, lHighlights[ i ], pHighlight );
                        if ( pHighlight.type === ROW ) {
                            delete lHighlights[i].columnId;
                            delete lHighlights[i].columnType;
                        }

                        // exit now we have found the Highlight
                        break;
                    }
                }

                // Save if required
                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:               lOptions.refreshData,
                        affectsOtherViewsModels:    true // todo is this really true for highlights?
                    }, function () {
                        self._focusOnSettingsCheckbox( lFocus, pId, HIGHLIGHT );
                    });
                }
            }

            // Only proceed with adding the Highlight if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _updateHighlight();
            } else {
                this._ifNoChangesDo( _updateHighlight );
            }
        }, // updateHighlights

        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        deleteHighlight: function( pId, pOptions ) {
            var self = this,
                lHighlights = this.getHighlights(),
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );

            function _deleteHighlight() {
                var i;

                // todo consider optimization to not refresh the data if the highlight that is being deleted was previouly not enabled
                // the old delete highlight code from report settings did this optimization.

                // Update widget state
                for ( i = 0; i < lHighlights.length; i++ ) {
                    if ( lHighlights[ i ].id === pId ) {
                        lHighlights[ i ] = $.extend( true, lHighlights[ i ], {
                            operation: OP_DELETE
                        });

                        // exit now we have found the Highlight
                        break;
                    }
                }

                // Save if required
                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:               lOptions.refreshData,
                        affectsOtherViewsModels:    true
                    });
                }
            }

            // Only proceed with adding the Highlight if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _deleteHighlight();
            } else {
                this._ifNoChangesDo( _deleteHighlight );
            }

        },


        //All compute related methods commented out for now
        // todo doc
        /*
        getComputes: function( pId ) {
            var i,
                lComputes = this._currentReportSettings().computeColumns;

            if ( pId ) {
                for ( i = 0; i < lComputes.length; i++ ) {
                    if ( lComputes[ i ].id === pId ) {
                        return lComputes[ i ];
                    }
                }
            } else {
                return lComputes;
            }

            // If the function has not yet returned, this must be because an ID was passed that was not found, so let's warn
            debug.warn( "No compute exists with ID: ", pId );

        },
        */
        // todo need to add setCompute API

        //todo internalise
        /*
        addCompute: function( pCompute, pOptions ) {
            var self = this,
                lCompute = $.extend( pCompute, {
                    operation:  OP_INSERT,
                    isEnabled:  true
                }),
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );


            function _addCompute() {

                // Add to widget state
                self.getComputes().push( lCompute );

                // Save if required
                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:               lOptions.refreshData,
                        affectsOtherViewsModels:    true
                    });
                }
            }

            // Only proceed with adding the Compute if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _addCompute();
            } else {
                this._ifNoChangesDo( _addCompute );
            }

        }, // addCompute
        */

        //todo internalise
        /*
        updateCompute: function( pId, pCompute, pOptions ) {
            var self = this,
                lComputes = this.getComputes(),
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );

            function _updateCompute() {
                var i;

                // Update widget state
                for ( i = 0; i < lComputes.length; i++ ) {
                    if ( lComputes[ i ].id === pId ) {
                        self._setOperationUpdate( pCompute );

                        // Extend current Compute setting, which allows passing all or some of the Compute properties in the API
                        // lComputes[ i ] = $.extend( true, lComputes[ i ], pCompute );
                        lComputes[ i ] = pCompute;

                        // exit now we have found the Compute
                        break;
                    }
                }

                // Save if required
                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:               lOptions.refreshData,
                        affectsOtherViewsModels:    true
                    });
                }
            }

            // Only proceed with adding the Compute if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _updateCompute();
            } else {
                this._ifNoChangesDo( _updateCompute );
            }
        }, // updateComputes
        */
        //todo doc
        /*
        deleteCompute: function( pId, pOptions ) {
            var self = this,
                lComputes = this.getComputes(),
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );

            function _deleteCompute() {
                var i;

                // Update widget state
                for ( i = 0; i < lComputes.length; i++ ) {
                    if ( lComputes[ i ].id === pId ) {
                        lComputes[ i ] = $.extend( true, lComputes[ i ], {
                            operation: OP_DELETE
                        });

                        // exit now we have found the Compute
                        break;
                    }
                }

                // Save if required
                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:               lOptions.refreshData,
                        affectsOtherViewsModels:    true
                    });
                }
            }

            // Only proceed with adding the Compute if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _deleteCompute();
            } else {
                this._ifNoChangesDo( _deleteCompute );
            }

        },
        */

        //todo Add facility to pass ID and just get single aggregate
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        getAggregates: function() {
            var lAggregates = [],
                lCurrentViewImpl = this._currentViewImpl();

            if ( lCurrentViewImpl.supports.aggregation ) {
                lAggregates = this._getCurrentView().aggregations;
            }

            return lAggregates;
        },

        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        addAggregate: function( pAggregate, pOptions ) {
            var self = this,
                lAggregate = $.extend( pAggregate, {
                    operation:          OP_INSERT
                }),
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );

            function _addAggregate() {

                self.getAggregates().push( lAggregate );

                if( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:   lOptions.refreshData
                    });
                }
            }

            // Only proceed with adding the aggregate if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _addAggregate();
            } else {
                this._ifNoChangesDo( _addAggregate );
            }

        },
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        updateAggregate: function( pId, pAggregate, pOptions ) {
            var self = this,
                lAggregates = this.getAggregates(),
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );

            function _updateAggregate() {
                var i,
                lFocus = self._isSettingsCheckboxFocused( pId, AGGREGATE );

                for ( i = 0; i < lAggregates.length; i++ ) {
                    if ( lAggregates[ i ].id === pId ) {
                        self._setOperationUpdate( pAggregate );

                        // Extend current aggregate setting, which allows passing all or some of the aggregate properties in the API
                        lAggregates[ i ] = $.extend( true, lAggregates[ i ], pAggregate );

                        // exit now we have found the aggregate
                        break;
                    }
                }

                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel: lOptions.refreshData
                    }, function () {
                        self._focusOnSettingsCheckbox( lFocus, pId, AGGREGATE );
                    });
                }
            }

            // Only proceed with updating the aggregate if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _updateAggregate();
            } else {
                this._ifNoChangesDo( _updateAggregate );
            }

        },
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        deleteAggregate: function( pId, pOptions ) {
            let self = this,
                lAggregates = this.getAggregates(),
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );

            function _deleteAggregate() {

                for ( let i = 0; i < lAggregates.length; i++ ) {
                    if ( lAggregates[ i ].id === pId ) {
                        lAggregates[ i ] = $.extend( true, lAggregates[ i ], {
                            operation: OP_DELETE
                        });

                        // exit now we have found the aggregate
                        break;
                    }
                }

                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:    lOptions.refreshData,
                        refreshColumns:  true
                    });
                }
            }

            // Only proceed with deleting the aggregate if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _deleteAggregate();
            } else {
                this._ifNoChangesDo( _deleteAggregate );
            }

        },

        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        getFlashback: function() {
            return this._currentReportSettings().flashback;
        },
        //todo add setFlashback

        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        addFlashback: function( pFlashback, pOptions ) {
            var self = this,
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );

            function _addFlashback() {

                self._currentReportSettings().flashback = $.extend( pFlashback, {
                    isEnabled: true
                });

                // Set update operation flag on report, as this is really an update to the report not an inserted flashback
                self._setOperationUpdate( self._currentReportSettings() );

                if( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:               lOptions.refreshData,
                        affectsOtherViewsModels:    true,
                        changeIdentifier:           "editable"
                    });
                }
            }

            // Only proceed with adding the flashback if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _addFlashback();
            } else {
                this._ifNoChangesDo( _addFlashback );
            }

        },

        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        updateFlashback: function( pFlashback, pOptions ) {
            var self = this,
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );

            function _updateFlashback() {
                var lFocus = self._isSettingsCheckboxFocused( "", FLASHBACK );

                // Set update operation flag on report, as this is really an update to the report, not the flashback object
                self._setOperationUpdate( self._currentReportSettings() );

                self._currentReportSettings().flashback = $.extend( self._currentReportSettings().flashback, pFlashback );

                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:               lOptions.refreshData,
                        affectsOtherViewsModels:    true,
                        changeIdentifier:           "editable"
                    }, function () {
                        self._focusOnSettingsCheckbox( lFocus, "", FLASHBACK );
                    });
                }
            }

            // Only proceed with updating the flashback if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _updateFlashback();
            } else {
                this._ifNoChangesDo( _updateFlashback );
            }

        },

        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        deleteFlashback: function( pOptions ) {
            var self = this,
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, pOptions );

            function _deleteFlashback() {

                // Set update operation flag on report, as this is really an update to the report, not the flashback object
                self._setOperationUpdate( self._currentReportSettings() );

                self._currentReportSettings().flashback = false;

                if ( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:               lOptions.refreshData,
                        affectsOtherViewsModels:    true,
                        changeIdentifier:           "editable"
                    });
                }
            }

            // Only proceed with deleting the flashback if there are no pending data changes, or we can ignore the check
            if ( lOptions.skipNoChangesCheck ) {
                _deleteFlashback();
            } else {
                this._ifNoChangesDo( _deleteFlashback );
            }

        },

        //todo add and make public setControlBreaks, getControlBreaks, deleteControlBreak, internalise others.
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        addControlBreak: function( pBreakColumn, pControlBreak, pOptions ) {

            var self = this,
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, ( pOptions ? pOptions: {} ) )
            ;

            function _addControlBreak () {
                var i,
                    lMaxBreakOrder = 0,
                    lCurrentReportColumns = self._getCurrentView().columns,
                    lCurrentReportColumn
                ;

                for ( i = 0; i < lCurrentReportColumns.length; i++ ) {
                    if ( lCurrentReportColumns[ i ].columnId === pBreakColumn.id ) {
                        lCurrentReportColumn = lCurrentReportColumns[ i ];
                        break;
                    }
                }

                // of no break order is given, determine the maximum
                if ( !pControlBreak.order ) {
                    for ( i = 0; i < lCurrentReportColumns.length; i++ ) {
                        if ( lCurrentReportColumns[ i ].break  ) {
                            lMaxBreakOrder += 1;
                        }
                    }
                    pControlBreak.order = lMaxBreakOrder + 1;
                }

                lCurrentReportColumn = $.extend( true, lCurrentReportColumn, {
                    isVisible:      !pControlBreak.isEnabled,
                    "break": {
                        order:      pControlBreak.order,
                        isEnabled:  pControlBreak.isEnabled,
                        direction:  pControlBreak.direction,
                        nulls:      pControlBreak.nulls
                    }
                });
                self._setOperationUpdate( lCurrentReportColumn );

                if ( pControlBreak.isEnabled ) {
                    self._adjustControlBreakSort();
                }

                // Update Grid
                if ( pControlBreak.isEnabled ) {
                    $.extend( pBreakColumn, {
                        controlBreakIndex:     pControlBreak.order,
                        controlBreakDirection: pControlBreak.direction,
                        hidden: true
                    });
                } else {
                    $.extend( pBreakColumn, {
                        controlBreakIndex: 0,
                        controlBreakDirection: null,
                        hidden: false
                    });
                }

                // Save Settings
                if( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:   lOptions.refreshData,
                        refreshColumns: lOptions.refreshData
                    });
                }
            }

            if ( lOptions.skipNoChangesCheck ) {
                _addControlBreak();
            } else {
                this._ifNoChangesDo( _addControlBreak );
            }
        },
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        updateControlBreak: function ( pColumnId, pControlBreak, pOptions ) {
            var self = this,
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, ( pOptions ? pOptions : {} ) )
            ;

            function _updateControlBreak() {
                var i,
                    lCurrentReportColumns = self._getCurrentView().columns,
                    lCurrentReportColumn,
                    lFocus = self._isSettingsCheckboxFocused( pColumnId, CONTROL_BREAK );

                for ( i = 0; i < lCurrentReportColumns.length; i++ ) {
                    if ( lCurrentReportColumns[ i ].columnId === pColumnId ) {
                        lCurrentReportColumn = lCurrentReportColumns[ i ];
                        break;
                    }
                }

                lCurrentReportColumn = $.extend( true, lCurrentReportColumn, {
                    isVisible:      !pControlBreak.isEnabled,
                    "break": {
                        order:      pControlBreak.order,
                        isEnabled:  pControlBreak.isEnabled,
                        direction:  pControlBreak.direction,
                        nulls:      pControlBreak.nulls
                    }
                });
                self._setOperationUpdate( lCurrentReportColumn );

                // Update Grid
                if ( pControlBreak.isEnabled ) {
                    $.extend( self._currentViewImpl().modelColumns[ self._getColumn( pColumnId ).name ], {
                        controlBreakIndex:     lCurrentReportColumn.break.order,
                        controlBreakDirection: lCurrentReportColumn.break.direction,
                        hidden: true
                    });
                } else {
                    $.extend( self._currentViewImpl().modelColumns[ self._getColumn( pColumnId ).name ], {
                        controlBreakIndex: 0,
                        controlBreakDirection: null,
                        hidden: false
                    });
                }

                self._adjustControlBreakSort();

                if( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:   lOptions.refreshData,
                        refreshColumns: lOptions.refreshData
                    }, function () {
                        self._focusOnSettingsCheckbox( lFocus, pColumnId, CONTROL_BREAK );
                    });
                }
            }

            if ( lOptions.skipNoChangesCheck ) {
                _updateControlBreak();
            } else {
                this._ifNoChangesDo( _updateControlBreak );
            }
        },
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        deleteControlBreak: function ( pColumnId, pOptions ) {
            var self = this,
                lOptions = $.extend( {
                    save:               true,
                    refreshData:        true,
                    skipNoChangesCheck: false
                }, ( pOptions ? pOptions: {} ) )
            ;

            function _deleteControlBreak() {
                var i, lCurrentReportColumns = self._getCurrentView().columns,
                    lCurrentReportColumn
                ;

                for ( i = 0; i < lCurrentReportColumns.length; i++ ) {
                    if ( lCurrentReportColumns[ i ].columnId === pColumnId ) {
                        lCurrentReportColumn = lCurrentReportColumns[ i ];
                        break;
                    }
                }

                lCurrentReportColumn = $.extend( true, lCurrentReportColumn, {
                    isVisible: true,
                    "break":   false
                });

                self._setOperationUpdate( lCurrentReportColumn );

                // Update current view / model column
                $.extend( self._currentViewImpl().modelColumns[ self._getColumn( pColumnId ).name ], {
                    controlBreakIndex: 0,
                    controlBreakDirection: null,
                    hidden: false
                });

                self._adjustControlBreakSort();

                if( lOptions.save ) {
                    self._setReportSettings({
                        refreshModel:   lOptions.refreshData,
                        refreshColumns: lOptions.refreshData
                    });
                }
            }

            if ( lOptions.skipNoChangesCheck ) {
                _deleteControlBreak();
            } else {
                this._ifNoChangesDo( _deleteControlBreak );
            }
        },
        // Gets ordered list of sorted columns, ordered by their sort order
        // returns empty array if there are no sorts, consistent with other get api's
        //   or an array of sort objects containing; columnId, order, direction and nulls
        // todo all views
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        getSorts: function() {
            var i, lColumn, lSort,
                lSorts = [],
                lColumns = this._getCurrentView().columns;

            // Build up local array of sorted columns
            for ( i = 0; i < lColumns.length; i++ ) {
                lColumn = lColumns[ i ];

                // We only include columns that a) have a sort defined and b) are not a break column (because break sorts are configured in the break dialog)
                if ( lColumn.sort ) {
                    lSort = $.extend( {}, {
                        columnId:   lColumn.columnId,
                        order:      lColumn.sort.order,
                        direction:  lColumn.sort.direction,
                        nulls:      lColumn.sort.nulls
                    });
                    lSorts.push( lSort );
                }

            }

            // Reorder them into their sort order, because this API returns the array in the right order
            if ( lSorts.length > 0 ) {
                lSorts = lSorts.sort( function( a, b ) {
                    return a.order - b.order;
                });
            }

            // Finally remove all the order properties, as the order is defined by the array order
            for ( i = 0; i < lSorts.length; i++ ) {
                delete lSorts[ i ].order;
            }

            return lSorts;

        },

        //todo consider adding do not save flag as this may be useful
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        setSorts: function( pSorts ){
            var i, j, k, lColumnMatched, lSort, lViewColumn, lCurGridColumn,
                self = this,
                lConfig = this.options.config,
                lViewImpl = this._currentViewImpl(),
                lViewId = lViewImpl.internalIdentifier,
                lConfigView = lConfig.views[lViewId],
                lViewColumns = this._getCurrentView().columns,
                lGridColumns = null;

            this._ifNoChangesDo( function() {

                // If there is a shared model use the corresponding view. This assumes that it is the grid's
                // model that is shared.
                if ( lConfigView.useModelFrom && lConfig.views[lConfigView.useModelFrom].shareModel ) {
                    lViewImpl = self.getViews( lConfigView.useModelFrom );
                }
                if ( lViewImpl.supports.configurableColumns ) {
                    // currently configurableColumns implies a grid view with corresponding column configuration
                    lGridColumns = lViewImpl.getColumns();
                }

                // make sure that view columns includes the columns to sort
                for ( j = 0; j < pSorts.length; j++ ) {
                    lSort = pSorts[ j ];
                    lColumnMatched = false;

                    for ( i = 0; i < lViewColumns.length; i++ ) {
                        lViewColumn = lViewColumns[i];
                        if ( lSort.columnId === lViewColumn.columnId ) {
                            lColumnMatched = true;
                            break;
                        }
                    }
                    if ( !lColumnMatched ) {
                        // add the column
                        lViewColumns.push( {
                            // server supplies the id and seems to default the seq just fine.
                            columnId: lSort.columnId,
                            operation: OP_INSERT,
                            columnType: COLUMN,
                            isVisible: false,
                            isFrozen: false // grid view specific but server requires it
                        } );
                    }
                }

                // Loop through view columns
                for ( i = 0; i < lViewColumns.length; i++ ) {
                    lViewColumn = lViewColumns[ i ];
                    lColumnMatched = false;

                    if ( lGridColumns ) {
                        // Locate corresponding grid column
                        for ( k = 0; k < lGridColumns.length; k++ ) {
                            if ( lViewColumn.columnId === lGridColumns[k].id ) {
                                lCurGridColumn = lGridColumns[k];
                                break;
                            }
                        }
                    }

                    for ( j = 0; j < pSorts.length; j++ ) {
                        lSort = pSorts[ j ];

                        // For each view column, see if there is a matching sort column. If so set the matched flag and
                        // set the sort order based in it's array position
                        if ( lSort.columnId === lViewColumn.columnId ) {

                            lColumnMatched = true;
                            lSort.order = j + 1;

                            break;
                        }
                    }

                    // If the column has a matching sort
                    if ( lColumnMatched ) {

                        // Let's remove columnId from the sort object, as this is not required in the column metadata
                        delete lSort.columnId;

                        // If the column had no previous sort, then this is a newly sorted column. Here we set the operation to update (as it's still an update to the column)
                        if ( !lViewColumn.sort ) {

                            lViewColumn.sort = lSort;
                            self._setOperationUpdate( lViewColumn );
                            if ( lCurGridColumn ) {
                                lCurGridColumn.sortIndex = lViewColumn.sort.order;
                                lCurGridColumn.sortDirection = lViewColumn.sort.direction;
                            }
                        } else {

                            // if column had a sort, and has a new sort, let's check each property to see if we need to update anything
                            if (    lSort.order !== lViewColumn.sort.order ||
                                    lSort.direction !== lViewColumn.sort.direction ||
                                    lSort.nulls !== lViewColumn.sort.nulls ) {

                                // something has changed, so it's an update
                                lViewColumn.sort = lSort;
                                self._setOperationUpdate( lViewColumn );
                                if ( lCurGridColumn ) {
                                    lCurGridColumn.sortIndex = lViewColumn.sort.order;
                                    lCurGridColumn.sortDirection = lViewColumn.sort.direction;
                                }
                            }
                        }
                    } else {

                        // If the column does not have a new sort, check if it had one before, and if so this needs to be updated
                        if ( lViewColumn.sort ) {
                            lViewColumn.sort = false;
                            self._setOperationUpdate( lViewColumn );
                            if ( lCurGridColumn ) {
                                lCurGridColumn.sortIndex = null;
                                lCurGridColumn.sortDirection = null;
                            }
                        }
                    }
                }

                self._adjustControlBreakSort();

                self._setReportSettings({
                    refreshModel:   true,
                    refreshColumns: true
                });
                if ( lViewImpl !== self._currentViewImpl() ) {
                    // if effective (shared) view is different from current view refresh it also
                    lViewImpl.refreshColumns();
                    lViewImpl.refresh();
                }
            });
        },
        //todo add deleteSort?

        // todo think jjs these are view specific methods
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        getChart: function() {
            return this._currentReportSettings().views.chart;
        },
        //todo doc

        /*
         * setChart
         * Note: Does not need to check for changes, because setting a view's configuration has no impact on another
         * view's model.
         */
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        setChart: function( pChart ) {
            var self = this,
                lNewChart,
                lCurrentChart = this.getChart(),
                lViewImpl = this._currentViewImpl(),
                lOptions = {};

            if ( !lCurrentChart ) {

                // If no chart is currently defined, mark as an insert and create chart with attributes in pChart
                lNewChart = $.extend( {
                    operation: OP_INSERT
                }, pChart );

            } else {

                // If there is an existing chart defined, extend it with the new chart attributes, which allows
                // that not all attributes are passed. Also mark as update.
                lNewChart = $.extend( lCurrentChart, pChart );

                this._setOperationUpdate( lNewChart );
            }

            this._currentReportSettings().views.chart = lNewChart;

            // How we set the report settings depends on if the current view is the CHART view. If current view is
            // different, then we do not refresh view or model and instead we pass a switch view call to the callback.
            // If current view is CHART, then we just refresh view and model, there is no need to switch view.
            if ( this._view() === CHART ) {

                // Refresh chart region to reflect updated attributes/column mappings
                lOptions.ig = this;
                lOptions.igConfig = this.options.config;
                lViewImpl.initView( lOptions ); // todo jjs this is missing ig$ and report settings
                // todo jjs is a view change event needed? was it destroyed or is it being init a second time?

                this._setReportSettings( {
                    refreshView: true,
                    refreshModel: true
                });
            } else {
                this._setReportSettings( {}, function() {
                    self._view( CHART, {
                        fetchData: true
                    } );
                });
            }
        },
        /*** FOR INTERNAL USE ONLY: Subject to change in the future, please do not use! ***/
        deleteChart: function() {
            var self = this,
                lViewImpl = this._currentViewImpl();

            this._currentReportSettings().views.chart = {
                operation: OP_DELETE
            };

            this._setReportSettings( {}, function() {

                // Destroy the view here, after the report settings have been updated (which also switches views in this case)
                lViewImpl.destroyView( self );
                lViewImpl.view$ = null;
            });
        },


        /*
        getGroupBy: function() {
            return this._currentReportSettings().views.groupby;
        },
        setGroupBy: function( pGroupBy ) {
            var lNewGroupBy,
                self = this,
                lCurrentGroupBy = this.getGroupBy();

            if ( !lCurrentGroupBy ) {

                // If no chart is currently defined, mark as an insert and create chart with attributes in pChart
                lNewGroupBy = $.extend( {
                    operation: OP_INSERT
                }, pGroupBy );

            } else {

                // If there is an existing chart defined, extend it with the new chart attributes, which allows
                // that not all attributes are passed. Also mark as update.
                lNewGroupBy = $.extend( lCurrentGroupBy, pGroupBy );

                this._setOperationUpdate( lNewGroupBy );

            }

            this._currentReportSettings().views.groupby = lNewGroupBy;

            // How we set the report settings depends on if the current view is the CHART view. If current view is
            // different, then we do not refresh view or model and instead we pass a switch view call to the callback.
            // If current view is CHART, then we just refresh view and model, there is no need to switch view.
            if ( this._view() === GROUP_BY ) {
                this._setReportSettings( {
                    refreshView: true,
                    refreshModel: true
                });
            } else {
                this._setReportSettings( {}, function() {
                    self._view( GROUP_BY );
                });
            }

        },
        deleteGroupBy: function() {
            var self = this;

            this._currentReportSettings().views.groupby = {
                operation: OP_DELETE
            };

            this._setReportSettings( {}, function() {
                self._view( GRID );
            });

        },
        */

        /**
         * Return the Interactive Grid view interface for the given view id or if no view id is given return a
         * map of all the view interfaces.
         *
         * @param {string} [pViewId] Id of the view to get. For example "grid" or "chart".
         * @return {interactiveGridView} View interface.
         */
        getViews: function( pViewId ) {
            if ( pViewId ) {
                return this.viewsImpl[ pViewId ];
            } else {
                return this.viewsImpl;
            }
        },

        /**
         * Return the current Interactive Grid view interface.
         *
         * @return {interactiveGridView} View interface.
         */
        getCurrentView: function() {
            return this.getViews( this.getCurrentViewId() );
        },

        /**
         * Return the view id of the current view.
         *
         * @return {string} view id.
         */
        getCurrentViewId: function() {
            return this._view();
        },

        /**
         * Sets focus to the search field if present, and if not delegates to the current view's focus handling.
         */
        focus: function() {
            var lConfig = this.options.config;

            // todo think about if we should respect if the current view has previously had focus, if so would this take priority?
            if ( lConfig.toolbar && lConfig.toolbar.searchField && this.toolbar$ ) {
                this._tbFindElement( "search_field" ).focus();
            } else {
                // todo think what if view doesn't take focus? all but chart currently do. can chart support focus?
                this._currentViewImpl().focus();
            }
        }

    });

    //
    // "Class" methods
    //
    // todo add back this info if/when toolbar widget is documented
    //     <p>See {@link toolbar} widget for details.</p>
    /**
     * <p>Returns a copy of the default Interactive Grid toolbar data structure.
     * This is a copy of the array that will be used as the data option when the Interactive Grid's toolbar is created.
     * This is typically used from the Advanced JavaScript code function to customize the
     * return value of this function and then assign to the {@link interactiveGrid#toolbarData} config property.</p>
     *
     * <p>Note the array returned has additional methods to make it easier to find and manipulate the toolbar
     * structure. See {@link interactiveGrid.toolbarData} for details.</p>
     *
     * @method copyDefaultToolbar
     * @memberof interactiveGrid
     * @return {interactiveGrid.toolbarData} Returns an array containing a copy of the default Interactive Grid toolbar metadata.
     * @example <caption>The following example shows how to make the download dialog more easily accessible, by adding a
     * button to the toolbar to open it.</caption>
     * function( options ) {
     *    var $ = apex.jQuery,
     *        toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(), // Make a copy of the default toolbar
     *        actionsMenuGroup = toolbarData.toolbarFind( "actions1" );  // Locate the actions menu group
     *
     *    // Array position denotes displayed position in the toolbar, so let's add the new download button directly
     *    // after the actions menu group in the array, such that it displays directly after the actions menu in the
     *    // toolbar.
     *    // Note: The toolbar is action-driven, so integrates easily with the Interactive Grid. To show the dialog, we
     *    // just define the appropriate action for showing the download dialog (show-download-dialog).
     *    actionsMenuGroup.controls.push( {
     *        type: "BUTTON",
     *        action: "show-download-dialog",
     *        iconBeforeLabel: true
     *    } );
     *
     *    // Assign new toolbar data back to toolbarData configuration property
     *    options.toolbarData = toolbarData;
     *
     *    // Return the options
     *    return options;
     *}
     * @example <caption>This example is similar to the previous one except that the Download menu item is removed
     * from the Actions menu and inserted as a toolbar button after the Actions menu button.</caption>
     * function( options) {
     *     var download,
     *         toolbarData = $.apex.interactiveGrid.copyDefaultToolbar();
     *
     *     // Move download menu item to its own button on the toolbar
     *     download = toolbarData.toolbarRemove( "show-download-dialog" );
     *     // download is a menu item; change it to a toolbar button component
     *     download.type = "BUTTON";
     *     download.iconBeforeLabel = true;
     *     // inset it after the Actions menu button
     *     toolbarData.toolbarInsertAfter( "actions_button", download );
     *
     *    // Assign new toolbar data back to toolbarData configuration property
     *    options.toolbarData = toolbarData;
     *
     *    // Return the options
     *    return options;
     * }
     */
    $.apex.interactiveGrid.copyDefaultToolbar = copyDefaultToolbar;

    var gRegisteredViews = [];

    function registerView( pViewDef ) {
        gRegisteredViews.push( pViewDef );
    }

    /**
     * @ignore
     * @type {Function}
     */
    $.apex.interactiveGrid.registerView = registerView;

    //
    // Built-in Views
    //

    // todo Consider what we can add to this base object for grid, pivot and group by when we add pivot and group by, probably a fair amount as they are all grid based
    // for now moved most methods from grid view to base assuming group by and grid are more similar than different
    const GRID_RANGE_ACTIONS = [ "selection-fill", "selection-clear", "selection-copy-down" ],
        baseGridAndPivotAndGroupByView = {
        setColumnConfig: function( pOptions ) {
            var i, lGridColumn, lIGColumn, lActionsOut, lButtonClass, br, lModelColumn, defaultValue,
                lModelColumns = {},
                lBaseModelColumns = pOptions.baseModelColumns,
                lConfig = pOptions.igConfig,
                lConfigViewFeatures = lConfig.views[this.internalIdentifier].features,
                lReport = pOptions.currentReportSettings,
                lIg = pOptions.ig,
                lBreakDirection = ASC,
                lEditable = ( lConfig.editable !== false );

            // Loop through the view's columns and construct the model columns
            for ( i = 0; i < lReport.views.grid.columns.length; i++ ) {

                lGridColumn = lReport.views.grid.columns[ i ];
                lIGColumn = lIg._getColumn( lGridColumn.columnId );

                lModelColumn = $.extend( true, {}, ( lIGColumn.defaultGridColumnOptions || {} ), lBaseModelColumns[ lGridColumn.columnId ] );

                /*
                 * Simple mappings
                 */
                lModelColumn.elementId = lIGColumn.staticId;
                lModelColumn.seq = lGridColumn.seq;

                /*
                 * More complex mappings
                 */

                // noStretch from defaultGridColumnOptions overrides all declarative and report options for backward compatibility
                if ( lModelColumn.noStretch === undefined ) {
                    // if a value for noStretch isn't specified on the column then take the default from report settings
                    if ( lIGColumn.layout.noStretch !== undefined ) {
                        lModelColumn.noStretch = lIGColumn.layout.noStretch;
                    } else {
                        // for backward compatibility the view feature if specified overrides report settings
                        if ( lConfigViewFeatures.stretchColumns !== null ) {
                            lModelColumn.noStretch = !lConfigViewFeatures.stretchColumns;
                        } else {
                            // get the report setting
                            lModelColumn.noStretch = !lReport.views.grid.stretchColumns;
                        }
                    }
                }

                // Properties added when the column is not a hidden column
                if ( !lIGColumn.isHidden ) {

                    // Grid column state
                    lModelColumn.hidden = !lGridColumn.isVisible;
                    lModelColumn.frozen = lGridColumn.isFrozen;
                    if ( lGridColumn.width ) {
                        lModelColumn.width = lGridColumn.width;
                    }
                    if ( lGridColumn.sort ) {
                        lModelColumn.sortIndex = lGridColumn.sort.order;
                        lModelColumn.sortDirection = lGridColumn.sort.direction;

                    }
                    br = lGridColumn.break;
                    if ( br && br.isEnabled ) {
                        lBreakDirection = br.direction;

                        lModelColumn.controlBreakIndex = br.order;
                        lModelColumn.controlBreakDirection = lBreakDirection;
                    }


                    // If heading is different to label, then we want to set the accessibleLabel in the gridView. This will
                    // account for the case where someone wants a visibly hidden, but audible header (eg actions column by
                    // default), and also where the heading contains some html, and the label contains a better, plain label for ATs)
                    //todo set new attribute in gridView for accessibleLabel
                    /*if ( lIGColumn.heading.heading !== lIGColumn.heading.label ) {}*/

                    // We only set a 'groupName' if 1) a groupId is defined, and 2 the group is to be used in the grid's heading
                    if ( lIGColumn.layout.groupId ) {
                        if ( lIGColumn.layout.useGroupFor === "both" ) {
                            lModelColumn.useGroupFor = "srv,heading";
                        } else {
                            lModelColumn.useGroupFor = lIGColumn.layout.useGroupFor;
                        }
                        lModelColumn.groupName = lIGColumn.layout.groupId;
                    }

                    lModelColumn.helpid = lIGColumn.helpid; // todo jjs don't overwrite?

                    // feature related
                    lModelColumn.canHide = lIGColumn.features.canHide;
                    lModelColumn.canSort = lIGColumn.features.sort;

                    // link related
                    if ( lIGColumn.link.attributes ) {
                        lModelColumn.linkAttributes = lIGColumn.link.attributes;
                    }
                    if ( lIGColumn.link.text ) {
                        lModelColumn.linkText = lIGColumn.link.text;
                    }
                    if ( lIGColumn.link.targetColumn ) { // This is currently advanced configuration only set by JavaScript
                        lModelColumn.linkTargetColumn = lIGColumn.link.targetColumn;
                    }

                }

                if ( lIGColumn.accessibility.usedAsRowHeader ) {
                    lModelColumn.usedAsRowHeader = lIGColumn.accessibility.usedAsRowHeader;
                }

                if ( lIGColumn.appearance.columnCssClasses ) {
                    lModelColumn.columnCssClasses = lIGColumn.appearance.columnCssClasses;
                }

                // advanced options for recordView - only set by JavaScript
                if ( lIGColumn.appearance.fieldColSpan ) {
                    lModelColumn.fieldColSpan = lIGColumn.appearance.fieldColSpan;
                }
                if ( lIGColumn.appearance.fieldCssClasses ) {
                    lModelColumn.fieldCssClasses = lIGColumn.appearance.fieldCssClasses;
                }

                if ( lIGColumn.validation ) {
                    lModelColumn.isRequired = lIGColumn.validation.isRequired;
                }

                if ( lIGColumn.appearance.cellTemplate ) {
                    lModelColumn.cellTemplate = lIGColumn.appearance.cellTemplate;
                }

                // Columns specific to when the grid is editable
                // Note: We always do this irrespective of whether the view is currently editable (for example this can
                // change when flashback enabled), because users should still be able to go to single row view
                if ( lEditable ) {

                    lModelColumn.noCopy = !lIGColumn.default.duplicate;
                    // let defaultGridColumnOptions.defaultValue override declarative settings
                    if ( lModelColumn.defaultValue === undefined ) {
                        defaultValue = lIGColumn.default.value;
                        if ( $.isPlainObject( defaultValue ) &&
                            defaultValue.d !== undefined &&
                            lModelColumn.elementId &&
                            defaultValue.v === defaultValue.d ) {
                            // the server doesn't give the correct display value so try to get it from the item (bug 25697123)
                            defaultValue.d = item( lModelColumn.elementId ).displayValueFor( defaultValue.v );
                        }
                        lModelColumn.defaultValue = defaultValue;
                    }
                }

                if ( lIGColumn.specialType === "actions" ) {
                    lActionsOut = util.htmlBuilder();
                    lButtonClass = C_BUTTON_NO_LABEL + " " + C_BUTTON_ICON_TEXT_BUTTON + " a-Button--actions";

                    renderButton( lActionsOut, {
                        label: getIGMessage( "ROW_ACTIONS" ),
                        buttonClass: lButtonClass,
                        iconOnly: true,
                        icon: "icon-ig-actions",
                        attributes: {
                            "data-menu": lIg._getId( "row_actions_menu" ),
                            "aria-haspopup": true
                        }
                    });
                    lModelColumn.cellTemplate = lActionsOut.toString();

                    lActionsOut.clear();
                    renderButton( lActionsOut, {
                        label: getIGMessage( "SEL_ACTIONS" ),
                        buttonClass: lButtonClass + " js-selectionMenu",
                        iconOnly: true,
                        icon: "icon-ig-actions",
                        attributes: {
                            "data-menu": lIg._getId( "selection_actions_menu" ),
                            // aria-expanded=true excluded due to the bug in a recommended screen reader and/or
                            // recommended browser, when aria-haspopup and aria-expanded together add a label "menu"
                            // to this menu button. Thus, we get an element with control type "Button menu" and additional label "Menu"
                            "aria-haspopup": true
                        }
                    });
                    lModelColumn.heading = lActionsOut.toString();

                    if ( !lModelColumn.columnCssClasses ) {
                        lModelColumn.columnCssClasses = C_HAS_BUTTON;
                    } else {
                        lModelColumn.columnCssClasses += " " + C_HAS_BUTTON;
                    }
                    if ( !lModelColumn.headingCssClasses ) {
                        lModelColumn.headingCssClasses = C_HAS_BUTTON;
                    } else {
                        lModelColumn.headingCssClasses += " " + C_HAS_BUTTON;
                    }

                    delete lModelColumn.index;
                    lModelColumn.virtual = true;
                    lModelColumn.noHeaderActivate = true;

                    // Model shouldn't be passed elementId for the actions column
                    lModelColumn.elementId = null;

                    // ccz: only freeze Row Actions, when it is the first column; then we can have no
                    //      side effects: When following columns are also frozen, this has no real effect.

                    if ( i === 0 ) {
                        lModelColumn.frozen = true;
                        lGridColumn.isFrozen = true;
                    }
                    lModelColumn.noStretch = true;
                    lModelColumn.canSort = false;
                    // if the actions column doesn't already have a width give it one so it doesn't become too wide
                    if ( !lModelColumn.width ) {
                        // todo consider document css var --js-ig-actions-col-width
                        // css var --js-ig-actions-col-width must be a number with px suffix
                        lModelColumn.width = parseFloat( lIg.element.css( "--js-ig-actions-col-width" ) ) || DEFAULT_ACTIONS_COLUMN_WIDTH;
                    }
                }



                // todo* JJS column property mapping issues:
                // readonly is never set. it is used by the model and grid How can it be set
                //      Patrick says readonly never makes sense. In the future a DA can update the model giving it a new value and ck. I still think it could be useful
                //      consider newly inserted rows
                // how are model properties volatile and virtual set?
                //   virtual should be set any time the column source is none

                lModelColumns[ lIGColumn.name ] = lModelColumn;

            }

            lModelColumns[ META ] = lBaseModelColumns[ META ];

            // set member variables
            this.modelColumns = lModelColumns;
            this.specialColumns = {
                identityField:      ( lIg.primaryKeyColumns.length === 0 ? null : lIg.primaryKeyColumns ),
                metaField:          META
            };

        },
        init: function ( pIg ) {
            var lConfig = pIg.options.config;

            pIg.getActions().add( [
                {
                    name: "selection-copy-down",
                    labelKey: "APEX.IG.COPY_DOWN",
                    icon: "icon-ig-copy-down",
                    hide: true,
                    action: function() {
                        var lViewImpl = pIg._currentViewImpl();

                        if ( !lViewImpl.singleRowMode ) {  // IG must be editable or this action would stay hidden
                            lViewImpl.view$.grid( "copyDownSelection" );
                        }
                    }
                },
                {
                    name: "selection-clear",
                    labelKey: "APEX.IG.CLEAR",
                    icon: "icon-ig-clear",
                    hide: true,
                    action: function() {
                        var lViewImpl = pIg._currentViewImpl();

                        if ( !lViewImpl.singleRowMode ) {  // IG must be editable or this action would stay hidden
                            lViewImpl.view$.grid( "fillSelection", "" );
                        }
                    }

                },
                {
                    name: "selection-fill",
                    labelKey: "APEX.IG.FILL",
                    icon: "icon-ig-fill",
                    hide: true,
                    getFillValue: function( gridInst, columnItem, label, callback ) {
                        let promptOptions = {
                            labelKey: "APEX.IG.FILL_LABEL",
                            titleKey: "APEX.IG.FILL_TITLE"
                        };
                        if ( label ) {
                            promptOptions.label = label;
                        }
                        if ( columnItem && gridInst ) {
                            promptOptions.type = "item";
                            promptOptions.columnItem = columnItem;
                            promptOptions.viewInst = gridInst;
                        }
                        simplePromptDialog( promptOptions, callback );
                    },
                    action: function() {
                        let lViewImpl = pIg._currentViewImpl();

                        if ( !lViewImpl.singleRowMode ) {  // IG must be editable or this action would stay hidden also must be grid view
                            let sel, colName, col,
                                columnItem = null,
                                label = null,
                                gridInst = lViewImpl.view$.grid( "instance" ),
                                selCells = gridInst.options.selectCells;

                            // if selecting a cell range and exactly one column selected
                            // then use the column item to enter the fill value
                            if ( selCells ) {
                                sel = gridInst.getSelectedRange();
                                if ( sel && sel.columns.length === 1 ) {
                                    colName = sel.columns[0];
                                    col = gridInst.options.columns[0][colName];
                                    label = col.label || col.heading; // prefer the label to the heading
                                    columnItem = gridInst.columnItems[colName];
                                    // the item must be "put away" in the items container and must not be readonly
                                    if ( col.readonly ||
                                        !( columnItem && columnItem.element$.parent()[0] === gridInst.columnItemsContainer$[0] ) ) {
                                        columnItem = null;
                                        label = null;
                                    }
                                }
                                // todo consider checking if all columns are readonly then don't prompt but give a message: no fillable columns
                            }
                            this.getFillValue( gridInst, columnItem, label, ( value ) => {
                                if ( value !== false ) {
                                    lViewImpl.view$.grid( "fillSelection", value );
                                }
                            } );
                        }
                    }
                }
            ] );

            // create row and selection actions menus before widgets that use them are created
            this._initMenus( lConfig, pIg );
        },
        initView: function ( pOptions ) {
            var i, lIGColumnGroup, lCustomToolbar, lStickyTop, lStickyFooter, lGridOptions, lReportAggs,
                lModelColumnGroups = null,
                lColHeaderMenuOut = util.htmlBuilder(),
                lHasSize = true,
                lConfig = pOptions.igConfig,
                lDefaultGridViewOptions = lConfig.defaultGridViewOptions,
                lMultiple = lDefaultGridViewOptions.multiple,
                lSelectAll = lDefaultGridViewOptions.selectAll,
                lFeatures = lConfig.views.grid.features,
                lRowHeaderCheckbox = false,
                lRowHeader = lDefaultGridViewOptions.rowHeader || NONE,
                lIg = pOptions.ig,
                lActions = lIg.actions,
                lEditable = lIg._isCurrentlyEditable(),
                lIGColumnGroups = lConfig.columnGroups,
                lAutoAdd = lEditable ? lConfig.editable.autoAddRow : false,
                lThisView = this,
                lAllowEditMode = true,
                lColumnMenu$ = null,
                lActiveColumnHeader$ = null;

            function modeChange( event, ui ) {
                // Update widget global
                lIg.editMode = ui.editMode;

                // Update edit action
                lIg.actions.update( "edit" );

                // Update landmark label to reflect the current edit mode
                lIg._updateLandmark();

                lIg._trigger( EVENT_MODE_CHANGE, event, ui );
            }

            /**
             * @ignore
             * @param [pFocus] if true focus grid header
             */
            function hideMenu( pFocus ) {
                lColumnMenu$.hide();

                lActiveColumnHeader$
                    .removeClass( C_IS_ACTIVE )
                    .attr( A_EXPANDED, "false" );

                if ( pFocus ) {
                    lActiveColumnHeader$.trigger( "focus" );
                    // in some cases the grid is refreshed so make sure it is focused
                    lThisView.view$.grid( "focus" );
                }
                lActiveColumnHeader$ = null;

                // clean up event handlers
                lIg._off( lIg.document, "mousedown" );
                lIg._off( lIg.window, "blur" );
                lIg._off( lColumnMenu$ );
            }

            function unfreezeLastColumnWhenFrozen() {
                var i, lGridColumn, lViewColumn,
                    lGridColumns = lIg._currentReportSettings().views.grid.columns,
                    lViewColumns = lThisView.view$.grid( "getColumns" ), // OK to assume grid here because this is only called for grid view
                    lLastSeq = 0,
                    lLastCol = false,
                    lUnfreeze = false;

                // a) detect last visible column
                for ( i = 0; i < lGridColumns.length; i++ ) {
                    if ( lGridColumns[ i ] && lGridColumns[ i ].isVisible &&
                        !lIg._getColumn( lGridColumns[ i ].columnId ).isHidden &&
                        lGridColumns[ i ].seq > lLastSeq
                    ) {
                        lLastSeq = lGridColumns[ i ].seq;
                        lLastCol = i;
                    }
                }

                // b) unfreeze last visible column when frozen
                if ( lLastCol !== false ) {
                    lGridColumn = lGridColumns[ lLastCol ];

                    for ( i = 0; i < lViewColumns.length; i++ ) {
                        if ( lGridColumn.columnId === lViewColumns[ i ].id && !lViewColumns[ i ].hidden ) {
                            lViewColumn = lViewColumns[ i ];
                        }
                    }

                    if ( lGridColumn.isFrozen ) {
                        lGridColumn.isFrozen = false;
                        lViewColumn.frozen   = false;
                        lUnfreeze = true;
                        lIg._setOperationUpdate( lGridColumn );
                    }
                }
                if ( lUnfreeze ) {
                    lIg._setReportSettings( { refreshView: true, refreshColumns: true } );
                } else {
                    lIg._setReportSettings();
                    // Don't want to refresh the grid view but do need to do it to the record view if there is one
                    if ( lThisView.singleRowView$ ) {
                        lThisView.singleRowView$.recordView( "refreshFields" )
                            .recordView( REFRESH );
                    }
                }
            }


            if ( !lFeatures.gridView && !lFeatures.singleRowView ) {
                throw new Error("Interactive Grid grid view must have at least one of grid or single row" );
            }

            $( "div.a-GV-columnItemContainer", pOptions.ig$ ).appendTo( pOptions.ig$ );

            if ( lFeatures.gridView ) {
                // col header menu markup
                lColHeaderMenuOut.markup( "<div" )
                    .attr( CLASS, C_IG_COLUMN_HEADER_MENU )
                    .attr( "style", "display:none;" )
                    .attr( "id", lIg._getId( "column_header_menu" ) )
                    .attr( ROLE, "dialog" )
                    .attr( A_LABEL, getIGMessage( "COLUMN_HEADER_ACTIONS" ) )
                    .attr( A_MODAL, "true" )
                    .markup( ">" )
                    .markup( "</div>" );
                lColumnMenu$ = $( lColHeaderMenuOut.toString() );
                $( "body" ).append( lColumnMenu$ ); // menus need to go at the end so not constrained by region height

                lReportAggs = pOptions.currentReportSettings.views.grid.aggregations;
                if ( lReportAggs.length > 0 ) {

                    // if there are aggregates then need a place to show what kind of aggregate the row is and that place is the row header of type sequence or label
                    if ( lRowHeader === NONE || lRowHeader === PLAIN ) {
                        lRowHeader = LABEL;
                    }
                }
            }

            if ( lFeatures.rowSelector ) {

                // let the default be overridden but don't let it be none
                if ( lRowHeader === NONE ) {
                    lRowHeader = PLAIN;
                }
                lRowHeaderCheckbox = !lFeatures.rowSelector.hideControl;

                // let multiple setting from defaultGridViewOptions override the rowSelector
                if ( lMultiple === undefined ) {
                    lMultiple = lFeatures.rowSelector.multiSelect;
                }

                // Select all option only set when grid supports multi-select and defaultGridViewOptions override the rowSelector
                if ( lMultiple && lSelectAll === undefined ) {
                    lSelectAll = lFeatures.rowSelector.selectAll;
                }

            }

            // Heading fixed options
            switch ( lConfig.headingFixedTo ) {
                case NONE:
                    lHasSize = false;
                    lStickyTop = false;
                    lStickyFooter = false;
                    break;
                case REGION:
                    lHasSize = true;
                    lStickyTop = false;
                    lStickyFooter = false;
                    break;
                case PAGE:
                    lHasSize = false;
                    lStickyTop = function () {
                        return theme.defaultStickyTop() + ( $( SEL_IG_HEADER, pOptions.ig$ ).outerHeight() || 0 );
                    };
                    lStickyFooter = lDefaultGridViewOptions.stickyFooter || true;
                    break;
            }

            // Column groups
            //todo only uses IG config, move to somewhere more general purpose? could also go up to where baseColumns
            if ( lIGColumnGroups.length ) {
                lModelColumnGroups = {};
                for ( i = 0; i < lIGColumnGroups.length; i++ ) {
                    // property names match between IG and grid column group so just copy
                    lIGColumnGroup = $.extend({}, lIGColumnGroups[i]);
                    lModelColumnGroups[lIGColumnGroup.id] = lIGColumnGroup;
                    delete lIGColumnGroup.id;
                }
            }

            if ( lFeatures.gridView ) {
                // if a context menu is being added to the grid view and it doesn't specify an actionContext it should use the IG context
                if ( lDefaultGridViewOptions.contextMenu && !hasOwnProperty( lDefaultGridViewOptions.contextMenu, "actionsContext" ) ) {
                    lDefaultGridViewOptions.contextMenu.actionsContext = lIg.actions;
                }

                if ( lConfig.editable && lConfig.editable.allowedOperations.create === false && lConfig.editable.allowedOperations.update === false ) {
                    lAllowEditMode = false;
                }

                let pagination = lIg._getPaginationConfig( lConfig, "defaultGridViewOptions" );

                lGridOptions = {
                    modelName: lThisView.modelName,
                    editable: lEditable,
                    autoAddRecord: lAutoAdd,
                    rowHeader: lRowHeader,
                    rowHeaderCheckbox: lRowHeaderCheckbox,
                    aggregateLabels: this._gridAggregateLabels(), // no problem including this even if no aggregates
                    highlights: this._gridHighlightsFromReport( pOptions.currentReportSettings ),
                    multiple: lMultiple,
                    selectAll: lSelectAll,
                    noDataMessage: lConfig.text.noDataFound,
                    moreDataMessage: lConfig.text.moreDataFound,
                    showNullAs: lConfig.appearance.showNullValue,
                    fixedRowHeight: ifDefined( lDefaultGridViewOptions.fixedRowHeight, lConfig.appearance.useFixedRowHeight ),
                    columns: [ lThisView.modelColumns ],
                    columnSort: lFeatures.sort,
                    reorderColumns: ifDefined( lDefaultGridViewOptions.reorderColumns, lFeatures.reorderColumns ),
                    resizeColumns: ifDefined( lDefaultGridViewOptions.resizeColumns, lFeatures.resizeColumns ),
                    pagination: pagination,
                    rowsPerPage: ifDefined( lDefaultGridViewOptions.rowsPerPage, pOptions.currentReportSettings.rowsPerPage ),
                    hasSize: lHasSize,
                    stickyTop: lStickyTop,
                    stickyFooter: lStickyFooter,
                    allowEditMode: lAllowEditMode,
                    persistSelection: ifDefined( lDefaultGridViewOptions.persistSelection, lConfig.submitSelectedRows || pagination.virtual ),
                    activateColumnHeader: function ( event, ui ) {
                        var lFirstFocusable$, lLastFocusable$, lCanFilter, lFilterHasLov, lHeaderWidth, lHeaderWidthOffset, lStart,
                            gRows = [],
                            out = util.htmlBuilder();

                        function refreshRows( pRows ) {
                            var i, lValue, lLabel,
                                rowsOut = util.htmlBuilder();

                            for ( i = 0; i < pRows.length; i++ ) {

                                if ( $.isPlainObject( pRows[ i ] ) ) {
                                    lValue = pRows[ i ].r;
                                    lLabel = pRows[ i ].d;
                                } else {
                                    lValue = lLabel = pRows[ i ];
                                }

                                renderLink( rowsOut, {
                                    cssClasses: C_IG_COLUMN_HEADER_MENU_ROW,
                                    text: lLabel,
                                    data: {
                                        "return-value": lValue
                                    }
                                });
                            }

                            lIg._getElement( "column_header_menu_rows" ).html( rowsOut.toString() );
                        }

                        // sets up first and last focusable elements in the menu, used to trap keyboard focus
                        function initMenuFocusBoundaries( pExcludeFirst ) {
                            var lFocusableElements$ = lColumnMenu$.find( ":focusable" );

                            if ( !pExcludeFirst ) {
                                lFirstFocusable$ = lFocusableElements$.first();
                                lFirstFocusable$.data( "first", true );
                            }
                            lLastFocusable$ = lFocusableElements$.last();
                            lLastFocusable$.data( "last", true );
                        }

                        // If menu is already visible, hide it
                        if ( lColumnMenu$.is( ":visible" ) ) {
                            hideMenu();
                        } else {

                            lCanFilter = lIg._isColumnFilterable( ui.column.id );
                            if ( lCanFilter ) {
                                lFilterHasLov = lIg._hasColumnFilterLov( ui.column.id );
                            }

                            lActiveColumnHeader$ = ui.header$;
                            ui.header$
                                .addClass( C_IS_ACTIVE )
                                .attr( A_EXPANDED, "true" );

                            // Main column header rendering
                            lIg._renderColumnHeaderMenu( out, lCanFilter, lFilterHasLov, ui.column.id );

                            // If the current header width is greater than the standard minimum width of 220px, set the column
                            // menu width equal to it, so it aligns with the header.
                            if ( lHeaderWidth > 220 ) {
                                // xxx this code never executes because lHeaderWidth is always undefined

                                // We need to apply an offset for the min-width, to account for column heading borders. This is
                                // slightly different depending on if the column is currently frozen.
                                if ( ui.column.frozen ) {
                                    lHeaderWidthOffset = 2;
                                } else {
                                    lHeaderWidthOffset = 1;
                                }

                                lHeaderWidth = ui.header$.outerWidth();

                                lColumnMenu$.css( "min-width", lHeaderWidth - lHeaderWidthOffset );
                            } else {
                                lColumnMenu$.css( "min-width", "0" );
                            }

                            lStart = lIg.isRTL ? RIGHT : LEFT;
                            lColumnMenu$
                                .html( out.toString() )
                                .show()
                                .css( { left: 0, top: 0 } ) // start with a known position avoids shift in initial position when in rtl dir
                                .position( {
                                    my: lStart + " top",
                                    at: lStart + " bottom",
                                    of: ui.header$,
                                    collision: "fit"
                                } );

                            if ( lFilterHasLov ) {

                                // Async call to get and refresh the column values
                                lIg._getFilterValues( ui.column.id, true, function ( pData ) {

                                    if ( pData.regions[ 0 ].filterValues ) {

                                        // set focus to filter field, if the menu has filtering
                                        lIg._getElement( "column_header_search" ).focus();

                                        gRows = pData.regions[ 0 ].filterValues;

                                        refreshRows( gRows );

                                        initMenuFocusBoundaries();

                                    }
                                });
                            } else {

                                initMenuFocusBoundaries();

                                // set focus to first focusable control
                                lFirstFocusable$.trigger( "focus" );
                            }


                            /*
                             * Handlers for menu
                             */
                            lIg._on( lColumnMenu$, {

                                // handler for clicking on the sort widget actions (sort, break, etc.)
                                "click button.a-IRR-sortWidget-button": function ( pEvent ) {

                                    var lGridColumn, lGridColumns, lIsFrozen, j,
                                        lBreakDirection = ASC,
                                        lTargetOption = $( pEvent.currentTarget ).data( OPTION );

                                    switch ( lTargetOption ) {
                                        case "hide":
                                            lThisView.view$.grid( "hideColumn", ui.column );
                                            lIg._currentViewColumn( ui.column.id, {
                                                isVisible: false
                                            });
                                            // check whether we still have unfrozen visible columns; if no, unfreeze
                                            // the last column
                                            unfreezeLastColumnWhenFrozen();
                                            hideMenu( true );
                                            break;
                                        case "break":
                                            lGridColumn = lIg._currentViewColumn( ui.column.id );
                                            if ( lGridColumn.sort ) {
                                                lBreakDirection = lGridColumn.sort.direction; // use existing sort direction for new controlbreak
                                            }
                                            lIg.addControlBreak(
                                                ui.column,
                                                { isEnabled: true, direction: lBreakDirection }
                                            );

                                            hideMenu( true );
                                            break;
                                        case "aggregate":
                                            lIg._openDialog( AGGREGATE, {
                                                columnId: ui.column.id
                                            });
                                            // todo after dialog closes focus is not set correctly

                                            hideMenu();
                                            break;
                                        case "freeze":
                                            lGridColumns = lIg._currentReportSettings().views.grid.columns;

                                            lThisView.view$.grid( ui.column.frozen ? "unfreezeColumn" : "freezeColumn", ui.column );

                                            lIsFrozen = ui.column.frozen;

                                            if ( lIsFrozen ) {
                                                // ccz: removed the "stop on already frozen column" to make sure that
                                                for ( j = 0; j < lGridColumns.length; j++ ) {
                                                    lGridColumn = lGridColumns[ j ];

                                                    if ( lGridColumn.seq <= ui.column.seq && !lGridColumn.isFrozen ) {
                                                        lGridColumn.isFrozen = true;
                                                        lIg._setOperationUpdate( lGridColumn );
                                                    }
                                                }

                                            } else {
                                                // when unfreezing, set frozen=false flag for this column, and all after it
                                                for ( j = 0; j < lGridColumns.length; j++ ) {
                                                    lGridColumn = lGridColumns[ j ];

                                                    if ( lGridColumn.seq >= ui.column.seq && lGridColumn.isFrozen ) {
                                                        lGridColumn.isFrozen = false;
                                                        lIg._setOperationUpdate( lGridColumn );
                                                    }
                                                }
                                            }

                                            lIg._setReportSettings();

                                            hideMenu( true );
                                            break;

                                        case "help":

                                            // establish focus before opening the help so focus can be returned to the right place when it closes
                                            hideMenu( true );
                                            theme.popupFieldHelp( lIg._getColumn( ui.column.id ).helpid, apex.env.APP_SESSION );

                                            break;
                                        /*
                                        case "computation":
                                            this._computationShow();
                                            break;
                                        */
                                    }

                                },
                                "keydown": function ( pEvent ) {
                                    var lGoingBackwards;

                                    if ( pEvent.which === $.ui.keyCode.ESCAPE ) {           // escape to close widget, set focus back to header

                                        hideMenu( true );

                                        pEvent.preventDefault();

                                    } else if ( pEvent.which === $.ui.keyCode.TAB ) {       // trap keyboard focus

                                        lGoingBackwards = !!( pEvent.shiftKey );

                                        // if tabbing forwards and we've tabbed away from the last, go to the first
                                        if (!lGoingBackwards && $( pEvent.target ).data( "last" )) {
                                            pEvent.preventDefault();
                                            lFirstFocusable$.focus();
                                        }

                                        // if tabbing backwards and we've tabbed away from the first, go to the last
                                        if ( lGoingBackwards && $( pEvent.target ).data( "first" )) {
                                            pEvent.preventDefault();
                                            lLastFocusable$.trigger( "focus" );
                                        }
                                    }

                                },

                                // search field specific handlers
                                "keydown input.a-IRR-sortWidget-searchField": function ( pEvent ) {
                                    var lFilterRawValue = $( pEvent.target ).val(),
                                        lFilterDateValue,
                                        lFilterNumberValue,
                                        lFilterColumnDataType;

                                    if ( lCanFilter ) {
                                        if ( pEvent.which === $.ui.keyCode.ENTER ) {

                                            // Also saves the filter and refreshes the data

                                            lFilterColumnDataType = this._getColumn( ui.column.id ).filter.dataType;

                                            if ( lFilterColumnDataType === DATE ) {
                                                try {
                                                    lFilterDateValue = date.parse(
                                                        lFilterRawValue,
                                                        this._getColumn( ui.column.id ).appearance.dateFormatMask );

                                                    lIg.addFilter({
                                                        type:            COLUMN,
                                                        columnType:      COLUMN,
                                                        columnId:        ui.column.id,
                                                        operator:        EQUALS,
                                                        value:           convertDateToCanonical( lFilterDateValue ),
                                                        isCaseSensitive: false
                                                    });

                                                } catch ( e ) {
                                                    // user entered an invalid date string
                                                    message.alert( getIGMessage( M_INVALID_FORMAT_DATE ) );
                                                }
                                            } else if ( lFilterColumnDataType === NUMBER ) {
                                                lFilterNumberValue = locale.toNumber( lFilterRawValue, this._getColumn( ui.column.id ).appearance.formatMask );

                                                if ( isNaN( lFilterNumberValue ) ){
                                                    message.alert( getIGMessage( M_INVALID_FORMAT_NUMBER ) );
                                                } else {
                                                    lIg.addFilter({
                                                        type:            COLUMN,
                                                        columnType:      COLUMN,
                                                        columnId:        ui.column.id,
                                                        operator:        EQUALS,
                                                        value:           lFilterNumberValue,
                                                        isCaseSensitive: false
                                                    });
                                                }
                                            } else {
                                                lIg.addFilter({
                                                    type:            COLUMN,
                                                    columnType:      COLUMN,
                                                    columnId:        ui.column.id,
                                                    operator:        ( ( lFilterColumnDataType === VARCHAR2 || lFilterColumnDataType === CLOB ) ? CONTAINS : EQUALS ),
                                                    value:           lFilterRawValue,
                                                    isCaseSensitive: false
                                                });
                                            }

                                            hideMenu( true );
                                            pEvent.preventDefault();
                                        }
                                    }

                                },
                                "keyup input.a-IRR-sortWidget-searchField": function ( pEvent ) {

                                    if ( lFilterHasLov ) {
                                        var lFilteredRows,
                                            lSearchTerm = pEvent.target.value;

                                        lFilteredRows = gRows.filter( function ( pValue ) {
                                            if ( pValue.d ) {
                                                return pValue.d.toLowerCase().indexOf( lSearchTerm.toLowerCase() ) > -1;
                                            } else {
                                                return pValue.toLowerCase().indexOf( lSearchTerm.toLowerCase() ) > -1;
                                            }
                                        });

                                        refreshRows( lFilteredRows );

                                        initMenuFocusBoundaries( true );
                                    }

                                },

                                // column value specific handlers
                                "click a.a-IRR-sortWidget-row": function ( pEvent ) {
                                    var lDataType, lOperatorSeparatorPos, lOperator, lValue,
                                        lReturnValue = $( pEvent.currentTarget ).data( "returnValue" ),
                                        lColumn = lIg._getColumn( ui.column.id );


                                    if ( lFilterHasLov ) {

                                        lDataType = lColumn.filter.dataType;

                                        // Date and timestamp columns use range style filters here (eg 'in the last 5 years' etc.)
                                        if ( lDataType === DATE || lDataType.indexOf( TIMESTAMP ) > -1 ) {

                                            lOperatorSeparatorPos = lReturnValue.indexOf( FILTER_SEPARATOR );
                                            lOperator = lReturnValue.substring( 0, lOperatorSeparatorPos );
                                            lValue = lReturnValue.substring( lOperatorSeparatorPos + 1 );

                                            if ( lOperatorSeparatorPos > 0 ) {
                                                lIg.addFilter({
                                                    type: COLUMN,
                                                    columnType: COLUMN,          //todo hard-coded
                                                    columnId: ui.column.id,
                                                    operator: lOperator,
                                                    value: lValue,
                                                    isCaseSensitive: false
                                                });
                                            }
                                        } else if (lDataType === NUMBER ) {
                                            lValue = locale.toNumber( lReturnValue, lColumn.appearance.formatMask );

                                            if ( isNaN( lValue ) ){
                                                message.alert( getIGMessage( M_INVALID_FORMAT_NUMBER ) );
                                            } else {
                                                lIg.addFilter({
                                                    type:            COLUMN,
                                                    columnType:      COLUMN,
                                                    columnId:        ui.column.id,
                                                    operator:        EQUALS,
                                                    value:           lValue,
                                                    isCaseSensitive: false
                                                });
                                            }
                                        } else {
                                            lIg.addFilter({
                                                type: COLUMN,
                                                columnType: COLUMN,          //todo hard-coded
                                                columnId: ui.column.id,
                                                operator: EQUALS,
                                                value: lReturnValue,
                                                isCaseSensitive: true
                                            });
                                        }

                                        hideMenu( true );
                                        pEvent.preventDefault();
                                    }
                                }
                            });

                            lIg._on( lIg.document, {
                                "mousedown": function ( pEvent ) {

                                    // Hide the menu if event target is not in the menu and not in the column header for the current menu
                                    if ( !$( pEvent.target ).closest( lColumnMenu$ ).length > 0 && !$( pEvent.target ).closest( ui.header$ ).length > 0 ) {
                                        if ( lColumnMenu$.is( ":visible" ) ) {
                                            hideMenu();
                                        }
                                    }
                                }
                            });

                            lIg._on( lIg.window, {
                                "blur": function () {
                                    if ( lColumnMenu$.is( ":visible" )) {
                                        hideMenu();
                                    }
                                }
                            });

                        }

                    },
                    cancelColumnHeader: function () {
                        if ( lColumnMenu$.is( ":visible" ) ) {
                            hideMenu();
                        }
                    },
                    sortChange: function ( event, ui ) {

                        lIg._ifNoChangesDo(function() {
                            var i, lColumn, lIndex, lReportColumn, lSortNulls,
                                lOriginalIndex = ui.column.sortIndex,
                                lColumns = lThisView.view$.grid( "getColumns" );

                            lIndex = 1;

                            // loop through grid's columns, and update sorting properties
                            for ( i = 0; i < lColumns.length; i++ ) {
                                lColumn = lColumns[ i ];
                                if ( lColumn.sortIndex ) {

                                    // if change, store sort index
                                    if ( ui.action === "change" ) {
                                        if ( lColumn === ui.column ) {
                                            lIndex = lColumn.sortIndex;
                                        }
                                    } else if ( ui.action === "add" ) {
                                        if ( lColumn.sortIndex >= lIndex ) {
                                            lIndex = lColumn.sortIndex + 1;
                                        }
                                    } else if ( ui.action === "remove" ) {
                                        if ( lColumn === ui.column ) {

                                            // Grid view columns keep their own break order and direction, so we can just
                                            // delete the sort* props.
                                            delete lColumn.sortIndex;
                                            delete lColumn.sortDirection;

                                            lReportColumn = lIg._currentViewColumn( ui.column.id );

                                            lReportColumn.sort = false;

                                            lIg._setOperationUpdate( lReportColumn );

                                        } else if ( lColumn.sortIndex > lOriginalIndex ) {
                                            lColumn.sortIndex -= 1;

                                            lIg._currentViewColumn( lColumn.id, {
                                                sort: {
                                                    order: lColumn.sortIndex
                                                }
                                            });
                                        }
                                    } else if ( ui.action === "clear" || ui.action === "set" ) {

                                        // Grid view columns keep their own break order and direction, so we can just
                                        // delete the sort* props.
                                        delete lColumn.sortIndex;
                                        delete lColumn.sortDirection;

                                        lReportColumn = lIg._currentViewColumn( lColumn.id );
                                        lReportColumn.sort = false;

                                        lIg._setOperationUpdate( lReportColumn );
                                    }
                                }
                            }

                            if ( ui.action !== "clear" && ui.action !== "remove" ) {
                                ui.column.sortIndex = lIndex;
                                ui.column.sortDirection = ui.direction;

                                if ( ui.direction === ASC ) {
                                    lSortNulls = LAST;
                                } else {
                                    lSortNulls = FIRST;
                                }

                                lIg._currentViewColumn( ui.column.id, {
                                    sort: {
                                        order: lIndex,
                                        direction: ui.direction,
                                        nulls: lSortNulls
                                    }
                                });
                            }

                            // tell server about the new settings, this also requires a column refresh
                            lIg._setReportSettings({
                                refreshModel:   true,
                                refreshColumns: true
                            });
                        } );
                    },
                    columnReorder: function (event, ui) {
                        var i,
                            lGridColumns = lIg._currentReportSettings().views.grid.columns, lGridColumn,
                            lNewPositionFrozenState = lGridColumns[ ui.newPosition ].isFrozen;

                        // todo* ui.oldPosition and ui.newPosition can be wrong when there are gaps in the "seq" attribute
                        move( lGridColumns, ui.oldPosition, ui.newPosition );

                        if ( lGridColumns[ ui.newPosition ] ) {
                            lGridColumns[ ui.newPosition ].isFrozen = lNewPositionFrozenState;
                        }

                        // cleanup array for the case that the "move" operation did leave gaps
                        for ( i = 0; i < lGridColumns.length; i++ ) {
                            if ( !lGridColumns[ i ] ) {
                                lGridColumns.splice( i, 1 );
                            }
                        }

                        // old code was not able to deal well with gaps or decimal values in the "seq" attribute;
                        // changed to a more stable algorithm.
                        for ( i = 0; i < lGridColumns.length; i++ ) {
                            lGridColumn = lGridColumns[ i ];
                            if ( lGridColumn.seq !== ( i + 1 ) ) {
                                lGridColumn.seq = i + 1;
                                lIg._setOperationUpdate( lGridColumn );
                            }
                        }

                        unfreezeLastColumnWhenFrozen();
                    },
                    columnResize: function ( event, ui ) {

                        lIg._currentViewColumn( ui.column.id, {
                            width: ui.width
                        });
                        lIg._setReportSettings();

                    },
                    modeChange: modeChange,
                    selectionChange: function (event) {
                        var lSelection = lThisView.view$.grid( "getSelection" );

                        $( ".js-selectionMenu", lThisView.view$ ).prop( DISABLED, lSelection.length === 0 );
                        lThisView._selectionChange( lIg, event );
                    },
                    pageChange: function ( event, ui ) {
                        lIg._pageChange( ui );
                    }
                };

                if ( lReportAggs.length > 0 ) {

                    // if there are aggregates then the grid needs to know what tooltips to use
                    lGridOptions.aggregateTooltips = this._gridAggregateTooltipsFromReport( lIg, pOptions.currentReportSettings );
                }

                if ( lModelColumnGroups ) {
                    lGridOptions.columnGroups = lModelColumnGroups;
                }

                lThisView.view$.grid( {}, lDefaultGridViewOptions, lGridOptions );
                lThisView.curInst = lThisView.view$.grid( "instance" );
            } else {
                // if there is no gridView hide it and go into singleRowMode right away
                lThisView.view$.hide();
                lThisView.singleRowMode = true;
            } // end if gridView

            // todo jjs make this a mixin
            // add the single row view if that feature is enabled
            if ( lThisView.supports.singleRowView && lFeatures.singleRowView ) {
                lThisView.singleRowView$ = $("<div id='" + lIg._getId( "singleRow" + VIEW_CONTAINER_POSTFIX ) + "' class='" + C_IG_VIEW_RECORD + "'></div>");
                lThisView.view$.after( this.singleRowView$ );

                // single row view is a supplemental view and is inserted after the IG has been resized (where all
                // the view sizes are set). So must copy the height and width from the main view.
                lThisView.singleRowView$.width( lThisView.view$.width() );
                if ( lConfig.maxHeight ) {
                    lThisView.singleRowView$.height( lThisView.view$.height() );
                }

                lCustomToolbar = $.apex.recordView.copyDefaultToolbar();

                // Note: SRV actions menu displays irrespective of whether the IG is editable
                lCustomToolbar[0].controls.unshift( {
                    type: TB_MENU,
                    labelKey: "APEX.IG.SRV_CHANGE_MENU",
                    iconOnly: true,
                    icon: "icon-ig-actions",
                    menuId: lIg._getId( "srv_actions_menu" )
                } );

                if ( lFeatures.gridView ) {
                    // make sure no previous action by the same name exists
                    lActions.remove( ["close-single-row-view"] );
                    lActions.add([
                        {
                            name: "close-single-row-view",
                            labelKey: "APEX.IG.GRID_VIEW",
                            action: function() {
                                var lMenuItem,
                                    lEditMode = lIg.editMode;

                                if ( lEditMode ) {
                                    // leave edit mode in the view that is being hidden
                                    lThisView.singleRowView$.recordView( "setEditMode", false );
                                }
                                lThisView.singleRowMode = false;
                                lThisView.singleRowView$.hide();
                                lThisView.curInst = lThisView.view$.grid( "instance" );

                                lMenuItem = lIg._tbFind( "selection_submenu" );
                                if ( lMenuItem ) {
                                    lMenuItem.disabled = !lThisView.selectionEnabled();
                                }

                                lThisView.view$.show().grid( RESIZE );
                                if ( lEditMode ) {
                                    // enter edit mode in the view that is being shown
                                    lThisView.view$.grid( "setEditMode", true );
                                }

                                // Call _updateLandmark after the edit mode is restored, because the edit mode is shown in the landmark's name
                                lIg._updateLandmark();

                                lThisView.view$.grid( "focus" );
                                return true;
                            }
                        }
                    ]);
                    lCustomToolbar[0].controls.unshift( {
                        type: TB_BUTTON,
                        action: "close-single-row-view"
                    } );
                }

                // initialize while visible
                lThisView.singleRowView$.recordView( {}, lConfig.defaultSingleRowOptions, {
                    modelName: lThisView.modelName,
                    actionsContext: lActions, // todo JJS this could get messy if there is more than one single row view
                    toolbar: lCustomToolbar,
                    editable: lEditable,
                    autoAddRecord: lAutoAdd,
                    noDataMessage: lConfig.text.noDataFound,
                    moreDataMessage: lConfig.text.moreDataFound,
                    showNullAs: lConfig.appearance.showNullValue,
                    fields: [ lThisView.modelColumns ],
                    fieldGroups: lModelColumnGroups,
                    hasSize: lHasSize,
                    modeChange: modeChange,
                    recordChange: function( event ) {
                        lThisView._selectionChange( lIg, event );
                    }
                } );
                // gridView if there is one is always the initial view // todo THINK should this be an option?
                if ( lFeatures.gridView ) {
                    lThisView.singleRowView$.hide(); // then hide it because it is not the initial view
                    lThisView.singleRowMode = false;
                } else {
                    lThisView.curInst = lThisView.singleRowView$.recordView( "instance" );
                }
            }
        },
        viewChanged: function( pActive, pIg, pConfig ) {
            pIg._toggleEnableAction( pActive && pConfig.editable && this.supports.edit, GRID_RANGE_ACTIONS );
            // if active further refine the action state based on the selection
            if ( pActive ) {
                this._selectionChange( pIg );
            }
        },
        updateActions: function( pOptions ) {
            var lIg = pOptions.ig,
                lConfig = lIg.options.config;
            lIg._toggleShowAction( pOptions.canEdit && this.supports.edit && this.supports.cellSelection && lConfig.views.grid.features.cellRangeActions,
                GRID_RANGE_ACTIONS );
        },
        setReportOptions: function( pIg, pCurrent, pReportSettings, pChange ) {
            var lChanges,
                self = this,
                lConfig = pIg.options.config;

            function viewsGridAggregations() {
                // currently only grid (not srv) supports aggregations
                if ( self._hasGridView() ) {
                    self.view$.grid( OPTION, "aggregateTooltips", self._gridAggregateTooltipsFromReport( pIg, pReportSettings ) );
                }
            }
            function viewsGridHighlights() {
                // currently only grid (not srv) supports highlights
                if ( self._hasGridView() ) {
                    self.view$.grid( OPTION, "highlights", self._gridHighlightsFromReport( pReportSettings ) );
                }
            }

            function viewsGridColumns() {
                var i, j, lIGColumn, lGridColumn, lViewColumn, lPrevNoStretch,
                    lConfigViewFeatures = lConfig.views.grid.features,
                    lViewColumns = pReportSettings.views.grid.columns,
                    lGridColumns = self.getColumns(),
                    lHasGrid = lConfigViewFeatures.gridView !== false,
                    lRefresh = false;

                for ( i = 0; i < lViewColumns.length; i++ ) {

                    lViewColumn = lViewColumns[ i ];
                    lIGColumn = pIg._getColumn( lViewColumn.columnId );

                    for ( j = 0; j < lGridColumns.length; j++ ) {

                        lGridColumn = lGridColumns[ j ];

                        if ( lGridColumn.id === lViewColumn.columnId ) {

                            // column stretch only applies if there is a grid view
                            if ( lHasGrid ) {
                                // Column stretch - Can be set in multiple places, settings respected as described below.
                                // Note: Similar logic of respecting settings in baseGridAndPivotAndGroupByView.setColumnConfig

                                lPrevNoStretch = lGridColumn.noStretch;
                                // Default column options override all declarative and report options for backward compatibility
                                if ( lIGColumn.defaultGridColumnOptions === undefined ||
                                    lIGColumn.defaultGridColumnOptions.noStretch === undefined ) {
                                    if ( lIGColumn.layout.noStretch !== undefined ) {

                                        // If a value for noStretch is specified on the column, then this takes priority
                                        lGridColumn.noStretch = lIGColumn.layout.noStretch;
                                    } else {

                                        // If no value for noStretch specified, then first check the view feature. This overrides
                                        // report settings if specified for backward compatibility, otherwise use report settings
                                        if ( lConfigViewFeatures.stretchColumns !== null ) {
                                            lGridColumn.noStretch = !lConfigViewFeatures.stretchColumns;
                                        } else {
                                            lGridColumn.noStretch = !pReportSettings.views.grid.stretchColumns;
                                        }
                                    }
                                }
                                if ( lGridColumn.noStretch !== lPrevNoStretch ) {
                                    lRefresh = true;
                                }
                            }

                            // Column visibility
                            if ( lGridColumn.hidden === lViewColumn.isVisible ) {
                                if ( lGridColumn.canHide ) {
                                    lGridColumn.hidden = !lViewColumn.isVisible;
                                    lRefresh = true;
                                }
                            }

                            break;
                        }
                    }
                }
                if ( lRefresh ) {
                    self.refreshColumns();
                    self.refresh();
                }
            }
            // tied to grid view currently, but called from report switching which could not be grid view
            function editable() {
                var lIsEditable = pIg._isCurrentlyEditable();

                // Update model editable flag but only if model has identity field (no identity means it can never be editable)
                if ( self.model.getOption( "identityField" ) ) {
                    self.model.setOption( "editable", lIsEditable );
                }

                // Update both grid and single row view widget's editable flag, and any dependent flags
                if ( self.singleRowView$ ) {
                    self.singleRowView$.recordView( OPTION, "editable", lIsEditable );
                    self.singleRowView$.recordView( OPTION, "autoAddRecord", lIsEditable );
                }
                if ( self._hasGridView() ) {
                    self.view$.grid( OPTION, "editable", lIsEditable );
                    self.view$.grid( OPTION, "autoAddRecord", lIsEditable );
                }
                pIg._updateActions();
            }
            function rowsPerPage() {
                if ( self._hasGridView() ) {
                    self.view$.grid( OPTION, "rowsPerPage", pReportSettings.rowsPerPage );
                    if ( !pCurrent ) {
                        self.pendingRefresh = true;
                    }
                }
            }

            // todo consider string constants for the change identifiers
            lChanges = {
                "views.grid.aggregations":  viewsGridAggregations,
                "views.grid.highlights":    viewsGridHighlights,
                "views.grid.columns":       viewsGridColumns,
                "editable":                 editable,
                "rowsPerPage":              rowsPerPage
            };

            if ( lChanges[ pChange ] && self.view$ ) {
                lChanges[ pChange ]();
            }

        },
        _selectionChange: function( lIg, event ) {
            // when called with an event let the IG know
            if ( event ) {
                lIg._selectionChange( event );
            }
        },
        _initMenus: function( pConfig, pIg ) {
            const lThisView = this,
                lFeatures = pConfig.views.grid.features;
            let lActionsMenu$,
                lRowActionMenu$,
                lSRVActionMenu$,
                lSelActionMenu$,
                lRowActionMenuItems = [],
                lSRVActionMenuItems = [],
                lSelActionMenuItems = [],
                lSelMenuItems = pIg._tbFind( "selection_submenu");  // initially just the sub menu if there is one

            function addToBothSelectionMenus( item ) {
                lSelActionMenuItems.push( item );
                if ( lSelMenuItems ) {
                    lSelMenuItems.push( item );
                }
            }

            if ( lSelMenuItems ) {
                lSelMenuItems = lSelMenuItems.menu.items;
                // remember where we start adding onto the Actions > Selection menu
                lThisView._selectionMenuItems = lSelMenuItems;
                lThisView._selectionMenuStart = lSelMenuItems.length;
            }

            lSelActionMenuItems.push({
                type: ACTION,
                action: "selection-copy",
                accelerator: "Ctrl+C"
            });
            lSelActionMenuItems.push( SEPARATOR_MI );

            // create a row actions menu and a selection actions menu
            // these are typically used by the special actions column but they could be leveraged in other ways
            // by custom column, or toolbar code.

            // Row actions menu
            lRowActionMenu$ = $( "<div/>", {
                id: pIg._getId( "row_actions_menu" )
            }).appendTo( "body" );

            lSRVActionMenu$ = $( "<div/>", {
                id: pIg._getId( "srv_actions_menu" )
            }).appendTo( "body" );

            // Selection actions menu
            lSelActionMenu$ = $( "<div/>", {
                id: pIg._getId( "selection_actions_menu" )
            }).appendTo( "body" );

            if ( lThisView.supports.singleRowView ) {
                // OK to always add to the actions menu because it will be hidden if the singleRowView is feature is false
                lRowActionMenuItems.push({
                    id: "srv",
                    type: ACTION,
                    action: "single-row-view"
                });
                lRowActionMenuItems.push( SEPARATOR_MI );
            }

            if ( pConfig.editable ) {

                if ( pConfig.editable.allowedOperations.create ) {

                    lRowActionMenuItems.push ( {
                        id: "ins",
                        type: ACTION,
                        action: "row-add-row"
                    } );
                    lSRVActionMenuItems.push ( {
                        id: "ins",
                        type: ACTION,
                        label: pConfig.text.addRowButton,
                        action: "insert-record"
                    } );

                    // Duplicate needs create privilege, it's assisted creation.
                    lRowActionMenuItems.push ( {
                        id: "dup",
                        type: ACTION,
                        action: "row-duplicate"
                    } );
                    lSRVActionMenuItems.push ( {
                        id: "dup",
                        type: ACTION,
                        action: "duplicate-record"
                    } );
                    addToBothSelectionMenus ( {
                        id: "dup",
                        type: ACTION,
                        action: "selection-duplicate"
                    } );

                    lRowActionMenuItems.push ( SEPARATOR_MI );
                    addToBothSelectionMenus ( SEPARATOR_MI );
                }

                /*
                 * Delete
                 */
                // we need Delete also when only CREATE is enabled; to remove rows before saving
                if ( pConfig.editable.allowedOperations[ DELETE ] || pConfig.editable.allowedOperations.create ) {
                    lRowActionMenuItems.push ( {
                        id: "del",
                        type: ACTION,
                        action: "row-delete"
                    } );
                    lSRVActionMenuItems.push ( {
                        id: "del",
                        type: ACTION,
                        action: "delete-record"
                    } );
                }

                if ( pConfig.editable.allowedOperations[ DELETE ] ) {
                    addToBothSelectionMenus ( {
                        id: "del",
                        type: ACTION,
                        action: "selection-delete"
                    } );
                }
            }

            /*
             * Revert / refresh
             */
            lRowActionMenuItems.push( SEPARATOR_MI );
            lRowActionMenuItems.push({
                id: "refresh",
                type: ACTION,
                action: "row-refresh"
            });
            lSRVActionMenuItems.push({
                id: "refresh",
                type: ACTION,
                action: "refresh-record"
            });
            addToBothSelectionMenus( SEPARATOR_MI );
            addToBothSelectionMenus({
                id: "refresh",
                type: ACTION,
                action: "selection-refresh"
            });

            if ( pConfig.editable ) {
                // Revert reverts either an update, or a delete, so we show this option if either of these are allowed
                if ( pConfig.editable.allowedOperations.update || pConfig.editable.allowedOperations[ DELETE ] ) {
                    lRowActionMenuItems.push ( {
                        id: "revert",
                        type: ACTION,
                        action: "row-revert"
                    } );
                    lSRVActionMenuItems.push ( {
                        id: "revert",
                        type: ACTION,
                        action: "revert-record"
                    } );
                    addToBothSelectionMenus ( {
                        id: "revert",
                        type: ACTION,
                        action: "selection-revert"
                    } );
                }

                if ( lFeatures.cellRangeActions ) {
                    addToBothSelectionMenus ( SEPARATOR_MI );
                    addToBothSelectionMenus ( {
                        id: "copy_down",
                        type: ACTION,
                        action: "selection-copy-down"
                    } );
                    addToBothSelectionMenus ( {
                        id: "fill",
                        type: ACTION,
                        action: "selection-fill"
                    } );
                    addToBothSelectionMenus ( {
                        id: "clear",
                        type: ACTION,
                        action: "selection-clear"
                    } );
                }
            }

            lRowActionMenu$.menu({
                actionsContext: pIg.actions,
                items: lRowActionMenuItems,
                beforeOpen: function () {
                    var lRecords,
                        lRow$ = lThisView.view$.find( ".a-Button--actions." + C_IS_ACTIVE ).closest( "tr" );

                    if ( lThisView.singleRowMode ) {
                        pIg._updateAction( HIDE, "single-row-view" );
                        lRecords = lThisView.getSelectedRecords();
                    } else {
                        lRecords = lThisView.view$.grid( "getRecords", [ lRow$ ] );
                    }

                    if ( pConfig.editable ) {
                        if ( pConfig.editable.allowedOperations.create ) {
                            lRowActionMenu$.menu( "find", "dup" ).disabled = !lThisView.model.allowAdd( null, "copy" );
                            lRowActionMenu$.menu( "find", "ins" ).disabled = !lThisView.model.allowAdd( null, "new" );
                        }

                        if ( pConfig.editable.allowedOperations.update || pConfig.editable.allowedOperations[ DELETE ] ) {
                            pIg._toggleEnableAction( lThisView.model.canRevertRecord( lRecords[ 0 ] ), ["row-revert"] );
                        }

                        // when DELETE is generally disabled: Show DELETE menu entry only for "new" rows.
                        if ( !pConfig.editable.allowedOperations[ DELETE ] ) {
                            pIg._toggleShowAction( lThisView.model.allowDelete( lRecords[ 0 ] ), "row-delete" );
                        }

                        if ( pConfig.editable.allowedOperations[ DELETE ] ) {
                            pIg._toggleEnableAction( lThisView.model.allowDelete( lRecords[ 0 ] ), ["row-delete"] );
                        }
                    }

                },
                afterClose: function() {
                    if ( lThisView.singleRowMode ) {
                        pIg._updateAction( SHOW, "single-row-view" );
                    }
                    pIg._updateSelectionActions();
                }
            });

            lSRVActionMenu$.menu({
                actionsContext: pIg.actions,
                items: lSRVActionMenuItems,
                beforeOpen: function () {
                    var lRecords = lThisView.getSelectedRecords();

                    if ( pConfig.editable ) {
                        if ( pConfig.editable.allowedOperations.create ) {
                            lSRVActionMenu$.menu( "find", "dup" ).disabled = !lThisView.model.allowAdd( null, "copy" );
                            lSRVActionMenu$.menu( "find", "ins" ).disabled = !lThisView.model.allowAdd( null, "new" );
                        }

                        if ( pConfig.editable.allowedOperations.update || pConfig.editable.allowedOperations[ DELETE ] ) {
                            lSRVActionMenu$.menu( "find", "revert" ).disabled = !lRecords.length || !lThisView.model.canRevertRecord( lRecords[ 0 ] );
                        }

                        // when DELETE is generally disabled: Show DELETE menu entry only for "new" rows.
                        if ( !pConfig.editable.allowedOperations[ DELETE ] ) {
                            pIg._toggleShowAction( lThisView.model.allowDelete( lRecords[ 0 ] ), "delete-record" );
                        }

                        if ( pConfig.editable.allowedOperations[ DELETE ] ) {
                            lSRVActionMenu$.menu( "find", "del" ).disabled = !lRecords.length || !lThisView.model.allowDelete( lRecords[ 0 ] );
                        }
                    }
                }
            });

            lSelActionMenu$.menu({
                actionsContext: pIg.actions,
                items: lSelActionMenuItems,
                beforeOpen: function () {
                    pIg._updateSelectionActions();
                }
            });

            if ( lSelMenuItems ) {
                // if selection menu items were added to the actions menu, selection sub menu then need to update some menu items
                // if lSelMenuItems exists then there must be a toolbar
                lActionsMenu$ = pIg._tbFindElement( "actions_button_menu" );
                lActionsMenu$.on( "menubeforeopen.gridview", function() {
                    pIg._updateSelectionActions();
                } );
            }

            lThisView.rowActionMenu$ = lRowActionMenu$;
            lThisView.srvActionMenu$ = lSRVActionMenu$;
            lThisView.selActionMenu$ = lSelActionMenu$;
        },
        _gridAggregateLabels: function() {
            var lAggregateLabels = null;

            if ( !this.aggregateLabels ) {
                this.aggregateLabels = lAggregateLabels = {};
                // todo jjs see if something like this can be used in aggregate dialog where lAggregateFunctions array is created
                Object.values( AGGREGATEFUNCS ).forEach( v => {
                    lAggregateLabels[ v ] = {
                        label: getIGMessage( v ),
                        overallLabel: getIGMessage( v + "_OVERALL" )
                    };
                } );
            }
            return this.aggregateLabels;
        },
        _gridAggregateTooltipsFromReport: function( pIg, pReportSettings ) {
            var i, lReportAgg,
                lGridAggregateTooltips = null,
                lReportAggs = pReportSettings.views.grid.aggregations;

            if ( lReportAggs.length > 0 ) {
                // Gather tooltip text to give to grid
                lGridAggregateTooltips = {};
                for ( i = 0; i < lReportAggs.length; i++ ) {
                    lReportAgg = lReportAggs[i];
                    if ( lReportAgg.tooltip ) {
                        lGridAggregateTooltips[ lReportAgg.function  + "|" + pIg._getColumn( lReportAgg.columnId ).name ] = lReportAgg.tooltip;
                    }
                }
            }
            return lGridAggregateTooltips;
        },
        _gridHighlightsFromReport: function( pReportSettings ) {
            var i, lHid, lHighlight,
                lGridHighlights = {},
                lHighlights = pReportSettings.views.grid.highlights;

            for ( i = 0; i < lHighlights.length; i++ ) {
                lHighlight = lHighlights[i];
                lHid = lHighlight.id;
                lGridHighlights[lHid] = {
                    seq: lHighlight.seq,
                    row: lHighlight.type === ROW,
                    color: lHighlight.textColor,
                    background: lHighlight.backgroundColor
                };
            }
            return lGridHighlights;
        },
        _hasGridView: function() {
            return this.view$.is( ":apex-grid" );
        },
        destroyView: function ( pIg ) {
            if ( this._hasGridView() ) {
                this.view$.grid( DESTROY );
            }
            if ( this.singleRowView$ ) {
                this.singleRowView$.remove();
            }
            // cleanup header menu
            pIg._getElement( "column_header_menu" ).remove();
        },
        destroy: function ( /* pIg */ ) {
            // cleanup menus
            if ( this.rowActionMenu$ && this.rowActionMenu$.length > 0 ) {
                this.rowActionMenu$.remove();
                this.rowActionMenu$ = null;
            }
            if ( this.selActionMenu$ && this.selActionMenu$.length > 0 ) {
                this.selActionMenu$.remove();
                this.selActionMenu$ = null;
            }
            if ( this._selectionMenuStart && this._selectionMenuItems ) {
                // truncate the actions > selection menu to remove the items this view added
                this._selectionMenuItems.length = this._selectionMenuStart;
                this._selectionMenuItems = this._selectionMenuStart = null;
            }
        },
        getContextRecord: function( context ) {
            var lRow$;
            if ( this.singleRowMode ) {
                // single row view doesn't have any context other than the record it is currently editing
                return [this.singleRowView$.recordView( "getRecord" )];
            } else {
                lRow$ = $( context ).closest( "tr" );
                if ( lRow$.length > 0 ) {
                    return this.view$.grid( "getRecords", [ lRow$ ] );
                }
            }
            return [];
        },
        getColumns: function() {
            if ( this.singleRowMode ) {
                return this.curInst.getFields();
            } else {
                return this.curInst.getColumns();
            }
        },
        canCopy2Clipboard: function() {
            if ( this.singleRowMode ) {
                return false;
            } else {
                return this.curInst.option( "allowCopy" );
            }
        },
        selectCells: function( value ) {
            // only applies in grid mode
            if ( !this.singleRowMode ) {
                if ( value === undefined ) {
                    return this.view$.grid( OPTION, "selectCells" );
                } // else
                this.view$.grid( OPTION, "selectCells", value );
            }
        },
        getSelectedRecords: function() {
            if ( this.singleRowMode ) {
                const rec = this.curInst.getRecord();

                return rec ? [rec] : [];
            } else {
                return this.curInst.getSelectedRecords();
            }
        },
        setSelectedRecords: function ( pRecords, pFocus, pNoNotify ) {
            if ( this.singleRowMode ) {
                let lOffset = this.model.indexOf( pRecords[0] );

                if ( lOffset < 0 ) {
                    lOffset = 0;
                }
                this.singleRowView$.recordView( OPTION, "recordOffset", lOffset );
                // todo jjs pFocus, pNotify?
            } else {
                this.view$.grid( "setSelectedRecords", pRecords, pFocus, pNoNotify );
            }
        },
        getActiveRecordId: function() {
            return this.curInst.getActiveRecordId();
        },
        setModelName: function( pModelName ) {
            if ( this.view$ ) {
                this.view$.grid( "instance" ).option( "modelName", pModelName );
            }
            if ( this.singleRowView$ ) {
                this.singleRowView$.recordView( "instance" ).option( "modelName", pModelName );
            }
        },
        setEditMode: function( pMode ) {

            /* NOTE: Only one view can be in edit mode at a time
             * This is because all views share the same column items and each view can have a different idea of what the
             * active/current item is. If more than one view could be in edit mode values from the wrong record
             * could end up getting edited.
             */
            this.curInst.setEditMode( pMode );
        },
        finishEditing: function() {
            return this.curInst.finishEditing();
        },
        setNoDataMessage: function ( pMessage ) {
            this.curInst.option( "noDataMessage", pMessage );
        },
        focus: function() {
            this.curInst.focus();
        },
        refreshColumns: function() {
            if ( this._hasGridView() ) {
                this.view$.grid( "refreshColumns" );
            }
            if ( this.singleRowView$ ) {
                this.singleRowView$.recordView( "refreshFields" );
            }
        },
        footerHeight: function() {
            if ( !this.singleRowMode && this.view$ ) {
                return this.view$.find( ".a-GV-footer" ).outerHeight() || 0;
            } // else
            return 0;
        },
        refresh: function ( /* pOptions */ ) {
            if ( this._hasGridView() ) {
                this.view$.grid( REFRESH );
            }
            if ( this.singleRowView$ ) {
                this.singleRowView$.recordView( REFRESH );
            }
        },
        resize: function() {
            this.curInst.resize();
        },
        show: function() {
            this.curInst.element.show();
        },
        hide: function() {
            this.curInst.element.hide();
        }
    };

    const baseIconAndDetailView = {
        setColumnConfig: function( pOptions ) {

            var lColumn, lColumnId, lModelColumn = {}, lModelColumns = {},
                lBaseModelColumns = pOptions.baseModelColumns,
                lConfig = pOptions.igConfig,
                lIg = pOptions.ig,
                lEditable = ( lConfig.editable !== false ),
                lCount = 0;

            // Loop through base model columns
            for ( lColumnId in lBaseModelColumns ) {
                if ( hasOwnProperty( lBaseModelColumns, lColumnId ) ) {

                    lCount += 1;

                    lModelColumn = $.extend( true, {}, lBaseModelColumns[ lColumnId ] );

                    // The meta column is a special case and doesn't need to do this
                    if ( lColumnId !== META ) {

                        lColumn = lIg._getColumn( lColumnId );

                        lModelColumn.elementId = lColumn.staticId;
                        lModelColumn.seq = lCount;

                        // Columns specific to when the grid is editable

                        if ( lEditable ) {
                            if ( lColumn.specialType === "actions" ) {

                                delete lModelColumn.index;
                                lModelColumn.virtual = true;

                                // Model shouldn't be passed elementId for the actions column
                                lModelColumn.elementId = null;

                            }
                        }

                        lModelColumns[ lColumn.name ] = lModelColumn;

                    } else {

                        lModelColumns[ META ] = lModelColumn;

                    }

                }

            }

            // set view's member variables
            this.modelColumns = lModelColumns;
            this.specialColumns = {
                identityField:      ( lIg.primaryKeyColumns.length === 0 ? null : lIg.primaryKeyColumns ),
                metaField:          META
            };

        },
        initView: function( pOptions ) {
            var lHasSize = true,
                lStickyFooter = false,
                lConfig = pOptions.igConfig,
                lIg = pOptions.ig,
                lDefaultOptions = this.internalIdentifier === ICON ? lConfig.defaultIconViewOptions : lConfig.defaultDetailViewOptions;

            switch ( lConfig.headingFixedTo ) {
                case NONE:
                    lHasSize = false;
                    break;
                case PAGE:
                    lHasSize = false;
                    lStickyFooter = true;
                    break;
            }

            this.view$.tableModelView( this.viewConfig( pOptions, {
                modelName: this.modelName,
                noDataMessage: lConfig.text.noDataFound,
                moreDataMessage: lConfig.text.moreDataFound,
                showNullAs: lConfig.appearance.showNullValue, // todo will tablemodel view support this?
                hasSize: lHasSize,
                columns: this.modelColumns,
                pagination: lIg._getPaginationConfig( lConfig, this.internalIdentifier === ICON ? "defaultIconViewOptions" : "defaultDetailViewOptions" ),
                rowsPerPage: ifDefined( lDefaultOptions.rowsPerPage, pOptions.currentReportSettings.rowsPerPage ),
                stickyFooter: lStickyFooter,
                selectionChange: function( event ) {
                    lIg._selectionChange( event );
                },
                pageChange: function ( event, ui ) {
                    lIg._pageChange( ui );
                }
            } ) );

        },
        destroyView: function() {
            this.view$.tableModelView( DESTROY );
        },
        setReportOptions: function( pIg, pCurrent, pReportSettings, pChange ) {
            var lChanges,
                self = this;

            lChanges = {
                rowsPerPage: function() {
                    self.view$.tableModelView( OPTION, "rowsPerPage", pReportSettings.rowsPerPage );
                    if ( !pCurrent ) {
                        self.pendingRefresh = true;
                    }
                }
            };

            if ( lChanges[ pChange ] && self.view$ ) {
                lChanges[ pChange ]();
            }
        },
        selectionEnabled: function() {
            const opts = this.view$.tableModelView( "option" );

            return opts.useIconList ||  opts.itemNavigationMode === "select";
        },
        getSelectedRecords: function() {
            return this.view$.tableModelView( "getSelectedRecords" );
        },
        setSelectedRecords: function ( pRecords, pFocus, pNoNotify ) {
            this.view$.tableModelView( "setSelectedRecords", pRecords, pFocus, pNoNotify );
        },
        canCopy2Clipboard: function() {
            let o = this.view$.tableModelView( "option" );

            if ( o.useIconList && o.iconListOptions ) {
                // Could get the allowCopy option value from the iconList widget (via getIconList) but in the case
                // of lazy rendering it may not exist yet. So get it from the options. Keep the default in sync with
                // iconList.allowCopy
                o = o.iconListOptions;
                return o.allowCopy === undefined ? true : o.allowCopy;
            } // else
            return o.allowCopy;
        },
        setModelName: function( pModelName ) {
            this.view$.tableModelView( OPTION, "modelName", pModelName );
        },
        setNoDataMessage: function ( pMessage ) {
            this.view$.tableModelView( OPTION, "noDataMessage", pMessage );
        },
        footerHeight: function() {
            return ( this.view$ && this.view$.find( ".a-GV-footer" ).outerHeight() ) || 0;
        },
        refresh: function ( /* pOptions */ ) {
            this.view$.tableModelView( REFRESH );
        },
        resize: function() {
            this.view$.tableModelView( RESIZE );
        },
        // If Icon and Detail views are present, they will have been pre-configured by the developer, so we always return true here
        isConfigured: function() {
            return true;
        }
    };



    //
    // Icon View
    //
    registerView( $.extend( {}, baseIconAndDetailView, {
        title: getIGMessage( "ICON" ),
        label: getIGMessage( "ICON_VIEW" ),
        internalIdentifier: ICON,
        cssClass: C_IG_VIEW_ICON,
        icon: "icon-ig-icons",
        supports: {
            // defaults:
            // edit: false,
            // selection: true,
            // cellSelection: false,
            // highlight: false,
            // controlBreak: false,
            // aggregation: false,
            // singleRowView: false,
            // configurableColumns: false,
            // filter: true,
            // changeRowsPerPage: true,
            // download: false
            sort: true
        },
        viewConfig: function( pOptions, pConfig ) {
            var lIconList,
                lConfig = pOptions.igConfig,
                lFeatures = lConfig.views.icon.features,
                lNavigation = false,
                lIcon = lConfig.views.icon;

            pConfig = $.extend( true, {iconListOptions:{}}, lConfig.defaultIconViewOptions, pConfig );

            if ( lIcon.customIcon ) {
                if ( lIcon.customIcon.trim().toLowerCase().match(/\s*<li/) ) {
                    pConfig.recordTemplate = lIcon.customIcon;
                } else {
                    pConfig.recordTemplate = "<li>" + lIcon.customIcon + "</li>";
                }
                if ( lIcon.customIcon.toLowerCase().indexOf( "href=" ) >= 0 ) {
                    lNavigation = true;
                }
            } else {
                pConfig.labelColumn = lIcon.labelColumn;
                if ( lIcon.iconClassColumn ) {
                    pConfig.iconClassColumn = lIcon.iconClassColumn;
                }
                if ( lIcon.imageURLColumn ) {
                    pConfig.imageURLColumn = lIcon.imageURLColumn;
                }
                if ( lIcon.imageAttributes ) {
                    pConfig.imageAttributes = lIcon.imageAttributes;
                }
                if ( lIcon.linkAttributes ) {
                    pConfig.linkAttributes = lIcon.linkAttributes;
                }
                if ( lIcon.linkTarget ) {
                    pConfig.linkTarget = true;
                    lNavigation = true;
                }
                if ( pConfig.linkTargetColumn ) { // this is currently advanced configuration only set by JavaScript
                    lNavigation = true;
                }
            }
            pConfig.useIconList = true;

            lIconList = pConfig.iconListOptions;
            if ( lNavigation && lIconList.navigation === undefined) {
                lIconList.navigation = true;
            }
            // let multiple setting from defaultIconViewOptions override the rowSelector
            if ( lFeatures.rowSelector && lIconList.multiple === undefined && lIconList.itemSelector === undefined ) {
                lIconList.multiple = lFeatures.rowSelector.multiSelect;
                if ( lIconList.navigation ) {
                    // navigation forces multiple to be false so the radio item selector looks silly
                    lIconList.itemSelector = false;
                } else {
                    lIconList.itemSelector = !lFeatures.rowSelector.hideControl;
                }
                // rowSelector.selectAll doesn't apply to iconList
            }

            // if a context menu is being added to the grid view and it doesn't specify an actionContext it should use the IG context
            if ( pConfig.iconListOptions.contextMenu && !hasOwnProperty( pConfig.iconListOptions.contextMenu, "actionsContext" ) ) {
                pConfig.iconListOptions.contextMenu.actionsContext = pOptions.ig.actions;
            }

            return pConfig;
        },
        focus: function() {
            this.view$.tableModelView( "focus" );
        },
        getContextRecord: function( context ) {
            var item$,
                useIconList = this.view$.tableModelView( "option" ).useIconList;

            if ( useIconList ) {
                item$ = $( context ).closest( ".a-IconList-item" );

                if ( item$.length ) {
                    return this.view$.tableModelView( "getRecords", item$ );
                }
            }
            return [];
        }
    }) );

    //
    // Grid View
    //
    registerView( $.extend( {}, baseGridAndPivotAndGroupByView, {
        title: getIGMessage( "GRID" ),
        label: "", // the label is calculated in _getLandmarkLabel depending on Grid/Single row Views and on the edit mode
        internalIdentifier: GRID,
        cssClass: C_IG_VIEW_GRID,
        icon: "icon-ig-report",
        supports: {
            // defaults:
            // selection: true,
            // filter: true,
            // sort: true,
            // changeRowsPerPage: true,
            // download: false
            cellSelection: true,
            edit: true,
            highlight: true,
            controlBreak: true,
            aggregation: true,
            singleRowView: true,
            configurableColumns: true,
            download: true
        },
        gotoCell: function( pRecordId, pColumn ) {
            if ( this.singleRowMode ) {
                return this.curInst.gotoField( pRecordId, pColumn );
            } else {
                return this.curInst.gotoCell( pRecordId, pColumn );
            }
        },
        lockActive: function() {
            this.curInst.lockActive();
        },
        unlockActive: function() {
            this.curInst.unlockActive();
        }
    }) );


    //
    // Group By View
    //
    /*
    registerView( $.extend( {}, baseGridAndPivotAndGroupByView, {
        title: getIGMessage( "GROUP_BY" ),
        label: getIGMessage( "GROUP_BY_VIEW" ),
        internalIdentifier: GROUP_BY,
        cssClass: C_IG_VIEW_GROUP_BY,
        icon: "icon-ig-group-by",
        supports: {
            edit: false,
            selection: true,
            highlight: true,
            controlBreak: false,
            aggregation: false,
            singleRowView: true,
            download: true
        },
        initDialog: function( pIg ) {
            var lColumnOptions = [],
                lColumns = pIg.options.config.columns,
                lColumn, lFirstColumn, lHasGroups = false,
                lUseGroupFor, lAlignOptions, lColumnGroups, lTypeOptions,
                i,
                self = this,
                out = util.htmlBuilder()
            ;

            pIg._renderBeginItemContainer( out );

            // Determine options for column select list
            lColumnOptions.push({
                value: "",
                label: getIGMessage( M_SELECT )
            });
            for ( i = 0; i < lColumns.length; i++ ) {
                lColumn = lColumns[ i ];
                if ( !lColumn.specialType && lColumn.features.sort && !lColumn.isHidden ) {
                    // Remember the first column, as we use it in the load callback to default for a new record
                    if ( !lFirstColumn ) {
                        lFirstColumn = lColumn;
                    }
                    lColumnOptions.push( {
                        value: lColumn.id,
                        label: pIg._getColumnLabel( lColumn.id )
                    } );
                }
            }

            lColumnGroups = [ { value: "", label: getIGMessage( M_SELECT ) } ];
            for ( i = 0; i < pIg.options.config.columnGroups.length; i++ ) {
                 lHasGroups = true;
                 lColumnGroups.push( {
                     value: pIg.options.config.columnGroups[ i ].id,
                     label: pIg.options.config.columnGroups[ i ].heading
                 } );
            }

            lTypeOptions = [
                { value: "COMPUTE",        label: getIGMessage( "AGGREGATION"     ) },
                { value: "GROUPBY",        label: getIGMessage( "GROUP_BY"        ) },
            ];

            lUseGroupFor = [
                { value: "heading",        label: getIGMessage( "HEADING"         ) },
                { value: "srv",            label: getIGMessage( "SINGLE_ROW_VIEW" ) },
                { value: "both",           label: getIGMessage( "BOTH"            ) }
            ];

            lAlignOptions = [
                { value: POSITION_START,   label: getIGMessage( "POSITION_START"  ) },
                { value: POSITION_END,     label: getIGMessage( "POSITION_END"    ) },
                { value: POSITION_CENTER,  label: getIGMessage( "POSITION_CENTER" ) }
            ];

            pIg._renderBeginItemContainer( out );

            pIg._renderColumnItem( out, SELECT, { id: pIg._getId( "GRP_COLUMN" ),             options: lColumnOptions } );
            pIg._renderColumnItem( out, SELECT, { id: pIg._getId( "GRP_FUNCTION" ),           options: []             } );

            pIg._renderColumnItem( out, SELECT, { id: pIg._getId( "GRP_TYPE" ),               options: lTypeOptions   } );

            pIg._renderColumnItem( out, TEXT,   { id: pIg._getId( "GRP_HEADING_HEADING" )                             } );
            pIg._renderColumnItem( out, TEXT,   { id: pIg._getId( "GRP_HEADING_LABEL"   )                             } );

            pIg._renderColumnItem( out, SELECT, { id: pIg._getId( "GRP_HEADING_ALIGN" ),      options: lAlignOptions  } );
            pIg._renderColumnItem( out, SELECT, { id: pIg._getId( "GRP_LAYOUT_ALIGN"  ),      options: lAlignOptions  } );

            pIg._renderColumnItem( out, SELECT, { id: pIg._getId( "GRP_LAYOUT_GROUPID"     ), options: lColumnGroups  } );
            pIg._renderColumnItem( out, SELECT, { id: pIg._getId( "GRP_LAYOUT_USEGROUPFOR" ), options: lUseGroupFor   } );

            pIg._renderColumnItem( out, TEXT,   { id: pIg._getId( "GRP_FORMATMASK" )                                  } );

            pIg._renderEndItemContainer( out );

            pIg.element.append( out.toString() );

            this.dialog$ = $.apex.recordView.createModelEditDialog( pIg._getId( "groupby-dialog" ), {
                width: 600,
                height: 500,
                titleKey: "APEX.IG.GROUP_BY",
                modelName: pIg._getId( "groupbyConfig" ),
                labelAlignment: POSITION_START,
                formCssClasses: C_FORM_LABELS_ABOVE + " " + C_FORM_STRETCH_INPUTS,
                dialogHelp: {
                    helpTextKey: "APEX.IG.HELP.GROUP_BY",
                    titleKey: "APEX.IG.HELP.GROUP_BY_TITLE"
                },
                useSplitter: true,
                modelOptions: {
                    sequenceField: "seq",
                    editable: true,
                    onlyMarkForDelete: false,
                    identityField: "id",
                    fields: {
                        id: {
                            canHide: false,
                            hidden: true,
                            seq: "0"
                        },
                        children: {
                            canHide: false,
                            hidden: true,
                            seq: "0"
                        },
                        parent: {
                            canHide: false,
                            hidden: true,
                            seq: "0"
                        },
                        seq: {
                            canHide: false,
                            hidden: true,
                            seq: "0"
                        },
                        type: {
                            label: getIGMessage( "COLUMN_TYPE" ),
                            heading: getIGMessage( "COLUMN_TYPE" ),
                            elementId: pIg._getId( "GRP_TYPE" ),
                            seq: 5,
                            type: "GROUPBY",
                            canHide: true,
                            hidden: false
                        },
                        columnId: {
                            label: getIGMessage( "COLUMN" ),
                            heading: getIGMessage( "COLUMN" ),
                            elementId: pIg._getId( "GRP_COLUMN" ),
                            seq: 10,
                            fieldColSpan: 7,
                            canHide: true,
                            hidden: false
                        },
                        headingHeading: {
                            heading: getIGMessage( "HEADING" ),
                            label: getIGMessage( "HEADING" ),
                            elementId: pIg._getId( "GRP_HEADING_HEADING" ),
                            isRequired: true,
                            fieldColSpan:7,
                            canHide: true,
                            hidden: true,
                            seq: 30
                        },
                        function: {
                            label: getIGMessage( "AGGREGATION" ),
                            elementId: pIg._getId( "GRP_FUNCTION" ),
                            seq: 20,
                            fieldColSpan: 5,
                            canHide: true,
                            hidden: true
                        },
                        headingAlign: {
                            label: getIGMessage( "HEADING_ALIGN" ),
                            elementId: pIg._getId( "GRP_HEADING_ALIGN" ),
                            defaultValue: POSITION_CENTER,
                            seq: 40,
                            fieldColSpan: 5,
                            canHide: true,
                            hidden: true
                        },
                        headingLabel: {
                            heading: getIGMessage( "LABEL" ),
                            label: getIGMessage( "LABEL" ),
                            elementId: pIg._getId( "GRP_HEADING_LABEL" ),
                            canHide: true,
                            hidden: true,
                            fieldColSpan: 7,
                            seq: 50
                        },
                        layoutAlign: {
                            label: getIGMessage( "LAYOUT_ALIGN" ),
                            elementId: pIg._getId( "GRP_LAYOUT_ALIGN" ),
                            seq: 60,
                            defaultValue: POSITION_END,
                            fieldColSpan: 5,
                            canHide: true,
                            hidden: true
                        },
                        layoutGroupId: {
                            label: getIGMessage( "GROUP" ),
                            elementId: pIg._getId( "GRP_LAYOUT_GROUPID" ),
                            seq: 70,
                            fieldColSpan: 7,
                            canHide: true,
                            hidden: true
                        },
                        layoutUseGroupFor: {
                            label: getIGMessage( "LAYOUT_USEGROUPFOR" ),
                            elementId: pIg._getId( "GRP_LAYOUT_USEGROUPFOR" ),
                            seq: 80,
                            defaultValue: "both",
                            fieldColSpan: 5,
                            canHide: true,
                            hidden: true
                        },
                        formatMask: {
                            label: getIGMessage( "FORMATMASK" ),
                            elementId: pIg._getId( "GRP_FORMATMASK" ),
                            seq: 90,
                            fieldColSpan: 7,
                            canHide: true,
                            hidden: true
                        }
                    }
                },
                init: function( pModel, pNav$, pRecordView$, pToolbar$ ) {
                    var lColumn$            = pIg._getElement( "GRP_COLUMN" ),
                        lFunction$          = pIg._getElement( "GRP_FUNCTION" ),
                        lHeadingHeading$    = pIg._getElement( "GRP_HEADING_HEADING" ),
                        lHeadingLabel$      = pIg._getElement( "GRP_HEADING_LABEL" ),
                        lHeadingAlign$      = pIg._getElement( "GRP_HEADING_ALIGN" ),
                        lLayoutAlign$       = pIg._getElement( "GRP_LAYOUT_ALIGN" ),
                        lLayoutGroupId$     = pIg._getElement( "GRP_LAYOUT_GROUPID" ),
                        lLayoutUseGroupFor$ = pIg._getElement( "GRP_LAYOUT_USEGROUPFOR" ),
                        lFormatMask$        = pIg._getElement( "GRP_FORMATMASK" ),
                        lType$              = pIg._getElement( "GRP_TYPE" ),
                        lToolbarActions     = actions.findContext( "ModelEditDialog", this )
                    ;

                    function typeChanged() {
                        pModel.setValue( pRecordView$.recordView("getRecord"), "type", lType$.val() );
                        if ( lType$.val() === "COMPUTE" ) {
                            lToolbarActions.hide( "move-up" );
                            lToolbarActions.hide( "move-down" );
                        } else {
                            lToolbarActions.show( "move-up" );
                            lToolbarActions.show( "move-down" );
                        }
                        columnChanged();
                    }

                    function columnChanged() {
                        var lIGColumn, lAggregateFunctionOptions = {},
                            lFunctionBuffer,
                            lColumnId = lColumn$.val();

                        lIGColumn = pIg._getColumn( lColumnId );

                        // todo convert these to use showFields and hideFields
                        lFunction$.closest( SEL_FORM_FIELD_CONTAINER ).hide();
                        lHeadingHeading$.closest( SEL_FORM_FIELD_CONTAINER ).hide();
                        lHeadingLabel$.closest( SEL_FORM_FIELD_CONTAINER ).hide();
                        lHeadingAlign$.closest( SEL_FORM_FIELD_CONTAINER ).hide();
                        lLayoutAlign$.closest( SEL_FORM_FIELD_CONTAINER ).hide();
                        lLayoutGroupId$.closest( SEL_FORM_FIELD_CONTAINER ).hide();
                        lLayoutUseGroupFor$.closest( SEL_FORM_FIELD_CONTAINER ).hide();
                        lFormatMask$.closest( SEL_FORM_FIELD_CONTAINER ).hide();

                        if ( lType$.val() === "COMPUTE" ) {
                            if ( !lColumnId || lColumnId === "" ) {
                                pModel.setValue( pRecordView$.recordView("getRecord"), "columnId", "" );
                                pModel.setValue( pRecordView$.recordView("getRecord"), "function", "" );
                            } else {
                                lHeadingHeading$.closest( SEL_FORM_FIELD_CONTAINER ).show();
                                lHeadingLabel$.closest( SEL_FORM_FIELD_CONTAINER ).show();
                                lHeadingAlign$.closest( SEL_FORM_FIELD_CONTAINER ).show();
                                lLayoutAlign$.closest( SEL_FORM_FIELD_CONTAINER ).show();
                                lFormatMask$.closest( SEL_FORM_FIELD_CONTAINER ).show();
                                lFunction$.closest( SEL_FORM_FIELD_CONTAINER ).show();
                                if ( lHasGroups ) {
                                    lLayoutGroupId$.closest( SEL_FORM_FIELD_CONTAINER ).show();
                                    lLayoutUseGroupFor$.closest( SEL_FORM_FIELD_CONTAINER ).show();
                                }

                                // Build the aggregate functions options list, depending on type
                                lAggregateFunctionOptions[ AGGREGATEFUNCS.CNT ] = getIGMessage( AGGREGATEFUNCS.CNT );

                                if ( lIGColumn.filter.dataType === VARCHAR2 || lIGColumn.filter.dataType === NUMBER || lIGColumn.filter.dataType === DATE ) {
                                    lAggregateFunctionOptions[ AGGREGATEFUNCS.CNT_DIST ] = getIGMessage( AGGREGATEFUNCS.CNT_DIST );
                                    lAggregateFunctionOptions[ AGGREGATEFUNCS.APPR_CNT_DIST ] = getIGMessage( AGGREGATEFUNCS.APPR_CNT_DIST );
                                    lAggregateFunctionOptions[ AGGREGATEFUNCS.MIN ] = getIGMessage( AGGREGATEFUNCS.MIN );
                                    lAggregateFunctionOptions[ AGGREGATEFUNCS.MAX ] = getIGMessage( AGGREGATEFUNCS.MAX );
                                }

                                if ( lIGColumn.filter.dataType === NUMBER || lIGColumn.filter.dataType === DATE ) {
                                    lAggregateFunctionOptions[ AGGREGATEFUNCS.MEDIAN ] = getIGMessage( AGGREGATEFUNCS.MEDIAN );
                                }

                                if ( lIGColumn.filter.dataType === NUMBER ) {
                                    lAggregateFunctionOptions[ AGGREGATEFUNCS.SUM ] = getIGMessage( AGGREGATEFUNCS.SUM );
                                    lAggregateFunctionOptions[ AGGREGATEFUNCS.AVG ] = getIGMessage( AGGREGATEFUNCS.AVG );
                                }

                                lFunctionBuffer = lFunction$.val();

                                // Update the DOM
                                lFunction$.empty();
                                lFunction$.append( $( M_EMPTY_OPTION )
                                    .attr( "value", "" ).text( getIGMessage( M_SELECT ) ) );
                                $.each( lAggregateFunctionOptions, function( pValue, pKey ) {
                                    lFunction$.append( $( M_EMPTY_OPTION )
                                        .attr( "value", pValue ).text( pKey ) );
                                });

                                // Now let's set the initial value, again depending on type
                                if ( lFunctionBuffer !== "" ) {
                                    lFunction$.val( lFunctionBuffer );
                                }
                                if ( lFunction$.val() ==="" || lFunction$.val() === null ) {
                                    if ( lIGColumn.filter.dataType === NUMBER ) {
                                        lFunction$.val( AGGREGATEFUNCS.SUM );
                                    } else {
                                        lFunction$.val( AGGREGATEFUNCS.CNT );
                                    }
                                }

                                lFormatMask$.val( "" ).change();
                                if ( lIGColumn.filter.dataType === NUMBER || lIGColumn.filter.dataType === DATE ) {
                                    lFormatMask$.closest( SEL_FORM_FIELD_CONTAINER ).show();
                                    if ( lIGColumn.filter.dataType === DATE ) {
                                        lFormatMask$.combobox().combobox( OPTION, "source", FORMATMASKS_DATE );
                                    } else {
                                        lFormatMask$.combobox().combobox( OPTION, "source", FORMATMASKS_NUM );
                                    }
                                } else {
                                    lFormatMask$.closest( SEL_FORM_FIELD_CONTAINER ).hide();
                                }


                                // update the model immediately to reflect change on left NAV panel
                                pModel.setValue( pRecordView$.recordView("getRecord"), "columnId", lColumnId );
                            }
                        }
                    }

                    lType$.change( typeChanged );
                    lColumn$.change( columnChanged );


                    lHeadingHeading$.change( function() { if ( lHeadingLabel$.val() === "" ) { lHeadingLabel$.val( lHeadingHeading$.val() ); } } );

                    lLayoutGroupId$.change( function() {
                        if ( lLayoutGroupId$.val() !== "" ) {
                            lLayoutUseGroupFor$.closest( SEL_FORM_FIELD_CONTAINER ).show();
                        } else {
                            lLayoutUseGroupFor$.closest( SEL_FORM_FIELD_CONTAINER ).hide();
                        }
                    } );

                    pRecordView$.on( "apexbeginrecordedit", function () {
                        typeChanged();
                    } );
                },
                load: function( pModel ) {
                    var lColumnMappingType, lColumnMapping, i,
                        lRecords = [], lRecord, lColumn,
                        lGroupby = pIg.getGroupBy(),
                        lColumnId = false
                    ;

                    if ( lGroupby ) {
                        for ( i = 0; i < lGroupby.computeColumns.length; i++) {
                            lColumn = lGroupby.computeColumns[ i ];

                            if ( lColumnId === false ) {
                                lColumnId = lColumn.id;
                            }

                            lRecord = {
                                id:                lColumn.id,
                                function:          lColumn.function.type,
                                columnId:          lColumn.function.columnId,
                                type:              "COMPUTE",
                                headingHeading:    lColumn.heading.heading,
                                headingLabel:      lColumn.heading.label,
                                headingAlign:      ( lColumn.heading.alignment ? lColumn.heading.alignment : POSITION_CENTER ),
                                layoutAlign:       ( lColumn.layout.columnAlignment ? lColumn.layout.columnAlignment : POSITION_END ),
                                layoutGroupId:     lColumn.layout.groupId,
                                layoutUseGroupFor: ( lColumn.layout.useGroupFor ? lColumn.layout.useGroupFor : "both" ),
                                formatMask:        lColumn.formatMask
                            };
                            lRecords.push( lRecord );
                        }

                        for ( i = 0; i < lGroupby.columns.length; i++) {
                            lColumn = lGroupby.columns[ i ];

                            lRecord = {
                                id:                lColumn.id,
                                type:              "GROUPBY",
                                seq:               lColumn.seq,
                                columnId:          lColumn.columnId
                            };
                            lRecords.push( lRecord );
                        }
                        pModel.setData( lRecords );
                    } else {
                        lColumnId = pModel.insertNewRecord();
                    }
                    return lColumnId;
                },
                validate: function( pModel ) {
                    var lValid = true;
                    return lValid;
                },
                store: function( pModel ) {
                    var i,
                        lGroupby,
                        lComputeColumns = [], lComputeColumn,
                        lColumns = [], lColumn,
                        lColumnId, lIGColumn,
                        lRecord, lChange, lChanges = pModel.getChanges()
                    ;


                    lGroupby = pIg._currentReportSettings().views.groupby; // todo should this be using getGroupBy ?

                    if ( lGroupby ) {
                        lColumns = lGroupby.columns;
                        lComputeColumns = lGroupby.computeColumns;
                    }
                    if ( !lColumns ) { lColumns = []; }
                    if ( !lComputeColumns ) { lColumns = []; }

                    for ( i = 0; i < lChanges.length; i++ ) {
                        lChange = lChanges[ i ];
                        lRecord = lChange.record;

                        lColumnId = lRecord.columnId;
                        lIGColumn = pIg._getColumn( lColumnId );


                        if ( lRecord.type === "GROUPBY" ) {

                            lColumn = {
                                id:         lRecord.id,
                                seq:        parseFloat( lRecord.seq ),
                                columnType: COLUMN,
                                columnId:   lColumnId
                            };


                        } else if ( lRecord.type === "COMPUTE" ) {

                            lColumn = {
                                id: lRecord.id,
                                heading: {
                                    heading:   lRecord.headingHeading,
                                    label:     ( lRecord.headingLabel !== "" ? lRecord.headingLabel : lRecord.headingHeading),
                                    alignment: lRecord.headingAlign
                                },
                                layout: {
                                    columnAlignment: lRecord.layoutAlign
                                },
                                dataType: lIGColumn.filter.dataType,
                                function: {
                                    type: lRecord.function,
                                    columnId: lColumnId,
                                    columnType: COLUMN
                                }
                            };

                            if ( lRecord.layoutGroupId !== "" ) {
                                lColumn.layout.groupId = lRecord.layoutGroupId;
                                lColumn.layout.useGroupFor = lRecord.layoutUseGroupFor;
                            }
                            if ( lIGColumn.filter.dataType === DATE || lIGColumn.filter.dataType === NUMBER ) {
                                lColumn.formatMask = lRecord.formatMask;
                            }


                        }

                        if ( lChange.inserted ) {
                            delete lColumn.id;

                            lColumn.operation = OP_INSERT;
                            if ( lRecord.type === "GROUPBY" ) {
                                lColumn.isVisible = true;
                                lColumn.isFrozen = false;
                                lColumn.sort = {
                                    direction: ASC,
                                    nulls: LAST
                                };
                                lColumns.push( lColumn );
                            }
                            if ( lRecord.type === "COMPUTE" ) {
                                lColumn.isEnabled = true;   // TODO hard coded
                                lComputeColumns.push( lColumn );
                            }

                        } else if ( lChange.updated ) {

                            lColumn.operation = OP_UPDATE;

                            if ( lRecord.type === "GROUPBY" ) {
                                for ( i = 0; i < lColumns.length; i++ ) {
                                    if ( lColumns[ i ].id === lColumn.id ) {
                                        $.extend( lColumns[ i ], lColumn, true );
                                        break;
                                    }
                                }
                            } else {
                                for ( i = 0; i < lComputeColumns.length; i++ ) {
                                    if ( lComputeColumns[ i ].id === lColumn.id ) {
                                        $.extend( lComputeColumns[ i ], lColumn, true );
                                        break;
                                    }
                                }
                            }

                        } else if ( lChange.deleted ) {

                            if ( lRecord.type === "GROUPBY" ) {
                                for ( i = 0; i < lColumns.length; i++ ) {
                                    if ( lColumns[ i ].id === lColumn.id ) {
                                        lColumns[ i ].operation = DELETE;
                                        break;
                                    }
                                }
                            } else {
                                for ( i = 0; i < lComputeColumns.length; i++ ) {
                                    if ( lComputeColumns[ i ].id === lColumn.id ) {
                                        lColumns[ i ].operation = DELETE;
                                        break;
                                    }
                                }
                            }
                        }
                    }

                    if ( lGroupby ) {
                        lGroupby.computeColumns = lComputeColumns;
                        lGroupby.columns = lColumns;
                    } else {
                        lGroupby = {
                            computeColumns: lComputeColumns,
                            columns:        lColumns
                        };
                    }

                    pIg.setGroupBy( lGroupby );

                    // implement setColumnConfig and init before saving a GroupBy

                }
            });
        },
        initView: function( pOptions ) {
            // todo this may come from the base implementation. If there are minor diffs they could be conditional code in base object
            // if there are larger differences they can be factored out into view specific methods like is done for baseIconAndDetailView with viewConfig method
            console.log("*** GroupBy View Init");
            console.log( "todo: group by view init", pOptions );
        },
        setColumnConfig: function( pOptions ) {
            // todo this may come from the base implementation. If there are minor diffs they could be conditional code in base object
            // if there are larger differences they can be factored out into view specific methods like is done for baseIconAndDetailView with viewConfig method
            console.log( "group by set column config start");
            console.log( "todo: group by set column config", pOptions );
            this.specialColumns = {};
        }
    } ) );
    */

    //
    // Pivot View
    //
    /*
    registerView( $.extend( {}, baseGridAndPivotAndGroupByView, {
        title: getIGMessage( "PIVOT" ),
        label: getIGMessage( "PIVOT_VIEW" ),
        internalIdentifier: PIVOT,
        cssClass: C_IG_VIEW_PIVOT,
        icon: "icon-ig-pivot",
        supports: {
            edit: false,
            selection: true,
            highlight: true,
            controlBreak: true,
            aggregation: true
        },
        initView: function( pOptions ) {}
    }) ); */

    //
    // Detail View
    //
    registerView( $.extend( {}, baseIconAndDetailView, {
        title: getIGMessage( "DETAIL" ),
        label: getIGMessage( "DETAIL_VIEW" ),
        internalIdentifier: DETAIL,
        cssClass: C_IG_VIEW_DETAIL,
        icon: "icon-ig-details",
        supports: {
            // defaults:
            // edit: false,
            // selection: true,
            // cellSelection: false,
            // highlight: false,
            // controlBreak: false,
            // aggregation: false,
            // singleRowView: false,
            // configurableColumns: false,
            // filter: true,
            // changeRowsPerPage: true,
            // download: false
            sort: true
        },
        viewConfig: function( pOptions, pConfig ) {
            var lConfig = pOptions.igConfig,
                lDetail = lConfig.views.detail;

            pConfig.beforeTemplate = lDetail.beforeRows;
            pConfig.recordTemplate = lDetail.row;
            pConfig.afterTemplate = lDetail.afterRows;
            pConfig.useIconList = false;

            pConfig = $.extend( true, {}, lConfig.defaultDetailViewOptions, pConfig );

            pConfig.fixedRowHeight = ifDefined( pConfig.fixedRowHeight, lConfig.appearance.useFixedRowHeight );

            return pConfig;
        },
        focus: function() {
            this.view$.find( ":focusable" ).first().trigger( "focus" );
        }
    }) );

    //
    // Chart View
    //
    registerView( {
        title: getIGMessage( "CHART" ),
        label: getIGMessage( "CHART_VIEW" ),
        internalIdentifier: CHART,
        cssClass: C_IG_VIEW_CHART,
        icon: "icon-ig-chart",
        supports: {
            // defaults:
            // edit: false,
            // cellSelection: false,
            // highlight: false,
            // controlBreak: false,
            // aggregation: false,
            // singleRowView: false,
            // configurableColumns: false,
            // filter: true,
            // download: false
            totalRows: false,
            selection: false,
            sort: false,    // sort configured as part of chart dialog
            changeRowsPerPage: false
        },
        initDialog: function( pIg ) {
            var lColumn, i, lFirstColumn,
                lNumberFunctionOptions = [],
                lColumnOptions = [],
                lNumColumnOptions = [],
                lNumDateColumnOptions = [],
                lSelectMessage = getIGMessage( M_SELECT ),
                lColumns = pIg.options.config.columns;

            function addAggregates( pAggregateArray ) {
                pAggregateArray.forEach( function( object ) {
                    if ( !pIg.options.config.unsupported.chartFunctions.includes( object.value ) ) {
                        lNumberFunctionOptions.push( object );
                    }
                } );
            }

            // Determine options for column select list
            lColumnOptions.push({
                value: "",
                label: lSelectMessage
            });
            lNumColumnOptions.push({
                value: "",
                label: lSelectMessage
            });
            lNumDateColumnOptions.push({
                value: "",
                label: lSelectMessage
            });
            for ( i = 0; i < lColumns.length; i++ ) {
                lColumn = lColumns[ i ];
                if ( !lColumn.specialType && !lColumn.isHidden ) {
                    // Remember the first column, as we use it in the load callback to default for a new record
                    if ( !lFirstColumn ) {
                        lFirstColumn = lColumn;
                    }
                    if ( lColumn.features.sort ) {
                        lColumnOptions.push( {
                            value: lColumn.id,
                            label: pIg._getColumnLabel( lColumn.id )
                        } );
                    }
                    if ( lColumn.dataType === NUMBER ) {
                        lNumColumnOptions.push( {
                            value: lColumn.id,
                            label: pIg._getColumnLabel( lColumn.id )
                        } );
                    }
                    if ( lColumn.dataType === NUMBER || lColumn.dataType === DATE ) {
                        lNumDateColumnOptions.push( {
                            value: lColumn.id,
                            label: pIg._getColumnLabel( lColumn.id )
                        } );
                    }
                }
            }

            // Determine options for aggregate select list
            addAggregates( [
                {
                    value: "",
                    label: getIGMessage( M_SELECT )
                }, {
                    value: AGGREGATEFUNCS.CNT,
                    label: getIGMessage( AGGREGATEFUNCS.CNT )
                }, {
                    value: AGGREGATEFUNCS.CNT_DIST,
                    label: getIGMessage( AGGREGATEFUNCS.CNT_DIST )
                }, {
                    value: AGGREGATEFUNCS.APPR_CNT_DIST,
                    label: getIGMessage( AGGREGATEFUNCS.APPR_CNT_DIST )
                }, {
                    value: AGGREGATEFUNCS.MIN,
                    label: getIGMessage( AGGREGATEFUNCS.MIN )
                }, {
                    value: AGGREGATEFUNCS.MAX,
                    label: getIGMessage( AGGREGATEFUNCS.MAX )
                }, {
                    value: AGGREGATEFUNCS.SUM,
                    label: getIGMessage( AGGREGATEFUNCS.SUM )
                }, {
                    value: AGGREGATEFUNCS.AVG,
                    label: getIGMessage( AGGREGATEFUNCS.AVG )
                }
            ] );

            this.dialog$ = pIg._createDialog( "chart", function( renderItem ) {
                renderItem( ICON_LIST, {
                    id: "CH_TYPE",
                    iconOnly: false,
                    options: [
                        { value: AREA,  label: getIGMessage( "AREA" ), iconCssClasses: "icon-region-chart-area" },
                        { value: BAR, label: getIGMessage( "BAR" ) , iconCssClasses: "icon-region-chart-bar" },
                        { value: BUBBLE, label: getIGMessage( "BUBBLE" ) , iconCssClasses: "icon-region-chart-bubble" },
                        { value: DONUT, label: getIGMessage( "DONUT" ) , iconCssClasses: "icon-region-chart-donut" },
                        { value: FUNNEL, label: getIGMessage( "FUNNEL" ) , iconCssClasses: "icon-region-chart-funnel" },
                        { value: LINE, label: getIGMessage( "LINE" ) , iconCssClasses: "icon-region-chart-line" },
                        { value: LINE_WITH_AREA, label: getIGMessage( "LINE_WITH_AREA" ) , iconCssClasses: "icon-region-chart-line-area" },
                        { value: PIE, label: getIGMessage( "PIE" ) , iconCssClasses: "icon-region-chart-pie" },
                        { value: POLAR, label: getIGMessage( "POLAR" ) , iconCssClasses: "icon-region-chart-polar" },
                        { value: RADAR, label: getIGMessage( "RADAR" ) , iconCssClasses: "icon-region-chart-radar" },
                        { value: RANGE, label: getIGMessage( "RANGE" ) , iconCssClasses: "icon-region-chart-range-bar" },
                        { value: SCATTER, label: getIGMessage( "SCATTER" ) , iconCssClasses: "icon-region-chart-scatter" },
                        { value: STOCK, label: getIGMessage( "STOCK" ) , iconCssClasses: "icon-region-chart-stock" }
                    ]
                });

                renderItem( SELECT, {
                    id: "CH_ORIENTATION",
                    options: [ {
                        value: VERTICAL,
                        label: getIGMessage( "VERTICAL" )
                    },{
                        value: HORIZONTAL,
                        label: getIGMessage( "HORIZONTAL" )
                    }
                    ]
                });

                renderItem( SELECT, {
                    id: "CH_LABEL_COLUMN",
                    options: lColumnOptions
                });

                renderItem( SELECT, {
                    id: "CH_VALUE_COLUMN",
                    options: lNumColumnOptions
                });

                renderItem( SELECT, {
                    id: "CH_VALUE_FUNCTION",
                    options: lNumberFunctionOptions
                });

                renderItem( SELECT, {
                    id: "CH_X_COLUMN",
                    options: lNumDateColumnOptions
                });

                renderItem( SELECT, {
                    id: "CH_X_FUNCTION",
                    options: lNumberFunctionOptions  //Must handle dates too
                });

                renderItem( SELECT, {
                    id: "CH_Y_COLUMN",
                    options: lNumColumnOptions
                });

                renderItem( SELECT, {
                    id: "CH_Y_FUNCTION",
                    options: lNumberFunctionOptions
                });

                renderItem( SELECT, {
                    id: "CH_Z_COLUMN",
                    options: lNumColumnOptions
                });

                renderItem( SELECT, {
                    id: "CH_Z_FUNCTION",
                    options: lNumberFunctionOptions
                });

                renderItem( SELECT, {
                    id: "CH_OPEN_COLUMN",
                    options: lNumColumnOptions
                });

                renderItem( SELECT, {
                    id: "CH_OPEN_FUNCTION",
                    options: lNumberFunctionOptions
                });

                renderItem( SELECT, {
                    id: "CH_CLOSE_COLUMN",
                    options: lNumColumnOptions
                });

                renderItem( SELECT, {
                    id: "CH_CLOSE_FUNCTION",
                    options: lNumberFunctionOptions
                });

                renderItem( SELECT, {
                    id: "CH_HIGH_COLUMN",
                    options: lNumColumnOptions
                });

                renderItem( SELECT, {
                    id: "CH_HIGH_FUNCTION",
                    options: lNumberFunctionOptions
                });

                renderItem( SELECT, {
                    id: "CH_LOW_COLUMN",
                    options: lNumColumnOptions
                });

                renderItem( SELECT, {
                    id: "CH_LOW_FUNCTION",
                    options: lNumberFunctionOptions
                });

                renderItem( SELECT, {
                    id: "CH_VOLUME_COLUMN",
                    options: lNumColumnOptions
                });

                renderItem( SELECT, {
                    id: "CH_VOLUME_FUNCTION",
                    options: lNumberFunctionOptions
                });

                renderItem( SELECT, {
                    id: "CH_TARGET_COLUMN",
                    options: lNumColumnOptions
                });

                renderItem( SELECT, {
                    id: "CH_TARGET_FUNCTION",
                    options: lNumberFunctionOptions
                });


                renderItem( SELECT, {
                    id: "CH_SERIES_COLUMN",
                    options: lColumnOptions
                });

                renderItem( SELECT, {
                    id: "CH_STACK",
                    options: [ {
                        value: OFF,
                        label: getIGMessage( "OFF" )
                    },{
                        value: ON,
                        label: getIGMessage( "ON" )
                    }
                    ]
                });

                renderItem( SELECT, {
                    id: "CH_SORT_BY",
                    options: []
                });

                pIg._renderSortControls( renderItem, "CH_SORT_" );

                renderItem( TEXT, {
                    id: "CH_AXIS_LABEL_TITLE",
                    maxChars: 255
                });

                renderItem( TEXT, {
                    id: "CH_AXIS_VALUE_TITLE",
                    maxChars: 255
                });

                renderItem( TEXT, {
                    id: "CH_AXIS_VALUE_DECIMAL"
                });
            }, {
                viewDialog: true,
                width: 750,
                height: 450,
                titleKey: "CHART",
                modelOptions: {
                    fields: {
                        id: {
                            canHide: false,
                            hidden: true,
                            seq: 0
                        },
                        type: {
                            label: "TYPE",
                            elementId: "CH_TYPE",
                            seq: 10,
                            defaultValue: BAR
                        },
                        orientationId: {
                            label: "ORIENTATION",
                            elementId: "CH_ORIENTATION",
                            seq: 20,
                            fieldColSpan: 7,
                            defaultValue: VERTICAL
                        },
                        labelColumnId: {
                            label: "LABEL_COLUMN",
                            elementId: "CH_LABEL_COLUMN",
                            seq: 30,
                            fieldColSpan: 7,
                            defaultValue: ""
                        },
                        valueColumnId: {
                            label: "VALUE_COLUMN",
                            elementId: "CH_VALUE_COLUMN",
                            seq: 40,
                            fieldColSpan: 7,
                            defaultValue: ""
                        },
                        valueFunctionId: {
                            label: "AGGREGATION",
                            elementId: "CH_VALUE_FUNCTION",
                            seq: 45,
                            fieldColSpan: 5,
                            defaultValue: ""
                        },
                        xColumnId: {
                            label: "X_COLUMN",
                            elementId: "CH_X_COLUMN",
                            seq: 50,
                            fieldColSpan: 7,
                            defaultValue: ""
                        },
                        xFunctionId: {
                            label: "AGGREGATION",
                            elementId: "CH_X_FUNCTION",
                            seq: 55,
                            fieldColSpan: 5,
                            defaultValue: ""
                        },
                        yColumnId: {
                            label: "Y_COLUMN",
                            elementId: "CH_Y_COLUMN",
                            seq: 60,
                            fieldColSpan: 7,
                            defaultValue: ""
                        },
                        yFunctionId: {
                            label: "AGGREGATION",
                            elementId: "CH_Y_FUNCTION",
                            seq: 65,
                            fieldColSpan: 5,
                            defaultValue: ""
                        },
                        openColumnId: {
                            label: "OPEN_COLUMN",
                            elementId: "CH_OPEN_COLUMN",
                            seq: 70,
                            fieldColSpan: 7,
                            defaultValue: ""
                        },
                        openFunctionId: {
                            label: "AGGREGATION",
                            elementId: "CH_OPEN_FUNCTION",
                            seq: 75,
                            fieldColSpan: 5,
                            defaultValue: ""
                        },
                        closeColumnId: {
                            label: "CLOSE_COLUMN",
                            elementId: "CH_CLOSE_COLUMN",
                            seq: 80,
                            fieldColSpan: 7,
                            defaultValue: ""
                        },
                        closeFunctionId: {
                            label: "AGGREGATION",
                            elementId: "CH_CLOSE_FUNCTION",
                            seq: 85,
                            fieldColSpan: 5,
                            defaultValue: ""
                        },
                        highColumnId: {
                            label: "HIGH_COLUMN",
                            elementId: "CH_HIGH_COLUMN",
                            seq: 90,
                            fieldColSpan: 7,
                            defaultValue: ""
                        },
                        highFunctionId: {
                            label: "AGGREGATION",
                            elementId: "CH_HIGH_FUNCTION",
                            seq: 95,
                            fieldColSpan: 5,
                            defaultValue: ""
                        },
                        lowColumnId: {
                            label: "LOW_COLUMN",
                            elementId: "CH_LOW_COLUMN",
                            seq: 100,
                            fieldColSpan: 7,
                            defaultValue: ""
                        },
                        lowFunctionId: {
                            label: "AGGREGATION",
                            elementId: "CH_LOW_FUNCTION",
                            seq: 105,
                            fieldColSpan: 5,
                            defaultValue: ""
                        },
                        volumeColumnId: {
                            label: "VOLUME_COLUMN",
                            elementId: "CH_VOLUME_COLUMN",
                            seq: 110,
                            fieldColSpan: 7,
                            defaultValue: ""
                        },
                        volumeFunctionId: {
                            label: "AGGREGATION",
                            elementId: "CH_VOLUME_FUNCTION",
                            seq: 115,
                            fieldColSpan: 5,
                            defaultValue: ""
                        },
                        targetColumnId: {
                            label: "TARGET_COLUMN",
                            elementId: "CH_TARGET_COLUMN",
                            seq: 120,
                            fieldColSpan: 7,
                            defaultValue: ""
                        },
                        targetFunctionId: {
                            label: "AGGREGATION",
                            elementId: "CH_TARGET_FUNCTION",
                            seq: 125,
                            fieldColSpan: 5,
                            defaultValue: ""
                        },
                        zColumnId: {
                            label: "Z_COLUMN",
                            elementId: "CH_Z_COLUMN",
                            seq: 130,
                            fieldColSpan: 7,
                            defaultValue: ""
                        },
                        zFunctionId: {
                            label: "AGGREGATION",
                            elementId: "CH_Z_FUNCTION",
                            seq: 135,
                            fieldColSpan: 5,
                            defaultValue: ""
                        },
                        seriesColumnId: {
                            label: "SERIES_COLUMN",
                            elementId: "CH_SERIES_COLUMN",
                            seq: 140,
                            fieldColSpan: 7,
                            defaultValue: ""
                        },
                        stackId: {
                            label: "STACK",
                            elementId: "CH_STACK",
                            seq: 143,
                            fieldColSpan: 5,
                            defaultValue: OFF
                        },
                        sortBy: {
                            label: "SORT_BY",
                            elementId: "CH_SORT_BY",
                            seq: 145,
                            fieldColSpan: 7,
                            defaultValue: getIGMessage( "LABEL_COLUMN" )
                        },
                        sortDirection: {
                            label: "DIRECTION",
                            elementId: "CH_SORT_DIRECTION",
                            seq: 147,
                            fieldColSpan: 3,
                            defaultValue: ASC
                        },
                        sortNulls: {
                            label: "NULLS",
                            elementId: "CH_SORT_NULLS",
                            seq: 149,
                            fieldColSpan: 2,
                            defaultValue: LAST
                        },
                        axisLabelTitle: {
                            label: "AXIS_LABEL_TITLE",
                            elementId: "CH_AXIS_LABEL_TITLE",
                            seq: 150,
                            fieldColSpan: 7
                        },
                        axisValueTitle: {
                            label: "AXIS_VALUE_TITLE",
                            elementId: "CH_AXIS_VALUE_TITLE",
                            seq: 170,
                            fieldColSpan: 7
                        },
                        axisValueDecimal: {
                            label: "AXIS_VALUE_DECIMAL",
                            elementId: "CH_AXIS_VALUE_DECIMAL",
                            seq: 180,
                            fieldColSpan: 3
                        }
                    }
                },
                init: function( pModel, pNav$, pRecordView$ ) {
                    var lLineAreaFields, lPolarRadarFields,
                        lSortByOptions = {},
                        lType$ = pIg._getElement( "CH_TYPE" ),
                        lOrientation$ = pIg._getElement( "CH_ORIENTATION" ),
                        lLabelColumn$ = pIg._getElement( "CH_LABEL_COLUMN" ),
                        lValueColumn$ = pIg._getElement( "CH_VALUE_COLUMN" ),
                        lXColumn$ = pIg._getElement( "CH_X_COLUMN" ),
                        lYColumn$ = pIg._getElement( "CH_Y_COLUMN" ),
                        lZColumn$ = pIg._getElement( "CH_Z_COLUMN" ),
                        lOpenColumn$ = pIg._getElement( "CH_OPEN_COLUMN" ),
                        lCloseColumn$ = pIg._getElement( "CH_CLOSE_COLUMN" ),
                        lHighColumn$ = pIg._getElement( "CH_HIGH_COLUMN" ),
                        lLowColumn$ = pIg._getElement( "CH_LOW_COLUMN" ),
                        lVolumeColumn$ = pIg._getElement( "CH_VOLUME_COLUMN" ),
                        lTargetColumn$ = pIg._getElement( "CH_TARGET_COLUMN" ),
                        lSeriesColumn$ = pIg._getElement( "CH_SERIES_COLUMN" ),
                        lStack$ = pIg._getElement( "CH_STACK" ),
                        lAxisLabelTitle$ = pIg._getElement( "CH_AXIS_LABEL_TITLE" ),
                        lAxisValueTitle$ = pIg._getElement( "CH_AXIS_VALUE_TITLE" ),
                        lAxisValueDecimal$ = pIg._getElement( "CH_AXIS_VALUE_DECIMAL"),
                        lValueFunction$ = pIg._getElement( "CH_VALUE_FUNCTION" ),
                        lXFunction$ = pIg._getElement( "CH_X_FUNCTION" ),
                        lYFunction$ = pIg._getElement( "CH_Y_FUNCTION" ),
                        lZFunction$ = pIg._getElement( "CH_Z_FUNCTION" ),
                        lOpenFunction$ = pIg._getElement( "CH_OPEN_FUNCTION" ),
                        lCloseFunction$ = pIg._getElement( "CH_CLOSE_FUNCTION" ),
                        lHighFunction$ = pIg._getElement( "CH_HIGH_FUNCTION" ),
                        lLowFunction$ = pIg._getElement( "CH_LOW_FUNCTION" ),
                        lVolumeFunction$ = pIg._getElement( "CH_VOLUME_FUNCTION" ),
                        lTargetFunction$ = pIg._getElement( "CH_TARGET_FUNCTION"),
                        lSortBy$ = pIg._getElement( "CH_SORT_BY"),
                        lSortDirection$ = pIg._getElement( "CH_SORT_DIRECTION"),
                        lSortNulls$ = pIg._getElement( "CH_SORT_NULLS"),
                        lSortByVal = lSortBy$.val();

                    // implicit in lSortByOptions out lSortBy$
                    function updateSortBy() {
                        for ( const [pValue, pKey] of Object.entries( lSortByOptions ) ) {
                            lSortBy$.append( $( M_EMPTY_OPTION )
                                .attr( "value", pValue ).text( pKey ) );
                        }
                    }

                    function typeChanged() {
                        const lType = lType$.val();

                        hideFields( [lOrientation$, lLabelColumn$, lValueColumn$, lXColumn$, lYColumn$, lZColumn$,
                                    lOpenColumn$, lCloseColumn$, lHighColumn$, lLowColumn$, lVolumeColumn$, lTargetColumn$,
                                    lSeriesColumn$, lStack$, lAxisLabelTitle$, lAxisValueTitle$, lAxisValueDecimal$,
                                    lValueFunction$,lXFunction$, lYFunction$, lZFunction$,
                                    lOpenFunction$, lCloseFunction$, lHighFunction$, lLowFunction$,
                                    lVolumeFunction$, lTargetFunction$, lSortBy$, lSortDirection$, lSortNulls$] );
                        columnChanged();

                        lLineAreaFields = [ lOrientation$, lLabelColumn$, lValueColumn$, lSeriesColumn$, lStack$,
                            lValueFunction$, lAxisLabelTitle$, lAxisValueTitle$, lAxisValueDecimal$,
                            lSortBy$, lSortDirection$, lSortNulls$];

                        lPolarRadarFields = [ lLabelColumn$, lValueColumn$, lValueFunction$,
                            lSortBy$, lSortDirection$, lSortNulls$];

                        switch ( lType ) {
                            case AREA:
                                showFields( lLineAreaFields );

                                setFieldsRequired( [lLabelColumn$, lValueColumn$], true );
                                setFieldsRequired( [lXColumn$, lYColumn$, lZColumn$, lOpenColumn$, lCloseColumn$,
                                            lHighColumn$, lLowColumn$], false );

                                // Update the DOM
                                lSortBy$.empty();
                                lSortByOptions = {};
                                lSortByOptions[ SORTBY.LABEL ] = getIGMessage( "LABEL_COLUMN" );
                                lSortByOptions[ SORTBY.VALUE ] = getIGMessage( "VALUE_COLUMN" );
                                updateSortBy();
                                break;
                            case BAR:
                                showFields( [ lOrientation$, lLabelColumn$, lValueColumn$, lZColumn$, lSeriesColumn$, lStack$,
                                            lValueFunction$, lZFunction$, lAxisLabelTitle$, lAxisValueTitle$, lAxisValueDecimal$,
                                            lSortBy$, lSortDirection$, lSortNulls$] );

                                setFieldsRequired( [lLabelColumn$, lValueColumn$], true );
                                setFieldsRequired( [lXColumn$, lYColumn$, lZColumn$, lOpenColumn$, lCloseColumn$,
                                            lHighColumn$, lLowColumn$], false );

                                // Update the DOM - ensure currently saved value is stored to local variable
                                lSortByVal = lSortBy$.val();
                                lSortBy$.empty();
                                lSortByOptions = {};
                                lSortByOptions[ SORTBY.LABEL ] = getIGMessage( "LABEL_COLUMN" );
                                lSortByOptions[ SORTBY.VALUE ] = getIGMessage( "VALUE_COLUMN" );
                                lSortByOptions[ SORTBY.Z ] = getIGMessage( "Z_COLUMN" );
                                updateSortBy();
                                if ( lSortByVal !== null || lSortByVal !== "" ) {
                                    lSortBy$.val( lSortByVal );
                                }
                                break;
                            case BUBBLE:
                                showFields( [ lLabelColumn$, lXColumn$, lYColumn$, lZColumn$,
                                            lXFunction$, lYFunction$, lZFunction$,
                                            lAxisLabelTitle$, lAxisValueTitle$, lAxisValueDecimal$,
                                            lSortBy$, lSortDirection$, lSortNulls$] );

                                setFieldsRequired( [lLabelColumn$, lXColumn$, lYColumn$, lZColumn$], true );
                                setFieldsRequired( [lValueColumn$, lOpenColumn$, lCloseColumn$,
                                            lHighColumn$, lLowColumn$], false );

                                // Update the DOM
                                lSortByVal = lSortBy$.val();
                                lSortBy$.empty();
                                lSortByOptions = {};
                                lSortByOptions[ SORTBY.LABEL ] = getIGMessage( "LABEL_COLUMN" );
                                lSortByOptions[ SORTBY.X ] = getIGMessage( "X_COLUMN" );
                                lSortByOptions[ SORTBY.Y ] = getIGMessage( "Y_COLUMN" );
                                lSortByOptions[ SORTBY.Z ] = getIGMessage( "Z_COLUMN" );
                                updateSortBy();
                                if ( lSortByVal !== null || lSortByVal !== "" ) {
                                    lSortBy$.val( lSortByVal );
                                }
                                break;
                            case DONUT:
                                showFields( [lLabelColumn$, lValueColumn$, lValueFunction$, lSortBy$, lSortDirection$,
                                            lSortNulls$, lAxisValueDecimal$] );

                                setFieldsRequired( [lLabelColumn$, lValueColumn$], true );
                                setFieldsRequired( [lXColumn$, lYColumn$, lZColumn$, lOpenColumn$, lCloseColumn$,
                                            lHighColumn$, lLowColumn$], false );

                                // Update the DOM
                                lSortByVal = lSortBy$.val();
                                lSortBy$.empty();
                                lSortByOptions = {};
                                lSortByOptions[ SORTBY.LABEL ] = getIGMessage( "LABEL_COLUMN" );
                                lSortByOptions[ SORTBY.VALUE ] = getIGMessage( "VALUE_COLUMN" );
                                updateSortBy();
                                if ( lSortByVal !== null || lSortByVal !== "" ) {
                                    lSortBy$.val( lSortByVal );
                                }
                                break;
                            case FUNNEL:
                                showFields( [ lOrientation$, lLabelColumn$, lValueColumn$, lTargetColumn$,
                                            lValueFunction$, lTargetFunction$,
                                            lSortBy$, lSortDirection$, lSortNulls$] );

                                setFieldsRequired( [lLabelColumn$, lValueColumn$], true );
                                setFieldsRequired( [lXColumn$, lYColumn$, lZColumn$, lOpenColumn$, lCloseColumn$,
                                            lHighColumn$, lLowColumn$], false );

                                // Update the DOM
                                lSortByVal = lSortBy$.val();
                                lSortBy$.empty();
                                lSortByOptions = {};
                                lSortByOptions[ SORTBY.LABEL ] = getIGMessage( "LABEL_COLUMN" );
                                lSortByOptions[ SORTBY.VALUE ] = getIGMessage( "VALUE_COLUMN" );
                                lSortByOptions[ SORTBY.TARGET ] = getIGMessage( "TARGET_COLUMN" );
                                updateSortBy();
                                if ( lSortByVal !== null || lSortByVal !== "" ) {
                                    lSortBy$.val( lSortByVal );
                                }
                                break;
                            case LINE:
                                showFields( lLineAreaFields );

                                setFieldsRequired( [lLabelColumn$, lValueColumn$], true );
                                setFieldsRequired( [lXColumn$, lYColumn$, lZColumn$, lOpenColumn$, lCloseColumn$,
                                            lHighColumn$, lLowColumn$], false );

                                // Update the DOM
                                lSortByVal = lSortBy$.val();
                                lSortBy$.empty();
                                lSortByOptions = {};
                                lSortByOptions[ SORTBY.LABEL ] = getIGMessage( "LABEL_COLUMN" );
                                lSortByOptions[ SORTBY.VALUE ] = getIGMessage( "VALUE_COLUMN" );
                                updateSortBy();
                                if ( lSortByVal !== null || lSortByVal !== "" ) {
                                    lSortBy$.val( lSortByVal );
                                }
                                break;
                            case LINE_WITH_AREA:
                                showFields( lLineAreaFields );

                                setFieldsRequired( [lLabelColumn$, lValueColumn$], true );
                                setFieldsRequired( [lXColumn$, lYColumn$, lZColumn$, lOpenColumn$, lCloseColumn$,
                                         lHighColumn$, lLowColumn$], false );

                                // Update the DOM
                                lSortByVal = lSortBy$.val();
                                lSortBy$.empty();
                                lSortByOptions = {};
                                lSortByOptions[ SORTBY.LABEL ] = getIGMessage( "LABEL_COLUMN" );
                                lSortByOptions[ SORTBY.VALUE ] = getIGMessage( "VALUE_COLUMN" );
                                updateSortBy();
                                if ( lSortByVal !== null || lSortByVal !== "" ) {
                                    lSortBy$.val( lSortByVal );
                                }
                                break;
                            case PIE:
                                showFields( [ lLabelColumn$, lValueColumn$,
                                    lValueFunction$, lAxisValueDecimal$,
                                    lSortBy$, lSortDirection$, lSortNulls$] );

                                setFieldsRequired( [lLabelColumn$, lValueColumn$], true );
                                setFieldsRequired( [lXColumn$, lYColumn$, lZColumn$, lOpenColumn$, lCloseColumn$,
                                            lHighColumn$, lLowColumn$], false );
                                break;
                            case POLAR:
                                showFields( lPolarRadarFields );

                                setFieldsRequired( [lLabelColumn$, lValueColumn$], true );
                                setFieldsRequired( [lXColumn$, lYColumn$, lZColumn$, lOpenColumn$, lCloseColumn$,
                                            lHighColumn$, lLowColumn$], false );

                                // Update the DOM
                                lSortByVal = lSortBy$.val();
                                lSortBy$.empty();
                                lSortByOptions = {};
                                lSortByOptions[ SORTBY.LABEL ] = getIGMessage( "LABEL_COLUMN" );
                                lSortByOptions[ SORTBY.VALUE ] = getIGMessage( "VALUE_COLUMN" );
                                updateSortBy();
                                if ( lSortByVal !== null || lSortByVal !== "" ) {
                                    lSortBy$.val( lSortByVal );
                                }
                                break;
                            case RADAR:
                                showFields( lPolarRadarFields );

                                setFieldsRequired( [lLabelColumn$, lValueColumn$], true );
                                setFieldsRequired( [lXColumn$, lYColumn$, lZColumn$, lOpenColumn$, lCloseColumn$,
                                            lHighColumn$, lLowColumn$], false );

                                // Update the DOM
                                lSortByVal = lSortBy$.val();
                                lSortBy$.empty();
                                lSortByOptions = {};
                                lSortByOptions[ SORTBY.LABEL ] = getIGMessage( "LABEL_COLUMN" );
                                lSortByOptions[ SORTBY.VALUE ] = getIGMessage( "VALUE_COLUMN" );
                                updateSortBy();
                                if ( lSortByVal !== null || lSortByVal !== "" ) {
                                    lSortBy$.val( lSortByVal );
                                }
                                break;
                            case RANGE:
                                showFields( [lOrientation$, lLabelColumn$, lHighColumn$, lLowColumn$, lZColumn$,
                                            lSeriesColumn$, lHighFunction$, lLowFunction$, lZFunction$,
                                            lAxisLabelTitle$, lAxisValueTitle$, lAxisValueDecimal$,
                                            lSortBy$, lSortDirection$, lSortNulls$] );

                                setFieldsRequired( [lHighColumn$, lLowColumn$], true );
                                setFieldsRequired( [lLabelColumn$, lValueColumn$,
                                            lXColumn$, lYColumn$, lZColumn$, lOpenColumn$, lCloseColumn$], false );

                                // Update the DOM
                                lSortByVal = lSortBy$.val();
                                lSortBy$.empty();
                                lSortByOptions = {};
                                lSortByOptions[ SORTBY.LABEL ] = getIGMessage( "LABEL_COLUMN" );
                                lSortByOptions[ SORTBY.HIGH ] = getIGMessage( "HIGH_COLUMN" );
                                lSortByOptions[ SORTBY.LOW ] = getIGMessage( "LOW_COLUMN" );
                                lSortByOptions[ SORTBY.Z ] = getIGMessage( "Z_COLUMN" );
                                updateSortBy();
                                if ( lSortByVal !== null || lSortByVal !== "" ) {
                                    lSortBy$.val( lSortByVal );
                                }
                                break;
                            case STOCK:
                                showFields( [lLabelColumn$, lOpenColumn$, lCloseColumn$, lHighColumn$, lLowColumn$,
                                            lVolumeColumn$, lOpenFunction$, lCloseFunction$, lHighFunction$,
                                            lLowFunction$, lVolumeFunction$] );

                                setFieldsRequired( [lLabelColumn$, lOpenColumn$, lCloseColumn$, lHighColumn$, lLowColumn$], true );
                                setFieldsRequired( [lValueColumn$, lXColumn$, lYColumn$, lZColumn$], false );

                                break;
                            case SCATTER:
                                showFields( [lLabelColumn$, lXColumn$, lYColumn$, lSeriesColumn$, lXFunction$,
                                            lYFunction$, lAxisLabelTitle$, lAxisValueTitle$, lAxisValueDecimal$,
                                            lSortBy$, lSortDirection$, lSortNulls$] );

                                setFieldsRequired( [lLabelColumn$, lXColumn$, lYColumn$], true );
                                setFieldsRequired( [lValueColumn$, lZColumn$, lOpenColumn$, lCloseColumn$, lHighColumn$, lLowColumn$], false );

                                // Update the DOM
                                lSortByVal = lSortBy$.val();
                                lSortBy$.empty();
                                lSortByOptions = {};
                                lSortByOptions[ SORTBY.LABEL ] = getIGMessage( "LABEL_COLUMN" );
                                lSortByOptions[ SORTBY.X ] = getIGMessage( "X_COLUMN" );
                                lSortByOptions[ SORTBY.Y ] = getIGMessage( "Y_COLUMN" );
                                updateSortBy();
                                if ( lSortByVal !== null || lSortByVal !== "" ) {
                                    lSortBy$.val( lSortByVal );
                                }
                                break;
                        }
                    }

                    function columnChanged() {
                        var lRecord = pRecordView$.recordView( "getRecord" );

                        function writeToModel( pField, pValue ) {
                            pModel.setValue( lRecord, pField, pValue );
                        }

                        // We need to explicitly set columnId in the model on change, so that it shows up in the nav panel
                        writeToModel( "sortBy", lSortBy$.val() );
                        writeToModel( "sortDirection", lSortDirection$.val() );
                        writeToModel( "sortNulls", lSortNulls$.val() );
                        writeToModel( "orientationId", lOrientation$.val() );
                        writeToModel( "stackId", lStack$.val() );

                    }

                    lType$.on( EVENT_CHANGE, typeChanged );

                    //pRecordView$.on( "apexbeginrecordedit", typeChanged );
                    pRecordView$.on( "apexbeginrecordedit", function() {
                        var lVal = lType$.val();
                        initIconList( pIg._getId( "CH_TYPE" ), lVal );
                        typeChanged();
                    } );

                },
                load: function( pModel ) {

                    // Transform the chart metadata into the structure expected by the chart view's dialog model
                    var lColumnMappingType, lColumnMapping,
                        lChart = $.extend( {}, pIg.getChart() );

                    if ( lChart.axis ) {
                        if ( lChart.axis.label ) {
                            lChart.axisLabelTitle = lChart.axis.label;
                        }
                        if ( lChart.axis.value ) {
                            lChart.axisValueTitle = lChart.axis.value;
                        }
                        if ( lChart.axis.valueDecimalPlaces ) {
                            lChart.axisValueDecimal = lChart.axis.valueDecimalPlaces;
                        }
                        delete lChart.axis;
                    }

                    lChart.stackId = lChart.stack;
                    delete lChart.stack;

                    lChart.orientationId = lChart.orientation;
                    delete lChart.orientation;

                    // Transform the column mapping metadata into the structure expected by the chart view's dialog's model
                    for ( lColumnMappingType in lChart.chartColumns ) {
                        if ( hasOwnProperty( lChart.chartColumns, lColumnMappingType ) ) {

                            lColumnMapping = lChart.chartColumns[ lColumnMappingType ];
                            switch( lColumnMappingType ) {
                                case "LABEL":
                                    if ( lChart.type in { bar:1, bubble:1, area:1, funnel:1, pie:1, donut:1, polar:1, radar:1, line:1, lineWithArea:1, range:1, stock:1, scatter:1 } ) {
                                        lChart.labelColumnId = lColumnMapping.columnId;
                                        if ( lColumnMapping.sort ) {
                                            lChart.sortBy = "LABEL";
                                            lChart.sortDirection =  lColumnMapping.sort.direction;
                                            lChart.sortNulls = lColumnMapping.sort.nulls;
                                        }
                                    }
                                    break;
                                case "VALUE":
                                    lChart.valueColumnId = lColumnMapping.columnId;
                                    if ( lColumnMapping.function ) {
                                        lChart.valueFunctionId = lColumnMapping.function;
                                    }
                                    if ( lColumnMapping.sort ) {
                                        lChart.sortBy = "VALUE";
                                        lChart.sortDirection =  lColumnMapping.sort.direction;
                                        lChart.sortNulls = lColumnMapping.sort.nulls;
                                    }
                                    break;
                                case "X":
                                    lChart.xColumnId = lColumnMapping.columnId;
                                    if ( lColumnMapping.function ) {
                                        lChart.xFunctionId = lColumnMapping.function;
                                    }
                                    if ( lColumnMapping.sort ) {
                                        lChart.sortBy = "X";
                                        lChart.sortDirection =  lColumnMapping.sort.direction;
                                        lChart.sortNulls = lColumnMapping.sort.nulls;
                                    }
                                    break;
                                case "Y":
                                    lChart.yColumnId = lColumnMapping.columnId;
                                    if ( lColumnMapping.function ) {
                                        lChart.yFunctionId = lColumnMapping.function;
                                    }
                                    if ( lColumnMapping.sort ) {
                                        lChart.sortBy = "Y";
                                        lChart.sortDirection =  lColumnMapping.sort.direction;
                                        lChart.sortNulls = lColumnMapping.sort.nulls;
                                    }
                                    break;
                                case "Z":
                                    lChart.zColumnId = lColumnMapping.columnId;
                                    if ( lColumnMapping.function ) {
                                        lChart.zFunctionId = lColumnMapping.function;
                                    }
                                    if ( lColumnMapping.sort ) {
                                        lChart.sortBy = "Z";
                                        lChart.sortDirection =  lColumnMapping.sort.direction;
                                        lChart.sortNulls = lColumnMapping.sort.nulls;
                                    }
                                    break;
                                case "OPEN":
                                    lChart.openColumnId = lColumnMapping.columnId;
                                    if ( lColumnMapping.function ) {
                                        lChart.openFunctionId = lColumnMapping.function;
                                    }
                                    break;
                                case "CLOSE":
                                    lChart.closeColumnId = lColumnMapping.columnId;
                                    if ( lColumnMapping.function ) {
                                        lChart.closeFunctionId = lColumnMapping.function;
                                    }
                                    break;
                                case "HIGH":
                                    lChart.highColumnId = lColumnMapping.columnId;
                                    if ( lColumnMapping.function ) {
                                        lChart.highFunctionId = lColumnMapping.function;
                                    }
                                    if ( lColumnMapping.sort ) {
                                        lChart.sortBy = "HIGH";
                                        lChart.sortDirection =  lColumnMapping.sort.direction;
                                        lChart.sortNulls = lColumnMapping.sort.nulls;
                                    }
                                    break;
                                case "LOW":
                                    lChart.lowColumnId = lColumnMapping.columnId;
                                    if ( lColumnMapping.function ) {
                                        lChart.lowFunctionId = lColumnMapping.function;
                                    }
                                    if ( lColumnMapping.sort ) {
                                        lChart.sortBy = "LOW";
                                        lChart.sortDirection =  lColumnMapping.sort.direction;
                                        lChart.sortNulls = lColumnMapping.sort.nulls;
                                    }
                                    break;
                                case "VOLUME":
                                    lChart.volumeColumnId = lColumnMapping.columnId;
                                    if ( lColumnMapping.function ) {
                                        lChart.volumeFunctionId = lColumnMapping.function;
                                    }
                                    break;
                                case "TARGET":
                                    lChart.targetColumnId = lColumnMapping.columnId;
                                    if ( lColumnMapping.function ) {
                                        lChart.targetFunctionId = lColumnMapping;
                                    }
                                    if ( lColumnMapping.sort ) {
                                        lChart.sortBy = "TARGET";
                                        lChart.sortDirection =  lColumnMapping.sort.direction;
                                        lChart.sortNulls = lColumnMapping.sort.nulls;
                                    }
                                    break;
                                case "SERIES_NAME":
                                    lChart.seriesColumnId = lColumnMapping.columnId;
                                    break;
                            }
                        }
                    }
                    // Remove chart attributes not used by dialog
                    delete lChart.chartColumns;

                    pModel.setData( lChart );

                },
                validate: function( pModel, valid, error ) {
                    var lMapping,
                        lValid = true,
                        lRecord = pModel.getRecord();

                    if ( lRecord.sortBy ) {
                        // Identify column mapping for chosen sort by
                        lMapping = lRecord.sortBy.toLowerCase() + "ColumnId";

                        if ( hasOwnProperty( lRecord, lMapping ) ) {
                            valid( lRecord.sortBy, "sortBy" );
                        } else {
                            error( lRecord.sortBy, "sortBy", lang.formatMessage( "APEX.IG.INVALID_SORT_BY", lRecord.sortBy ) );
                            lValid = false;
                        }
                    }

                    return lValid;
                },
                store: function( pModel ) {
                    var lLabel, lValue, lXvalue, lYvalue, lZvalue, lOpen, lClose, lHigh, lLow, lVolume, lTarget, lSeries,
                        lChart = $.extend( {}, pModel.getRecord() );

                    // Clear chart axis object
                    lChart.axis = {};
                    // Axis Label
                    lChart.axis = {
                        label:   lChart.axisLabelTitle,
                        value:   lChart.axisValueTitle,
                        valueDecimalPlaces: lChart.axisValueDecimal
                    };

                    delete lChart.axisLabelTitle;
                    delete lChart.axisValueTitle;
                    delete lChart.axisValueDecimal;

                    lChart.stack = lChart.stackId;
                    lChart.orientation = lChart.orientationId;
                    // Clear chartColumns object
                    lChart.chartColumns = {};

                    // Populate an object for each mapping type
                    // Pie/Area/Bar/Donut/Polar/Radar/Line/Line with Area./Range Chart
                    if ( lChart.type in { bar:1, bubble:1, area:1, funnel:1, pie:1, donut:1, polar:1, radar:1, line:1, lineWithArea:1, range:1, stock:1, scatter:1 } ) {
                        // LABEL
                        if ( lChart.labelColumnId ) {
                            lLabel = {
                                columnId:   lChart.labelColumnId,
                                columnType: COLUMN
                            };

                            if ( lChart.sortBy === SORTBY.LABEL ) {
                                lLabel.sort = {
                                    order:     1,
                                    direction: lChart.sortDirection,
                                    nulls:     lChart.sortNulls
                                };
                            }
                            lChart.chartColumns.LABEL = lLabel;
                        }
                    } else {
                        delete lChart.chartColumns.LABEL;
                    }
                    // Pie/Area/Bar/Donut/Polar/Radar/Line/Line with Area Chart
                    if ( lChart.type in { bar:1, area:1, funnel:1, pie:1, donut:1, polar:1, radar:1, line:1, lineWithArea:1 } ) {
                        // VALUE
                        if ( lChart.valueColumnId ) {
                            lValue = {
                                columnId:   lChart.valueColumnId,
                                columnType: COLUMN
                            };

                            if ( lChart.sortBy === SORTBY.VALUE ) {
                                lValue.sort = {
                                    order: 1,
                                    direction: lChart.sortDirection,
                                    nulls:     lChart.sortNulls
                                };
                            }

                            if ( lChart.valueFunctionId ) {
                                lValue.function = lChart.valueFunctionId;
                            }
                            lChart.chartColumns.VALUE = lValue;
                        }
                    } else {
                        delete lChart.chartColumns.VALUE;
                    }
                    // Bubble or Scatter Chart
                    if ( lChart.type in { bubble:1, scatter:1 } ) {
                        // X Value
                        if ( lChart.xColumnId ) {
                            lXvalue = {
                                columnId:   lChart.xColumnId,
                                columnType: COLUMN
                            };

                            if ( lChart.sortBy === 'X' ) {
                                lXvalue.sort = {
                                    order: 1,
                                    direction: lChart.sortDirection,
                                    nulls:     lChart.sortNulls
                                };
                            }
                            if ( lChart.xFunctionId ) {
                                lXvalue.function = lChart.xFunctionId;
                            }
                            lChart.chartColumns.X = lXvalue;
                        }
                        // Y Value
                        if ( lChart.yColumnId ) {
                            lYvalue = {
                                columnId:   lChart.yColumnId,
                                columnType: COLUMN
                            };
                            if ( lChart.sortBy === 'Y' ) {
                                lYvalue.sort = {
                                    order: 1,
                                    direction: lChart.sortDirection,
                                    nulls:     lChart.sortNulls
                                };
                            }
                            if ( lChart.yFunctionId ) {
                                lYvalue.function = lChart.yFunctionId;
                            }
                            lChart.chartColumns.Y = lYvalue;
                        }
                    } else {
                        delete lChart.chartColumns.X;
                        delete lChart.chartColumns.Y;
                    }
                    // Bar or Bubble Chart
                    if ( lChart.type in { bar:1, bubble:1 } ) {
                        // Z Value
                        if ( lChart.zColumnId ) {
                            lZvalue = {
                                columnId:   lChart.zColumnId,
                                columnType: COLUMN
                            };
                            if ( lChart.sortBy === 'Z'  ) {
                                lZvalue.sort = {
                                    order: 1,
                                    direction: lChart.sortDirection,
                                    nulls:     lChart.sortNulls
                                };
                            }
                            if ( lChart.zFunctionId ) {
                                lZvalue.function = lChart.zFunctionId;
                            }
                            lChart.chartColumns.Z = lZvalue;
                        }
                    } else {
                        delete lChart.chartColumns.Z;
                    }
                    // Stock Chart
                    if ( lChart.type === STOCK ) {
                        // Open Value
                        if ( lChart.openColumnId ) {
                            lOpen = {
                                columnId:   lChart.openColumnId,
                                columnType: COLUMN
                            };
                            if ( lChart.openFunctionId ) {
                                lOpen.function = lChart.openFunctionId;
                            }
                            lChart.chartColumns.OPEN = lOpen;
                        }
                        // Close Value
                        if ( lChart.closeColumnId ) {
                            lClose = {
                                columnId:   lChart.closeColumnId,
                                columnType: COLUMN
                            };

                            if ( lChart.closeFunctionId ) {
                                lClose.function = lChart.closeFunctionId;
                            }
                            lChart.chartColumns.CLOSE = lClose;
                        }
                        // Volume Value
                        if ( lChart.volumeColumnId ) {
                            lVolume = {
                                columnId:   lChart.volumeColumnId,
                                columnType: COLUMN
                            };

                            if ( lChart.volumeFunctionId ) {
                                lVolume.function = lChart.volumeFunctionId;
                            }

                            lChart.chartColumns.VOLUME = lVolume;
                        }
                    } else {
                        delete lChart.chartColumns.OPEN;
                        delete lChart.chartColumns.CLOSE;
                        delete lChart.chartColumns.VOLUME;
                    }
                    // Range or Stock Chart
                    if ( lChart.type in { range:1, stock:1 } ) {
                        // High Value
                        if ( lChart.highColumnId ) {

                            lHigh = {
                                columnId:   lChart.highColumnId,
                                columnType: COLUMN
                            };

                            if ( lChart.sortBy === 'HIGH' ) {
                                lHigh.sort = {
                                    order: 1,
                                    direction: lChart.sortDirection,
                                    nulls:     lChart.sortNulls
                                };
                            }
                            if ( lChart.highFunctionId ) {
                                lHigh.function = lChart.highFunctionId;
                            }
                            lChart.chartColumns.HIGH = lHigh;
                        }
                        // Low Value
                        if ( lChart.lowColumnId ) {
                            lLow = {
                                columnId:   lChart.lowColumnId,
                                columnType: COLUMN
                            };
                            if ( lChart.sortBy === 'LOW' ) {
                                lLow.sort = {
                                    order: 1,
                                    direction: lChart.sortDirection,
                                    nulls:     lChart.sortNulls
                                };
                            }
                            if ( lChart.lowFunctionId ) {
                                lLow.function = lChart.lowFunctionId;
                            }
                            lChart.chartColumns.LOW = lLow;
                        }
                    } else {
                        delete lChart.chartColumns.HIGH;
                        delete lChart.chartColumns.LOW;
                    }
                    // Funnel Chart
                    if ( lChart.type === FUNNEL ) {
                        // Target Value
                        if ( lChart.targetColumnId ) {
                            lTarget = {
                                columnId:   lChart.targetColumnId,
                                columnType: COLUMN
                            };
                            if ( lChart.sortBy === 'TARGET' ) {
                                lTarget.sort = {
                                    order: 1,
                                    direction: lChart.sortDirection,
                                    nulls:     lChart.sortNulls
                                };
                            }
                            if ( lChart.targetFunctionId ) {
                                lTarget.function = lChart.targetFunctionId;
                            }
                            lChart.chartColumns.TARGET = lTarget;
                        }
                    } else {
                        delete lChart.chartColumns.TARGET;
                    }
                    // Series Value
                    if ( lChart.seriesColumnId ) {
                        lSeries = {
                            columnId: lChart.seriesColumnId,
                            columnType: COLUMN
                        };
                        lChart.chartColumns.SERIES_NAME = lSeries;
                    }

                    delete lChart.sortBy;
                    delete lChart.sortDirection;
                    delete lChart.sortNulls;
                    delete lChart.stackId;
                    delete lChart.orientationId;
                    delete lChart.xColumnId;
                    delete lChart.xFunctionId;
                    delete lChart.yFunctionId;
                    delete lChart.yColumnId;
                    delete lChart.valueColumnId;
                    delete lChart.valueFunctionId;
                    delete lChart.labelColumnId;
                    delete lChart.zColumnId;
                    delete lChart.zFunctionId;
                    delete lChart.openColumnId;
                    delete lChart.openFunctionId;
                    delete lChart.closeColumnId;
                    delete lChart.closeFunctionId;
                    delete lChart.volumeColumnId;
                    delete lChart.volumeFunctionId;
                    delete lChart.highColumnId;
                    delete lChart.highFunctionId;
                    delete lChart.lowColumnId;
                    delete lChart.lowFunctionId;
                    delete lChart.targetColumnId;
                    delete lChart.targetFunctionId;
                    delete lChart.seriesColumnId;

                    pIg.setChart( lChart );

                }
            });
        },
        setColumnConfig: function( pOptions ) {
            var lColumn, lColumnId, lChartColumn, lBaseColumn,
                lModelColumn = {},
                lModelColumns = {},
                lBaseModelColumns = pOptions.baseModelColumns,
                lIg = pOptions.ig,
                lConfig = pOptions.igConfig,
                lChartColumns = pOptions.currentReportSettings.views.chart.chartColumns,
                lColumnMappings = [ "CLOSE", "HIGH", "LABEL", "LOW", "OPEN", "SERIES_NAME", "TARGET", "VALUE", "VOLUME", "X", "Y", "Z" ],
                lMapping,
                lCount = 0;

            // Loop through chart column mappings - to ensure order matches that expected on server
            for ( lMapping = 0; lMapping < lColumnMappings.length; lMapping++ ) {
                lChartColumn = lColumnMappings [ lMapping ];
                if ( hasOwnProperty( lChartColumns, lChartColumn ) ) {

                    lModelColumn = $.extend( true, {}, lBaseModelColumns[ lChartColumns[ lChartColumn ].columnId ] );
                    lModelColumn.seq = lCount;
                    lModelColumn.index = lCount;  // Index must match order of fields, for retrieval of value from model data
                    lModelColumns[ lChartColumn ] = lModelColumn;
                    lCount += 1;
                }
            }
            // A detail model must include a column/field definition for the foreign key relationship in order for it
            // to extract the parentItems from the master model to send to the server.
            if ( lConfig.parentRegionStaticId ) {
                for ( lColumnId in lBaseModelColumns ) {
                    if ( hasOwnProperty( lBaseModelColumns, lColumnId ) ) {
                        lBaseColumn = lBaseModelColumns[ lColumnId ];
                        if ( lBaseColumn.parentField ) {
                            lColumn = lIg._getColumn( lColumnId );
                            lModelColumn = $.extend( true, {}, lBaseColumn );
                            lModelColumn.seq = lCount;
                            lModelColumn.virtual = true;
                            delete lModelColumn.index;
                            lModelColumns[ lColumn.name ] = lModelColumn;
                            lCount += 1;
                        }
                    }
                }
            }
            // set view's member variables
            this.modelColumns = lModelColumns;
            this.specialColumns = {};

        },
        initView: function ( pOptions ) {
            var lIg = pOptions.ig,
                self = this,
                lChart = lIg._currentReportSettings().views.chart,
                lConfig = pOptions.igConfig,
                lTemplate = [],
                lGroupsTemplate, lDefaultOptions, lChartOptions, chart$, lItems, lColumn, lYAxisColumn, lXaxisLabel, lYaxisLabel, lLabelKey, lSortOrder,
                lTimeAxisType = 'disabled';

            /* todo think about showing a loading indicator while waiting for require to load stuff
             * Most of the time JET stuff loads quickly but delay is noticable over a slow network making it look like the chart view is doing nothing
             * Consider if loadingIndicator option ore something like it should be used here
             */
            require( [ 'ojs/ojcore', 'ojs/ojchart', 'ojs/ojvalidation' ], function( oj ) {

                // Get JET Converter for DATE/TIMESTAMP/NUMBER Columns
                function getConverter ( pColumnId ) {

                    var lFormatMask,
                        lConverterType = oj.ConverterFactory.CONVERTER_TYPE_NUMBER,
                        lColumn = lIg._getColumn ( pColumnId );

                    if ( lColumn.filter.dataType === DATE || lColumn.filter.dataType === TIMESTAMP || lColumn.filter.dataType === TIMESTAMP_TZ || lColumn.filter.dataType === TIMESTAMP_LTZ ) {
                        lConverterType = oj.ConverterFactory.CONVERTER_TYPE_DATETIME;
                        lFormatMask = getDateFormatMask ( lColumn );
                    } else if ( lColumn.filter.dataType === NUMBER ) {
                        lFormatMask = getNumFormatMask ( lColumn );
                    }
                    return (lFormatMask) ? oj.Validation.converterFactory( lConverterType ).createConverter( lFormatMask ) : {};
                }

                // Get Format mask for DATE/TIMESTAMP columns
                function getDateFormatMask( pColumn ) {
                    let lFormatMask = pColumn.appearance.formatMask;

                    if ( lFormatMask ) {
                        CHART_FORMATMASKS_DATE.forEach( v => {
                            if ( v.value === lFormatMask ) {
                                lFormatMask = v.label;
                            }
                        } );
                    } else {
                        lFormatMask = { formatType: 'date', dateFormat: 'medium' };
                    }
                    return lFormatMask;
                }

                // Get Format mask for NUMBER columns
                function getNumFormatMask( pColumn ) {
                    let lFormatMask = pColumn.appearance.formatExample.trim(),
                        lDecimalPlaces;

                    if ( lChart.axis ) {
                        if ( lChart.axis.valueDecimalPlaces ) {
                            lDecimalPlaces = lChart.axis.valueDecimalPlaces;
                        }
                    }

                    if ( lFormatMask ) {
                        CHART_FORMATMASKS_NUM.forEach( v => {
                            if ( v.value === lFormatMask ) {
                                lFormatMask = v.label;
                            }
                        } );
                    } else {
                        // Apply Decimal Places defined in chart dialog where no format mask applied to column
                        lFormatMask = { style: 'decimal', maximumFractionDigits: ( lDecimalPlaces ? lDecimalPlaces : 2 ) };
                    }
                    return lFormatMask;
                }

                // Enable Time Axis Type for DATE/TIMESTAMP columns
                if ( lChart.chartColumns.LABEL.columnId ) {
                    lColumn = lIg._getColumn ( lChart.chartColumns.LABEL.columnId );
                    if ( lColumn.filter.dataType === DATE || lColumn.filter.dataType === TIMESTAMP || lColumn.filter.dataType === TIMESTAMP_TZ || lColumn.filter.dataType === TIMESTAMP_LTZ ) {
                        lTimeAxisType = 'enabled';
                    }
                }

                lDefaultOptions = {
                    legend: { rendered: AUTO, position: "end" },
                    orientation: lChart.orientation,
                    stack: lChart.stack,
                    animationOnDisplay: AUTO,
                    animationOnDataChange: AUTO,
                    hoverBehavior: "dim",
                    groups: [],
                    series: [],
                    valueFormats: [],
                    timeAxisType: lTimeAxisType,
                    translations: {
                        labelNoData: lConfig.text.noDataFound
                    }
                };

                switch( lChart.type ) {
                    case AREA:
                        lChartOptions = $.extend(
                            {},
                            lDefaultOptions,
                            {
                                type: lChart.type,
                                legend: ( lChart.chartColumns.SERIES_NAME ) ? { rendered: AUTO }: { rendered: OFF },
                                coordinateSystem: CARTESIAN,
                                valueFormats: [
                                    {type: LABEL, converter: getConverter ( lChart.chartColumns.LABEL.columnId )},
                                    {type: 'y', converter: getConverter ( lChart.chartColumns.VALUE.columnId )} ],
                                xAxis: {},
                                yAxis: {}
                            });
                        break;

                    case BAR:
                        lChartOptions = $.extend(
                            {},
                            lDefaultOptions,
                            {
                                type: lChart.type,
                                legend: ( lChart.chartColumns.SERIES_NAME ) ? { rendered: AUTO }: {rendered: OFF},
                                coordinateSystem: CARTESIAN,
                                valueFormats: [
                                    {type: LABEL, converter: getConverter ( lChart.chartColumns.LABEL.columnId )},
                                    {type: 'y', converter: getConverter ( lChart.chartColumns.VALUE.columnId )} ],
                                xAxis: {},
                                yAxis: {}
                            });
                        break;

                    case BUBBLE:
                        lChartOptions = $.extend(
                            {},
                            lDefaultOptions,
                            {
                                type: lChart.type,
                                legend: { rendered: OFF },
                                coordinateSystem: CARTESIAN,
                                xAxis: {},
                                yAxis: {}
                            });
                        break;
                    case DONUT:
                        lChartOptions = $.extend(
                            {},
                            lDefaultOptions,{
                                type: PIE,
                                styleDefaults: {
                                    pieInnerRadius: 0.5
                                },
                                legend: { rendered: AUTO },
                                hideAndShowBehavior: "withRescale",
                                valueFormats: [
                                    {type: LABEL, converter: getConverter ( lChart.chartColumns.LABEL.columnId )},
                                    {type: VALUE, converter: getConverter ( lChart.chartColumns.VALUE.columnId )} ]
                            });
                        break;
                    case PIE:
                        lChartOptions = $.extend({},
                            lDefaultOptions,{
                                type: lChart.type,
                                styleDefaults: {
                                    pieInnerRadius: 0
                                },
                                legend: { rendered: AUTO },
                                hideAndShowBehavior: "withRescale",
                                valueFormats: [
                                    {type: LABEL, converter: getConverter ( lChart.chartColumns.LABEL.columnId )},
                                    {type: VALUE, converter: getConverter ( lChart.chartColumns.VALUE.columnId )} ]
                            });
                        break;
                    case FUNNEL:
                        lChartOptions = $.extend({},
                            lDefaultOptions,{
                                type: lChart.type,
                                legend: { rendered: AUTO },
                                valueFormats: [
                                    {type: LABEL, converter: getConverter ( lChart.chartColumns.LABEL.columnId )},
                                    {type: VALUE, converter: getConverter ( lChart.chartColumns.VALUE.columnId )} ]
                            });

                        if ( lChart.chartColumns.TARGET ) {
                            lChartOptions.valueFormats.push(
                                        {type: 'target', converter: getConverter ( lChart.chartColumns.TARGET.columnId )} );
                        }
                        break;

                    case LINE:
                        lChartOptions = $.extend({},
                            lDefaultOptions,{
                                type: lChart.type,
                                legend: ( lChart.chartColumns.SERIES_NAME ) ? { rendered: AUTO }: { rendered: OFF },
                                coordinateSystem: CARTESIAN,
                                valueFormats: [
                                    {type: LABEL, converter: getConverter ( lChart.chartColumns.LABEL.columnId )},
                                    {type: VALUE, converter: getConverter ( lChart.chartColumns.VALUE.columnId )} ],
                                xAxis: {},
                                yAxis: {}
                            });
                        break;

                    case LINE_WITH_AREA:
                        lChartOptions = $.extend({},
                            lDefaultOptions,{
                                type: lChart.type,
                                legend: ( lChart.chartColumns.SERIES_NAME) ? { rendered: AUTO }: { rendered: OFF },
                                coordinateSystem: CARTESIAN,
                                valueFormats: [
                                    {type: LABEL, converter: getConverter ( lChart.chartColumns.LABEL.columnId )},
                                    {type: VALUE, converter: getConverter ( lChart.chartColumns.VALUE.columnId )} ],
                                xAxis: {},
                                yAxis: {}
                            } );

                        break;

                    case POLAR:
                        lChartOptions = $.extend({},
                            lDefaultOptions,{
                                type: BAR,
                                coordinateSystem: lChart.type,
                                legend: { rendered: OFF },
                                valueFormats: [
                                    {type: LABEL, converter: getConverter ( lChart.chartColumns.LABEL.columnId )},
                                    {type: VALUE, converter: getConverter ( lChart.chartColumns.VALUE.columnId )} ],
                                polarGridShape: "circle",
                                stack: ON
                            });
                        break;

                    case RADAR:
                        lChartOptions = $.extend({},
                            lDefaultOptions,{
                                type: AREA,
                                coordinateSystem: POLAR,
                                legend: { rendered: OFF },
                                valueFormats: [
                                    {type: LABEL, converter: getConverter ( lChart.chartColumns.LABEL.columnId )},
                                    {type: VALUE, converter: getConverter ( lChart.chartColumns.VALUE.columnId )} ],
                                polarGridShape: "polygon",
                                stack: ON
                            } );
                        break;

                    case RANGE:
                        lChartOptions = $.extend({},
                            lDefaultOptions,{
                                type: BAR,
                                legend: ( lChart.chartColumns.SERIES_NAME ) ? { rendered: AUTO }: { rendered: OFF },
                                valueFormats: [
                                    {type: LABEL, converter: getConverter ( lChart.chartColumns.LABEL.columnId )},
                                    {type: 'high', converter: getConverter ( lChart.chartColumns.HIGH.columnId )},
                                    {type: 'low', converter: getConverter ( lChart.chartColumns.LOW.columnId )}],
                                xAxis: {},
                                yAxis: {}
                            });
                        break;

                    case SCATTER:
                        lChartOptions = $.extend({},
                            lDefaultOptions,{
                                type: lChart.type,
                                legend: ( lChart.chartColumns.SERIES_NAME ) ? { rendered: AUTO }: { rendered: OFF },
                                coordinateSystem: CARTESIAN,
                                valueFormats: [
                                    {type: LABEL, converter: getConverter ( lChart.chartColumns.LABEL.columnId )},
                                    {type: 'x', converter: getConverter ( lChart.chartColumns.X.columnId )},
                                    {type: 'y', converter: getConverter ( lChart.chartColumns.Y.columnId )}],
                                xAxis: {},
                                yAxis: {}
                            } );
                        break;

                    case STOCK:
                        lChartOptions = $.extend({},
                            lDefaultOptions,{
                                type: lChart.type,
                                zoomAndScroll: 'delayed',
                                initialZooming: 'first',
                                legend: { rendered: AUTO},
                                dataCursor: ON,
                                dataCursorBehavior:'smooth',
                                valueFormats: [{type: LABEL, converter: getConverter ( lChart.chartColumns.LABEL.columnId )},
                                    {type: 'high', converter: getConverter ( lChart.chartColumns.HIGH.columnId )},
                                    {type: 'low', converter: getConverter ( lChart.chartColumns.LOW.columnId )},
                                    {type: 'open', converter: getConverter ( lChart.chartColumns.OPEN.columnId )},
                                    {type: 'close', converter: getConverter ( lChart.chartColumns.CLOSE.columnId )}],
                                xAxis: {},
                                yAxis: {}
                            } );

                        if ( lChart.chartColumns.VOLUME ) {
                            lChartOptions.valueFormats.push(
                                {type: 'volume', converter: getConverter ( lChart.chartColumns.VOLUME.columnId )} );
                        }

                        lChartOptions.series.type = 'candlestick';
                        break;
                }

                // Axes Information - only apply to chart types supporting axes
                if ( lChart.type in { area:1, bar:1, bubble:1, line:1, lineWithArea:1, range:1, stock:1, scatter:1 } ) {
                    switch ( lChart.type ) {
                        case STOCK:
                            lYAxisColumn = lChart.chartColumns.OPEN.columnId;
                            break;
                        case RANGE:
                            lYAxisColumn = lChart.chartColumns.HIGH.columnId;
                            break;
                        case SCATTER:
                            lYAxisColumn = lChart.chartColumns.X.columnId;
                            break;
                        case BUBBLE:
                            lYAxisColumn = lChart.chartColumns.X.columnId;
                            break;
                        default:
                            lYAxisColumn = lChart.chartColumns.VALUE.columnId;
                            break;
                    }

                    if ( lChart.axis ) {
                        if (lChart.axis.label) {
                            lXaxisLabel = lChart.axis.label;
                        }
                        if (lChart.axis.value) {
                            lYaxisLabel = lChart.axis.value;
                        }
                    }

                    lChartOptions.xAxis = {
                        title: lXaxisLabel,
                        baselineScaling:"zero",
                        majorTick: { rendered: ON },
                        minorTick: { rendered: OFF },
                        tickLabel: { rendered: ON, converter: getConverter ( lChart.chartColumns.LABEL.columnId ), scaling: NONE},
                        position: AUTO,
                        rotation: OFF
                    };

                    lChartOptions.yAxis = {
                        title: lYaxisLabel,
                        baselineScaling: "zero",
                        position: (lChart.type === STOCK) ? "end" : AUTO,
                        majorTick: { rendered: ON },
                        minorTick: { rendered: OFF },
                        tickLabel: { rendered: ON, converter: getConverter ( lYAxisColumn ), scaling: NONE}
                    };
                }

                // Define Model Transform Template, based on chart type
                if ( lChart.type in { bar:1, area:1, polar:1, radar:1, range:1, line:1, lineWithArea:1, bubble:1, scatter:1, stock:1 } ) {

                    lGroupsTemplate =
                    {
                        path: "groups",
                        uniqueIndexField: "LABEL",
                        item: { name: "LABEL" }
                    };

                    switch ( lChart.type ) {
                        case BUBBLE:
                            lItems =
                            {
                                name: "LABEL",
                                x: "X",
                                y: "Y",
                                z: "Z",
                                labelPosition: "'none'"
                            };
                            break;
                        case SCATTER:
                            lItems =
                            {
                                name: "LABEL",
                                x: "X",
                                y: "Y",
                                labelPosition: "'none'"
                            };
                            break;
                        case STOCK:
                            lItems =
                            {
                                name: "LABEL",
                                open: "OPEN",
                                close: "CLOSE",
                                high: "HIGH",
                                low: "LOW",
                                volume: "VOLUME"
                            };
                            break;
                        case RANGE:
                            lItems =
                            {
                                name: "LABEL",
                                high: "HIGH",
                                low: "LOW",
                                labelPosition: "'none'"
                            };
                            break;
                        default:
                            lItems =
                            {
                                label: "VALUE",
                                value: "VALUE",
                                name: "LABEL",
                                labelPosition: "'none'"
                            };
                            break;
                    }

                    if ( lChart.chartColumns.SERIES_NAME ) {
                        lTemplate = [
                            lGroupsTemplate,
                            {
                                path: "series",
                                uniqueIndexField: "SERIES_NAME",
                                item: { name: "SERIES_NAME", displayInLegend: ON }
                            },
                            {
                                path: "series/[SERIES_NAME]/items",
                                item: lItems
                            }
                        ];
                    } else {

                        lTemplate = [
                            lGroupsTemplate,
                            {
                                path: "series/0/items",
                                item: lItems
                            }
                        ];
                    }

                }
                // Chart types that don't support groups attribute
                if ( lChart.type in { pie:1, donut:1, funnel:1 } ) {
                    lLabelKey = self.model.getFieldKey("LABEL");
                    lTemplate = [
                        {
                            path: "series",
                            uniqueIndexField: "LABEL",
                            //item: {name: "LABEL"}
                            item: function( pContext, pRecord ) {
                                return { name: "" + pRecord [ lLabelKey ], displayInLegend: ON };
                            }
                        },
                        {
                            path: "series/[LABEL]/items",
                            item: {
                                value: "VALUE",
                                targetValue: "TARGET"
                            }
                        }
                    ];
                }

                // Define sort order
                // Value sorting should only be used for pie charts, bar/line/area charts with one series, or stacked bar/area charts. Sorting will not apply when using a hierarchical group axis.
                if ( lChart.chartColumns.VALUE ) {
                    if ( lChart.chartColumns.VALUE.sort ) {
                        switch ( lChart.chartColumns.VALUE.sort.direction ) {
                            case 'asc':
                                lSortOrder = 'ascending';
                                break;
                            case 'desc':
                                lSortOrder = 'descending';
                                break;
                        }
                    }
                } else if ( lChart.chartColumns.LABEL.sort ) {
                    lSortOrder = 'label-' + lChart.chartColumns.LABEL.sort.direction;
                } else {
                    if ( lChart.chartColumns.SERIES_NAME ) {
                        lSortOrder = 'label-asc';
                    }
                    lSortOrder = 'off';
                }
                lChartOptions.sorting = lSortOrder;

                self._dataTransformOptions = {
                    showNullAs: lConfig.appearance.showNullValue,
                    offset: 0,
                    template: lTemplate
                };
                self._chartOptions = lChartOptions;

                self._updateChartData();
                chart$ = self.view$.ojChart( lChartOptions );
                chart$.css( {
                    "max-width": "100%"
                });

                self._subscribeModel(); // to register the model observer

                if ( lConfig.lazyLoad || self.model.getTotalRecords() < 0 ) {
                    self.refresh();
                }
            });

        },
        _updateChartData: function() {
            var C_EXCLUDE_CHARTS = [ "pie", "funnel", "scatter", "bubble", "stock", "polar", "radar" ],
                data;

            data = this.model.transform( this._dataTransformOptions, this._chartOptions );

            // Densification of multi-series chart
            if ( !C_EXCLUDE_CHARTS.includes( data.type ) ) {
                if ( data.series.length > 1 && ( data.timeAxisType !== "mixedFrequency" && data.timeAxisType !== "skipGaps" ) ) {
                    widgetUtil.chartSortArray( data.groups, data.sorting );

                    for ( var seriesIdx = 0; seriesIdx < data.series.length; seriesIdx++ ) {
                        widgetUtil.chartFillGaps( data.groups, data.series[ seriesIdx ].items, data.sorting, true );
                    }
                }
            }
        },
        _subscribeModel: function() {
            var self = this,
                chart$ = this.view$;

            // Setup model handler to update the chart on the model's refresh event (bug #25421265)
            if ( this._observedModel ) {
                this._observedModel.unSubscribe( this._observerId );
            }
            this._observedModel = this.model;
            this._observerId = this.model.subscribe({
                viewId: chart$[0].id,
                onChange: function( pChangeType ) {
                    if ( pChangeType === REFRESH ) {
                        self.refresh();
                    }
                },
                progressView: chart$
            });
        },
        refresh: function() {
            var self = this;

            if ( this.view$.hasClass( "oj-chart" ) ) {
                // if not visible don't fetch anything
                if ( this.view$[0].offsetParent === null ) {
                    this._pendingRefresh = true;
                    return;
                }
                this._pendingRefresh = false;
                this.model.fetch( 0, function ( err ) {
                    if ( err ) {
                        // not sure what to do
                        debug.warn( "No data fetched for chart" );
                    }
                    self._updateChartData();
                    self.resize(); // this will refresh the chart causing the new data to display
                } );
            }
        },
        resize: function () {
            // Refresh the view
            if ( this.view$.hasClass( "oj-chart" ) ) {
                if ( this._pendingRefresh ) {
                    this.refresh();
                    return;
                }
                this.view$.ojChart( REFRESH );
            }
        },
        destroyView: function () {

            // Unsubscribe from model changes (bug #26665592)
            if ( this.model ) {
                this.model.unSubscribe( this.view$[0].id );
            }

            // Destroy view
            this.view$.ojChart( DESTROY );

        },
        setModelName: function( /* pModelName */ ) {
            this._subscribeModel();
            if ( this.view$.hasClass( "oj-chart" ) ) {
                if ( this.model.getTotalRecords() < 0 ) {
                    this.refresh();
                } else {
                    this._updateChartData();
                    this.resize(); // this will refresh the chart causing the new data to display
                }
            }
        },
        setNoDataMessage: function ( pMessage ) {
            var chart$ = this.view$;

            if ( chart$.hasClass( "oj-chart" ) ) {
                chart$.ojChart( OPTION, "translations.labelNoData", pMessage );
            }
        }
    } );

 })( apex.jQuery, apex.util, apex.debug, apex.server, apex.lang, apex.actions, apex.region, apex.theme, apex.message, apex.item, apex.model, apex.widget.util, apex.locale, apex.navigation, apex.date );
