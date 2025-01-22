/*!
 Copyright (c) 2015, 2024, Oracle and/or its affiliates.
*/
/**
 * @uiwidget grid
 * @since 5.1
 * @extends {tableModelViewBase}
 *
 * @borrows contextMenuMixin#contextMenuAction as grid#contextMenuAction
 * @borrows contextMenuMixin#contextMenu as grid#contextMenu
 * @borrows contextMenuMixin#contextMenuId as grid#contextMenuId
 *
 * @classdesc
 * <p>A UI widget that implements a navigable data grid that supports selection and editing.
 * Derived from {@link tableModelViewBase}.
 * It follows the DHTML Style Guide and WAI-ARIA design pattern for a data grid with these differences:<p>
 * <ul>
 * <li>In row selection mode the Shift and Ctrl modifiers work like a list control. In cell selection mode
 * discontinuous ranges are not supported so Shift-F8 is not supported.</li>
 * <li>In edit/actionable mode you can tab out of the grid at the beginning or end.</li>
 * </ul>
 *
 * <p>The markup expected by this widget is simply an empty <code class="prettyprint">&lt;div></code>.
 * The grid displays and optionally edits table shaped data stored in an APEX data {@link model}.
 * If the grid is editable then the grid <code class="prettyprint">&lt;div></code> must be
 * proceeded or followed by a <code class="prettyprint">&lt;div></code> with class <code class="prettyprint">u-vh</code>
 * (to visually hide the contents) that contains each of the rendered column items.
 * Each column item needs to be wrapped in a <code class="prettyprint">&lt;div></code>
 * with class <code class="prettyprint">a-GV-columnItem</code>. The markup looks like this:</p>
 * <pre class="prettyprint"><code>    &lt;div class="u-vh" aria-hidden="true">
 *        &lt;div class="a-GV-columnItem">column item markup goes here&lt;/div>
 *        ...
 *    &lt;/div>
 * </code></pre>
 * <p>Only a single cell at a time is edited. The grid moves the column item in and out of the cells as needed.
 * Grid widget functional CSS takes care of hiding the column items off screen.</p>
 *
 * <div class="hw">
 * <h3 id="editing-section">Editing</h3>
 * <a class="bookmarkable-link" title="Bookmarkable Link" aria-label="Bookmark Editing" href="#editing-section"></a>
 * </div>
 * <p>The grid can be editable or not editable. This is controlled by the {@link grid#editable}
 * option. If not editable then no UI is provided to do any editing, however it
 * will still respond to any changes to the model data. When the grid
 * is editable it has two modes; navigation mode and editing mode. The distinction is mainly for the purpose of keyboard
 * behavior. In navigation mode keyboard keys move among the grid cells. In editing mode most keys are passed through
 * to the edit controls. Edit mode pertains to cell editing only. Other kinds of edits such as deleting rows is
 * possible as long as the grid is editable. The {@link grid#editable} option can be
 * changed after the grid is created provided
 * the necessary column items are available on the page. See the {@link model} documentation for how it can be used to
 * provide fine grained control over what kinds of edits are allowed. The column definition can specify columns that
 * are read-only. For a cell to be editable the grid must be editable, the row must be editable (as determined by the
 * model), the column configuration must include property <code class="prettyprint">elementId</code>
 * and property <code class="prettyprint">readonly</code> must not be true and the cell field metadata
 * must not have a checksum (<code class="prettyprint">ck</code>) property.</p>
 *
 * <p>Column Edit Items:<br>
 * When the grid is editable and a column can be edited, it is a column item that does the editing. Column items are
 * essentially the same as page items except they edit a column value rather than a page item.
 * See {@link grid#columns} option property <code class="prettyprint">elementId</code>.</p>
 *
 * <div class="hw">
 * <h3 id="selection-section">Selection</h3>
 * <a class="bookmarkable-link" title="Bookmarkable Link" aria-label="Bookmark Selection" href="#selection-section"></a>
 * </div>
 * <p>The grid supports both row and cell range selection.
 * For row selection the grid supports either single or multiple selection.
 * Rows can be selected even for grids that are not editable.
 * For multiple selection standard keyboard modifiers Shift and Ctrl are combined with arrow keys or mouse clicks
 * to select multiple rows. See the <a href="#keyboard-section">Keyboard End User Information</a> section for details.
 * In addition the {@link grid#rowHeaderCheckbox} option allows for checkbox style selection behavior.
 * If the user is interacting with touch the row header checkbox will be enabled automatically.
 * Column heading, column group heading, aggregate, and control break rows are never included in the selection.
 * </p>
 * <p>The selection state can be accessed with methods such as {@link grid#getSelectedRecords} and changed with methods
 * such as {@link grid#setSelectedRecords}. The {@link grid#selectionStateItem} option specifies an APEX page
 * item that will have its value updated to reflect the current selection.
 * </p>
 *
 * <div class="hw">
 * <h3 id="context-menus-section">Context Menus</h3>
 * <a class="bookmarkable-link" title="Bookmarkable Link" aria-label="Bookmark Context Menus" href="#context-menus-section"></a>
 * </div>
 * <p>The grid has easy integration with the {@link menu} widget to provide context menu support.
 * The {@link grid#contextMenu} option is used to provide a {@link menu} widget options object.
 * When the <code class="prettyprint">contextMenu</code> option is used the {@link menu#event:beforeOpen}
 * event/callback ui argument has these additional properties:</p>
 * <ul>
 * <li>menuElement: The menu jQuery object.</li>
 * <li>grid: This grid jQuery object.</li>
 * <li>selection: A jQuery object with the selected rows at the time the menu was opened.</li>
 * <li>selectedRecords: An array of the selected model records at the time the menu was opened. Only if {@link grid#selectCells} is false.</li>
 * <li>selectedRange: The range information returned by {@link grid#getSelectedRange}. Only if {@link grid#selectCells} is true.</li>
 * </ul>
 * <p>Also the {@link menu#event:afterClose} event/callback will automatically focus the grid if the menu action
 * didn't take the focus and the ui argument has these additional properties:
 * <ul>
 * <li>menuElement: The menu jQuery object.</li>
 * <li>grid: This grid jQuery object.</li>
 * </ul>
 *
 * <p>If using the <code class="prettyprint">contextMenu</code> option the {@link grid#contextMenuId}
 * option can be used to give the menu element an ID.
 * This is useful if other code must refer to the menu element or widget.</p>
 *
 * <p>You can reference an already existing {@link menu} widget by specifying the {@link grid#contextMenuId}
 * in place of the {@link grid#contextMenu} option.</p>
 *
 * <p>If for any reason you don't want to use the {@link menu} widget, the {@link grid#contextMenuAction} option
 * allows you to respond to mouse or keyboard interactions that typically result in a context menu.
 * Specifically Right Mouse click (via <code class="prettyprint">contextmenu</code> event),
 * Shift-F10 key (via <code class="prettyprint">keydown</code> event) and the Windows context menu key
 * (via <code class="prettyprint">contextmenu</code> event). The original event is passed to the
 * {@link grid#contextMenuAction} function.
 * The event object can be used to position the menu. If you implement your own menu it is best if you put focus
 * back on the grid using the {@link grid#focus} method when the menu closes (unless the menu action directs focus
 * elsewhere).</p>
 *
 * <p>Only one of {@link grid#contextMenuAction} and {@link grid#contextMenu} or {@link grid#contextMenuId}
 * can be specified.
 * The {@link grid#contextMenu} and {@link grid#contextMenuId} options can only be set when the grid is initialized
 * and it can't be changed. The {@link grid#contextMenuAction} cannot be set if the {@link grid#contextMenu}
 * or {@link grid#contextMenuId} options were given when the grid was created.</p>
 *
 * <div class="hw">
 * <h3 id="keyboard-section">Keyboard End User Information</h3>
 * <a class="bookmarkable-link" title="Bookmarkable Link" aria-label="Bookmark Keyboard End User Information" href="#keyboard-section"></a>
 * </div>
 * <table>
 * <caption>List of keyboard shortcuts</caption>
 * <thead>
 * <tr><th scope="col">Key</th><th scope="col">Action</th></tr>
 * </thead>
 * <tbody>
 * <tr><th scope="row">F2, Enter</th>            <td>In navigation mode and focus is on a cell, enters edit mode.</td></tr>
 * <tr><th scope="row">Escape</th>               <td>In edit mode, exits edit mode and returns to navigation mode.</td></tr>
 * <tr><th scope="row">Up Arrow</th>             <td>In navigation mode moves to the cell in the same column of the previous row.</td></tr>
 * <tr><th scope="row">Down Arrow</th>           <td>In navigation mode moves to the cell in the same column of the next row.</td></tr>
 * <tr><th scope="row">Left Arrow</th>           <td>In navigation mode or when focus is on a column header, moves to the previous cell in the row.</td></tr>
 * <tr><th scope="row">Right Arrow</th>          <td>In navigation mode or when focus is on a column header, moves to the next cell in the row.</td></tr>
 * <tr><th scope="row">Home</th>                 <td>In navigation mode or when focus is on a column header, moves to the first cell in the row.</td></tr>
 * <tr><th scope="row">End</th>                  <td>In navigation mode or when focus is on a column header, moves to the last cell in the row.</td></tr>
 * <tr><th scope="row">Ctrl+Home (Windows),
 * Option+Up Arrow (Mac)</th>                    <td>In navigation mode moves to the first cell in the report.</td></tr>
 * <tr><th scope="row">Ctrl+End (Windows),
 * Option+Down Arrow (Mac)</th>                  <td>In navigation mode moves to the last cell in the report.</td></tr>
 * <tr><th scope="row">Page Up</th>              <td>In navigation mode moves focus up one visible page of rows staying in the same column.</td></tr>
 * <tr><th scope="row">Page Down</th>            <td>In navigation mode moves focus down one visible page of rows staying in the same column.</td></tr>
 * <tr><th scope="row">Enter, Space</th>         <td>When focus is in a column header cell, activates the column header.</td></tr>
 * <tr><th scope="row">Shift+Enter</th>          <td>In edit mode moves to the cell in the same column of the previous row.</td></tr>
 * <tr><th scope="row">Enter</th>                <td>In edit mode moves to the cell in the same column of the next row.</td></tr>
 * <tr><th scope="row">Shift+Tab</th>            <td>In edit mode moves to the previous cell. If focus is in the first cell of the first row
 *                                               it will go to the previous tab stop before the grid. In navigation mode moves focus
 *                                               out of the grid to the previous tab stop before the grid.</td></tr>
 * <tr><th scope="row">Tab</th>                  <td>In edit mode moves to the next cell. If focus is in the last cell of the last row
 *                                               it will go to the next tab stop after the grid or if option {@link grid#autoAddRecord} is
 *                                               true it will insert a new row. In navigation mode moves focus out of the grid
 *                                               to the next tab stop after the grid. The next tab stop may be in the grid footer.</td></tr>
 * <tr><th scope="row">Insert</th>               <td>In navigation mode inserts a new record after the current focused row.</td></tr>
 * <tr><th scope="row">Delete</th>               <td>In navigation mode deletes the currently selected rows.</td></tr>
 * <tr><th scope="row">Alt+F1</th>               <td>In navigation mode display help on the current column if there is any.</td></tr>
 * <tr><th scope="row">Ctrl+A</th>               <td>In navigation mode selects all rows if allowed.</td></tr>
 * <tr><th scope="row">Alt+Up Arrow</th>         <td>With focus in column header cell will sort ascending by that column. Adding
 *                                               the Shift key modifier will add the column to the existing sorted columns.</td></tr>
 * <tr><th scope="row">Alt+Down Arrow</th>       <td>With focus in column header cell will sort descending by that column. Adding
 *                                               the Shift key modifier will add the column to the existing sorted columns.</td></tr>
 * <tr><th scope="row">Ctrl+Left Arrow</th>      <td>With focus in column header cell will decrease the width of the column.</td></tr>
 * <tr><th scope="row">Ctrl+Right Arrow</th>     <td>With focus in column header cell will increase the width of the column.</td></tr>
 * <tr><th scope="row">Shift+Left Arrow</th>     <td>With focus in column header or group header cell will move the column or group to the left.</td></tr>
 * <tr><th scope="row">Shift+Right Arrow</th>    <td>With focus in column header or group header cell will move the column or group to the right.</td></tr>
 *
 * </tbody>
 * </table>
 * <p>In navigation mode the Ctrl and Shift keys modify how the arrow keys and Space key affect the selection. In row
 * selection mode with multiple selection the Shift key extends the selection to include the new row. The Ctrl key
 * moves focus without changing the selection. The Space key add the currently focused row to the selection.
 * Ctrl+Space will toggle selection for the current row. In cell range selection mode the Shift key extends the
 * selection to include the new cell.</p>
 *
 * <div class="hw">
 * <h3 id="classes-section">CSS Classes</h3>
 * <a class="bookmarkable-link" title="Bookmarkable Link" aria-label="Bookmark CSS Classes" href="#classes-section"></a>
 * </div>
 * <table>
 * <caption>List of CSS Classes used by grid widget</caption>
 * <thead>
 * <tr><th scope="col">Class</th><th scope="col">Purpose</th></tr>
 * </thead>
 * <tbody>
 * <tr><th scope="row">a-GV</th>            <td>The root widget element.</td></tr>
 * <tr><th scope="row">a-GV-row</th>        <td>A grid row for data, aggregates, or headers but not a control
 *     break row.</td></tr>
 * <tr><th scope="row">a-GV-cell</th>       <td>A grid cell for data or aggregates.</td></tr>
 * <tr><th scope="row">a-GV-header</th>     <td>A grid cell for headers.</td></tr>
 * <tr><th scope="row">is-selected</th>     <td>A state class on selected grid rows or grid cells.</td></tr>
 * <tr><th scope="row">is-focused</th>      <td>A state class on the focused grid cell.</td></tr>
 * <tr><th scope="row">is-active</th>       <td>A state class on the grid cell that is currently active for
 *     editing.</td></tr>
 * <tr><th scope="row">is-deleted</th>      <td>A state class on deleted grid rows.</td></tr>
 * <tr><th scope="row">is-changed</th>      <td>A state class on changed grid cells.</td></tr>
 * <tr><th scope="row">is-updated</th>      <td>A state class on edited grid rows.</td></tr>
 * <tr><th scope="row">is-inserted</th>     <td>A state class on inserted grid rows.</td></tr>
 * <tr><th scope="row">is-error</th>        <td>A state class on grid cells or grid rows with errors.</td></tr>
 * <tr><th scope="row">is-warning</th>      <td>A state class on grid cells or grid rows with warnings.</td></tr>
 * <tr><th scope="row">is-readonly</th>     <td>A state class on grid cells or grid rows that are readonly.</td></tr>
 * </tbody>
 * </table>
 *
 * @desc Creates a grid widget.
 *
 * @param {Object} options A map of option-value pairs to set on the widget.
 * @example <caption>This example creates a very simple non-editable grid with just two columns; Id and Name.
 * Only the required options are given; all others will have their default value.
 * The element with id myGrid is an empty div.</caption>
 * var fieldDefinitions = {
 *     id: {
 *         index: 0,
 *         heading: "Id",
 *         seq: "1"
 *     },
 *     name: {
 *         index: 1,
 *         heading: "Name",
 *         seq: "2"
 *     }
 * };
 * var data = [
 *     ["1022", "Betty"],
 *     ["1023", "James"],
 *     ...
 * ];
 * apex.model.create( "myModel", {
 *     recordIsArray: true,
 *     fields: fieldDefinitions
 * }, data );
 * $( "#myGrid" ).grid( {
 *     modelName: "myModel",
 *     columns: [  fieldDefinitions ]
 * } );
 */
 /*
 * todo
 * - improve and document the keyboard behavior for expand/collapse the control break rows.
 * - Currently not visible Required columns or columns which are needed as parent for Cascading LOVs and which don't have
 *   a default value specified will automatically be displayed when switching into Edit Mode.
 * - "If a row is a parent row in a parent - child relationship, all child rows will automatically be marked for deletion too.
 *    Reverting the delete will also automatically revert the deletion of the child rows. In the child Interactive Grid, it's
 *    not possible to revert single deleted rows if the parent row is marked for deletion." Multiple models and grids are involved how is this coordinated?
 * - for inline edit items how to for example check the checkbox on click, drop down the select list on click, open the
 *   date picker/color picker on click.
 * - what if total width of all frozen columns [nearly] exceeds the client area width? This can happen because of
 *    browser window or container resize. Should columns automatically be unfrozen until there is enough room to scroll?
 * - scroll pagination; with no total, interaction with control breaks
 *
 * This widget requires some functional CSS.
 */

/*
 * Future possibilities:
 * - support type to go into edit mode
 * - support double click on the resize border to adjust the width to accommodate the widest value (perhaps with limits)
 * - use a class rather than show hide for buttons, drag thumb
 * - for popup edit columns consider if the resize and move should be keyboard accessible i.e. use Shift+arrow to move and Ctrl+arrow to resize
 *
 * Depends:
 *    jquery.ui.core.js
 *    jquery.ui.widget.js
 *    jquery.ui.draggable.js
 *    jquery.ui.tooltip.js (for showing error messages)
 *    apex/tooltipManager.js (for tooltips)
 *    apex/widget.tableModelViewBase.js
 *    apex/util.js
 *    apex/lang.js
 *    apex/message.js (for ARIA messages)
 *    apex/debug.js
 *    apex/model.js
 *    apex/item.js
 *    apex/widget.js
 *    (the following are for context menu integration)
 *    jquery.ui.position.js
 *    apex/widget.menu.js
 */
(function ( util, model, debug, lang, item, clipboard, widgetUtil, $ ) {
    "use strict";

    const C_GRID = "a-GV",
        C_GRID_VARHEIGHT = C_GRID + "--variableHeight",
        SEL_GRID_ALT_MSG = ".a-GV-altMessage",
        C_GRID_HEADER = "a-GV-hdr",
        SEL_GRID_HEADER = "." + C_GRID_HEADER,
        C_GRID_BODY = "a-GV-bdy",
        SEL_GRID_BODY = "." + C_GRID_BODY,
        C_GRID_WRAP_HEADER = "a-GV-w-hdr",
        SEL_GRID_WRAP_HEADER = "." + C_GRID_WRAP_HEADER,
        C_GRID_WRAP_SCROLL = "a-GV-w-scroll",
        SEL_GRID_WRAP_SCROLL = "." + C_GRID_WRAP_SCROLL,
        C_GRID_TABLE = "a-GV-table",
        C_GRID_ROW = "a-GV-row",
        SEL_GRID_ROW = "." + C_GRID_ROW,
        SEL_TABLE = "." + C_GRID_TABLE,
        SEL_ROW = "tr",
        SEL_CELL = "td,th",
        C_GRID_CELL = "a-GV-cell",
        SEL_GRID_CELL = "." + C_GRID_CELL,
        C_GRID_SCROLL_FILLER = "js-ScrollFiller",
        SEL_GRID_SCROLL_FILLER = "." + C_GRID_SCROLL_FILLER,
        C_GRID_COL_HEADER = "a-GV-header",
        SEL_GRID_COL_HEADER = "." + C_GRID_COL_HEADER,
        C_GRID_COL_GROUP = "a-GV-headerGroup",
        SEL_GRID_COL_GROUP = "." + C_GRID_COL_GROUP,
        C_GRID_HEADER_LABEL = "a-GV-headerLabel",
        C_GRID_COL_CONTROLS = "a-GV-columnControls",
        SEL_GRID_COL_CONTROLS = "." + C_GRID_COL_CONTROLS,
        C_GRID_COL_HANDLE = "a-GV-columnHandle",
        C_ROW_HEADER = "a-GV-rowHeader", // an accessible row header cell
        C_SELECTOR = "u-selector",
        C_SELECTOR_SINGLE = C_SELECTOR + " " + C_SELECTOR + "--single",
        C_SELECTOR_VH = "js-selector-vh",
        SEL_SELECTOR = "." + C_SELECTOR,
        SEL_CHECK_SELECTOR = SEL_SELECTOR + ",." + C_SELECTOR_VH,
        C_TABLE_CHECKBOX = "a-GV-table--checkbox",
        C_GRID_SEL_HEADER = "a-GV-selHeader", // the fixed row header used for selection state etc.
        SEL_GRID_SEL_HEADER = "." + C_GRID_SEL_HEADER,
        SEL_GRID_SELECT_ALL = SEL_GRID_SEL_HEADER + SEL_GRID_COL_HEADER,
        SEL_GRID_CELL_OR_HEADER = ".a-GV-header,.a-GV-headerGroup,.a-GV-cell,.a-GV-controlBreakHeader",
        SEL_GRID_COL_HEADER_GROUP = ".a-GV-header,.a-GV-headerGroup",
        C_CONTROL_BREAK = "a-GV-controlBreak",
        SEL_CONTROL_BREAK = "." + C_CONTROL_BREAK,
        C_GRID_BREAK_HEADER = "a-GV-controlBreakHeader",
        SEL_GRID_BREAK_HEADER = "." + C_GRID_BREAK_HEADER,
        SEL_GRID_CELL_OR_BREAK = "." + C_GRID_CELL + ",." + C_GRID_BREAK_HEADER,
        C_TAB_TRAP = "js-tabTrap",
        SEL_TAB_TRAP = "." + C_TAB_TRAP,
        C_AUTO_ADD = "js-autoAdd",
        C_TOGGLE_BREAK = "js-toggleBreak",
        SEL_TOGGLE_BREAK = "." + C_TOGGLE_BREAK,
        SEL_FLOATING_ITEM = ".a-GV-floatingItem",
        C_FLOATING_ITEM_CONT = "a-GV-floatingItemContent",
        SEL_FLOATING_ITEM_CONT = "." + C_FLOATING_ITEM_CONT,
        C_EXPAND_COLLAPSE = "a-GV-expandCollapse",
        SEL_EXPAND_COLLAPSE = "." + C_EXPAND_COLLAPSE,
        C_OVERFLOW_CELL_HEADING = "a-GV-overflowCellHeading",
        SEL_OVERFLOW_CELL_HEADING = "." + C_OVERFLOW_CELL_HEADING,
        C_SELECTED = "is-selected",
        SEL_SELECTED = "." + C_SELECTED,
        C_FOCUSED = "is-focused",
        C_HOVER = "is-hover",
        SEL_HOVER = "." + C_HOVER,
        C_DISABLED = "is-disabled",
        C_EXPANDED = "is-expanded",
        C_ACTIVE = "is-active",
        SEL_ACTIVE = "." + C_ACTIVE,
        SEL_ACTIVE_CELL = SEL_ACTIVE + SEL_GRID_CELL,
        C_DELETED = "is-deleted",
        C_READONLY = "is-readonly",
        C_ERROR = "is-error",
        C_WARNING = "is-warning",
        SEL_DELETED = "tr." + C_DELETED,
        C_AGGREGATE = "is-aggregate",
        ARIA_SELECTED = "aria-selected",
        ARIA_MULTI = "aria-multiselectable",
        ARIA_RO = "aria-readonly",
        ARIA_LABEL = "aria-label",
        ARIA_DESCRIPTION = "aria-description",
        ARIA_HIDDEN = "aria-hidden",
        ARIA_SORT = "aria-sort",
        ARIA_HASPOPUP = "aria-haspopup",
        ARIA_EXPANDED = "aria-expanded",
        ARIA_CHECKED = "aria-checked",
        ARIA_ROLEDESCRIPTION = "aria-roledescription",
        ARIA_PRESSED = "aria-pressed",
        ARIA_DISABLED = "aria-disabled",
        ARIA_MODAL = "aria-modal",
        ARIA_OWNS = "aria-owns",
        C_RTL = "u-RTL",
        C_FROZEN = "a-GV-frozen",
        C_FROZEN_SN = "a-GV-frozen--start", // suffix with index
        C_FROZEN_EN = "a-GV-frozen--end", // suffix with index
        C_FROZEN_SL = "a-GV-frozen--startLast",
        C_FROZEN_EL = "a-GV-frozen--endLast",
        SEL_VISIBLE = ":visible",
        SEL_TABBABLE = ":tabbable",
        SEL_IGNORE_TAB_CONTENT = ":disabled,.js-asc,.js-desc",
        SEL_LOAD_MORE = ".js-load",
        EVENT_CLICK = "click";

    const NONE = "none",
        SEQUENCE = "sequence",
        LABEL = "label",
        TRUE = "true",
        FALSE = "false";

    const SEL_ACTION_SET = "set",
        SEL_ACTION_UNSET= "unset",
        SEL_ACTION_TOGGLE = "toggle",
        SEL_ACTION_RANGE = "range",
        SEL_ACTION_ADD = "add",
        SEl_ACTION_NONE = "none",
        SEL_ACTION_ALL = "all";

    const EVENT_SELECTION_CHANGE = "selectionChange",
        EVENT_MODE_CHANGE = "modeChange",
        EVENT_SORT_CHANGE = "sortChange",
        EVENT_COLUMN_REORDER = "columnReorder",
        EVENT_COLUMN_RESIZE = "columnResize",
        EVENT_ACTIVATE_COLUMN_HEADER = "activateColumnHeader",
        EVENT_CANCEL_COLUMN_HEADER = "cancelColumnHeader",
        // pageChange is triggered from the base widget
        EVENT_ACTIVATE_CELL = "activateCell",
        EVENT_EXPANSION_CHANGE = "expansionChange",
        EVENT_CURRENT_CELL_CHANGE = "currentCellChange";

    const COL_WIDTH_INC = 10,
        MIN_COL_WIDTH = 40, // THINK consider putting this back to 34 once there is a better way to set width of actions column
        MAX_FROZEN_START_COLS = 20, // must be kept in sync with CSS rules. Eg: --a-gv-frozen-offset-1 to --a-gv-frozen-offset-20
        HEADER_SCROLL_SENSITIVITY = 10,
        HEADER_SCROLL_SPEED = 10,
        DEACTIVATE_TIME = 10,
        E_BODY = "body",
        ATTR_CLASS = "class",
        ATTR_TITLE = "title",
        ATTR_STYLE = "style",
        ATTR_ROLE = "role",
        ROLE_ROWHEADER = "rowheader",
        ROLE_GRIDCELL = "gridcell",
        ATTR_ABBR = "abbr",
        ATTR_COLSPAN = "colspan",
        ATTR_DATA_IDX = "data-idx",
        ATTR_DATA_ID = "data-id",
        ATTR_DATA_ROWNUM = "data-rownum",
        PROP_TABINDEX = "tabIndex",
        ATTR_TABINDEX = "tabindex",
        ALIGN_START = "start",
        ALIGN_END = "end",
        ALIGN_LEFT = "left",
        ALIGN_RIGHT = "right",
        ALIGN_CENTER = "center",
        PROP_LEFT = "left";

    const hasOwnProperty = util.hasOwnProperty,
        objectEntries = Object.entries,
        extend = $.extend,
        isArray = Array.isArray,
        keys = $.ui.keyCode,
        isMac = navigator.appVersion.includes( "Mac" ),
        invokeAfterPaint = util.invokeAfterPaint,
        toInteger = ( numStr )  => {
            return parseInt( numStr, 10 );
        };

    let gridCount = 0;

    /*
     * todo doc this grid data transfer format writer interface when option dataTransferFormats is documented
     */
    const textFormatWriterPrototype = {
        begin: function( /* model, selection, columns */ ) {
            // don't care about model or columns
            this.text = "";
        },
        beginRow: function( index /*, record, recordId  */ ) {
            if ( index > 0 ) {
                this.text += "\r\n";
            }
        },
        cell: function( index, column, value, content ) {
            if ( index > 0 ) {
                this.text += "\t";
            }
            this.text += content;
        },
        endRow: function() {
        },
        end: function() {
        },
        toString: function() {
            return this.text;
        }
    };
    const htmlFormatWriterPrototype = {
        begin: function( model, selection, columns ) {
            // if user copies a single cell they probably want just the text not a 1x1 table
            if ( columns.length === 1 && selection.records && selection.records.length === 1 ) {
                this.text = "";
                return;
            }
            this.table = true;
            // don't care about model or columns
            this.text = "<table><tbody>";
        },
        beginRow: function( /* index, record, recordId */ ) {
            if ( this.table ) {
                this.text += "<tr>";
            }
        },
        cell: function( index, column, value, content ) {
            if ( this.table ) {
                this.text += `<td>${util.escapeHTML( content )}</td>`;
            } else {
                this.text += util.escapeHTML( content );
            }
        },
        endRow: function() {
            if ( this.table ) {
                this.text += "</tr>";
            }
        },
        end: function() {
            if ( this.table ) {
                this.text += "</tbody></table>";
            }
        },
        toString: function() {
            return this.text;
        }
    };
    // One might think that a text/csv format writer would be useful, but it seems Firefox ignores it and
    // other applications don't seem to use it anyway.

    function alignmentClass( alignment, centerIsDefault ) {
        let cls = "";

        if ( alignment === ALIGN_START ) {
            cls = " u-tS";
        } else if ( alignment === ALIGN_END ) {
            cls = " u-tE";
        } else if ( alignment === ALIGN_LEFT ) {
            cls = " u-tL";
        } else if ( alignment === ALIGN_RIGHT ) {
            cls = " u-tR";
        } else if ( alignment === ALIGN_CENTER && !centerIsDefault ) {
            cls = " u-tC";
        }
        return cls;
    }

    function addHighlightClassIfNeeded( meta, options, cls ) {
        let highlight;

        if ( meta.highlight ) {
            highlight = options.highlights[meta.highlight];
            if ( highlight && highlight.cssClass ) {
                cls += " " + highlight.cssClass;
            } else {
                cls += " " + meta.highlight;
            }
        }
        return cls;
    }

    function getRowClass( meta, options, sel, model, rowItem ) {
        let cls = C_GRID_ROW;

        if ( meta.agg ) {
            cls += " " + C_AGGREGATE;
            cls += " a-GV-aggregate--" + meta.agg;
            if ( meta.grandTotal ) {
                cls += " is-grandTotal";
            }
        } else {
            if ( meta.hidden ) {
                cls += " u-hidden";
            }
            if ( model.isDisabled( rowItem, meta ) ) {
                cls += " " + C_DISABLED;
            }
            if ( meta.sel || sel ) {
                cls += " " + C_SELECTED;
            }
            if ( meta.deleted ) {
                cls += " " + C_DELETED;
            } else {
                if ( meta.inserted ) {
                    cls += " is-inserted";
                } else if ( meta.updated ) {
                    cls += " is-updated";
                }
                cls = addHighlightClassIfNeeded( meta, options, cls );
                if ( !model.allowEdit( rowItem ) ) {
                    cls += " " + C_READONLY;
                }
            }
            // even deleted records can have error messages, see bug 35046331
            if ( meta.error ) {
                cls += " " + C_ERROR;
            } else if ( meta.warning ) {
                cls += " " + C_WARNING;
            }
        }
        return cls;
    }

    function getCellClass( col, meta, cellMeta, options, cell$, model, rowItem ) {
        let m,
            ro = false,
            cls = C_GRID_CELL;

        cls += alignmentClass( col.alignment );
        if ( col.columnCssClasses ) {
            cls += " " + col.columnCssClasses;
        }
        if ( col.cellCssClassesColumn ) {
            cls += " " + model.getValue( rowItem, col.cellCssClassesColumn );
        }
        if ( cell$ ) {
            // make sure specific existing view state classes on the cell are not lost
            [C_SELECTED, C_FOCUSED, C_ACTIVE, C_FROZEN, C_FROZEN_SL, C_FROZEN_EL].forEach( c => {
                if ( cell$.hasClass( c ) ) {
                    cls += " " + c;
                }
            } );
            // apply any u-frozen-nnn class
            m = /(^|\s)a-GV-frozen--(start|end)\d+(\s|$)/.exec( cell$.attr( ATTR_CLASS ) );
            if ( m ) {
                cls += " " + m[0].trim();
            }
        }
        if ( cellMeta ) {
            // todo think: might be nice to have both is-changed and is-error on a cell but the
            //   css rules are not set up to handle that so warning, error take precedence.
            if ( cellMeta.error ) {
                cls += " " + C_ERROR;
            } else if ( cellMeta.warning ) {
                cls += " " + C_WARNING;
            } else if ( !meta.deleted ) {
                if ( cellMeta.changed ) {
                    cls += " is-changed";
                } else if ( cellMeta.stale ) {
                    cls += " is-stale";
                }
            }
            cls = addHighlightClassIfNeeded( cellMeta, options, cls );
            if ( cellMeta.disabled ) {
                cls += " " + C_DISABLED;
            }
            // a checksum on the cell means that it is readonly
            ro = cellMeta.ck;
        }
        // The model should have a checksum on any field that can't be edited but check readonly just in case.
        if ( ro || col.readonly ) {
            cls += " " + C_READONLY;
        }
        if ( col.usedAsRowHeader && !meta.agg ) { // cells in aggregate rows are never row headers
            cls += " " + C_ROW_HEADER;
        }
        return cls;
    }

    function getMessage( key ) {
        return lang.getMessage( "APEX.GV." + key );
    }

    function formatMessage( key, ...args ) {
        return lang.formatMessage( "APEX.GV." + key, ...args );
    }

    const binarySearch = util.binarySearch;

    function controlBreakCompare( a, b ) {
        return a.offset - b.offset;
    }

    function domIndex( el$ ) {
        return el$.parent().children().index( el$ );
    }

    function getRows$( out ) {
        let rows$ = $( out.toString() );

        rows$.find( "a,button,input,select,textarea" ).prop( PROP_TABINDEX, -1 );
        return rows$;
    }

    function getContainingTableCell$( el ) {
        return $( el ).closest( SEL_GRID_CELL_OR_HEADER );
    }

    function getContainingGridCell$( el ) {
        return $( el ).closest( SEL_GRID_CELL_OR_BREAK );
    }

    function getContainingDataCell$( el ) {
        return $( el ).closest( SEL_GRID_CELL );
    }

    function cellFromColumnIndex( row$, column ) {
        let cell$, index,
            cells$ = row$.children();

        if ( cells$.last().hasClass( C_GRID_COL_GROUP ) ) {
            index = 0;
            cells$.each(function() {
                index += toInteger( $(this).attr(ATTR_COLSPAN) ) || 1;
                if ( index > column ) {
                    cell$ = $( this );
                    return false;
                }
            });
        } else {
            cell$ = cells$.eq( column );
        }
        return cell$;
    }

    function columnIndexFromCell( cell$ ) {
        let index;

        if ( cell$.hasClass( C_GRID_COL_GROUP ) ) {
            index = 0;
            cell$.parent().children().each(function() {
                if ( this === cell$[0] ) {
                    return false;
                }
                index += toInteger( $(this).attr(ATTR_COLSPAN) ) || 1;
            });
        } else {
            index = domIndex( cell$ );
        }
        return index;
    }

    const E_KEYDOWN_ESCAPE = "keydown.gridGlobalEscape";

    function escapeOn( f ) {
        $( E_BODY ).on( E_KEYDOWN_ESCAPE, function( event ) {
            if ( event.which === keys.ESCAPE ) {
                $( E_BODY ).off( E_KEYDOWN_ESCAPE );
                f();
            }
        });
    }

    function escapeOff() {
        $( E_BODY ).off( E_KEYDOWN_ESCAPE );
    }

    function effectiveGroupName( col ) {
        let group = col.groupName || null;

        if ( group && col.useGroupFor && col.useGroupFor.indexOf( "heading" ) < 0 ) {
            group = null;
        }
        return group;
    }

    function getRowForCell( cell$ ) {
        return cell$.closest( SEL_ROW );
    }

    // simple case where scroll container has no padding, margins, or border and just one child element
    // the child may have borders and a negative top margin
    // headerHeight is optional
    function hasScrollbar(el$, headerHeight) {
        let parent = el$.parent()[0],
            result = {h: false, v: false};

        //  Note this gets confused if overflow is scroll rather than auto
        if ( el$.outerHeight() + ( headerHeight || toInteger( el$.css( "margin-top" ) ) ) > parent.clientHeight ) {
            result.v = true;
        }
        if ( el$.outerWidth() > parent.clientWidth ) {
            result.h = true;
        }
        return result;
    }

    function activateHeader( cell$, event, inst ) {
        if ( cell$.hasClass( C_GRID_SEL_HEADER ) ) {
            // simulate a click on select all checkbox if there is one
            cell$.find( SEL_SELECTOR ).trigger( EVENT_CLICK );
        } else {
            inst._activateColumnHeader( event, cell$ );
            event.preventDefault();
        }
    }

    $.widget( "apex.grid", $.apex.tableModelViewBase, extend( true,
        /**
         * @lends grid.prototype
         */
        {
        widgetEventPrefix: "grid",
        options: {
            /**
             * <p>Defines the columns in the grid. These columns are also fields in the model.
             * The value is an array of exactly one object that maps the column name to a column definition object.
             * The properties are the column names. The property value is a column definition.
             * Wrapping the object in an array simply keeps the widget from making a copy of the columns so that
             * the same definition can be shared.</p>
             *
             * <p>The same structure can be shared with the data {@link model} and a {@link recordView} widget.
             * This option is required.</p>
             *
             * @memberof grid
             * @instance
             * @type {object[]}
             * @property {object} * The property is the column name. By convention
             *   it is the uppercase database column name. The value is an object that defines the column.
             *   All properties are optional unless specified otherwise.
             * @property {string} *.elementId Column item name (id of DOM element) used to edit this column.
             *   Can omit if column or grid is not editable.
             * @property {string} *.heading The text of the column header. Allows markup.
             * @property {string} *.label The label text of the column. Does not allow markup.
             *   Used by control break headers if given otherwise <code class="prettyprint">heading</code> is used.
             *   When the <code class="prettyprint">heading</code> option includes markup the label option should be specified.
             * @property {string} *.headingAlignment Determines how the heading text is aligned.
             *   One of "start", "end", "center", "left", "right". Default is "center".
             * @property {string} *.alignment Determines how the cell content is aligned.
             *   One of "start", "end", "center", "left", "right". Optional with no default.
             * @property {string} *.headingCssClasses CSS classes applied to the column heading cell.
             * @property {string} *.columnCssClasses CSS classes applied to each cell in this column.
             * @property {string} *.cellCssClassesColumn The name of a column that contains CSS classes to use for the cell.
             * @property {string} *.cellTemplate An HTML template that defines the cell content.
             *   See {@link apex.util.applyTemplate} for template syntax.
             *   The substitutions are column names from this column configuration or columns from any parent models
             *   and they are replaced with data values from the current record of the model.
             * @property {function|boolean} *.copyValueToClipboard Controls what is copied to the clipboard.
             *   When copying cells to the clipboard normally the text displayed in the cell is copied.
             *   In some cases such as when the cell contains buttons you may want just the display value from the
             *   model. Set to true to copy the model display value. This can also be a function that returns the
             *   cell content to copy to the clipboard
             *   (<code class="prettyprint">copyValueToClipboard(column, value, text) -> string</code>).
             *   The function takes 3 arguments, The column definition,
             *   the model value, and the cell text and returns the string content to add to the clipboard for the cell.
             * @property {boolean} *.escape If false the column value may contain trusted markup otherwise the column
             *   value is escaped.
             * @property {number} *.seq Determines the order of the column among all the others. Lower numbers come first.
             * @property {number} *.width The minimum width of the column. By default the grid may stretch column widths
             *   to make use of available space. See <code class="prettyprint">noStretch</code> property.
             * @property {boolean} *.noStretch If false, the default, columns will stretch to fill available width.
             *   If true the column width will not stretch to fill available space as the grid resizes.
             *   In either case the user can still adjust the width. This stretching only applies if the total
             *   <code class="prettyprint">width</code> of all columns is less than the width of the grid.
             * @property {string} *.groupName Name of column group. See {@link grid#columnGroups} and
             *   <code class="prettyprint">useGroupFor</code>.
             * @property {string} *.useGroupFor If not present or if the string contains "heading" then the group given
             *   in <code class="prettyprint">groupName</code> will be used. This allows the same column definition
             *   to be shared with multiple kinds of views so that the <code class="prettyprint">groupName</code> is
             *   used by other views but not the grid.
             * @property {boolean} *.canHide Determines if the user is allowed to show or hide the column. If true
             *   the user can choose to hide or show the column. If false the user cannot change the hidden state.
             *   The grid only uses this property to determine if it should show a hidden column when needed such
             *   as in {@link grid#gotoError}.
             * @property {boolean} *.hidden If true the column is hidden otherwise it is shown.
             * @property {boolean} *.readonly If true the column cannot be edited. This is also used to give a visual
             *   representation for non-editable cells.
             *   Note: The {@link model} has additional criteria for when a column cell can be edited.
             * @property {string} *.linkTargetColumn The name of the column that contains the anchor
             *   <code class="prettyprint">href</code>. If not given the <code class="prettyprint">href</code>
             *   comes from the model field metadata <code class="prettyprint">url</code> property. If there is
             *   no <code class="prettyprint">url</code> property then this column cell is not a link.
             * @property {string} *.linkText Only for columns that contain a link.
             *   This is the anchor content. Allows markup. Allows substitutions just like the
             *   <code class="prettyprint">cellTemplate</code> property.
             *   If not given the rendered display value of this column is used as the link content.
             *   If the display value of the cell is empty then the link URL is used.
             *   To display a link, at least one of <code class="prettyprint">linkTargetColumn</code>
             *   or the model field metadata <code class="prettyprint">url</code> property must must be given.
             *   Note: If the cell is editable it is always the data value of the field that is edited.
             *   So if you want to edit the link text it is best to omit linkText and use
             *   <code class="prettyprint">linkTargetColumn</code>.
             * @property {string} *.linkAttributes Only for columns that contain a link.
             *   This provides additional anchor attributes. Allows substitutions just like
             *   the <code class="prettyprint">cellTemplate</code> property.
             * @property {boolean} *.isRequired If true the column is indicated as required by adding
             *   <code class="prettyprint">is-required</code> class to the column header.
             *   This should correspond with the required setting of the underlying editable column item.
             * @property {string} *.helpid Help id for the column. This is the first argument passed to {@link apex.theme.popupFieldHelp}.
             *   If present pressing the help key Alt+F1 will display the help text for the field.
             * @property {boolean} *.virtual If true the column is not included in copy down and fill operations.
             * @property {boolean} *.noCopy If true the column is not included in copy down and fill operations.
             * @property {boolean} *.usedAsRowHeader If true the column is an accessible row header. The value of the
             *   column is included in the description of the row for assistive technologies. Default is false.
             * @property {boolean} *.noHeaderActivate If true the column header does not support activation. Default is false.
             * @property {string} *.sortDirection One of "asc" or "desc".
             *   Use "asc" if the data is sorted by this column ascending.
             *   Use "desc" if the data is sorted by this column descending.
             *   The value should be null, not present or undefined if the data is not sorted by this column.
             * @property {number} *.sortIndex Only applies if <code class="prettyprint">sortDirection</code> is given.
             *   The order in which this column is sorted 1 = first, 2 = second, and so on. The server is responsible
             *   for doing the sorting.
             * @property {boolean} *.canSort If true the column can be sorted by the user.
             *   This controls if the header sort buttons are shown or if the keyboard sort keys work.
             *   The grid does not actually do the sorting.
             *   The {@link grid#event:sortchange} event/callback is fired/called to let the controller or parent
             *   widget know to do sorting by refreshing the {@link model} data.
             * @property {string} *.controlBreakDirection One of "asc" or "desc".
             *   Use "asc" if the control break data is sorted by this column ascending.
             *   Use "desc" if the control break data is sorted by this column descending.
             *   The value should be null, not present or undefined if the column is not a control break.
             * @property {number} *.controlBreakIndex The order in which this column is sorted for the purpose of
             *   control breaks. Starting at 1. Only applies if <code class="prettyprint">controlBreakDirection</code> is given.
             *   The server is responsible for sorting the data by the control break columns according to
             *   <code class="prettyprint">controlBreakIndex</code> so that all the records with the same value are
             *   grouped together and must also set the record metadata property
             *   <code class="prettyprint">endControlBreak</code>. See {@link model.RecordMetadata}.
             * @property {boolean} *.frozen If true the column is frozen (does not horizontal scroll).
             *   Only the start most columns can be frozen. At most 20 columns can be frozen.
             * @property {string} *.property Do not specify this property. It is added automatically and the value is
             *   the column/field name.
             * @example
             *  [ {
             *      NAME: {
             *          heading: "<em>Name</em>",
             *          label: "Name",
             *          alignment: "start",
             *          headingAlignment: "center",
             *          seq: 1,
             *          canHide: true,
             *          canSort: true,
             *          hidden: false,
             *          isRequired: true,
             *          escape: true,
             *          frozen: false,
             *          noStretch: false,
             *          noCopy: false,
             *          readonly: false,
             *          sortDirection: "asc",
             *          sortIndex: 1,
             *          width: 98
             *      },
             *      ....
             *  } ]
             * @example <caption>Column options can be set on Interactive Grid region columns using the
             *     <code class="prettyprint">defaultGridColumnOptions</code> property in the column
             *     Initialization JavaScript Function attribute. This example sets the headingCssClasses and
             *     columnCssClasses for a specific column of an Interactive Grid region by adding the
             *     following code to the column's Initialization JavaScript Function attribute.</caption>
             * function( options ) {
             *     options.defaultGridColumnOptions = {
             *         headingCssClasses: "special-heading",
             *         columnCssClasses: "special-cell"
             *     };
             *     return options;
             * }
             */
            // todo freeze last column to the right. Think if there is a way to remove the frozen column limit. Increase if needed.
            columns: null,
            /**
             * <p>Defines the grid column heading groups if any. A grid can have multiple levels of column heading groups.
             * Group heading cells display above and span the contiguous columns or column groups that belong to the
             * same group. The columns or column groups in a group need not be adjacent although they often are.</p>
             *
             * @memberof grid
             * @instance
             * @type {object}
             * @property {object} * The property name is the column group name. This name is referenced from
             *     a {@link grid#columns} <code class="prettyprint">groupName</code> property or
             *     a column group definition <code class="prettyprint">parentGroupName</code> property.
             *     The property values are column group definitions.
             * @property {string} *.heading The text of the column header. Allows markup.
             * @property {string} *.label Same as heading but markup not allowed. Not currently used by grid.
             * @property {string} *.headingAlignment One of "start", "end", "center", "left", "right".
             *     Determines how the heading text is aligned. The default is "center".
             * @property {string} *.parentGroupName Optional name of the parent column group. This allows
             *     multiple levels of column groups.
             * @example <caption>This example shows initializing the grid with "First" name and "Last" name columns
             * that are grouped under a column heading group "Name".</caption>
             * $( ".selector" ).grid( {
             *     columns[{
             *         FIRST_NAME: {
             *             heading: "First",
             *             groupName: "NAME",
             *             ...
             *         },
             *         LAST_NAME: {
             *             heading: "Last",
             *             groupName: "NAME",
             *             ....
             *         },
             *         ...
             *     ],
             *     columnGroups: {
             *         NAME: {
             *             heading: "Name",
             *             headingAlignment: "start"
             *         },
             *         ...
             *     }
             * } );
             */
            columnGroups: null,
            /**
             * <p>If true the mouse and keyboard can be used in column headings to adjust the sort order.
             * The grid doesn't actually do any sorting. Something external to the grid must do the actual
             * sorting by handling the {@link grid#event:sortchange} event and updating the model.</p>
             * <p>Note the sort order can still be adjusted external to the grid even if this is false.</p>
             *
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default true
             * @example false
             * @example false
             */
            columnSort: true,
            /**
             * <p>If true multiple columns can be sorted using Shift key modifier.
             * This only applies if {@link grid#columnSort} is true.</p>
             *
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default true
             * @example false
             * @example jsinit(Interactive Grid [defaultGridViewOptions])
             *     {
             *         columnSortMultiple: false
             *     }
             * @example false
             */
            columnSortMultiple: true,
            /**
             * <p>If true the mouse and keyboard can be used in column headings to adjust the width of columns.</p>
             * <p>Note the column widths can still be changed external to the grid.</p>
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default true
             * @example false
             * @example jsinit(Interactive Grid [defaultGridViewOptions])
             *     {
             *         resizeColumns: false
             *     }
             * @example false
             */
            resizeColumns: true,
            /**
             * <p>If true the mouse and keyboard can be used in column headings to reorder the columns or column groups.</p>
             * <p>Note the column order can still be changed external to the grid.</p>
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default true
             * @example false
             * @example jsinit(Interactive Grid [defaultGridViewOptions])
             *     {
             *         reorderColumns: false
             *     }
             * @example false
             */
            reorderColumns: true,
            /**
             * <p>If true any control breaks can be collapsed or expanded.</p>
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default true
             * @example false
             * @example false
             */
            collapsibleControlBreaks: true,
            /**
             * Map of aggregate name to object with aggregate label and overallLabel.
             *
             * @memberof grid
             * @instance
             * @type {Object}
             * @property {Object} * The aggregate name. The model metadata {@link model.RecordMetadata}
             *     <code class="prettyprint">agg</code> property is the key to this aggregate map.
             * @property {string} *.label The aggregate label.
             * @property {string} *.overallLabel The aggregate overall label.
             * @default {}
             * @example
             *     {
             *         SUM: {
             *             label: "Sum",
             *             overallLabel: "Overall Sum" },
             *         ...
             *     }
             * @example {...}
             */
            aggregateLabels: {},
            /**
             * Map of &lt;aggregate name> + "|" + &lt;aggregate column> to tooltip text.
             *
             * @memberof grid
             * @instance
             * @type {Object}
             * @default {}
             * @property {string} * The property name is an aggregate name and column name separated with
             *     a "|" character. The value is the tooltip text.
             * @example
             *     {
             *         "AVG|SALARY": "Average Salary",
             *         ....
             *     }
             * @example {...}
             */
            aggregateTooltips: {},
            /**
             * <p>A jQuery selector that identifies cell content that can be a tab stop in navigation mode.</p>
             *
             * @memberof grid
             * @instance
             * @type {string}
             * @default "a,button,input,span[role='checkbox']"
             */
            tabbableCellContent: "a,button,input,span[role='checkbox']",
            // todo think span[role='checkbox'] is special knowledge of a specific APEX item, checkbox.
            //   See bug 34947535. This means that 3rd party item plugins are at a disadvantage.
            //   Need a way for items to specify what to add to tabbableCellContent or a documented maker class for
            //   what is tabbable content.
            /**
             * <p>Only applies if {@link grid#editable} is true. If false then can't go in or out of edit mode using mouse or keyboard.</p>
             *
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default true
             * @example false
             * @example false
             */
            allowEditMode: true,
            /**
             * <p>Only applies if {@link grid#editable} is true. If false then can't use Delete key to delete a row.
             * This only affects the keyboard behavior. The model determines if rows can be deleted or not.</p>
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default true
             * @example false
             * @example false
             */
            allowDelete: true,
            /**
             * <p>Only applies if {@link grid#editable} is true. If false then can't use Insert key to add a row.
             * This only affects the keyboard behavior. The model determines if rows can be added or not.</p>
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default true
             * @example false
             * @example false
             */
            allowInsert: true,
            /**
             * <p>If true the selection can be copied to the clipboard using the browsers copy event.
             * This can only be set at initialization time.</p>
             *
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default true
             * @example false
             */
            allowCopy: true,
            /**
             * <p>Determines if the user can tab to read-only cells while in edit mode.
             * When <code class="prettyprint">false</code> the Tab key will move focus to read-only cells.
             * When <code class="prettyprint">true</code> the Tab key will skip over all read-only cells.</p>
             *
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default false
             * @example true
             * @example true
             */
            skipReadonlyCells: false,
            /**
             * <p>Determines the type of row selection header. One of: "none", "plain", "sequence", or "label".
             * The row selection header is not a real column and is always frozen.</p>
             * <ul>
             *     <li>none: There is no selection row header.</li>
             *     <li>plain: There is a selection row header that may contain a checkbox and state classes
             *     but nothing more.</li>
             *     <li>sequence: The selection row header contains a row sequence number. The width can be adjusted.</li>
             *     <li>label: The selection row header contains a label with content given by rowHeaderLabelColumn.
             *     The width can be adjusted.</li>
             * </ul>
             *
             * <p>When the grid is editable or when multiple selection is allowed it is a good idea to have a
             * rowHeader but it is not enforced. A value other than "none" is required for editable grids in order to
             * see visual indicators such as row level errors.</p>
             *
             * @memberof grid
             * @instance
             * @type {string}
             * @default "none"
             * @example "plain"
             * @example "plain"
             */
            rowHeader: NONE,
            /**
             * <p>If true the row selection header will contain a selection control. A checkbox if multiple selection
             * is enabled or a radio button otherwise. If false no selection control is shown.
             * This option is ignored if <code class="prettyprint">rowHeader</code> is "none"</p>
             *
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default false
             * @example true
             * @example true
             */
            rowHeaderCheckbox: false,
            /**
             * <p>This is the name of a model column to take the row header label value from.
             * The column value can include markup. This option only applies
             * if <code class="prettyprint">rowHeader</code> is "label".</p>
             *
             * @memberof grid
             * @instance
             * @type {?string}
             * @default null
             * @example "PART_NAME"
             * @example "PART_NAME"
             */
            rowHeaderLabelColumn: null,
            /**
             * <p>Width of row selection header in pixels. Only applies if <code class="prettyprint">rowHeader</code>
             * is not "none".
             * If null, a default width is chosen based on the kind of <code class="prettyprint">rowHeader</code>.</p>
             * <p>The default width values come from CSS variables that correspond to the rowHeader value:</p>
             * <ul>
             *     <li>--js-gv-row-header-width-plain</li>
             *     <li>--js-gv-row-header-width-ctrl</li>
             *     <li>--js-gv-row-header-width-text</li>
             *     <li>--js-gv-row-header-width-ctrl-text</li>
             * </ul>
             * <p>This allows themes to provide theme specific defaults.
             * The variable values must be a number with a px suffix.</p>
             *
             * @memberof grid
             * @instance
             * @type {?number}
             * @default depends on rowHeader value
             * @example 58
             * @example 58
             */
            rowHeaderWidth: null,
            /**
             * <p>When true select cells otherwise select rows. The default is to select rows.</p>
             *
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default false
             * @example true
             * @example true
             */
            selectCells: false,
            /**
             * <p>If true multiple rows can be selected otherwise only a single row can be selected.</p>
             * <p>See also {@link grid#selectAll} and {@link grid#persistSelection}.</p>
             *
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default false
             * @example true
             * @example true
             */
            multiple: false,
            /**
             * <p>Only applies while {@link grid#selectCells} is true. If true then a range of cells can be selected
             * otherwise only a single cell is selected. The default is to allow a range of cells to be selected.</p>
             *
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default true
             * @example false
             * @example false
             */
            multipleCells: true,
            /**
             * <p>If true then all the rows in the current page or all rendered rows or all rows in the model,
             * depending on pagination settings, can be selected with Ctrl+A or the select all checkbox
             * (if {@link grid#rowHeaderCheckbox} is true)
             * or using the {@link grid#selectAll(2)} method.</p>
             * <p>Only applies when {@link grid#multiple} is true.</p>
             * <p>When {@link grid#persistSelection} is false only rows that are rendered to the DOM
             * can be selected with Select All. For traditional paging this means that all the rows in the current
             * page can be selected.
             * For any kind of scroll pagination, only the rows that have already been and are currently
             * rendered to the DOM can be selected.
             * <p>When {@link grid#persistSelection} is true the selection state is kept in
             * the model and only records currently loaded in the model can be selected. The
             * {@link grid#loadIncompleteSelection} option controls if and how additional records are loaded
             * in the model so that the selection is complete.
             * </p>
             *
             * @memberof grid
             * @instance
             * @variation 1
             * @type {boolean}
             * @default true
             * @example false
             * @example false
             */
            selectAll: true,
            /**
             * <p>Normally hidden rows cannot be selected. This means that range selection across collapsed
             * control breaks will not select any collapsed rows and if a control break is collapsed any selected rows
             * within it are unselected. Setting this option to true will allow hidden rows to be selected.</p>
             *
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default false
             * @example true
             * @example true
             */
            allowSelectHidden: false,
            /**
             * <p>The text message key to use for showing the number of selected rows/records in the footer.
             * The message key must have exactly one parameter %0 which is replaced with the number of rows/records
             * selected. It is often better to use {@link grid#entityTitleSingular} and
             * {@link grid#entityTitlePlural} rather than this option.</p>
             *
             * @memberof grid
             * @instance
             * @type {string}
             * @default "APEX.GV.SELECTION_COUNT"
             * @example "MY_SELECTION_MESSAGE"
             * @example "MY_SELECTION_MESSAGE"
             */
            selectionStatusMessageKey: "APEX.GV.SELECTION_COUNT",
            /**
             * <p>Name of an APEX page item that will receive the selection state each time the selection changes.
             * Typically, this is the name of a hidden page item and is used to process the selection on the server
             * with a PL/SQL code process.</p>
             * <p>The format of the selection state value is a ":" separated string of the selected rows record
             * identity.</p>
             *
             * @memberof grid
             * @instance
             * @type {?string}
             * @default null
             * @example "P1_REPORT_SELECTION"
             */
            selectionStateItem: null,
            /**
             * <p>A tooltip object suitable for jQuery UI tooltip widget except that
             * the <code class="prettyprint">items</code> property is not needed.
             * It is supplied by the grid and cannot be overridden. It matches
             * <code class="prettyprint">td,th</code>. Also the <code class="prettyprint">open</code> event is not available
             * as a property.
             * Default values are provided for <code class="prettyprint">tooltipClass</code>,
             * and <code class="prettyprint">show</code> but can be overridden.
             * The <code class="prettyprint">content</code> callback function receives extra arguments: model, recordMeta, colMeta, columnDef.
             * Tooltips are used to show errors and warnings at the row and cell level. The content function is not
             * called if there is an error or warning message to display. If tooltip is null the
             * error or warning message is added as a title attribute.</p>
             *
             * @memberof grid
             * @instance
             * @type {object}
             * @example
             * {
             *     content: function( callback, model, recordMeta, colMeta, columnDef ) {
             *         var text;
             *         // calculate the tooltip text
             *         return text;
             *     }
             * }
             * @example jsinit(Interactive Grid [defaultGridViewOptions])
             *     {
             *         tooltip: {
             *             content: function( callback, model, recordMeta, colMeta, columnDef ) {
             *                 var text;
             *                 // calculate the tooltip text
             *                 return text;
             *             }
             *         }
             *     }
             * @example
             * {
             *     content: function( callback, model, recordMeta, colMeta, columnDef ) {
             *         var text;
             *         // calculate the tooltip text
             *         return text;
             *     }
             * }
             */
            // todo allow position to be specified?
            tooltip: {
                tooltipClass: "a-GV-tooltip"
            },
            /**
             * todo consider doc in future
             * @ignore
             */
            dataTransferFormats: [
                {
                    format: "text/plain",
                    writer: Object.create( textFormatWriterPrototype )
                },
                // Excel and Calc seem to prefer this format over text/plain
                {
                    format: "text/html",
                    writer: Object.create( htmlFormatWriterPrototype )
                }
            ],
            /**
             * <p>Normally keydown handling will call preventDefault so that arrow key navigation has no effect outside
             * the grid. This prevents text selection and keeps parent elements from scrolling. By setting this to false
             * it allows a nested container to respond to arrow navigation keys.</p>
             *
             * @memberof grid
             * @instance
             * @type {boolean}
             * @default true
             * @example false
             * @example false
             */
            constrainNavigation: true,

            //
            // events:
            //

            /**
             * <p>Triggered when the selection state changes. It has no additional data. See also
             * {@link grid#getSelectedRecords}.</p>
             *
             * @event selectionchange
             * @memberof grid
             * @instance
             * @property {Event} event <code class="prettyprint">jQuery</code> event object.
             *
             * @example <caption>Initialize the grid with the <code class="prettyprint">selectionChange</code> callback specified:</caption>
             * $( ".selector" ).grid({
             *     selectionChange: function( event ) {}
             * });
             *
             * @example <caption>Bind an event listener to the <code class="prettyprint">gridselectionchange</code> event:</caption>
             * $( ".selector" ).on( "gridselectionchange", function( event ) {} );
             */
            selectionChange: null,

            /**
             * <p>Triggered when the current cell changes. It has no additional data. See also
             * {@link grid#getCurrentCell}.</p>
             *
             * @event currentcellchange
             * @memberof grid
             * @instance
             * @property {Event} event <code class="prettyprint">jQuery</code> event object.
             *
             * @example <caption>Initialize the grid with the <code class="prettyprint">currentCellChange</code> callback specified:</caption>
             * $( ".selector" ).grid({
             *     currentItemChange: function( event ) {}
             * });
             *
             * @example <caption>Bind an event listener to the <code class="prettyprint">gridcurrentcellchange</code> event:</caption>
             * $( ".selector" ).on( "gridcurrentcellchange", function( event ) {} );
             * @example <caption>See example for {@link grid#getCurrentCell}.</caption>
             */
            currentCellChange: null,

            /**
             * <p>Triggered when a column header is activated (Enter/Space key or click).</p>
             *
             * @event activatecolumnheader
             * @memberof grid
             * @instance
             * @property {Event} event <code class="prettyprint">jQuery</code> event object.
             * @property {Object} data Additional data for the event.
             * @property {jQuery} data.header$ The column element jQuery object.
             * @property {object} data.column The column definition object.
             *
             * @example <caption>Initialize the grid with the <code class="prettyprint">activateColumnHeader</code> callback specified:</caption>
             * $( ".selector" ).grid({
             *     activateColumnHeader: function( event, data ) {}
             * });
             *
             * @example <caption>Bind an event listener to the <code class="prettyprint">gridactivatecolumnheader</code> event:</caption>
             * $( ".selector" ).on( "gridactivatecolumnheader", function( event, data ) {} );
             */
            activateColumnHeader: null,

            /**
             * <p>Triggered when a grid cell is activated (Enter key or double click).
             * This event only applies to non-editable grids.</p>
             *
             * @event activatecell
             * @memberof grid
             * @since 18.2
             * @instance
             * @property {Event} event <code class="prettyprint">jQuery</code> event object.
             * @property {Object} data Additional data for the event.
             * @property {jQuery} data.cell$ The grid cell element jQuery object.
             * @property {jQuery} data.row$ The grid row jQuery object.
             *
             * @example <caption>Initialize the grid with the <code class="prettyprint">activateCell</code> callback specified:</caption>
             * $( ".selector" ).grid({
             *     activateCell: function( event, data ) {}
             * });
             *
             * @example <caption>Bind an event listener to the <code class="prettyprint">gridactivatecell</code> event:</caption>
             * $( ".selector" ).on( "gridactivatecell", function( event, data ) {} );
             */
            activateCell: null,

            // todo consider documenting
            expansionChange: null,

            /**
             * <p>Triggered when whatever popup is opened in response to activateColumnHeader event
             * should be closed/canceled. This happens because of another operation on the column such as dragging.</p>
             *
             * @event cancelcolumnheader
             * @memberof grid
             * @instance
             * @property {Event} event <code class="prettyprint">jQuery</code> event object.
             *
             * @example <caption>Initialize the grid with the <code class="prettyprint">cancelColumnHeader</code> callback specified:</caption>
             * $( ".selector" ).grid({
             *     cancelColumnHeader: function( event ) {}
             * });
             *
             * @example <caption>Bind an event listener to the <code class="prettyprint">gridcancelcolumnheader</code> event:</caption>
             * $( ".selector" ).on( "gridcancelcolumnheader", function( event ) {} );
             */
            cancelColumnHeader: null,

            /**
             * <p>Triggered when the sort direction changes. This does not actually
             * sort the data or ask the model to sort or fetch new data. It is expected that
             * a handler will call {@link grid#refreshColumns} and then take action that causes the data to be sorted.</p>
             *
             * @event sortchange
             * @memberof grid
             * @instance
             * @property {Event} event <code class="prettyprint">jQuery</code> event object.
             * @property {Object} data Additional data for the event.
             * @property {jQuery} data.header$ The column element jQuery object.
             * @property {object} data.column The column definition object.
             * @property {string} data.direction One of "asc" or "desc"
             * @property {string} data.action One of "add", "remove", or "change".
             *
             * @example <caption>Initialize the grid with the <code class="prettyprint">sortChange</code> callback specified:</caption>
             * $( ".selector" ).grid({
             *     sortChange: function( event, data ) {}
             * });
             *
             * @example <caption>Bind an event listener to the <code class="prettyprint">gridsortchange</code> event:</caption>
             * $( ".selector" ).on( "gridsortchange", function( event, data ) {} );
             */
            sortChange: null,

            /**
             * <p>Triggered when the columns have been reordered.</p>
             *
             * @event columnreorder
             * @memberof grid
             * @instance
             * @property {Event} event <code class="prettyprint">jQuery</code> event object.
             * @property {Object} data Additional data for the event.
             * @property {jQuery} data.header$ The column element jQuery object.
             * @property {object} data.column The column definition object.
             * @property {string} data.newPosition The index of the new position of the column.
             * @property {string} data.oldPosition The index of the old position of the column.
             *
             * @example <caption>Initialize the grid with the <code class="prettyprint">columnReorder</code> callback specified:</caption>
             * $( ".selector" ).grid({
             *     columnReorder: function( event, data ) {}
             * });
             *
             * @example <caption>Bind an event listener to the <code class="prettyprint">gridcolumnreorder</code> event:</caption>
             * $( ".selector" ).on( "gridcolumnreorder", function( event, data ) {} );
             */
            columnReorder: null,

            /**
             * <p>Triggered when a column width has been changed.</p>
             *
             * @event columnresize
             * @memberof grid
             * @instance
             * @property {Event} event <code class="prettyprint">jQuery</code> event object.
             * @property {Object} data Additional data for the event.
             * @property {jQuery} data.header$ The column element jQuery object.
             * @property {object} data.column The column definition object.
             * @property {string} data.width The new width in pixels.
             *
             * @example <caption>Initialize the grid with the <code class="prettyprint">columnResize</code> callback specified:</caption>
             * $( ".selector" ).grid({
             *     columnResize: function( event, data ) {}
             * });
             *
             * @example <caption>Bind an event listener to the <code class="prettyprint">gridcolumnresize</code> event:</caption>
             * $( ".selector" ).on( "gridcolumnresize", function( event, data ) {} );
             */
            columnResize: null,

            /**
             * <p>Triggered when the edit mode changes.</p>
             *
             * @event modechange
             * @memberof grid
             * @instance
             * @property {Event} event <code class="prettyprint">jQuery</code> event object.
             * @property {Object} data Additional data for the event.
             * @property {boolean} data.editMode The new edit mode.
             *
             * @example <caption>Initialize the grid with the <code class="prettyprint">modeChange</code> callback specified:</caption>
             * $( ".selector" ).grid({
             *     modeChange: function( event, data ) {}
             * });
             *
             * @example <caption>Bind an event listener to the <code class="prettyprint">gridmodechange</code> event:</caption>
             * $( ".selector" ).on( "gridmodechange", function( event, data ) {} );
             */
            modeChange: null,

            /**
             * Triggered when there is a pagination event that results in new records being displayed.
             *
             * @event pagechange
             * @memberof grid
             * @instance
             * @property {Event} event <code class="prettyprint">jQuery</code> event object.
             * @property {Object} data Additional data for the event.
             * When there are no records to display <code class="prettyprint">offset</code> and <code class="prettyprint">count</code> are 0.
             * @property {number} data.offset the offset of the first record in the page.
             * @property {number} data.count the number of records in the page that were added to the view.
             *
             * @example <caption>Initialize the grid with the <code class="prettyprint">pageChange</code> callback specified:</caption>
             * $( ".selector" ).grid({
             *     pageChange: function( event, data ) {}
             * });
             *
             * @example <caption>Bind an event listener to the <code class="prettyprint">gridpagechange</code> event:</caption>
             * $( ".selector" ).on( "gridpagechange", function( event, data ) {} );
             */
            pageChange: null
        },

        _create: function () {
            const self = this,
                o = this.options,
                ctrl$ = this.element;

            debug.info( `Grid '${ctrl$[0].id}' created. Model: ${o.modelName}` );

            ctrl$.addClass( C_GRID )
                .attr( ATTR_ROLE, "grid" );

            if ( o.multiple ) {
                ctrl$.attr( ARIA_MULTI, TRUE );
            }
            if ( !o.editable ) {
                ctrl$.attr( ARIA_RO, TRUE );
            }
            if ( !o.fixedRowHeight ) {
                ctrl$.addClass( C_GRID_VARHEIGHT );
            }

            this.forwardKey = keys.RIGHT;
            this.backwardKey = keys.LEFT;
            if ( ctrl$.css("direction") === "rtl" ) {
                ctrl$.addClass( C_RTL );
                this.forwardKey = keys.LEFT;
                this.backwardKey = keys.RIGHT;
            }

            this._enforceOptionConstraints();

            this._super(); // init table model view base

            gridCount += 1;
            this.idPrefix = ctrl$[0].id || "agv_" + gridCount;

            this.tableHeader$ = null;        // table > tbody element of the header table
            this.tableData$ = null;          // table > tbody element of the data table
            this.lastEditModeCell = null;
            this.controlBreaks = [];         // control breaks sorted by serverOffset

            this.editMode = false;
            this.columns = null;              // sorted array of column metadata from options.columns
            this.columnsStale = true;
            this.columnGroups = null;         // array of sorted arrays of column groups
            this.lastFrozenColIndex = -1;     // index of last start frozen column or -1 if no frozen columns
            this.endFrozenColIndex = -1;      // index of end (right) frozen column or -1 if none TODO
            this.lastFocused = null;          // last cell that had focus or has focus could be button/link inside a cell
            this.lastRow$ = null;             // All the columns (td) in the row that contains lastFocused.
            this.focusInHeader = false;       // if true the lastFocused cell is in the table header
            this.lastHoverCell = null;        // used to track mouse hover
            this.lastHoverRow = null;         // used to track mouse hover
            this.lastColIndex = null;
            this.columnControls$ = null;
            this.scrollTimerId = null;
            this.deactivateDelayTimer = null;
            this.lastFloatingPos = {};        // col name -> floating pos obj left, top
            this.allSelected = false;
            this.hasSelection = false;        // is there currently a selection or not, only used when persistSelection
            this.activateContext = null;      // cause of focus/activation -1 for tab/enter, >= 0 mouse X px offset in cell
                                              // used to set initial caret pos in edit mode
            this.gotoCellPending = null;

            this._initContextMenu( SEL_ROW, function( event ) {
                // don't open context menu when target is an anchor or in edit mode
                return $( event.target ).closest( "a" ).length > 0 || self.editMode;
            }, function( event ) {
                var cell$;

                // context menu only applies to grid cells and when not in edit mode
                cell$ = getContainingDataCell$( event.type === "keydown" ? self.lastFocused : event.target );
                if ( cell$.length ) {
                    if ( self.options.selectCells ) {
                        if ( !cell$.hasClass( C_SELECTED ) ) {
                            return cell$;
                        }
                    } else {
                        // if target row not selected then select it
                        if ( !cell$.parent().hasClass( C_SELECTED ) ) {
                            return cell$;
                        }
                    }
                    return true;
                }
                return false;
            }, function( ui ) {
                if ( self.options.selectCells ) {
                    ui.selectedRange = self.getSelectedRange();
                } else {
                    ui.selectedRecords = self.getRecords(ui.selection);
                }
            } );

            // get the model
            this._initModel( o.modelName );

            this._on( this._eventHandlers );

            if ( o.allowCopy ) {
                clipboard.addHandler( ctrl$[0], function( dataTransfer ) {
                    if ( self.editMode || o.disabled ) {
                        return false;
                    } // else
                    self._copy( dataTransfer );
                    return true;
                });
            }

            // use debounce (timer) to make sure the focus happens first and also throttle rapid changes from keyboard navigation.
            this._selNotifyDelay = util.debounce( this._selChangeNotify, 1 );
            this._selNotifyLongDelay = util.debounce( this._selChangeNotify, 350 );

            this._updateHighlights();
            this.refresh();
            this._setSelectionMode();

            if ( o.disabled ) {
                this._setOption( "disabled", o.disabled );
            }
        },

        _eventHandlers: {
            resize: function( event ) {
                if (event.target !== this.element[0]) {
                    return;
                }
                this.resize();
                event.stopPropagation();
            },
            click: function ( event ) {
                const o = this.options,
                    target$ = $( event.target );
                let cell$, allChecked;

                // ignore click, shift and ctrl click on anchors and buttons and anything in the footer to let the browser do its thing
                if ( target$.closest( "a,button,.a-GV-footer" ).length ) { // todo consider if this should be using tabbableCellContent
                    cell$ = target$.closest( SEL_GRID_COL_HEADER_GROUP );
                    if ( cell$.length ) {
                        // when the button is in the header still need to do this so if focus returns to the button
                        // later such as with a menu or dialog the selection context is not lost
                        this.focusInHeader = true;
                        this.lastColIndex = null;
                        this._select( cell$, event, true, false );
                    } else {
                        cell$ = target$.closest( SEL_GRID_CELL_OR_BREAK );
                        // when clicking a button inside a cell still need to select the cell for focus management
                        if ( cell$.length && !this.editMode ) {
                            this.focusInHeader = false;
                            this.lastColIndex = null;
                            this._select( cell$, SEl_ACTION_NONE, false, false ); // don't want to change the selection
                            target$.trigger( "focus" );
                        }
                    }
                    return;
                }

                // ignore clicks in the the floating (popup) edit column item
                // usually the floating element is at the end of the document body but it can also be inside the cell.
                if ( target$.closest( SEL_FLOATING_ITEM ).length > 0 ) {
                    return;
                }

                // Check if click on the select all header
                cell$ = target$.closest( SEL_GRID_SELECT_ALL );
                if ( cell$.length ) {
                    this.focusInHeader = true;
                    this.lastColIndex = null;
                    if ( o.rowHeaderCheckbox && o.multiple && o.selectAll && !o.selectCells ) {
                        allChecked = cell$.find( SEL_SELECTOR ).attr( ARIA_CHECKED ) === TRUE;
                        // if currently all selected then select none otherwise select all.
                        if ( allChecked ) {
                            this.setSelection( $() );
                        } else {
                            if ( !o.pagination.scroll && o.persistSelection && event.shiftKey ) {
                                this.focusInHeader = false;
                                this._select( this._getAllSelectableRows().map( function() { return $(this).children()[0]; } ), SEL_ACTION_ADD, false, false );
                                this.focusInHeader = true;
                            } else {
                                this.selectAll();
                            }
                        }
                        this._select( cell$, event, true, false );
                        this._setFocusable( cell$[0] ); // need to force this because of setting selection twice
                    } else {
                        this._select( cell$, event, true, false );
                    }
                    return;
                }

                // Check if click on a column group header. They don't do much but need to take focus
                cell$ = target$.closest( SEL_GRID_COL_GROUP );
                if ( cell$.length ) {
                    this.focusInHeader = true;
                    this.lastColIndex = null;
                    this._select( cell$, event, true, false );
                    event.preventDefault();
                    return;
                }

                // Check if click on any other header cell and not on a button
                cell$ = target$.closest( SEL_GRID_COL_HEADER );
                if ( cell$.length && target$.closest( "button" ).length === 0 ) {
                    this.focusInHeader = true;
                    this.lastColIndex = null;
                    this._select( cell$, event, true, false );
                    this._activateColumnHeader( event, cell$ );
                    event.preventDefault();
                    return;
                }

                // Check if click on a row header
                cell$ = target$.closest( SEL_GRID_SEL_HEADER );
                if ( cell$.length ) {
                    if ( o.rowHeaderCheckbox && !o.selectCells ) {
                        // always behave like toggle
                        event.ctrlKey = true;
                        event.shiftKey = false;
                    }
                    this.focusInHeader = false;
                    this.lastColIndex = null;
                    this._select( cell$, event, true, false );
                    event.preventDefault();
                    return;
                }

                // Check if click on any data cell
                cell$ = target$.closest( SEL_GRID_CELL );
                if ( cell$.length ) {
                    this.focusInHeader = false;
                    this.lastColIndex = null;
                    if ( !cell$.hasClass( C_ACTIVE ) ) {
                        // Check if click on interactive part of a column item
                        this._checkInteractWithCellItem( event, target$, cell$ );
                        this._select( cell$, event, true, false );
                        event.preventDefault();
                    }
                    return;
                }
                cell$ = target$.closest( SEL_GRID_BREAK_HEADER );
                if ( cell$.length ) {
                    this.focusInHeader = false;
                    this.lastColIndex = null;
                    this._select( cell$, event, true, false );
                    event.preventDefault();
                }
            },
            dblclick: function ( event ) {
                const o = this.options,
                    cell$ = $( event.target ).closest( SEL_GRID_CELL ).not( SEL_GRID_SEL_HEADER );

                if ( cell$.length ) {
                    if ( o.editable && o.allowEditMode ) {
                        if ( !this.editMode ) {
                            this.setEditMode( true, true );
                        }
                    } else {
                        this._fireActivate( event, cell$ );
                    }
                }
            },
            mousedown: function ( event ) {
                const target$ = $( event.target );

                // ignore this event for anything in the footer or links or buttons
                // prefer the original event to get the button
                if ( ( event.originalEvent || event ).button !== 0 ||
                        target$.closest( "a,button,.a-GV-footer" ).length ) { // todo consider if this should use tabbableCellContent
                    // set focus in header early, before click, in case the button needs to set the selection.
                    this.focusInHeader = target$.closest( SEL_GRID_COL_HEADER_GROUP ).length > 0;
                    return;
                }

                // Preventing default for mouse down prevents some cases of text selection and also
                // makes it so that the focus happens after the click. This includes preventing mouse down on the
                // expand/collapse button so it can be clicked without deactivating the cell.
                // But if the click is on the active editing cell don't prevent it so the click gets through to the editing controls
                if ( target$.closest( SEL_EXPAND_COLLAPSE ).length || !this.editMode ) {
                    event.preventDefault();
                    return;
                } // else
                const cell$ = target$.closest( SEL_GRID_CELL );

                if ( this.editMode && cell$.length && !cell$.hasClass( C_ACTIVE ) ) {
                    this.activateContext = event.clientX - event.target.getClientRects()[0].x;
                    // In edit mode the mouse down begins cell activation but doesn't result in a click and even if it did
                    // it would happen before the cell was activated. Some items would like it if the initial click
                    // happened as if after the cell was already activated. Remember the event target so _interactWithCellItem
                    // can be called after activate.
                    this._checkInteractWithCellItem( null, target$, cell$ );
                }
            },
            keydown: function ( event ) {
                const self = this,
                    o = this.options,
                    kc = event.which,
                    target$ = $( event.target );
                let colIndex, cur$, column, pos, page, groupLevel, sel, w,
                    next$ = null;

                function findNextColumnPosition( pos, inc ) {
                    let nextPos = null;

                    pos += inc;
                    for ( let i = pos; i >= 0 && i < self.columns.length; i += inc ) {
                        if ( !self.columns[i].hidden ) {
                            nextPos = i;
                            break;
                        }
                    }
                    return nextPos;
                }

                function reportStart() {
                    // when go to select don't consider the control key
                    event.ctrlKey = false;
                    if ( o.pagination.scroll ) {
                        // don't ever expect there to be a filler row at the beginning
                        self.firstPage();
                    }
                    next$ = self.tableData$.children().first().children().first();
                    self.focusInHeader = false;
                }

                function reportEnd( ) {
                    // when go to select don't consider the control key
                    event.ctrlKey = false;
                    if ( o.pagination.scroll ) {
                        self.lastPage();
                    }
                    next$ = self.tableData$.children( SEL_VISIBLE ).last();
                    // in the case of scroll paging there may not be any rows at the end yet
                    if ( next$.hasClass( C_GRID_SCROLL_FILLER ) ) {
                        next$ = null;
                        // so wait for the page to load
                        self.element.one( "gridpagechange", () => {
                            self._select( self.tableData$.children().last().children().last(), {
                                type:"keydown",
                                shiftKey: event.shiftKey
                            }, true, false );
                        } );
                    } else {
                        next$ = next$.children().last();
                    }
                    self.focusInHeader = false;
                }

                function selectAfterChangePage( which, colIndex ) {
                    // need to set selection when the page is ready
                    self.element.one( "gridpagechange", () => {
                        setTimeout( () => {
                            self._select( self.tableData$.children()[which]().children().eq( colIndex ), null, true, true );
                        }, 0 );
                    } );
                }

                function focusLoadMoreIfEnabled() {
                    const load$ = self.element.find( SEL_LOAD_MORE );

                    if ( load$[0] ) {
                        if ( load$[0].disabled ) {
                            // let the browser do its default scroll behavior (bug 25802101)
                            return true;
                        } else {
                            // move focus to the load more button
                            load$[0].focus();
                            event.preventDefault();
                        }
                    }
                    return false;
                }

                // ignore key events for anything in the footer
                if ( target$.closest( ".a-GV-footer" ).length > 0 ) {
                    return;
                }

                if ( kc === keys.PAGE_UP || kc === keys.PAGE_DOWN ) {
                    page = this.viewportHeight / this.avgRowHeight; // number of rows that fit in the viewport
                }

                if ( kc === keys.HOME ) {
                    if ( !this.editMode && this.lastFocused ) {
                        this.lastColIndex = null;
                        if ( event.ctrlKey && !isMac ) {
                            // Support Ctrl+home
                            reportStart();
                        } else {
                            next$ = this.lastRow$.first();
                        }
                        event.preventDefault();
                    }
                } else if ( kc === keys.END ) {
                    if ( !this.editMode && this.lastFocused ) {
                        this.lastColIndex = null;
                        if ( event.ctrlKey && !isMac ) {
                            // Support Ctrl+end
                            reportEnd();
                        } else {
                            next$ = this.lastRow$.last();
                        }
                        event.preventDefault();
                    }
                } else if ( kc === keys.PAGE_DOWN ) {
                    if ( ( !this.editMode || getContainingTableCell$( this.lastFocused ).hasClass( C_GRID_SEL_HEADER ) ) &&
                            !event.altKey ) {
                        if ( this.focusInHeader ) {
                            // first move into first row
                            cur$ = getContainingTableCell$( this.lastFocused );

                            // may need to move down over multiple header group rows
                            let headerRows$ = cur$.closest( "thead" ).children(),
                                downRows = headerRows$.length - headerRows$.index( cur$.parent() );

                            cur$ =  this._getNextCellDown( getContainingTableCell$( this.lastFocused ), downRows );
                        } else {
                            cur$ = getContainingGridCell$( this.lastFocused );
                        }
                        next$ = this._getNextCellDown( cur$, page );
                        if ( !next$ ) {
                            if ( o.pagination.loadMore ) {
                                if ( focusLoadMoreIfEnabled() ) {
                                    // let the browser do its default scroll behavior
                                    return;
                                }
                            } else if ( !o.pagination.scroll ) {
                                let total = this.model.getTotalRecords();
                                if ( total < 0 || this.pageOffset + this.pageCount < total ) {
                                    selectAfterChangePage( "first", columnIndexFromCell( cur$ ) );
                                    this.nextPage();
                                }
                            }
                        }
                        event.preventDefault();
                    }
                } else if ( kc === keys.PAGE_UP ) {
                    if ( !this.focusInHeader &&
                            ( !this.editMode || getContainingTableCell$( this.lastFocused ).hasClass( C_GRID_SEL_HEADER ) ) &&
                            !event.altKey ) {
                        cur$ = getContainingGridCell$( this.lastFocused );
                        next$ = this._getPrevCellUp( cur$, page, true );
                        if ( !next$ ) {
                            if ( !o.pagination.scroll && this.pageOffset > 0 ) {
                                selectAfterChangePage( "last", columnIndexFromCell( cur$ ) );
                                this.previousPage();
                            }
                        }
                        event.preventDefault();
                    }
                } else if ( kc === keys.DOWN ) {
                    cur$ = getContainingTableCell$( this.lastFocused );
                    if ( o.columnSort && event.altKey && cur$.hasClass( C_GRID_COL_HEADER )) {
                        self._sortChange( event, cur$, "desc" );
                        return;
                    }
                    if ( (!this.editMode || this.focusInHeader || cur$.hasClass( C_GRID_SEL_HEADER ) || cur$.hasClass( C_GRID_BREAK_HEADER ) ) &&
                            this.lastFocused ) {
                        if ( !event.altKey ) { // Down key alone moves down 1 row
                            next$ = this._getNextCellDown( cur$, 1 );
                            if ( !next$ && o.pagination.loadMore ) {
                                if ( focusLoadMoreIfEnabled() ) {
                                    // let the browser do its default scroll behavior
                                    return;
                                }
                            }
                            if ( next$ || o.constrainNavigation ) {
                                // don't let selection happen or scrolling
                                event.preventDefault();
                            }
                        } else if ( isMac && event.altKey ) { // Option Down on Mac goes to end of report
                            reportEnd();
                        }
                    }
                    // don't let a menu button do it's down arrow thing
                    if ( target$.closest( "[data-menu]" ).length ) {
                        event.stopPropagation();
                    }
                } else if ( kc === keys.UP ) {
                    cur$ = getContainingTableCell$( this.lastFocused );
                    if ( o.columnSort && event.altKey && cur$.hasClass( C_GRID_COL_HEADER )) {
                        self._sortChange( event, cur$, "asc" );
                        return;
                    }
                    if ( (!this.editMode || this.focusInHeader || cur$.hasClass( C_GRID_SEL_HEADER ) || cur$.hasClass( C_GRID_BREAK_HEADER ) ) &&
                            this.lastFocused ) {
                        if ( !event.altKey ) { // Up key with no alt, moves up 1 row
                            if ( target$.is( SEL_LOAD_MORE ) ) {
                                this.focus();
                                event.preventDefault();
                            } else {
                                next$ = this._getPrevCellUp( cur$, 1 );
                            }
                            if ( next$ || o.constrainNavigation ) {
                                // don't let selection happen or scrolling
                                event.preventDefault();
                            }
                        } else if ( isMac && event.altKey ) {  // Option Up on Mac goes to start of report
                            reportStart();
                        }
                        event.stopPropagation(); // Don't let a containing tab or accordion act on Ctrl+Up
                    }
                } else if ( kc === this.backwardKey ) {
                    if ( event.altKey || event.metaKey ) {
                        return; // let the browser have this key
                    }
                    cur$ = getContainingTableCell$( this.lastFocused );
                    if ( ( event.ctrlKey || event.shiftKey ) && (
                                    cur$.hasClass( C_GRID_COL_HEADER ) || cur$.hasClass( C_GRID_COL_GROUP )
                                    ) && ( !cur$.hasClass ( C_GRID_SEL_HEADER ) || o.rowHeader === SEQUENCE || o.rowHeader === LABEL ) ) {
                        pos = toInteger( cur$.attr( ATTR_DATA_IDX ) );
                        if ( !( isNaN( pos ) && !event.ctrlKey && o.rowHeader !== SEQUENCE && o.rowHeader !== LABEL ) ) {
                            // must not be a row header, which can't be reordered and only resized when rowHeader is sequence or text
                            if ( pos >= 0 ) {
                                column = this.columns[pos];
                            }
                            if ( event.shiftKey && o.reorderColumns ) {
                                event.preventDefault(); // do this before moveColumn redraws the grid
                                // reorder column
                                if ( cur$.hasClass( C_GRID_COL_GROUP ) ) {
                                    groupLevel = domIndex( cur$.parent() );
                                    if ( pos > 0 ) {
                                        this.moveColumnGroup( groupLevel, pos, pos - 1 );
                                        cur$ = $( this.lastFocused ).closest( SEL_GRID_COL_GROUP );
                                    }
                                } else {
                                    pos = findNextColumnPosition( pos, -1 );
                                    if ( pos !== null ) {
                                        this.moveColumn( column, pos );
                                        // after re-rendering the focus should stay with the column
                                        return;
                                    }
                                }
                            } else if ( event.ctrlKey && o.resizeColumns && !cur$.hasClass( C_GRID_COL_GROUP ) ) { // else must be resize but that doesn't apply to group headers
                                // make column narrower
                                if ( column ) {
                                    if ( cur$.outerWidth() > MIN_COL_WIDTH ) {
                                        w = cur$.outerWidth() - COL_WIDTH_INC;
                                        if ( w < MIN_COL_WIDTH ) {
                                            w = MIN_COL_WIDTH;
                                        }
                                        this.setColumnWidth( column, w );
                                    }
                                } else {
                                    if ( self.rowHeaderWidth > MIN_COL_WIDTH ) {
                                        w = self.rowHeaderWidth - COL_WIDTH_INC;
                                        if ( w < MIN_COL_WIDTH ) {
                                            w = MIN_COL_WIDTH;
                                        }
                                        self.rowHeaderWidth = w;
                                        this._calculateColumnWidths( cur$, true );
                                    }
                                }
                                return;
                            }
                        }
                    }
                    if ( ( !this.editMode || this.focusInHeader || cur$.hasClass( C_GRID_BREAK_HEADER ) ) && this.lastFocused ) {
                        this.lastColIndex = null;
                        colIndex = this.lastRow$.index( cur$ );
                        if ( colIndex > 0) {
                            colIndex -= 1;
                            next$ = this.lastRow$.eq( colIndex );
                        }
                        event.preventDefault();
                    }
                } else if ( kc === this.forwardKey ) {
                    if ( event.altKey ) {
                        return; // let the browser have this key
                    }
                    cur$ = getContainingTableCell$( this.lastFocused );
                    if ( ( event.ctrlKey || event.shiftKey ) && (
                                    cur$.hasClass( C_GRID_COL_HEADER ) || cur$.hasClass( C_GRID_COL_GROUP )
                                    ) && ( !cur$.hasClass ( C_GRID_SEL_HEADER ) || o.rowHeader === SEQUENCE || o.rowHeader === LABEL ) ) {
                        pos = toInteger( cur$.attr( ATTR_DATA_IDX ) );
                        if ( !( isNaN( pos ) && !event.ctrlKey && o.rowHeader !== SEQUENCE && o.rowHeader !== LABEL ) ) {
                            // must not be a row header, which can't be reordered and only resized when rowHeader is sequence or text
                            if ( pos >= 0 ) {
                                column = this.columns[pos];
                            }
                            if ( event.shiftKey && o.reorderColumns ) {
                                event.preventDefault(); // do this before moveColumn redraws the grid
                                // reorder column
                                if ( cur$.hasClass( C_GRID_COL_GROUP ) ) {
                                    groupLevel = domIndex( cur$.parent() );
                                    if ( pos < this.columnGroups[groupLevel].length - 1 ) {
                                        this.moveColumnGroup( groupLevel, pos, pos + 1 );
                                        cur$ = $( this.lastFocused ).closest( SEL_GRID_COL_GROUP );
                                    }
                                } else {
                                    pos = findNextColumnPosition( pos, 1 );
                                    if ( pos !== null ) {
                                        this.moveColumn( column, pos );
                                        // after re-rendering the focus should stay with the column
                                        return;
                                    }
                                }
                            } else if ( event.ctrlKey && o.resizeColumns && !cur$.hasClass( C_GRID_COL_GROUP ) ) { // else must be resize but that doesn't apply to group headers
                                // make column wider
                                if ( column ) {
                                    this.setColumnWidth( column, cur$.outerWidth() + COL_WIDTH_INC );
                                } else {
                                    self.rowHeaderWidth += COL_WIDTH_INC;
                                    this._calculateColumnWidths( cur$, true );
                                }
                                return;
                            }
                        }
                    }
                    if ( ( !this.editMode || this.focusInHeader || cur$.hasClass( C_GRID_BREAK_HEADER ) ) && this.lastFocused ) {
                        this.lastColIndex = null;
                        colIndex = this.lastRow$.index( cur$ );
                        if ( colIndex < this.lastRow$.length - 1 ) {
                            colIndex += 1;
                            next$ = this.lastRow$.eq( colIndex );
                        }
                        event.preventDefault();
                    }
                } else if ( kc === 65 && event.ctrlKey && !this.editMode && o.multiple && o.selectAll && !o.selectCells ) { // Ctrl+A
                    if ( !o.pagination.scroll && o.persistSelection && event.shiftKey ) {
                        this._select( this._getAllSelectableRows().map(function() { return $(this).children()[0]; } ), SEL_ACTION_ADD, false, false );
                    } else {
                        this.selectAll( null ); // don't change focus or set focusable
                    }
                    event.preventDefault();
                } else if ( kc === keys.SPACE ) {
                    // see the below coordinated keyup handling of SPACE key
                    // ignore if on a button
                    if ( event.target.nodeName === "BUTTON" ) {
                        return;
                    }
                    cur$ = getContainingTableCell$( this.lastFocused );
                    if ( cur$.hasClass( C_GRID_COL_HEADER ) ) {
                        event.preventDefault(); // don't want default scroll behavior
                    }
                    if ( cur$.hasClass( C_GRID_CELL ) && ( !this.editMode || cur$.hasClass( C_GRID_SEL_HEADER ) ) ) {
                        // a grid cell not in edit mode and not on the row header checkbox (unless the row header has no checkbox)
                        // Check if column item supports interaction in navigation mode
                        if ( !this._checkInteractWithCellItem( event, target$, cur$ ) ) {
                            // process space on keyup, don't want default scroll behavior
                            // unless space interacts with cell item
                            event.preventDefault();
                        }
                    }
                } else if ( kc === keys.ENTER ) {
                    // ignore when target is an anchor or button (or other thing that uses enter) unless it is on the expand/collapse button
                    if ( !target$.hasClass( C_EXPAND_COLLAPSE ) && target$.closest( "a,button,.js-uses-enter" ).length > 0 ) {
                        return;
                    }
                    cur$ = target$.filter( SEL_GRID_SEL_HEADER ).find( SEL_SELECTOR );
                    if ( cur$.length ) {
                        cur$.trigger( EVENT_CLICK );
                        return;
                    }
                    cur$ = getContainingTableCell$( this.lastFocused );
                    if ( this.editMode && ( cur$.hasClass( C_GRID_CELL ) || cur$.hasClass( C_GRID_BREAK_HEADER ) ) ) {
                        // if in edit mode go to prev/next cell in column
                        // todo consider if should only do if !cur$.hasClass( C_GRID_SEL_HEADER, consider ctrl key
                        if ( event.shiftKey ) {
                            next$ = this._getPrevCellUp( cur$, 1, true ); // don't move up to header
                            // don't let the selection code act on the shift modifier
                            event.shiftKey = false;
                        } else {
                            next$ = this._getNextCellDown( cur$, 1 );
                        }
                        this.activateContext = -1;
                    } else {
                        event.preventDefault();
                        if ( o.editable && o.allowEditMode && cur$.hasClass( C_GRID_CELL ) && !cur$.hasClass( C_GRID_SEL_HEADER ) ) {
                            this.setEditMode( true, true );
                        } else if ( cur$.hasClass( C_GRID_COL_HEADER ) ) {
                            activateHeader( cur$, event, this );
                        } else if ( !(o.editable && o.allowEditMode) && cur$.hasClass( C_GRID_CELL ) ) {
                            this._fireActivate( event, cur$ );
                        }
                    }
                } else if ( kc === 113 ) { // F2
                    cur$ = getContainingDataCell$( this.lastFocused );
                    if ( cur$.length && o.editable && o.allowEditMode && !this.editMode ) {
                        this.setEditMode( true, true );
                    }
                } else if ( kc === keys.ESCAPE ) {
                    if ( o.editable && o.allowEditMode && this.editMode ) {
                        this._doEscapeKey( event );
                    }
                } else if ( kc === keys.DELETE ) {
                    if ( o.editable && o.allowDelete && !this.editMode && !this.focusInHeader ) {
                        sel = this.getSelectedRecords();

                        for ( let i = 0; i < sel.length; i++ ) {
                            if ( !this.model.allowDelete( sel[i] ) ) {
                                sel.splice( i, 1 );
                                i -= 1;  // i stays the same for next iteration
                            }
                        }
                        if ( sel.length > 0 ) {
                            this.model.deleteRecords( sel );
                        }
                    }
                } else if ( kc === 45 ) { // INSERT
                    if ( o.editable && o.allowInsert && !this.editMode && !o.selectCells ) {
                        if ( this.model.allowAdd() ) {
                            sel = this.getSelectedRecords();
                            if ( sel.length > 0 ) {
                                this.model.insertNewRecord( null, sel[sel.length - 1] );
                            } else {
                                this.model.insertNewRecord( );
                            }
                        }
                    }
                } else if ( kc === 112  && event.altKey ) { // Alt+F1 get column help
                    this._doHelpKey();
                } else if ( kc === keys.TAB && this.editMode ) {
                    this.activateContext = -1;
                    // when editing there is a slight difference in behavior when tabbing into a new row that starts with a row selector
                    this.lastKeyTab = true;
                }
                if ( next$ ) {
                    this._select( next$, event, true, true );
                    event.preventDefault();
                }
            },
            keyup: function ( event ) {
                const kc = event.which,
                    target$ = $( event.target );
                let cur$;

                // ignore key events for anything in the footer
                if ( target$.closest( ".a-GV-footer" ).length > 0 ) {
                    return;
                }

                if ( kc === keys.SPACE ) {
                    // see the above coordinated keydown handling of SPACE key
                    cur$ = target$.filter( SEL_GRID_SEL_HEADER ).find( SEL_SELECTOR );
                    if ( cur$.length ) {
                        cur$.trigger( EVENT_CLICK );
                        event.preventDefault(); // don't scroll the page
                        return;
                    }
                    cur$ = getContainingTableCell$( this.lastFocused );
                    if ( cur$.hasClass( C_GRID_COL_HEADER ) ) {
                        activateHeader( cur$, event, this );
                    } else if ( cur$.hasClass( C_GRID_CELL ) && ( !this.editMode || cur$.hasClass( C_GRID_SEL_HEADER ) ) ) {
                        this._select( cur$, event, true, true );
                    }
                }
            },
            /*
             * General flow of flyweight pattern and cell activation:
             * In edit mode focus is in a cell and user clicks on another cell in another row
             * 1) mouse down event precedes focus events
             * 2) focusout event on current cell calls _beginDeactivate to start a timer that will deactivate the
             *    current cell for real if focus isn't detected by the grid widget [ if user clicks outside the grid
             *    or focus is not detected in the grid for any other reason within the deactivate timer (10ms) then
             *    the current cell will be deactivated]
             * 3) focusin event on new cell. This calls _clearDeactivate to cancel the timer because grid still handling deactivate/activate
             * 4)   deactivate cell current cell
             * 5)   setTimeout to yield then activate new cell
             * 6)    because the new cell is in a different row (if click on column in same row the following row deactivate activate is skipped)
             *         deactivate old row then
             *         activate new row
             * 7)    replace the cell content with the column item. Because the DOM under the mouse down has changed the click event never happens
             *       call TMV base _activateColumnItem
             * 8)    the column item is focused causing:
             *         focusout event on the cell which calls _beginDeactivate
             *         but focusin happens on the column item in the same cell so _clearDeactivate is done and no deactivation happens
             * Now the old cell has been deactivated and the new cell is active.
             * There are many more details including:
             * - floating items
             * - items that use a popup
             * - handle aggregate and break cells that can't be activated but do get focused
             */
            focusin: function ( event ) {
                let cell$, prevActive$,
                    toFocus = null,
                    self = this,
                    target$ = $( event.target );

                // ignore focus changes within a floating edit popup - this is for the collapsed case where the popup is inside the cell
                if ( target$.closest( SEL_FLOATING_ITEM ).length ) {
                    this._clearDeactivate();
                    return;
                }

                cell$ = target$.closest( SEL_GRID_CELL_OR_HEADER );
                if ( cell$.length === 0 ) {
                    // focus not in a cell could be in a tab trap which will soon put focus in a cell
                    // remember the last edit cell across the tab trap bump
                    if ( !target$.hasClass( C_TAB_TRAP ) ) {
                        this.lastEditModeCell = null;
                    }
                    return;
                }
                cell$.addClass( C_FOCUSED );

                // scroll-padding set in _calculateColumnWidths takes care of scrolling the cell into view
                // from under the frozen columns

                if ( this.lastEditModeCell === cell$[0] ) {
                    // ignore focus changes within an editing cell
                    this._clearDeactivate();
                    return;
                }

                if ( this.editMode ) {
                    let activateContext = this.activateContext;

                    // the change in focus that will happen due to activate keeps the click event from happening
                    // that is why focusInHeader set to false here
                    this.focusInHeader = false;
                    prevActive$ = $( this.lastEditModeCell );
                    this._clearDeactivate();
                    if ( prevActive$.length ) {
                        this._deactivateCell( prevActive$ );
                    }
                    if ( cell$.hasClass( C_GRID_CELL ) || cell$.hasClass( C_GRID_BREAK_HEADER ) ) {
                        // focus on the selection header should not activate the row but just do selection
                        // unless tabbing to it from the previous row.
                        if ( ( cell$.hasClass( C_GRID_SEL_HEADER ) || cell$.hasClass( C_GRID_BREAK_HEADER ) ) && !this.lastKeyTab ) {
                            this._clearTabTraps();
                            this.lastEditModeCell = null;
                            this._setFocusable( event.target );
                            this._setTabTraps( cell$ );
                        } else {
                            // Allow clicking on links and buttons in cells while in edit mode
                            if ( target$.closest( "a,button" ).length ) { // todo consider if this should use tabbableCellContent
                                toFocus = event.target;
                            }
                            // fix bug 30250522 need a slight delay before activation to let all the focus events happen
                            setTimeout( function () {
                                // because this was done from a timeout, double check that still in edit mode and cell is not already active
                                // handle edge cases where things happen very quickly because of programmatic control of focus/editing
                                // or controls that may fire extra focus events.
                                if ( self.editMode && !cell$.hasClass( C_ACTIVE ) ) {
                                    self._activateCell( cell$, toFocus, activateContext );
                                }
                            }, 0 );
                        }
                    } else {
                        this.focusInHeader = true;
                        this.lastEditModeCell = null;
                        this._setFocusable( event.target );
                    }
                } else {
                    this._setFocusable( event.target );
                }
                this.lastKeyTab = false;
                this.activateContext = null;

            },
            focusout: function ( event ) {
                const target$ = $( event.target ),
                    cell$ = target$.closest( SEL_GRID_CELL_OR_HEADER ),
                    column = this._getColumnMetadata( cell$ ),
                    columnItem = column && this.columnItems[ column.property ];

                cell$.removeClass( C_FOCUSED );
                if ( this.editMode && cell$.hasClass( C_GRID_CELL ) ) {
                    if ( this.lastEditModeCell === null ) {
                        // if there is no last edit cell then must be on a row selector so there is nothing to deactivate
                        // and that means must clear the old tab stops here
                        this._clearTabTraps();
                    }

                    /*
                     * (bug #30801170) only begin deactivation, if either:
                     * - we're leaving a cell with no column item, or...
                     * - we're leaving a column item that is not disabled
                     * (prevents unnecessary deactivation)
                     */
                    if ( !columnItem || !columnItem.item.isDisabled() ) {
                        this._beginDeactivate( cell$ );
                    }

                }
            },
            mousemove: function( event ) {
                var row$, container, x, column, colIndex,
                    target$ = $(event.target ),
                    o = this.options,
                    cell$ = target$.closest( SEL_GRID_CELL_OR_HEADER );

                event = event.originalEvent || event;
                if ( cell$.length ) {
                    if ( cell$[0] !== this.lastHoverCell ) {
                        row$ = cell$.parent();
                        if ( row$[0] !== this.lastHoverRow ) {
                            this._clearHoverStates();
                            this.lastHoverRow = row$[0];
                            if ( ( row$.hasClass( C_GRID_ROW ) || row$.hasClass( C_CONTROL_BREAK ) ) &&
                                    !this.columnReordering && !this.columnWidthDragging ) {
                                this._setRowHoverState( row$ );
                            }
                        }
                        this.lastHoverCell = cell$[0];
                        // start by assuming these are hidden because each is conditionally shown
                        this.columnControls$.hide();
                        this.columnHandle$.hide();
                        if ( cell$[0].nodeName === "TH" && !cell$.hasClass( C_GRID_CELL ) && !row$.hasClass( C_CONTROL_BREAK ) ) {
                            column = this.columns[cell$.attr( ATTR_DATA_IDX )];
                            // if column sorting is enabled and over a column header and the column can be sorted
                            if ( o.columnSort && !this.columnReordering && !this.columnWidthDragging &&
                                    !cell$.hasClass( C_GRID_SEL_HEADER ) && !cell$.hasClass( C_GRID_COL_GROUP ) &&
                                    column.canSort ) {
                                cell$.append( this.columnControls$.show() );
                                this._updateColumnControls( column );
                            }
                            // if column ordering is enabled and over a column header but not if already dragging
                            if ( o.reorderColumns && event.buttons === 0 && !this.columnReordering && !this.columnWidthDragging &&
                                    !cell$.hasClass( C_GRID_SEL_HEADER ) ) {
                                this.columnReorderCell$ = cell$;
                                cell$.append( this.columnHandle$.show().css( PROP_LEFT, "" ) );
                            }
                            if ( o.resizeColumns && !this.columnReordering && !this.columnWidthDragging &&
                                    ( !cell$.hasClass( C_GRID_SEL_HEADER ) || o.rowHeader === SEQUENCE || o.rowHeader === LABEL ) ) {
                                // position the column width drag handle and associate it with its column
                                container = cell$.closest( "div" )[0];
                                x = cell$[0].offsetLeft + container.offsetLeft - container.scrollLeft;
                                if ( !this.element.hasClass( C_RTL ) ) {
                                    x += cell$.outerWidth();
                                }
                                this.columnWidthHandle$.show().css( PROP_LEFT, x - ( this.columnWidthHandle$.width() / 2 ) );
                                colIndex = cell$.attr( ATTR_DATA_IDX );
                                if ( colIndex ) {
                                    this.columnWidthCell$ = this._columnFromIndex( colIndex ); // do this to get both header cells - don't use cell$
                                } else {
                                    this.columnWidthCell$ = this.element.find( SEL_GRID_COL_HEADER + SEL_GRID_SEL_HEADER );
                                }
                            }
                        }
                    }
                } else {
                    if ( this.lastHoverCell !== null ) {
                        this.lastHoverCell = null;
                        this.lastHoverRow = null;
                        this._clearHoverStates();
                    }
                }
            },
            mouseleave: function() {
                if ( this.lastHoverCell !== null ) {
                    this.lastHoverCell = null;
                    this.lastHoverRow = null;
                    this._clearHoverStates();
                }
            }
        },

        _doEscapeKey: function( event ) {
            const cur$ = getContainingDataCell$( this.lastFocused );

            if ( cur$.length ) {
                this._setFocusable( cur$[0] );
            }
            // move focus so that the change event happens
            cur$.trigger( "focus" );
            this.setEditMode( false );
            if ( cur$.length ) {
                this._setFocus( this._getCellFocusable( cur$ ) );
            }
            // if we handle the escape key don't let anyone else. this for example keeps dialogs from closing
            event.stopPropagation();
        },

        _doHelpKey: function() {
            const cur$ = getContainingTableCell$( this.lastFocused );

            if ( !cur$.hasClass( C_GRID_SEL_HEADER ) && !cur$.hasClass( C_GRID_COL_GROUP ) && !cur$.hasClass( C_GRID_BREAK_HEADER ) ) {
                let column = this._getColumnMetadata( cur$ );

                if ( column && column.helpid ) {
                    // In edit mode Alt+F6 or close dialog doesn't refocus the item control so focus the cell first
                    // before showing the help.
                    if ( this.editMode ) {
                        cur$.trigger( "focus" );
                    }
                    apex.theme.popupFieldHelp( column.helpid, apex.env.APP_SESSION );
                }
            }
        },

        _initTooltips: function( options ) {
            var ttOptions,
                self = this;

            if ( !$.ui.tooltip ) {
                debug.warn( "tooltip option ignored because missing tooltip widget dependency" );
                return;
            }
            if ( this.tooltipOptions ) {
                // tooltip widget already initialized so destroy it
                this.element.find( SEL_GRID_BODY ).filter( ":data('ui-tooltip')" ).tooltip( "destroy" );
                this.tooltipOptions = null;
            }
            if ( options ) {
                ttOptions = this.tooltipOptions = extend( true, {
                                show: apex.tooltipManager.defaultShowOption(),
                                tooltipClass: "a-GV-tooltip"
                                // todo position
                            }, options ); // deep copy
                ttOptions.items = SEL_CELL; // force this
                ttOptions._originalContent = ttOptions.content;
                ttOptions.content = function( callback ) {
                    let recId, cls, text,
                        cell$ = $( this ),
                        row$ = cell$.parent(),
                        recordMeta = null,
                        colMeta = null,
                        column = self._getColumnMetadata( cell$ );

                    recId = row$.attr( ATTR_DATA_ID );
                    if ( recId ) {
                        recordMeta = self.model.getRecordMetadata( recId );
                    }
                    if ( column && recordMeta && recordMeta.fields ) {
                        colMeta = recordMeta.fields[ column.property ];
                    }
                    if ( recordMeta ) {
                        // even deleted records can have error messages, see bug 35046331
                        if ( colMeta && ( colMeta.error || colMeta.warning ) ) {
                            cls = colMeta.error ? C_ERROR : C_WARNING;
                            text = colMeta.message;
                        } else if ( ( recordMeta.error || recordMeta.warning ) && cell$.hasClass( C_GRID_SEL_HEADER ) ) {
                            // TODO think where to show the message if there is no row header
                            cls = recordMeta.error ? C_ERROR : C_WARNING;
                            text = recordMeta.message;
                        } else if ( recordMeta.agg && column ) {
                            cls = "";
                            text = self.options.aggregateTooltips[ recordMeta.agg + "|" + column.property ];
                        }
                        if ( text ) {
                            return `<span class='${cls}'>${util.escapeHTML( text )}</span>`;
                        }
                    }
                    if ( ttOptions._originalContent ) {
                        return ttOptions._originalContent.call( this, callback, self.model, recordMeta, colMeta, column );
                    }
                    return null;
                };
                ttOptions.open = function( event, ui ) {
                    // hoist up the error indicator class
                    if ( ui.tooltip.find( "." + C_ERROR ).length ) {
                        ui.tooltip.addClass( C_ERROR );
                    }
                    if ( ui.tooltip.find( "." + C_WARNING ).length ) {
                        ui.tooltip.addClass( C_WARNING );
                    }
                };
                this.element.find( SEL_GRID_BODY + "," + SEL_GRID_HEADER ).tooltip( ttOptions );
            }
        },

        _destroy: function() {
            const ctrl$ = this.element;

            this._tableModelViewDestroy();
            ctrl$.removeClass( C_GRID + " " + C_DISABLED + " " + C_RTL )
                .removeAttr( ATTR_ROLE )
                .removeAttr( ARIA_MULTI )
                .removeAttr( ARIA_RO )
                .removeAttr( ARIA_DISABLED ) // base destroy does this also but not clear why since it doesn't set it
                .empty();

            clipboard.removeHandler( ctrl$[0] ); // no problem if had not been added

            debug.info( `Grid '${ctrl$[0].id}' destroyed. Model: ${this.options.modelName}` );

            this.tableData$ = null;

            // disconnect from the model
            this._initModel( null ); // this will clean up change listener

            if ( this.gridStyles$ ) {
                this.gridStyles$.remove();
            }

            this._destroyContextMenu();
        },

        _setOption: function ( key, value ) {
            const ctrl$ = this.element,
                o = this.options;

            debug.info( `Grid '${ctrl$[0].id}' set option '${key}' to:`, value );

            this._checkContextMenuOptions( key, value );
            if ( key === "allowCopy" ) {
                throw new Error( `Grid ${key} cannot be set` );
            } else if ( key === "editable" && !value && this.editMode ) {
                // if changing from editable to not editable make sure to leave edit mode
                this.setEditMode( false );
            } else if ( key === "multiple" ) {
                this.setSelection( $() ); // clear the selection mainly for going from multiple to single
            }

            this._super( key, value );

            this._enforceOptionConstraints();

            if ( key === "disabled" ) {
                ctrl$.toggleClass( C_DISABLED, value );
                if ( value ) {
                    ctrl$.attr( ARIA_DISABLED, TRUE );
                } else {
                    ctrl$.removeAttr( ARIA_DISABLED );
                }
                if ( this.lastFocused ) {
                    if ( value ) {
                        this.lastFocused.tabIndex = -1;
                    } else {
                        this._setFocusable( this.lastFocused );
                    }
                }
                if ( value ) {
                    // when enabling do this just in case it was resized while disabled
                    this.resize();
                }
            } else if ( key === "selectCells" ) {
                this._setSelectionMode();
            } else if ( key === "multiple" ) {
                if ( value ) {
                    ctrl$.attr( ARIA_MULTI, TRUE );
                } else {
                    ctrl$.removeAttr( ARIA_MULTI );
                }
                if ( o.rowHeader !== NONE && o.rowHeaderCheckbox ) {
                    this.refreshColumns(); // need to have the input change to checkbox or radio
                }
                this.refresh();
            } else if ( key === "modelName" ) {
                // leave edit mode if the model changes
                if ( this.editMode ) {
                    this.setEditMode( false );
                }
                this._initModel( value );
                this.refresh( false );
            } else if ( key === "highlights" ) {
                this._updateHighlights();
            } else if ( key === "tooltip" ) {
                this._initTooltips( value );
            } else if ( key === "hideEmptyFooter" ) {
                this._updateTotalRecords();
            } else if ( key === "fixedRowHeight" ) {
                ctrl$.toggleClass( C_GRID_VARHEIGHT, !value );
                this._refreshGrid();
            } else if ( ["rowHeader", "rowHeaderCheckbox", "rowHeaderLabelColumn", "columnSort", "resizeColumns",
                        "reorderColumns", "editable", "selectAll", "autoAddRecord",
                        "footer", "pagination", "rowsPerPage"].includes( key ) ) {

                if ( key === "editable" ) {
                    if ( !value ) {
                        ctrl$.attr( ARIA_RO, TRUE );
                    } else {
                        ctrl$.removeAttr( ARIA_RO );
                    }
                }
                this._refreshGrid();
            }

        },

        _enforceOptionConstraints: function() {
            const o = this.options,
                ctrl$ = this.element;

            function getVarPx( cssVar, fallback ) {
                return parseFloat( ctrl$.css( cssVar ) ) || fallback;
            }

            if ( o.rowHeaderCheckbox && o.rowHeader === NONE ) {
                debug.warn("Option rowHeaderCheckbox cannot be true when rowHeader is 'none'.");
                o.rowHeaderCheckbox = false;
            }

            if ( o.multiple && ( o.rowHeader === NONE || !o.rowHeaderCheckbox ) && apex.userHasTouched() ) {
                // make multiple selection easier/possible on touch devices
                if ( o.rowHeader === NONE ) {
                    o.rowHeader = "plain";
                }
                o.rowHeaderCheckbox = true;
            }

            if ( !o.editable || !o.allowEditMode ) {
                o.autoAddRecord = false;
            }

            if ( o.rowHeader !== NONE ) {
                if ( o.rowHeaderWidth ) {
                    this.rowHeaderWidth = o.rowHeaderWidth;
                } else {
                    let w;

                    if ( o.rowHeader === SEQUENCE || o.rowHeader === LABEL ) {
                        if ( o.rowHeaderCheckbox ) {
                            w = getVarPx( "--js-gv-row-header-width-ctrl-text", 72);
                        } else {
                            w = getVarPx( "--js-gv-row-header-width-text", 54 );
                        }
                    } else {
                        if ( o.rowHeaderCheckbox ) {
                            w = getVarPx( "--js-gv-row-header-width-ctrl", 34 );
                        } else {
                            w = getVarPx( "--js-gv-row-header-width-plain", 16 );
                        }
                    }
                    this.rowHeaderWidth = w;
                }
            }
        },

        /*
         * TODO improve doc with info about selection
         * Try to persist the selection. In most cases does a good job remembering the selection. Especially when
         * kept in the model. Keeps the scroll offset or page.
         * Improve keeping the cell range selection.
         * Improve remembering last focused cell.
         */
        /**
         * <p>Refreshes the grid with data from the model.
         * This method is rarely needed because it is called automatically when the model changes,
         * widget options change, or when pagination or column related methods are called.</p>
         * @param {boolean} [pFocus] if true put focus in the grid, if false don't. If undefined/omitted maintain
         * focus if the grid already has focus.
         */
        refresh: function( pFocus ) {
            const self = this,
                o = this.options,
                ctrl$ = this.element;
            let headerColumn, sel, colIndex, lastColIndex, lastRowId, table$, id, header$, col, hadSelection,
                paginationFocus = false,
                cell$ = null,
                selection = null,
                headerRow = null;

            debug.info("Grid '" + ctrl$[0].id + "' refreshed. Model: " + o.modelName );

            if ( pFocus !== true ) {
                paginationFocus = this._paginationHasFocus();
            }
            if ( pFocus === undefined ) {
                pFocus = $( document.activeElement ).closest( ctrl$[0] ).length > 0;
            }

            if ( !this._refreshCheckIfVisible() ) {
                return; // be lazy and don't refresh if invisible
            }
            if ( this._checkDelayRefresh( pFocus ) ) {
                return; // refresh will be called back after fetch model data completes
            }

            // if there is an active cell make sure it is deactivated before re-rendering
            cell$ = ctrl$.find( SEL_ACTIVE_CELL );
            if ( cell$.length ) {
                this._deactivateCell( cell$ );
            }

            // lastFocused is an element that is about to be removed turn it into a cell index and row id
            cell$ = $( this.lastFocused ).closest( SEL_CELL );
            lastColIndex = domIndex( cell$ );
            lastRowId = cell$.parent().attr( ATTR_DATA_ID );

            // if the last focused was in the header try to restore it after refresh
            if ( this.focusInHeader ) {
                // if the grid and columns are not being rendered the focus will not be lost
                if ( this.columnsStale && this.columns ) {
                    // otherwise the last focused is lost but keep the focus in the header and
                    // try to stay in the same cell
                    headerRow = domIndex( $( this.lastFocused ).closest( SEL_ROW ) );
                    headerColumn = $( this.lastFocused ).closest( "th" ).attr( ATTR_DATA_IDX );
                    // the index could change so remember the column by property name
                    if ( headerColumn ) {
                        headerColumn = this.columns[headerColumn].property;
                    }
                    this.lastFocused = null;
                }
            } else {
                this.lastFocused = null;
            }

            // has the model changed since the last refresh?
            let modelChanged = this.modelChanged;
            this.modelChanged = false;

            // preserve current selection if possible and if not kept in model (when selecting cells there is no selection in model)
            if ( this.tableData$ && ( !o.persistSelection || o.selectCells ) ) {
                if ( o.selectCells ) {
                    // preserve the first cell of the selection by index xxx can do better
                    sel = this.getSelection();
                    if ( sel.length > 0 ) {
                        cell$ = sel[0].first();
                        // calculate colIndex in row
                        colIndex = domIndex( cell$ );
                        selection = {
                            rowIndex: domIndex( cell$.parent() ),
                            colIndex: colIndex
                        };
                    }
                } else {
                    // preserve selection by records can't use getSelectedRecords because in some cases the model has
                    // already been cleared by the time refresh is called. So need an array of recordIds
                    sel = this.getSelection();
                    selection = [];
                    for ( let i = 0; i < sel.length; i++ ) {
                        id = sel[i].first().attr( ATTR_DATA_ID );
                        if ( id !== undefined ) {
                            selection.push( id );
                        }
                    }
                    if ( selection.length === 0 ) {
                        selection = null;
                    }
                }
            } else if ( o.persistSelection ) {
                // The model may have been cleared in which case the selection is lost. If the model wasn't cleared
                // no need to save the selection here because it will be restored as the rows are rendered.
                // Because the model may have lost its selection the view remembers if it once had anything selected
                // just so that a selection change notification can be given if needed
                hadSelection = this.hasSelection;
                this.hasSelection = false;
            }

            if ( !o.hasSize && this.tableData$ ) {
                let bdy$ = ctrl$.find( SEL_GRID_BODY );

                // when the widget doesn't have a height it will get very small during a refresh
                // don't want to mess up scroll offsets
                bdy$.css( "min-height", bdy$.height() + "px" ); // removed after data is rendered
            }
            this._refreshPagination( ctrl$.find( SEL_GRID_WRAP_SCROLL ) );

            if ( this.columnsStale || !this.columns ) {
                this._initGrid();
            } else {
                this.tableData$.empty();
                this._clearChildrenRowCache();
                this._updateScrollHandler( ctrl$.find( SEL_GRID_WRAP_SCROLL ) );
            }
            this.controlBreaks = [];

            this._updateStatus();
            // if there is no data then the add page of records call will do a resize so don't do it here also
            if ( !this.noData ) {
                this.resize();
            }

            header$ = ctrl$.find( SEL_GRID_HEADER );
            if ( headerRow !== null && headerColumn ) {
                // turn the header column name back into an index
                col = o.columns[0][headerColumn];
                if ( col ) {
                    headerColumn = col.seq - 1; // assume data-idx is seq - 1 todo don't assume seq is incremented by 1 it could be 10, 20, 30 etc.
                    header$.find( "thead" ).each(function() {
                        cell$ = $( this ).children().eq( headerRow ).find( "th[data-idx='" + headerColumn + "']" );
                        if ( cell$.length ) {
                            return false;
                        }
                    });
                }
                if ( !cell$ || !cell$.length ) {
                    // the previous header column couldn't be found so pick first column
                    cell$ = header$.find( "thead" ).first()
                        .find( SEL_ROW ).eq( headerRow ).children().first();
                }
                if ( cell$ && cell$.length ) {
                    self._select( cell$, null, pFocus, false, true );
                    // now that focus is set don't set it again while restoring the selection
                    pFocus = false;
                }
            }

            this.allSelected = false;
            this._addPageOfRecords( function() {
                let cells$, record, lastFocused,
                    selectionMade = false;

                if ( paginationFocus ) {
                    // favor returning focus to pagination area if it was there (unless pFocus is true - see above)
                    // to explicitly set focus to the data.
                    self._restorePaginationFocus( paginationFocus );
                    pFocus = false;
                }

                ctrl$.find( SEL_GRID_COL_HEADER + " " + SEL_SELECTOR )
                    .attr( ARIA_DISABLED, self.noData ? TRUE : FALSE )
                    .toggleClass( C_DISABLED, self.noData );

                // on refresh the amount of data can change and this can affect vertical scrollbar if heading
                // fixed to region (hasSize) so update column widths in that case
                if ( o.hasSize ) {
                    self._calculateColumnWidths( null, true, true );
                } else {
                    ctrl$.find( SEL_GRID_BODY ).css( "min-height", "" );
                }

                self.lastHoverCell = null;
                self.lastHoverRow = null;

                // If the model data has been refreshed need to clear out the active record, so it can be
                // activated again. (bug 35533463)
                if ( self.activeRecord &&
                        self.activeRecord !== self.model.getRecordMetadata( self.activeRecordId )?.record ) {

                    self._deactivateRow( () => {} );
                }

                // if the last focused element was lost (or never established)
                if ( !self.lastFocused || !$( self.lastFocused ).is( SEL_VISIBLE ) ) {
                    let lastRow$ = ctrl$.find( "[data-id='" + lastRowId + "']");

                    // try to restore the lastFocused cell or pick the first data cell or first header cell
                    if ( !lastRow$[0] ) {
                        lastRow$ = ctrl$.children( SEL_GRID_BODY ).find( "tbody .a-GV-row" ).first();
                    }
                    self.lastRow$ = null;
                    self.lastFocused = self._getCellFocusable( lastRow$.children().eq( lastColIndex >= 0 ? lastColIndex : 0 ) );
                    if ( self.lastFocused ) {
                        self.selectAnchor = $( self.lastFocused ).closest( SEL_GRID_CELL )[0];
                        if ( !o.selectCells && self.selectAnchor ) {
                            // if not doing cell range selection then the anchor should be a row.
                            self.selectAnchor = self.selectAnchor.parentNode;
                        }
                        self.focusInHeader = false;
                    } else {
                        // if there is no data then focus a header
                        self.lastFocused = self._getCellFocusable( header$.find( "thead" ).first().find( SEL_ROW ).last().children().first() );
                        self.focusInHeader = true;
                    }
                    if ( self.lastFocused && !o.disabled ) {
                        lastFocused = self.lastFocused; // restoring the selection can move change this so set it again below
                        self._setFocusable( self.lastFocused );
                        self._setCurrentRow( self.lastFocused );
                    }
                }
                // restore selection if any
                if ( selection ) {
                    if ( o.selectCells ) {
                        if ( self.tableData$.find( SEL_GRID_ROW ).length > selection.rowIndex ) {
                            colIndex = selection.colIndex;
                            table$ = self.tableData$;
                            cells$ = table$.find( SEL_GRID_ROW ).eq( selection.rowIndex ).children();
                            if ( colIndex >= cells$.length ) {
                                colIndex = cells$.length - 1;
                            }
                            // don't focus the selection here because it won't know what column to use
                            self.setSelection( [cells$.eq( colIndex )] );
                            selectionMade = true;
                        }
                    } else {
                        sel = [];
                        for ( let i = 0; i < selection.length; i++ ) {
                            record = self.model.getRecord( selection[i] );
                            if ( record ) {
                                sel.push( record );
                            }
                        }
                        if ( sel.length > 0 ) {
                            // intended to select something but check and if it didn't the selection has changed
                            // don't focus the selection here because it won't know what column to use
                            // because it is restore there should be no selection change unless not able to restore (see below)
                            selectionMade = self.setSelectedRecords( sel, false, true ) !== 0;
                        }
                    }
                    // there was a selection but not able to make a selection after refresh so the selection has changed
                    if ( !selectionMade || modelChanged ) {
                        self._selNotifyDelay( true, null );
                    }
                } else if ( o.persistSelection ) {
                    // selection state is kept in the model it could be that there was no selection before refresh, or
                    // it could be that the model was cleared and there was a selection that was lost.
                    // hadSelection is used to distinguish those cases If true there was a selection and isn't now so notify
                    if ( hadSelection || modelChanged ) {
                        self._selNotifyDelay( true, null );
                    }
                }
                if ( lastFocused && selectionMade ) {
                    self._setFocusable( lastFocused );
                    self._setCurrentRow( lastFocused );
                }
                self._updateHeaderFooter( header$ );
                if ( pFocus ) {
                    self.focus();
                }
            } );
        },

        /**
         * <p>Give focus to the grid. Focus is given to the last element that had focus.</p>
         * @example <caption>This example focuses the grid.</caption>
         * $( ".selector" ).grid( "focus" );
         */
        focus: function() {
            if ( this.lastFocused ) {
                this.lastFocused.focus();
                // Make sure focusInHeader is set correctly.
                // Can get confused if focus called when click on a button inside the grid such as with load more
                this.focusInHeader = $(this.lastFocused).closest( SEL_GRID_COL_HEADER_GROUP ).length > 0;
            }
        },

        /**
         * <p>Put focus in the cell given by <code class="prettyprint">pRecordId</code>
         * and <code class="prettyprint">pColumn</code>. This is used to focus rows or cells that have
         * errors. This will scroll or change pages as needed to focus the cell. The record must be in the model.
         * The row containing the cell is selected. If <code class="prettyprint">pColumn</code> is null then the
         * first column is focused which may be the row selection header.</p>
         *
         * @param {string} pRecordId The record id of the row to go to.
         * @param {string} [pColumn] The Column name in the record row to go to.
         */
        gotoCell: function( pRecordId, pColumn ) {
            var record, index, sp$, st,
                o = this.options,
                needRefresh = false,
                column = null,
                cell$ = null,
                row$ = this.element.find( "[data-id='" + pRecordId + "']" );

            this.gotoCellPending = null;

            if ( !this.tableData$ ) {
                return; // grid is not yet initialized
            }
            if ( pColumn ) {
                column = o.columns[0][pColumn];
                if ( !column ) {
                    debug.warn( "Warning column not found " + pColumn );
                } else {
                    // make sure column is visible
                    if ( column.hidden && column.canHide ) {
                        // show it and setup for a callback
                        column.hidden = false;
                        needRefresh = true;
                        this.refreshColumns();
                        this.gotoCellPending = { record: pRecordId, column: pColumn };
                    }
                }
            }

            if ( !row$.length ) {
                record = this.model.getRecord( pRecordId );
                if ( !record ) {
                    // if the record is not in the model then can't go to it
                    debug.warn( "Warning record not found " + pRecordId );
                    return;
                }
                index = this.model.indexOf( record );
                // todo this scrolling/pageing may not be accurate if the model has aggregate records and/or the view has control breaks
                // may need to hunt for the record but make sure no infinite loop
                this.gotoCellPending = { record: pRecordId, column: pColumn };
                if ( o.pagination.scroll ) {
                    sp$ = this.scrollParent$;
                    // calculate scroll offset based on index of record and average height of records
                    // todo for non virtual scroll may need to to scroll multiple times to get to the
                    //  right spot; optimize this
                    st = Math.floor( index * this.avgRowHeight );
                    sp$.scrollTop( st ); // this will trigger a refresh as needed
                } else {
                    this.pageOffset = Math.floor( index / this.pageSize ) * this.pageSize;
                    needRefresh = true;
                }
            }

            if ( needRefresh ) {
                this.refresh( false );
            }
            if ( this.gotoCellPending ) {
                // we will be called back after the view has been refreshed
                return;
            }

            if ( pColumn && column ) {
                cell$ = this._cellFromColumn( row$, pColumn );
            }
            if ( !cell$ ) {
                cell$ = row$.children().first();
            }
            this._select( cell$, null, true, false );
        },

        /**
         * Given a column item return the grid cell for that column item in the current active row.
         * If <code class="prettyprint">pItem</code> is not a column item or if there is no active row return null.
         * @param {Element} pItem The column item.
         * @return {jQuery|null} Cell corresponding to <code class="prettyprint">pItem</code> or null
         * if there is no active row cell for <code class="prettyprint">pItem</code>.
         */
        getActiveCellFromColumnItem: function( pItem ) {
            var row$,
                self = this,
                cell$ = null;

            if ( this.activeRecordId ) {
                row$ = this.element.find( "[data-id='" + this.activeRecordId + "']" );
                for ( const [ name, value ] of Object.entries( this.columnItems ) ) {
                    if ( pItem === value.item.node ) {
                        cell$ = self._cellFromColumn( row$, name );
                    }
                }
            }
            return cell$;
        },

        /**
         * Determine if grid is in edit mode rather than navigation mode. See also {@link grid#setEditMode}.
         *
         * @return {boolean} true if in edit mode and false otherwise.
         * @example <caption>This example logs a message if the grid is in edit mode.</caption>
         * if ( $( ".selector" ).grid( "inEditMode" ) ) {
         *     console.log("In edit mode");
         * }
         */
        inEditMode: function() {
            return this.editMode;
        },

        /**
         * Set the current edit mode. Should only be used if the grid is editable.
         * Triggers {@link grid#event:modechange} event.
         *
         * @param {boolean} pEditMode If true enter edit mode. If false enter navigation mode.
         * @param {boolean} [pSelect] If true and pEditMode is true the current cells value is initially selected.
         *   The default is false.
         * @example <caption>This example enters edit mode.</caption>
         * $( ".selector" ).grid( "setEditMode", true );
         */
        setEditMode: function( pEditMode, pSelect = false ) {
            let changed, cell$,
                delayDeactivate = false,
                self = this;
            const completeDeactivate = () => {
                this.columnItemsContainer$.off( "change.gridedit" );
                this.activeRecord = null;
                this.activeRecordId = null;
            };

            const completeEditMode = () => {
                pEditMode = !!pEditMode;
                this.lastFloatingPos = {}; // reset floating positions each time
                changed = pEditMode !== this.editMode;
                this.editMode = pEditMode;  // todo consider if this and the event should be delayed if deactivate delayed due to lock
                this.element.toggleClass( "a-GV--editMode", pEditMode );
                cell$ = getContainingDataCell$( this.lastFocused );
                if ( cell$.length ) {
                    if ( pEditMode ) {
                        this._activateCell( cell$, null, pSelect ? -1 : null );
                    } else {
                        this.lastEditModeCell = null;
                        this._clearDeactivate();
                        this._deactivateCell( cell$ );
                        if ( this.activeRecord ) {
                            this._deactivateRow( completeDeactivate );
                            delayDeactivate = true;
                        }
                    }
                }

                if ( changed ) {
                    // todo if changed and now editing may need to force some columns to be visible and this will cause a refresh of the grid

                    if ( pEditMode ) {
                        // handle item changes that may happen from code such as a DA.
                        this.columnItemsContainer$.on( "change.gridedit", function( event ) {
                            let i, column, prop;

                            if ( self.activeRecord ) {
                                for ( i = 0; i < self.columns.length; i++ ) {
                                    column = self.columns[i];
                                    if ( column.elementId === event.target.id ) {
                                        prop = column.property;
                                        self.setActiveRecordValue( prop );
                                        break;
                                    }
                                }
                            }

                        } );
                    } else if ( !delayDeactivate ) {
                        completeDeactivate();
                    }

                    apex.message.ariaMessage( getMessage( pEditMode ? "ENTER_EDIT_MODE" : "LEAVE_EDIT_MODE" ) );

                    this._trigger( EVENT_MODE_CHANGE, null, {
                        editMode: pEditMode
                    } );
                }
            };

            if ( !this.tableData$ ) {
                return; // not yet initialized
            } // else
            if ( this.options.editable ) {
                // xxx need delay linger progress
                // xxx this change in timing breaks deactivation; leaves focus outline state.
//                this._waitForColumnItems()
//                    .then( completeEditMode );
                completeEditMode();
            } else if ( pEditMode ) {
                debug.warn( "Grid is not editable." );
            }
        },

        /**
         * <p>Return the current selection. The return value depends on the {@link grid#selectCells} option.</p>
         * <p>If <code class="prettyprint">selectCells</code> is true, return the current selected range as an
         * array of rows. Each row is a jQuery object containing the selected column cells.</p>
         * <p>If <code class="prettyprint">selectCells</code> is false, return the currently selected rows as an
         * array of jQuery objects each item in the array is a row.</p>
         * <p>Because this returns jQuery objects it can only return selected rows (or cells) that are
         * currently in the DOM. When using virtual scroll pagination and {@link grid#persistSelection} is
         * true it is better to use {@link grid#getSelectedRecords}</p>
         *
         * @return {Array} Array of jQuery row objects.
         * @example <caption>The following example processes a row selection (if <code class="prettyprint">selectCells</code> is false).</caption>
         * var i, rows = $( "#mygrid" ).grid( "getSelection" );
         * for ( i = 0; i < rows.length; i++ ) {
         *     rows[i].addClass("foo"); // this adds a class to the TR element
         *     rows[i].children().each(function() {
         *         // do something with each column
         *     }
         * }
         * @example <caption>The following example processes a cell range selection (if <code class="prettyprint">selectCells</code> is true).</caption>
         * var i, rows = $( "#mygrid" ).grid( "getSelection" );
         * for ( i = 0; i < rows.length; i++ ) {
         *     // note rows[i].length is the number of columns in the range selection.
         *     rows[i].addClass("foo"); // this adds a class to all cells in the selected columns of this row
         *     rows[i].each(function() {
         *         // do something with each column cell
         *     }
         * }
         */
        getSelection: function() {
            let result = [];

            if ( this.tableData$ ) {
                if ( this.options.selectCells ) {
                    this.tableData$.find( SEL_SELECTED ).parent( SEL_ROW ).each( ( i, el ) => {
                        result.push( $( el ).find( SEL_SELECTED ).filter( SEL_CELL ) );
                    } );
                } else {
                    this.tableData$.find( SEL_SELECTED ).filter( SEL_ROW ).each( ( i, el ) => {
                        result.push( $( el ) );
                    } );
                }
            }
            return result;
        },

        /**
         * <p>Set the selected rows of the grid. Triggers the {@link grid#event:selectionchange} event if the selection
         * changes unless <code class="prettyprint">pNoNotify</code> is true.</p>
         *
         * @param {Array} pRows An array of jQuery row objects such as the return value of {@link grid#getSelection}
         *     or a jQuery object containing one or more rows (<code class="prettyprint">tr</code> elements)
         *     or columns (<code class="prettyprint">td</code> elements) from this grid.
         * @param {boolean} [pFocus] If true the first cell (in pRows) of the selection is given focus.
         * @param {boolean} [pNoNotify] if true the selection change event will be suppressed.
         * @example <caption>This example selects the third row of the first grid widget on the page.</caption>
         * $(".a-GV").first().grid( "setSelection", [$(".a-GV").first().find( ".a-GV-w-scroll .a-GV-row" ).eq(3)] );
         */
        setSelection: function( pRows, pFocus, pNoNotify ) {
            let cell,
                event = null,
                multiple = this.options.multiple,
                cells = [];

            if ( !this.tableData$ ) {
                return; // grid is not yet rendered
            }

            if ( this.options.selectCells ) {
                // expect tds not trs
                if ( !isArray( pRows ) ) {
                    pRows = [pRows];
                }
                cell = pRows[0].first()[0]; // upper left
                cells.push( pRows[pRows.length - 1].last()[0] ); // lower right
                if ( cell !== cells[0] ) {
                    this._select( $( cell ), null, null, false, false ); // no need to focus, that happens in the _select below
                    event = { type: "click", shiftKey: true };
                }
            } else {
                if ( isArray( pRows ) ) {
                    let len = pRows.length;
                    if ( !multiple && len > 1 ) {
                        len = 1;
                    }
                    for ( let i = 0; i < len; i++ ) {
                        cell = pRows[i].children( SEL_CELL )[0];
                        if ( cell ) {
                            cells.push( cell );
                        }
                    }
                } else {
                    pRows.each(function() {
                        if ( this.nodeName === "TR" ) {
                            cell = $( this ).children( SEL_CELL )[0];
                        } else {
                            cell = $( this ).closest( SEL_CELL )[0];
                        }
                        if ( cell ) {
                            cells.push( cell );
                            if ( !multiple ) {
                                return false; // just select the first row
                            }
                        }
                    });
                }
            }
            this._setSelection( cells, event, pFocus, pNoNotify );
        },

        _setSelection: function( cells, event, focus, noNotify ) {
            let saveLastFocused = this.lastFocused,
                save = this.focusInHeader;

            this.focusInHeader = false;
            this._select( $( cells ), event, focus, false, noNotify );
            if ( !focus ) {
                this.focusInHeader = save;
                // if not setting focus and focus was in the header put it back where it was
                if ( save ) {
                    this._setFocusable( saveLastFocused );
                    this._setCurrentRow( saveLastFocused );
                }
            }
        },

        /**
         * <p>Select all rows. This has no effect if the {@link grid#multiple} or {@link grid#selectAll(1)}
         * options are not true. It also has no effect while selecting a range of cells (option
         * {@link grid#selectCells} is true).</p>
         * <p>This only applies to the current page or what has been rendered so far unless the selection
         * state is persisted in the model.
         * See {@link grid#selectAll(1)} for details about how pagination settings and
         * {@link grid#persistSelection} affect the meaning of "all rows".</p>
         *
         * @variation 2
         * @param {?boolean} [pFocus] If true the first cell of the selection is given focus and becomes the current
         *     cell. If false the first cell of the selection becomes the current cell.
         *     If null or not given the current cell is not changed.
         * @param {boolean} [pNoNotify] If true the selection change event will be suppressed.
         */
        selectAll: function( pFocus, pNoNotify ) {
            const cells = [],
                o = this.options,
                table$ = this.tableData$;

            if ( table$ && o.multiple && o.selectAll && !o.selectCells ) {
                table$.children( SEL_GRID_ROW ).each( function() {
                    // don't worry about visibility or aggregates here _select will handle that
                    cells.push( $( this ).children()[0] );
                } );
                this._setSelection( cells, SEL_ACTION_ALL, pFocus, pNoNotify );
            }
        },

        /**
         * <p>Returns the current cell as a jQuery object.
         * The current cell is the one that has or last had focus.</p>
         * <p>See also {@link grid#setCurrentCell} and {@link grid#getColumnForCell}.</p>
         *
         * @return {jQuery} The current cell
         * @example <caption>This example logs to the console the content and the heading of a cell each time the
         * current cell changes.</caption>
         * $( "#gridStaticId" ).on( "gridcurrentcellchange", function( event ) {
         *     let thisGrid$ = $(this),
         *         cell$ = thisGrid$.grid( "getCurrentCell" ),
         *         column = thisGrid$.grid( "getColumnForCell", cell$ ),
         *         heading = column ? column.heading : "none";
         *     console.log( `Current cell changed: Heading is ${heading}, Content is ${cell$.text()}` );
         * } );
         */
        getCurrentCell: function() {
            if ( this.lastFocused ) {
                return getContainingTableCell$( this.lastFocused );
            } // else
            return $();
        },

        /**
         * <p>Sets the last focused cell to the given cell. If <code class="prettyprint">pCell$</code> is not a cell
         * or not in the grid container the current cell is not changed.</p>
         * <p>See also {@link grid#getCurrentCell}.</p>
         *
         * @param {jQuery} pCell$ The cell to make current.
         * @param {boolean} [pFocus] If true also focus the cell.
         * @example <caption>The following example sets the current cell to be the first one containing an element
         * with class "my-special-cell". In this case the column uses the column
         * <code class="prettyprint">cellTemplate</code> property or declarative attribute
         * HTML Expression to conditionally add a span with the "my-special-cell" class.</caption>
         * $( "#gridStaticId" ).grid( "setCurrentCell",
         *     $( "#gridStaticId" ).find( ".my-special-cell" ).first().closest( ".a-GV-cell" ) );
         */
        setCurrentCell: function( pCell$, pFocus ) {
            pCell$ = pCell$.first();
            // make sure cell is in the report and is a cell
            if ( pCell$.is( SEL_GRID_CELL_OR_HEADER ) && pCell$.closest( this.element )[0] ) {
                this._setFocusable( pCell$[0] );
                if ( pFocus ) {
                    this.focus();
                }
            }
        },

        /**
         * <p>Given an array of jQuery row objects return the underlying data model records.
         * The return value from {@link grid#getSelection} is an appropriate value for
         * <code class="prettyprint">pRows</code>.</p>
         *
         * @param {jQuery[]} pRows Array of jQuery objects representing grid rows.
         * @return {Array} An array of records from the model corresponding to the grid rows
         */
        // todo consider that this could now take a jQuery object of rows.
        getRecords: function( pRows ) {
            var i, id, value,
                values = [];

            for ( i = 0; i < pRows.length; i++ ) {
                id = pRows[i].attr( ATTR_DATA_ID );
                if ( id !== undefined ) {
                    value = this.model.getRecord( id );
                    if ( value ) {
                        values.push( value );
                    }
                }
            }

            return values;
        },

        /**
         * <p>Returns the column definition for the given cell.
         * The column definition properties are described in the {@link grid#columns} option.</p>
         * @param pCell$ The cell to get column definition for
         * @returns {?object} The column definition or null if <code class="prettyprint">pCell$</code>
         *   is not a valid cell or not associated with a grid column.
         * @example <caption>See example for {@link grid#getCurrentCell}.</caption>
         */
        getColumnForCell: function( pCell$ ) {
            return this._getColumnMetadata( pCell$ );
        },

        /**
         * <p>Returns the selected cell range or null if there are no cells selected. For this method to work
         * the option {@link grid#selectCells} must be true. The object returned has these properties:</p>
         *
         * @return {Object} Information about the range of selected cells or null if no cells selected.
         * @property {Array} columns An array of column names one for each selected column.
         *     The column name is null for the row header pseudo column.
         * @property {Array} recordIds An array of record ids one for each selected row.
         * @property {Array[]} values An array of rows. Each row is an array of column values.
         * @example <caption>This example logs the selected range to the console.</caption>
         * var i, j, text,
         *     range = $( ".selector" ).grid( "getSelectedRange" );
         * text = "id"
         * for ( j = 0; j < range.columns.length; j++ ) {
         *         text += ", " + range.columns[j];
         * }
         * console.log( text );
         * for ( i = 0; i < range.values.length; i++ ) {
         *     text = range.recordIds[i];
         *     for ( j = 0; j < range.values[i].length; j++ ) {
         *         text += ", " + range.values[i][j];
         *     }
         *     console.log( text );
         * }
         */
        getSelectedRange: function() {
            var sel, r, c, values, cols$, id, meta,
                o = this.options,
                result = null;

            if ( o.selectCells ) {
                result = {
                    columns: [],
                    recordIds: [],
                    values: []
                };
                sel = this.getSelection();
                for ( r = 0; r < sel.length; r++ ) {
                    cols$ = sel[r];

                    if ( r === 0 ) {
                        for ( c = 0; c < cols$.length; c++ ) {
                            meta = this._getColumnMetadata( cols$.eq( c ) );
                            result.columns.push( meta ? meta.property : null );
                        }
                    }

                    id = cols$.first().parent().attr( ATTR_DATA_ID );
                    result.recordIds.push( id !== undefined ? id : null );

                    values = [];
                    for ( c = 0; c < cols$.length; c++ ) {
                        values.push( cols$.eq( c ).text() );
                    }
                    result.values.push( values );
                }
            }
            return result;
        },

        /**
         * <p>Return the underlying data model records corresponding to the current selection.
         * If option {@link grid#selectCells} is true this returns an empty array.</p>
         *
         * <p>Note: If option {@link grid#persistSelection} is true then the selected records could span multiple pages
         * and getSelectedRecords returns a different selection from {@link grid#getSelection} which can only return
         * elements from the current page. To get just the records that correspond to
         * <code class="prettyprint">getSelection</code> when this option is true use:<br>
         * <code class="prettyprint">$( ".selector" ).grid( "getRecords", $( ".selector" ).grid("getSelection") );</code></p>
         *
         * @return {Array} Array of records from the model corresponding to the selected grid rows.
         * @example <caption>This example gets the selected records.</caption>
         * var records = $( ".selector" ).grid( "getSelectedRecords" );
         */
        getSelectedRecords: function() {
            const o = this.options;

            if ( o.selectCells ) {
                return [];
            } // else
            if ( o.persistSelection ) {
                // if selection is persisted in the model the ask the model for the count
                // in this case the selection could span multiple pages
                return this.model.getSelectedRecords();
            } // else
            return this.getRecords( this.getSelection() );
        },

        /**
         * Select the grid rows that correspond to the given data model records. Depending on pagination the records
         * may not actually be in view or rendered at this time even if they exist in the underlying data model or on
         * the server. Triggers the {@link grid#event:selectionchange} event if the selection changes
         * unless <code class="prettyprint">pNoNotify</code> is true.
         *
         * @param {model.Record[]} pRecords An array of data model records to select.
         * @param {boolean} [pFocus] If true the first cell of the selection is given focus.
         * @param {boolean} [pNoNotify] If true the selection change event will be suppressed.
         * @return {number} Count of the rows actually selected or -1 if called before the grid data is initialized or
         * if {@link grid#selectCells} option is true.
         */
        setSelectedRecords: function( pRecords, pFocus, pNoNotify ) {
            let count = 0,
                len = pRecords.length,
                cells = [],
                keys = new Set(),
                table$ = this.tableData$;

            // can't set selected records before initialized or if selecting cells rather than rows
            // also won't work if rendering is in progress.
            if ( !table$ || this.options.selectCells || this.renderInProgress ) {
                return -1;
            }
            if ( !this.options.multiple && len > 1 ) {
                len = 1;
            }
            for ( let i = 0; i < len; i++ ) {
                keys.add( this.model.getRecordId( pRecords[i] ) );
            }
            table$.children( SEL_GRID_ROW ).each( function() {
                var row$ = $( this ),
                    id = row$.attr( ATTR_DATA_ID );

                if ( keys.has( id ) ) {
                    keys.delete ( id );
                    cells.push( row$.children()[0] );
                    count += 1;
                }
            } );
            // todo think: doc says: [pFocus] If true the first cell of the selection is given focus.
            // but this is only true if the first record is rendered
            this._setSelection( cells, null, pFocus, pNoNotify );

            // if model is keeping the selection and using virtual paging then it is possible to select records that
            // are not in the DOM at the moment
            if ( this.options.persistSelection ) {
                for ( let id of keys ) {
                    let rec = this.model.getRecord( id );
                    if ( rec ) {
                        this.model.setSelectionState( id, true );
                        count += 1;
                    }
                }
                // if there were no cells it means there were no rendered records to be selected
                // which means the selection change event would not have been triggered
                if ( cells.length === 0 && !pNoNotify ) {
                    // todo don't just assume something changed
                    this._selNotifyDelay( true, null );
                }
            }
            return count;
        },

        /**
         * todo document this
         * @ignore
         * @param pCell
         * @param pCallback
         */
        activateRow: function( pCell, pCallback) {
            const prevActive$ = $( this.lastEditModeCell ),
                row$ = pCell.parent(),
                id = row$.attr( ATTR_DATA_ID );
            let delay = false;

            if ( !this.editMode || id !== this.activeRecordId) {
                this.element.one( "apexbeginrecordedit", function() {
                    pCallback();
                } );
                delay = true;
            }

            if ( !this.editMode ) {
                this.lastFocused = pCell[0]; // so that going into edit mode will activate this cell
                this.setEditMode( true );
            } else {
                if ( prevActive$.length ) {
                    prevActive$.removeClass( C_FOCUSED );
                    this._deactivateCell( prevActive$ );
                }
                pCell.addClass( C_FOCUSED );
                this._activateCell( pCell );
            }
            if ( !delay ) {
                pCallback();
            }
        },

        /**
         * must be in edit mode. only synchronous if used for cells in row after activateRow
         * @ignore
         * @param pCell
         * @return {boolean} true if cell was either activated, or already active
         */
        activateCell: function( pCell ) {
            const prevActive$ = $( this.lastEditModeCell );

            if ( this.editMode ) {
                if ( prevActive$.length ) {
                    prevActive$.removeClass( C_FOCUSED );
                    this._deactivateCell( prevActive$ );
                }

                pCell.addClass( C_FOCUSED );
                return this._activateCell( pCell );
            }
            return false;
        },

        /**
         * <p>Copies cell values from columns in the first selected row to all the other selected rows within the same
         * columns. If <code class="prettyprint">pColumns</code> is given only cells in the specified columns are copied down.
         * Only cells that can be written will be copied to. If the selection mode is row selection,
         * only visible columns that don't have <code class="prettyprint">noCopy</code> column property equal true are copied.</p>
         *
         * @param {array} [pColumns] An optional array of column names to copy down. The columns must be in the selection,
         *     visible, and writable.
         * @param {function} [pCallback] A no argument function that is called when the copy down operation is complete.
         */
        copyDownSelection: function( pColumns, pCallback ) {
            return this._setSelectionValues( 1, pColumns, pCallback );
        },

        /**
         * <p>Fills all cells in the current selection with the value <code class="prettyprint">pFillValue</code>.
         * If <code class="prettyprint">pColumns</code> is given only cells in the specified columns are filled.
         * Only cells that can be written will be filled. If the selection mode is row selection,
         * only visible columns that don't have <code class="prettyprint">noCopy</code> column property equal true are filled.</p>
         *
         * @param {string|object} pFillValue The value to fill cells with. For columns with distinct value and display
         * value this can be an object with a <code class="prettyprint">v</code> property for the value and a
         * <code class="prettyprint">d</code> property for the display value.
         * @param {array} [pColumns] An optional array of column names to fill. The columns must be in the selection,
         *     visible, and writable.
         * @param {function} [pCallback] A no argument function that is called when the fill operation is complete.
         */
        fillSelection: function( pFillValue, pColumns, pCallback ) {
            return this._setSelectionValues( 0, pColumns, pCallback, pFillValue );
        },

        /*
         * Common code for copyDownSelection and fillSelection
         * startRow is 0 or 1
         */
        _setSelectionValues: function( startRow, columns, callback, value ) {
            var selection, colInfo, cells$,
                self = this,
                wasInEditMode = this.editMode,
                lastFocused = this.lastFocused,
                curRow = 0,
                o = this.options;

            // uses cells$ creates colInfo
            function initColInfo() {
                // get values from fist row if startRow is 1, check columns are writable and get index into row cells
                colInfo = [];
                cells$.each( function( i ) {
                    var item, ci, display,
                        cell$ = $( this ),
                        col = self._getColumnMetadata( cell$ );

                    // don't check for readonly here because it can change from row to row; the call to activateCell says if it can be edited
                    if ( col && columns.indexOf( col.property ) >= 0 && col.elementId ) {
                        item = self.columnItems[col.property].item;
                        ci = {
                            index: i,
                            item: item
                        };
                        if ( startRow === 1 ) {
                            ci.value = item.getValue();
                            display = item.displayValueFor( ci.value );
                            if ( ci.value !== display ) {
                                ci.displayValue = display;
                            }
                        } else {
                            if ( value.v && value.d ) {
                                ci.value = value.v;
                                ci.displayValue = value.d;
                            } else {
                                ci.value = value;
                            }
                        }
                        colInfo.push( ci );
                    }
                } );
                nextRow();
            }

            function nextRow() {
                var recordId, cell$, prevActive$;

                for(;;) {
                    if ( curRow >= selection.length || !colInfo.length ) {
                        prevActive$ = $( self.lastEditModeCell );
                        prevActive$.removeClass( C_FOCUSED );
                        if ( !wasInEditMode ) {
                            self.setEditMode( false ); // xxx might this be async?
                        } else {
                            if ( prevActive$.length ) {
                                self._deactivateCell( prevActive$ );
                            }
                        }
                        // restore selection focus and callback
                        self.setSelection( selection );
                        $( lastFocused ).trigger( "focus" );
                        if ( callback ) {
                            callback();
                        }
                        break;
                    } else {
                        if ( curRow > 0 ) {
                            cells$ = o.selectCells ? selection[curRow] : selection[curRow].children();
                        }
                        curRow += 1;
                        // make sure row is editable
                        recordId = cells$.first().parent().attr( ATTR_DATA_ID );
                        if ( self.model.allowEdit( self.model.getRecord( recordId ) ) ) {
                            cell$ = cells$.first();
                            if ( !o.selectCells && o.rowHeader !== NONE && cells$.length >= 2 ) {
                                // don't focus the row header; only applies if there is a row header and selecting rows
                                cell$ = cells$.eq(1);
                            }
                            self.activateRow( cell$, function() {
                                // Execute after possible custom event handlers
                                setTimeout( processRow, 0 );
                            } );
                            break;
                        } // else try next record
                    }
                }
            }

            function processRow() {
                var activeUnlockCallback;

                function updateCells() {
                    var c, ci, cb;
                    var cbList = [];

                    for ( c = 0; c < colInfo.length; c++ ) {
                        ci = colInfo[c];
                        if ( self.activateCell( cells$.eq( ci.index ) ) ) {
                            cb = ci.item.reinit( ci.value, ci.displayValue );
                            if ( cb ) {
                                // a callback could indicate async implementation
                                cbList.push( cb );
                            }
                        }
                    }

                    if ( cbList.length > 0 ) {
                        for ( let i = 0; i < cbList.length; i++ ) {
                            cbList[i]();
                        }
                    }

                    // Execute after possible custom event handlers
                    setTimeout( nextRow, 0 );

                }

                if ( self.activeLockCount > 0 ) {
                    // If a row is locked, update the unlock callback to update the cells
                    activeUnlockCallback = self.activeUnlockCallback;
                    self.activeUnlockCallback = function() {
                        if ( activeUnlockCallback ) {
                            activeUnlockCallback();
                        }
                        updateCells();
                    };
                } else {
                    updateCells();
                }

            }

            selection = this.getSelection();
            // fill requires at least 1 row, copyDown requires at least 2 rows
            if ( selection.length <= startRow ) {
                return false; // there is nothing to fill/copy down to
            }

            // if columns not given default them based on the type of selection or column configuration
            if ( !columns ) {
                columns = [];
                if ( o.selectCells ) {
                    // cell range selection
                    this.getSelectedRange().columns.forEach( function( c ) {
                        if ( c ) {
                            columns.push( c );
                        }
                    } );
                } else {
                    // row selection
                    this.columns.forEach( function( c ) {
                        var colName = c.property;
                        // default to all visible columns that are writable and copyable on duplicate
                        if ( colName && !c.hidden && !c.virtual && !c.noCopy && !self.model.isIdentityField( colName ) && c.elementId && !c.readonly ) {
                            columns.push( colName );
                        }
                    } );
                }
            }
            cells$ = o.selectCells ? selection[curRow] : selection[curRow].children();
            this.activateRow( cells$.first(), initColInfo );
            return true;
        },

        /**
         * Call this method anytime the container that the grid is in changes its size.
         * For better performance it is best to call this after the size has changed not continuously
         * while it is changing.
         */
        resize: function() {
            const ctrl$ = this.element,
                o = this.options,
                ctrlH = ctrl$.height(),
                ctrlW = ctrl$.width(),
                header$ = ctrl$.children( SEL_GRID_HEADER ),
                body$ = ctrl$.children( SEL_GRID_BODY );
            let w, h, headerHeight;

            if ( ctrl$[0].offsetParent === null ) {
                // Grid is invisible so nothing to resize. Expect a resize or refresh later when made visible
                return;
            }
            if ( !body$.length || this.pendingRefresh ) {
                // grid was never initialized probably because it was initially invisible
                // or was refreshed while invisible. So do that now unless refresh is in progress
                if ( !this.renderInProgress ) {
                    this.refresh();
                }
                return; // because refresh calls resize
            }

            headerHeight = this.tableData$.prev().height();
            ctrl$.find( SEL_GRID_BODY + " " + SEL_TABLE ).css( "margin-top",
                -( headerHeight + toInteger( this.tableHeader$.find( "th" ).first().css( "border-bottom-width" ) ) )  );

            w = ctrlW;
            ctrl$.find( SEL_GRID_WRAP_SCROLL + "," + SEL_GRID_WRAP_HEADER ).width( w );

            if ( o.hasSize ) {
                h = ctrlH - header$.height() - this._footerHeight();
                body$.children( SEL_GRID_WRAP_SCROLL ).addBack().height( h );
                // _adjustSizeForScrollBars is done in _calculateColumnWidths
            }
            // if size shrinks reset widths or if hasSize because change in height could add scrollbar,
            // which affects width calculation
            // do this after the height is adjusted so scrollbars are known
            this._calculateColumnWidths( null, true, o.hasSize || this.tableData$.parent().width() > w );

            this._initPageSize();
            // todo if pagination is page and rowsPerPage is null (auto) consider refreshing
            //  so view reflects the correct number of rows. Beware infinite recursion
            this._updateHeaderFooter( header$ );
        },

        //
        // Control break methods
        //

        // todo document this
        expandControlBreak: function( pRows ) {
            this._expandCollapseControlBreak( pRows, true );
        },

        // todo document this
        collapseControlBreak: function( pRows ) {
            this._expandCollapseControlBreak( pRows, false );
        },

        //
        // Column methods
        //

        /**
         * <p>Get the column definitions in order. The column definition properties are described in the
         * {@link grid#columns} option.</p>
         * @return {Array} Array of column definition objects.
         * @example <caption>See {@link grid#unfreezeColumn} and {@link grid#refreshColumns} for examples.</caption>
         */
        getColumns: function() {
            return this.columns;
        },

        /**
         * Let the grid know that column metadata has changed so that the next time it is refreshed columns will
         * be rendered. Call this method after any column metadata has changed external to this widget.
         * Refresh must be called after this but typically this happens due to the model refresh notification.
         * @example <caption>This example sets the minimum width of all columns to 100 and then refreshes the
         * columns and refresh the grid.</caption>
         * $( ".selector" ).grid( "getColumns" ).forEach( function( c ) { c.width = 100; } );
         * $( ".selector" ).grid( "refreshColumns" )
         *     .grid( "refresh" );
         */
        refreshColumns: function() {
            this.columnsStale = true; // mark columns stale so that refresh will recreate
        },

        /**
         * Sets the width of the given column.
         * Triggers {@link grid#event:columnresize} event.
         *
         * @param {string|Object} pColumn The column name or column definition object to set the width on.
         * @param {number} pWidth The width in pixels to set the column too.
         */
        setColumnWidth: function( pColumn, pWidth ) {
            var colInfo = this._updateColumnWidth( pColumn, pWidth, true );

            this._trigger( EVENT_COLUMN_RESIZE, null, {
                header$: colInfo[1], // col$
                column: colInfo[0], // col
                width: pWidth
            });
        },

        /**
         * Hide the given column. Also calls {@link grid#refreshColumns} and will render the whole grid.
         * See also {@link grid#showColumn}.
         * @param {string|Object} pColumn Column name or column definition object to hide.
         * @example <caption>This example hides column "NAME".</caption>
         * $( ".selector" ).grid( "hideColumn", "NAME" );
         */
        hideColumn: function( pColumn ) {
            var columnName = this._columnName( pColumn );
            this.options.columns[0][columnName].hidden = true;
            this._refreshGrid();
        },

        /**
         * Show the given column. Also calls {@link grid#refreshColumns} and will render the whole grid.
         * See also {@link grid#hideColumn}.
         * @param {string|Object} pColumn Column name or column definition object to show.
         * @example <caption>This example shows column "NAME".</caption>
         * $( ".selector" ).grid( "showColumn", "NAME" );
         */
        showColumn: function( pColumn ) {
            var columnName = this._columnName( pColumn );
            this.options.columns[0][columnName].hidden = false;
            this._refreshGrid();
        },

        /**
         * Freeze the given column. Also calls {@link grid#refreshColumns} and will render the whole grid.
         * See also {@link grid#unfreezeColumn}.
         * @param {string|Object} pColumn Column name or column definition object of the column to freeze.
         * @example <caption>This example freezes column "NAME".</caption>
         * $( ".selector" ).grid( "freezeColumn", "NAME" );
         * @example <caption>This example freezes the third column. It passes in a column definition object.</caption>
         * var columns = $( ".selector" ).grid( "getColumns" );
         * $( ".selector" ).grid( "freezeColumn", columns[3] );
         */
        freezeColumn: function( pColumn ) {
            var i, col,
                cols = this.columns,
                columnName = this._columnName( pColumn );

            // todo consider allow freezing last column
            for ( i = 0; i < cols.length; i++ ) {
                col = cols[i];
                // can never hide last column xxx should check last not hidden column
                if ( i < cols.length - 1 ) {
                    col.frozen = true;
                }
                if ( col.property === columnName ) {
                    break;
                }
            }
            this._refreshGrid(); // todo may not need to rerender
        },

        /**
         * Unfreeze the given column. Also calls {@link grid#refreshColumns} and will render the whole grid.
         * See also {@link grid#freezeColumn}.
         * @param {string|Object} pColumn column name or column definition object of the column to unfreeze.
         * @example <caption>This example unfreezes column "NAME".</caption>
         * $( ".selector" ).grid( "unfreezeColumn", "NAME" );
         */
        unfreezeColumn: function( pColumn ) {
            var i, col,
                columnName = this._columnName( pColumn );

            for ( i = this.columns.length - 1; i >= 0; i-- ) {
                col = this.columns[i];

                col.frozen = false;
                if ( col.property === columnName ) {
                    break;
                }
            }
            this._refreshGrid(); // todo may not need to rerender
        },

        /**
         * Move the given column to the new position. Column positions are zero based.
         * Also calls {@link grid#refreshColumns} and will render the whole grid.
         * Triggers {@link grid#event:columnreorder} event.
         *
         * @param {string|Object} pColumn The column name or column definition object to move.
         * @param pNewPosition {number} index into the array returned by {@link grid#getColumns} where the column will be moved to.
         * @example <caption>This example moves the "NAME" column to be the third column.</caption>
         * $( ".selector" ).grid( "moveColumn", "NAME", 2 );
         */
        moveColumn: function( pColumn, pNewPosition ) {
            var ui = this._moveColumn( pColumn, pNewPosition );

            this._refreshGrid();
            ui.header$ = this._columnFromIndex( pNewPosition );
            this._trigger( EVENT_COLUMN_REORDER, null, ui );
        },

        /**
         * Move a column group from one position to another. This moves all the columns associated with
         * the group to the new position.
         * Triggers {@link grid#event:columnreorder} event for each column moved.
         *
         * @param pLevel {number} The level (starting with zero as the top most level) of the group.
         * @param pOriginalPosition {number} Original position of the column group
         * @param pNewPosition {number} New position of the column group
         */
        moveColumnGroup: function( pLevel, pOriginalPosition, pNewPosition ) {
            var i, colGroup, groups, start, end, dest, ui,
                uis = [];

            groups = this.columnGroups[pLevel];
            if ( !groups ) {
                throw new Error( "Invalid column group level: " + pLevel );
            }
            start = -1;
            for ( i = 0; i < groups.length; i++ ) {
                colGroup = groups[i];
                if ( i === pOriginalPosition ) {
                    start = colGroup.start;
                    end = colGroup.end;
                }
                if ( i === pNewPosition ) {
                    if ( start === -1 ) {
                        // the new position is before the original position
                        dest = colGroup.start;
                    } else {
                        // the new position is after the original position
                        dest = colGroup.end;
                    }
                }
            }
            // move each column
            if ( pNewPosition > pOriginalPosition ) {
                for ( i = start; i <= end; i++ ) {
                    ui = this._moveColumn( this.columns[start], dest );
                    ui.newPosition = dest - ( end - i );
                    ui.oldPosition = i;
                    uis.push( ui );
                    this._updateColumns();
                }
            } else {
                for ( i = end; i >= start; i-- ) {
                    ui = this._moveColumn( this.columns[end], dest );
                    ui.newPosition = dest + ( i - start );
                    ui.oldPosition = i;
                    uis.push( ui );
                    this._updateColumns();
                }
            }

            this._refreshGrid();
            for ( i = 0; i < uis.length; i++ ) {
                ui = uis[i];
                ui.header$ = this._columnFromIndex( ui.newPosition );
                this._trigger( EVENT_COLUMN_REORDER, null, ui );
            }
        },

        //
        // Internal methods
        //

        _refreshGrid: function() {
            // if there is an active cell make sure it is deactivated before re-rendering
            // must do this before the column info is destroyed
            const cell$ = this.element.find( SEL_ACTIVE_CELL );

            if ( cell$.length ) {
                this._deactivateCell( cell$ );
            }

            this.refreshColumns();
            this.refresh();
        },

        _cellFromColumn: function( row$, columnName ) {
            var i, column, col,
                cols = this.columns,
                o = this.options,
                cell$ = null,
                colIndex = 0;

            column = o.columns[0][columnName];
            if ( !column ) {
                debug.warn( "Warning column not found " + columnName );
                return null;
            } // else find the cell$

            if ( o.rowHeader !== NONE ) {
                colIndex = 1;
            }
            for ( i = 0; i < cols.length; i++ ) {
                col = cols[i];
                if ( col.hidden ) {
                    continue;
                }
                if ( col.property === columnName ) {
                    cell$ = row$.children().eq( colIndex );
                    break;
                }
                colIndex += 1;
            }
            if ( i >= cols.length ) {
                debug.warn( "Warning column is hidden " + columnName );
            }
            return cell$;
        },

        _columnFromIndex: function( columnIndex ) {
            // Note that because of the hidden but accessible column header on the main data table this returns
            // two elements!
            return this.element.find( ".a-GV-header[data-idx='" + columnIndex + "']" );
        },

        _columnName: function( column ) {
            var columnName;

            if ( typeof column === "object" ) {
                columnName = column.property;
            } else {
                columnName = column;
            }
            if ( !this.options.columns[0][columnName] ) {
                throw new Error( "Unknown column: " + columnName );
            }
            return columnName;
        },

        // returns notification data except for header$ which can't be known until after the grid is refreshed
        _moveColumn: function( pColumn, pNewPosition ) {
            var i, col, originalPos, seq,
                cols = this.columns,
                columnName = this._columnName( pColumn );

            originalPos = -1;
            for ( i = 0; i < cols.length; i++ ) {
                col = cols[i];
                if ( col.property === columnName ) {
                    originalPos = i;
                    break;
                }
            }

            seq = cols[pNewPosition].seq;
            if ( originalPos === pNewPosition ) {
                return; // nothing to do
            } else if ( originalPos < pNewPosition ) {
                // moving up - adjust column sequences
                for ( i = pNewPosition; i > originalPos; i-- ) {
                    cols[i].seq = cols[i - 1].seq;
                }
            } else {
                // moving down - adjust column sequences
                for ( i = pNewPosition; i < originalPos; i++ ) {
                    cols[i].seq = cols[i + 1].seq;
                }
            }
            cols[originalPos].frozen = ( pNewPosition <= this.lastFrozenColIndex );
            cols[originalPos].seq = seq;
            return {
                column: col,
                newPosition: pNewPosition,
                oldPosition: originalPos
            };
        },

        _updateColumns: function() {
            let i, lastIndex, col, lastGroupRow, curGroupRow, curGroupIndex, curGroupName, curGroup, group,
                colIndex, noHeading, children, frozenCount,
                frozenGroups = {},
                o = this.options,
                optColumns = o.columns[0];

            this.columns = [];
            this.columnsStale = false;
            this.columnGroups = [];
            this.breakColumns = [];
            this.fieldToColumnIndex = {};

            // put the column definitions in an array
            for ( const [colName, col] of objectEntries( optColumns ) ) {
                col.property = colName;
                col.domId = col.elementId ? col.elementId + "_HDR" : this.idPrefix + "_h_" + col.property;
                // make sure there is a sequence value to sort by
                col.seq = col.seq || "0";
                this.columns.push( col );
            }
            // and sort them by the seq[uence] property
            this.columns.sort(function(a, b) {
                return a.seq - b.seq;
            });

            // now count the frozen ones
            this.lastFrozenColIndex = -1;
            frozenCount = o.rowHeader !== NONE ? 1 : 0;
            for ( i = 0; i < this.columns.length; i++ ) {
                col = this.columns[i];
                if ( col.hidden ) {
                    continue;
                }
                if ( col.frozen ) {
                    if (  frozenCount < MAX_FROZEN_START_COLS ) {
                        frozenCount += 1;
                        this.lastFrozenColIndex = i;
                    }
                } else {
                    break;
                }
            }
            this.endFrozenColIndex = -1; // only allow one
            for ( i = this.columns.length - 1; i > 0; i-- ) {
                col = this.columns[i];
                if ( col.hidden ) {
                    continue;
                }
                if ( col.frozen ) {
                    this.endFrozenColIndex = i;
                }
                break;
            }

            // gather any control break columns and index by field/property name
            colIndex = o.rowHeader !== NONE ? 1 : 0; // account for row header which is a column in the DOM but not a column in the model
            for ( i = 0; i < this.columns.length; i++ ) {
                col = this.columns[i];
                if ( col.controlBreakIndex > 0 ) {
                    this.breakColumns.push( col );
                }
                if ( !col.hidden ) {
                    // to be very clear this is the index into the DOM cell in a DOM row (that includes both TRs) not this.columns
                    this.fieldToColumnIndex[col.property] = colIndex;
                    colIndex += 1;
                }
            }
            this.breakColumns.sort(function(a, b) {
                return a.controlBreakIndex - b.controlBreakIndex;
            });

            // add column groups if there are any
            curGroupRow = null;
            curGroupName = null;
            curGroup = null;
            noHeading = true;
            colIndex = 0;
            curGroupIndex = 0;
            lastIndex = 0;
            children = [];
            for ( i = 0; i < this.columns.length; i++ ) {
                col = this.columns[i];
                if ( col.hidden ) {
                    continue;
                }
                if ( curGroupRow === null ) {
                    curGroupRow = [];
                    this.columnGroups.push( curGroupRow );
                }
                group = effectiveGroupName( col );
                if ( group !== curGroupName || i === this.lastFrozenColIndex + 1 ) {
                    curGroupName = group;
                    if ( curGroup ) {
                        curGroup.span = colIndex - curGroupIndex;
                        curGroup.end = lastIndex;
                        curGroup.children = children;
                        children = [];
                    }
                    curGroupIndex = colIndex;
                    if ( group ) {
                        curGroup = extend({}, o.columnGroups[ group ]);
                        if ( curGroup ) {
                            if ( curGroup.heading ) {
                                noHeading = false;
                                if ( !frozenGroups[group] ) {
                                    curGroup.domId = this.idPrefix + "_g_" + group;
                                }
                            }
                            curGroup.property = group;
                            curGroupRow.push( curGroup );
                        } else {
                            throw new Error( "Unknown column group name: " + group );
                        }
                    } else {
                        curGroup = {};
                        curGroupRow.push( curGroup );
                    }
                    curGroup.start = i;
                    if ( i <= this.lastFrozenColIndex ) {
                        curGroup.frozen = true;
                        frozenGroups[group] = 1;
                    }
                }
                children.push(col);
                colIndex += 1;
                lastIndex = i;
                if ( curGroup === null ) {
                    curGroup = {
                        start: i
                    };
                    if ( this.lastFrozenColIndex >= 0 ) {
                        curGroup.frozen = true;
                    }
                    curGroupRow.push( curGroup );
                }
            }
            if ( curGroup ) {
                curGroup.span = colIndex - curGroupIndex;
                curGroup.end = lastIndex;
                curGroup.children = children;
            }
            if ( noHeading ) {
                this.columnGroups = [];
                curGroupRow = null;
            }

            // column groups can have parent groups so add those
            while ( curGroupRow ) {
                lastGroupRow = curGroupRow;
                curGroupRow = null;
                curGroupName = null;
                curGroup = null;
                noHeading = true;
                colIndex = 0;
                children = [];
                for ( i = 0; i < lastGroupRow.length; i++ ) {
                    col = lastGroupRow[i];
                    group = col.parentGroupName || null;
                    if ( group !== curGroupName || col.frozen !== ( curGroup ? curGroup.frozen: false ) ) {
                        curGroupName = group;
                        if ( curGroupRow === null ) {
                            curGroupRow = [];
                            this.columnGroups.unshift( curGroupRow );
                            if ( colIndex > 0 ) {
                                curGroup = {};
                                if ( col.frozen ) {
                                    curGroup.frozen = true;
                                }
                                curGroupRow.push( curGroup );
                            }
                        }
                        if ( curGroup ) {
                            curGroup.span = colIndex - curGroupIndex;
                            curGroup.children = children;
                            children = [];
                        }

                        curGroupIndex = colIndex;
                        if ( group ) {
                            curGroup = extend({}, o.columnGroups[group]);
                            if ( curGroup ) {
                                if ( curGroup.heading ) {
                                    noHeading = false;
                                    if ( !frozenGroups[group] ) {
                                        curGroup.domId = this.idPrefix + "_g_" + group;
                                    }
                                }
                                curGroup.property = group;
                                curGroupRow.push( curGroup );
                            } else {
                                throw new Error( "Unknown column group name: " + group );
                            }
                        } else {
                            curGroup = {};
                            curGroupRow.push( curGroup );
                        }
                        curGroup.start = col.start;
                        if ( col.frozen ) {
                            curGroup.frozen = true;
                            frozenGroups[group] = 1;
                        }
                    }
                    children.push(col);
                    curGroup.end = col.end;
                    colIndex += col.span;
                }
                if ( curGroup ) {
                    curGroup.span = colIndex - curGroupIndex;
                    curGroup.end = col.end;
                    curGroup.children = children;
                }
                if ( noHeading ) {
                    this.columnGroups.shift();
                    curGroupRow = null;
                }
            }
        },

        _initGrid: function() {
            const self = this,
                o = this.options,
                ctrl$ = this.element,
                scrollEvent = "scroll.gvss";
            let hdr$, main$, body$, row$, traps$, floatingTrap, endTrap, dataCols$, dataCellCols$, loadMore$, w,
                curScrollLeft = 0, lastScrollLeft = 0,
                timerID = null;

            // todo Can this be moved to base class to share with tmv?
            function syncScroll() {
                if ( curScrollLeft !== lastScrollLeft ) {
                    hdr$[0].scrollLeft = curScrollLeft = lastScrollLeft;
                    main$[0].scrollLeft = curScrollLeft;
                    loadMore$.css( PROP_LEFT, curScrollLeft );
                }
                timerID = null;
            }

            debug.info("Grid render and initialize.");

            this._updateColumns();
            if ( !this.columnItems ) {
                this._initColumnItems( this.columns ); // just do this once
            }
            this._renderGrid();
            // after the rendering any anchors or buttons (any tab stop) in column headings need to have the tabstop disabled
            ctrl$.find( SEL_GRID_HEADER + " " + SEL_TABBABLE ).prop( PROP_TABINDEX, -1 );

            if ( o.tooltip ) {
                this._initTooltips( o.tooltip );
            }

            if ( o.rowHeader !== NONE && o.rowHeaderCheckbox ) {
                this.tableHeader$.parent().addClass( C_TABLE_CHECKBOX );
                this.tableData$.parent().addClass( C_TABLE_CHECKBOX );
            }

            hdr$ = ctrl$.find( SEL_GRID_WRAP_HEADER );
            main$ = ctrl$.find( SEL_GRID_WRAP_SCROLL );

            // Some columns have an explicit width and other do not. For columns without a width use what the initial
            // auto width table assigns and apply that to the column
            body$ = ctrl$.children( SEL_GRID_BODY );
            dataCols$ = body$.find( "col" );
            dataCellCols$ = body$.find( "thead" ).find( ".a-GV-header" );

            // take frozen area and scroll bar into account so the initial auto column width is accurate (bug 26171679) xxx
            w = this.tableData$.parent().width() - util.getScrollbarSize().width;
            hdr$.add( main$ ).width( w );

            dataCols$.each(function( i ) {
                var col$ = $( this ),
                    col = self.columns[ col$.attr(ATTR_DATA_IDX) ];

                if ( col ) {
                    if ( col.width ) {
                        col.curWidth = col.width;
                    } else {
                        col.curWidth = col.defWidth = dataCellCols$.eq( i ).width();
                    }
                    if ( col.curWidth < MIN_COL_WIDTH ) {
                        col.curWidth = MIN_COL_WIDTH;
                    }
                }
            });
            // The column widths will be calculated and set when the widget is resized which happens soon

            // coordinate the scrolling of the various areas
            loadMore$ = this.tableData$.parent().parent().find( SEL_LOAD_MORE );
            main$.on( scrollEvent, function() {
                lastScrollLeft = this.scrollLeft;
                if ( !timerID ) {
                    timerID = invokeAfterPaint( syncScroll );
                }
            });
            hdr$.on( scrollEvent, function() {
                lastScrollLeft = this.scrollLeft;
                if ( !timerID ) {
                    timerID = invokeAfterPaint( syncScroll );
                }
            });

            traps$ = this.element.find( SEL_TAB_TRAP );
            this.tabTraps$ = traps$;
            // Tab traps are used to detect tabbing out of the grid so that a new row can be inserted when needed
            // and also to detect leaving the floating edit field.
            // These invisible tab traps capture the focus and redirect focus to the correct place.
            // There are either 2 or 3 traps. If auto add row then there is a trap after the grid.
            // The 2 floating edit traps are always last.
            if ( traps$.length === 2 ) {
                floatingTrap = 0; // this is the case where autoAddRecord is false
            } else {
                if ( traps$.length === 3 ) {
                    floatingTrap = 1; // this is the case where autoAddRecord is true
                    endTrap = 0;
                }
                traps$.eq( endTrap ).on( "focus", function() {
                    if ( $( this ).hasClass( C_AUTO_ADD ) ) {
                        self._autoAddRecord( self.activeRecord );
                    }
                } );
            }
            traps$.eq( floatingTrap ).on( "focus", function() {
                var allTabs$, gridTab$,
                    tableData$ = $( self.lastEditModeCell ).closest( "tbody" ),
                    ts$ = tableData$.find( SEL_TABBABLE ).add( self.lastEditModeCell ),
                    index = ts$.index( self.lastEditModeCell );

                if ( index > 0 ) {
                    self.activateContext = -1;
                    ts$.first().trigger( "focus" );
                } else {
                    // in this case need to focus the tabbable element just before the grid
                    allTabs$ = $( SEL_TABBABLE );
                    gridTab$ = self.element.find( SEL_TABBABLE ).first();
                    index = allTabs$.index( gridTab$ );
                    allTabs$.eq( index - 1 ).trigger( "focus" );
                }
            });
            traps$.eq( floatingTrap + 1 ).on( "focus", function() {
                var allTabs$, gridTab$,
                    tableData$ = $( self.lastEditModeCell ).closest( "tbody" ),
                    ts$ = tableData$.find( SEL_TABBABLE ).add( self.lastEditModeCell ),
                    index = ts$.index( self.lastEditModeCell );

                if ( $( this ).hasClass( C_AUTO_ADD ) ) {
                    self._autoAddRecord( self.activeRecord );
                } else if ( index < ts$.length - 1 ) {
                    self.activateContext = -1;
                    ts$.last().trigger( "focus" );
                } else {
                    // in this case need to focus the tabbable element just after the grid
                    allTabs$ = $( SEL_TABBABLE );
                    gridTab$ = self.tableData$.find( SEL_TABBABLE ).last();
                    index = allTabs$.index( gridTab$ );
                    allTabs$.eq( index + 1 ).trigger( "focus" );
                }
            });
            // traps are not used until a cell is activated
            traps$.prop( PROP_TABINDEX, -1 );

            if ( o.reorderColumns ) {
                this._initColumnReorder();
            }

            this.columnWidthHandle$ = $(); // default to no column width handle
            if ( o.resizeColumns ) {
                this._initColumnResize();
            }

            this.columnControls$.on( "click", "button", function( event ) {
                var target$ = $( event.target );

                self._sortChange( event, target$.closest( SEL_GRID_COL_HEADER ),
                    target$.closest( "button" ).hasClass("js-asc") ? "asc" : "desc");
            } );

            function expandCollapse() {
                var cell$ = self.element.find( SEL_ACTIVE_CELL );

                if ( self.floatingItem$.hasClass( C_EXPANDED )) {
                    self._collapseFloatingItem( cell$ );
                } else {
                    self._expandFloatingItem( cell$ );
                }
            }

            this.floatingItem$.draggable( {
                handle: ".a-GV-cellMoveHandle",
                containment: "body", // this works better than document or window
                stop: function( event, ui ) {
                    var colName = self._getColumnMetadata( self.element.find( SEL_ACTIVE_CELL ) ).property;

                    // if the floating item is moved remember per column
                    self.lastFloatingPos[colName] = { left: ui.position.left, top: ui.position.top };
                }
            } ).on( "keydown", function( event ) {
                var kc = event.which;
                if ( event.ctrlKey && kc === 117 ) { // Ctrl+F6
                    expandCollapse();
                    return false;
                } else if ( kc === 112  && event.altKey ) { // Alt+F1 get column help
                    self._doHelpKey();
                } else if ( kc === keys.ESCAPE ) {
                    self._doEscapeKey( event );
                }
            } ).on( "mousedown", function( event ) {
                if ( $( event.target ).hasClass( "a-GV-cellMoveHandle" ) ) {
                    // when starting to drag don't deactivate the floating cell edit area
                    self._clearDeactivate();
                }
            } ).on( "focusin", function() {
                self._clearDeactivate();
            } ).on( "focusout", function() {
                if ( self.lastEditModeCell ) {
                    self._beginDeactivate( $( self.lastEditModeCell ) );
                }
            } ).children( SEL_EXPAND_COLLAPSE ).on( EVENT_CLICK, expandCollapse );
            widgetUtil.TouchProxy.addTouchListeners( this.floatingItem$[0] );

            this._initPagination( ctrl$.find( SEL_GRID_HEADER ), main$ );

            if ( this.breakColumns.length > 0 && o.collapsibleControlBreaks ) {
                ctrl$.find( SEL_GRID_BODY ).on( "click", SEL_TOGGLE_BREAK, function() {
                    if ( o.disabled ) {
                        return;
                    } // else
                    row$ = $( this ).closest( SEL_CONTROL_BREAK );
                    self._expandCollapseControlBreak( [row$], !row$.hasClass( C_EXPANDED ) );
                });
            }
        },

        _initColumnReorder: function() {
            var mTop, hTop, columnOffsets, row$, lastColumnIndex, headerPos, zIndex, position, offsetAdjust, markerAdjust,
                oldPos, helperWidth, scrollOffset, handleMargin,
                rtl = this.element.hasClass( C_RTL ),
                header$ = this.element.find( SEL_GRID_HEADER ),
                self = this;

            header$.append( this.columnMoveMarker$ );
            handleMargin = toInteger( self.columnHandle$.css( "margin-left" ) );
            if ( rtl ) {
                handleMargin = -handleMargin;
            }

            // enable the column and column group headings to be draggable
            self.columnHandle$.draggable({
                appendTo: this.element,
                containment: header$,
                cursor: "move",
                cursorAt: rtl ? { right: -2 * handleMargin } : { left: 0 },
                axis: "x",
                helper: function() {
                    var helper$ = $( "<div class='a-GV-header-dragHelper'></div>" ),
                        cell$ = self.columnReorderCell$;
                    // add copy of handel and label to drag helper
                    helper$.append( cell$.find( ".a-GV-headerLabel,." + C_GRID_COL_HANDLE ).clone() )
                        .width( cell$.outerWidth() )
                        .height( cell$.outerHeight() );
                    // need to set position fixed here when helper is created
                    if ( header$.css( "position" ) === "fixed" ) {
                        helper$.css("position", "fixed");
                    }
                    return helper$;
                },
                start: function( event, ui ) {
                    let h = self.columnReorderCell$.outerHeight();

                    self.columnControls$.hide();
                    // send this event in the hopes that any popup related to the column header will be closed
                    self._trigger( EVENT_CANCEL_COLUMN_HEADER, event, {});
                    // figuring out how to position the helper and new column marker is tricky because of
                    // the different ways the header is positioned
                    mTop = self.columnReorderCell$.parent().offset().top - self.element.offset().top;
                    hTop = mTop + self.element[0].offsetTop;
                    headerPos = header$.css( "position" );
                    position = "absolute";
                    zIndex = 102; // xxx was 2. need this above any frozen columns is there a better way to get this?
                    offsetAdjust = -header$.offset().left;
                    if ( headerPos !== "relative" ) {
                        if ( headerPos === "fixed" ) {
                            offsetAdjust = 0;
                            mTop = hTop = self.columnReorderCell$.parent()[0].offsetTop + header$[0].offsetTop;
                            position = "fixed";
                        }
                        zIndex = toInteger( header$.css("z-index") ) + 1;
                    }
                    markerAdjust = -self.columnMoveMarker$.width() / 2;
                    ui.helper.css( {
                        "top": hTop + "px",
                        "position": position,
                        "transform": "translateY(" + h + "px)",
                        "z-index": zIndex
                    } );
                    helperWidth = ui.helper.outerWidth();
                    self.columnMoveMarker$.show().css( {
                        "top": mTop + "px",
                        "left": ( self.columnReorderCell$.offset().left + offsetAdjust + ( rtl ? self.columnReorderCell$.width() : 0 ) ) + "px",
                        "position": position,
                        "height": h + "px",
                        "z-index": zIndex
                    } );
                    // hide the cell content
                    self.columnReorderCell$.find( ".a-GV-headerLabel,.a-GV-header-sort" ).hide();
                    self.columnHandle$.hide();
                    self.columnWidthHandle$.hide();
                    escapeOn(function() {
                        self.columnReorderCancel = true;
                    });

                    // remember which column is moving
                    oldPos = toInteger( self.columnReorderCell$.attr( ATTR_DATA_IDX ) );

                    // setup to scroll as needed when drag near boundaries
                    self.hdrScrollParent = self.element.find( SEL_GRID_WRAP_HEADER )[0];
                    scrollOffset = self.hdrScrollParent.scrollLeft;

                    // gather column offsets
                    columnOffsets = [];
                    lastColumnIndex = null;
                    row$ = getRowForCell( self.columnReorderCell$ );
                    row$.children().each( function() {
                        var col$ = $( this ),
                            frozen = true,
                            offset = col$.offset().left + offsetAdjust;

                        if ( col$.parent().parent().parent().parent()[0] === self.hdrScrollParent ) { // xxx may need a different way
                            offset += scrollOffset;
                            frozen = false;
                        }
                        columnOffsets.push( {
                            colIdx: toInteger( col$.attr( ATTR_DATA_IDX )),
                            start:  offset,
                            end: offset + col$.outerWidth(),
                            frozen: frozen
                        } );
                    } );

                    self.columnReordering = true;
                    self.columnReorderCancel = false;
                },
                drag: function( event ) {
                    var sl = self.hdrScrollParent.scrollLeft,
                        origLeft = toInteger( self.columnMoveMarker$.css( PROP_LEFT ) );

                    function updateMarker() {
                        var i, col, newOffset,
                            moved = false,
                            // during drag we use event.pageX - handleMargin rather than ui.offset.left so that when the
                            // helper bumps up against the container the point to check against the columns changes
                            // this allows for example a wide column to be moved to the very end.
                            cur = ( event.pageX - handleMargin ) + offsetAdjust + self.hdrScrollParent.scrollLeft;

                        // check the positions and move the insertion marker
                        for ( i = 0; i < columnOffsets.length; i++ ) {
                            col = columnOffsets[i];
                            if ( cur >= col.start && cur < col.end ) {
                                if ( i !== lastColumnIndex ) {
                                    lastColumnIndex = i;
                                    if ( rtl ) {
                                        newOffset = ( col.colIdx < oldPos ? col.end : col.start ) + markerAdjust;
                                    } else {
                                        newOffset = ( col.colIdx < oldPos ? col.start : col.end ) + markerAdjust;
                                    }
                                    if ( !col.frozen ) {
                                        newOffset -= self.hdrScrollParent.scrollLeft;
                                    }
                                    origLeft = newOffset;
                                    sl = self.hdrScrollParent.scrollLeft;
                                    self.columnMoveMarker$.css( PROP_LEFT, newOffset + "px" );
                                    moved = true;
                                }
                                break;
                            }
                        }
                        // if the header has scrolled need to move the marker to match
                        if ( !moved && sl !== self.hdrScrollParent.scrollLeft ) {
                            newOffset = origLeft - ( self.hdrScrollParent.scrollLeft - sl );
                            self.columnMoveMarker$.css( PROP_LEFT, newOffset + "px" );
                        }
                    }

                    if ( self.columnReorderCancel ) {
                        event.preventDefault();
                        return;
                    }

                    updateMarker();
                    // Need to manually scroll. Draggable scrolling doesn't work because the header
                    // is overflow hidden and scrolls because of the table body scroll bar
                    // start or stop scrolling as needed. The actual scrolling happens from a timer
                    if ( self._headerScrollCheck( event.pageX - handleMargin, helperWidth ) ) {
                        if ( !self.scrollTimerId ) {
                            self._headerScrollStart( event.pageX - handleMargin, helperWidth, updateMarker );
                        }
                    } else {
                        if ( self.scrollTimerId ) {
                            self._headerScrollStop();
                        }
                    }
                },
                stop: function() {
                    var newPos = null;

                    // check the positions and move the insertion marker and do the move
                    if ( lastColumnIndex !== null ) {
                        newPos = columnOffsets[lastColumnIndex].colIdx;
                    }
                    if ( isNaN( newPos ) && lastColumnIndex + 1 < columnOffsets.length ) {
                        // must be over the row selector header skip to the next column
                        newPos = columnOffsets[lastColumnIndex + 1].colIdx;
                    }
                    if ( isNaN( newPos ) ) {
                        return;
                    }
                    self.columnReordering = false;
                    self.columnReorderCell$.find( ".a-GV-headerLabel,.a-GV-header-sort" ).show();
                    if ( newPos === oldPos ) {
                        self.columnHandle$.show();
                        self.columnWidthHandle$.show();
                        self.columnControls$.show();
                    }
                    self.columnMoveMarker$.hide();
                    self.lastHoverCell = null; // force recalculating what to show on next mouse move
                    escapeOff();
                    if ( self.scrollTimerId ) {
                        self._headerScrollStop();
                    }
                    if ( self.columnReorderCancel || newPos === null || newPos === oldPos ) {
                        return;
                    }

                    if ( self.columnReorderCell$.hasClass( C_GRID_COL_GROUP ) ) {
                        self.moveColumnGroup( domIndex( row$ ), oldPos, newPos );
                    } else {
                        self.moveColumn( self.columns[oldPos], newPos );
                    }
                    self.focus();
                }
            });
            widgetUtil.TouchProxy.addTouchListeners( self.columnHandle$[0] );
        },

        _initColumnResize: function() {
            var helperWidth, startScrollOffset, isFrozen,
                self = this,
                dir = this.element.hasClass( C_RTL ) ? -1 : 1,
                header$ = this.element.find( SEL_GRID_HEADER ),
                row$ = header$.find( SEL_ROW ).last();

            this.columnWidthHandle$ = $( "<div class='a-GV-columnWidthHandle'></div>" )
                .appendTo( header$ )
                .css( "top", row$[0].offsetTop )
                .height( row$.height() );
            this.columnWidthHandle$.draggable({
                axis: "x",
                containment: header$,
                start: function( event, ui ) {
                    self.columnWidthDragging = true;
                    self.columnWidthCancel = false;
                    self.columnWidthStartPos = ui.position.left;
                    self.columnWidthStartWidth = self.columnWidthCell$.first().outerWidth();
                    helperWidth = ui.helper.outerWidth();
                    // setup to scroll as needed when drag near boundaries
                    self.hdrScrollParent = self.element.find( SEL_GRID_WRAP_HEADER )[0];
                    isFrozen = self.columnWidthCell$.parent().parent().parent().parent()[0] !== self.hdrScrollParent; // xxx may need a different way
                    startScrollOffset = self.hdrScrollParent.scrollLeft;
                    escapeOn(function() {
                        self.columnWidthCancel = true;
                    });
                },
                drag: function( event, ui ) {

                    function updateWidth( scroll ) {
                        var spWidth, deltaW,
                            width = self.columnWidthStartWidth +
                                dir * ( ui.position.left - self.columnWidthStartPos );

                        spWidth = self.hdrScrollParent.scrollWidth;
                        if ( !isFrozen ) {
                            width += ( self.hdrScrollParent.scrollLeft - startScrollOffset );
                        }

                        if ( width > MIN_COL_WIDTH ) {
                            if ( self.columnWidthCell$.hasClass( C_GRID_SEL_HEADER ) ) {
                                self.rowHeaderWidth = width;
                                self._calculateColumnWidths();
                            } else {
                                // update the width but without notification
                                self._updateColumnWidth( self._getColumnMetadata( self.columnWidthCell$.first() ), width );
                            }
                        }
                        // this is an attempt to make shrinking the width of a column that is at the right edge of the
                        // view port resize better
                        deltaW = self.hdrScrollParent.scrollWidth - spWidth;
                        if ( deltaW < 0 && !scroll && self.hdrScrollParent.scrollLeft !== startScrollOffset) {
                            self.hdrScrollParent.scrollLeft += deltaW;
                            startScrollOffset += deltaW;
                        }
                    }

                    if ( self.columnWidthCancel ) {
                        event.preventDefault();
                        return;
                    }

                    // Need to manually scroll. Draggable scrolling doesn't work because the header
                    // is overflow hidden and scrolls because of the table body scroll bar
                    // start or stop scrolling as needed. The actual scrolling happens from a timer
                    updateWidth();
                    if ( self._headerScrollCheck( ui.offset.left, helperWidth )) {
                        if ( !self.scrollTimerId ) {
                            self._headerScrollStart( ui.offset.left, helperWidth, function() { updateWidth( true ); } );
                        }
                    } else {
                        if ( self.scrollTimerId ) {
                            self._headerScrollStop();
                        }
                    }
                },
                stop: function( event, ui ) {
                    var width = self.columnWidthStartWidth +
                            dir * ( ui.position.left - self.columnWidthStartPos );

                    if ( !isFrozen ) {
                        width += ( self.hdrScrollParent.scrollLeft - startScrollOffset );
                    }

                    self.columnWidthDragging = false;
                    escapeOff();
                    if ( self.scrollTimerId ) {
                        self._headerScrollStop();
                    }
                    if ( self.columnWidthCancel ) {
                        width = self.columnWidthStartWidth;
                    }
                    if ( width < MIN_COL_WIDTH ) {
                        width = MIN_COL_WIDTH;
                    }

                    if ( self.columnWidthCell$.hasClass( C_GRID_SEL_HEADER ) ) {
                        self.rowHeaderWidth = width;
                        self._calculateColumnWidths( null, true );
                    } else {
                        // set width one more time with notification
                        self.setColumnWidth( self._getColumnMetadata( self.columnWidthCell$.first() ), width );
                    }
                }
            });
            widgetUtil.TouchProxy.addTouchListeners( this.columnWidthHandle$[0] );
        },

        _updateColumnWidth: function( pColumn, pWidth, finalSet ) {
            var col, col$, index,
                columnName = this._columnName( pColumn );

            col = this.options.columns[0][columnName];
            col.width = pWidth;
            col.curWidth = pWidth;
            index = this.columns.indexOf( col );
            col$ = this._columnFromIndex( index );
            this._calculateColumnWidths( col$, finalSet );

            return [col, col$];
        },

        // all args are optional
        _calculateColumnWidths: function( col$, finalSet, resetWidths ) {
            var i, col, w, availWidth, affectedTable, body$, extra, remainingWidth, setColumn,
                hasSize = this.options.hasSize,
                ctrl$ = this.element,
                self = this;

            function lastVisibleColumn( start ) {
                var i, col;

                for ( i = start + 1; i < self.columns.length; i++ ) {
                    col = self.columns[i];
                    if ( !col.hidden && !col.noStretch && i !== setColumn ) {
                        return false;
                    }
                }
                return true;
            }

            function adjustTableColumnWidths( data$, header$ ) {
                var tableWidth = 0,
                    frozenOffset = 0,
                    headerCols$ = header$.parent().find( "col" ),
                    dataCols$ = data$.parent().find( "col" );

                dataCols$.each(function( i ) {
                    var w, col, col$ = $( this ),
                        colIndex = col$.attr( ATTR_DATA_IDX );

                    if ( colIndex ) {
                        col = self.columns[ colIndex ];
                        w = col.curWidth;
                    } else {
                        w = self.rowHeaderWidth;
                    }
                    if ( ( i === 0 && !col || col.frozen ) && i < MAX_FROZEN_START_COLS ) { // xxx
                        ctrl$.css( "--a-gv-frozen-offset-" + (i + 1), frozenOffset + "px" );
                        frozenOffset += w;
                    }
                    col$[0].width = w;
                    headerCols$[i].width = w;
                    tableWidth += w;
                });
                ctrl$.css( "--a-gv-scroll-pad-start", frozenOffset + "px" );
                // todo in the future if last column can be frozen then need --a-gv-scroll-pad-end

                header$.parent().width( tableWidth );
                data$.parent().width( tableWidth );
                return tableWidth;
            }

            if ( resetWidths ) {
                for ( i = 0; i < this.columns.length; i++ ) {
                    col = this.columns[i];
                    col.curWidth = col.width || col.defWidth;
                    if ( col.curWidth < MIN_COL_WIDTH ) {
                        col.curWidth = MIN_COL_WIDTH;
                    }
                }
            }

            if ( col$ ) {
                affectedTable = col$.parent().parent()[0];
                setColumn = toInteger( col$.attr( ATTR_DATA_IDX ) );
            }

            // if no specific column or calculation is due to a particular column and that column is not frozen xxx
            if ( !affectedTable || affectedTable === this.tableHeader$[0] ) {
                w = adjustTableColumnWidths( this.tableData$, this.tableHeader$ );
            } else {
                w = this.tableData$.parent().width();
            }

            if ( finalSet ) {
                // Changed to use .width() to solve an IE11 issue but was causing horizontal scrollbar to always be present on Chrome, Safari and FF,
                // Reverted back to use clientWidth as it works correctly for other browsers and we're dropping IE support See bugs 29530019 & 31891890
                // availWidth = ctrl$.find( SEL_GRID_WRAP_SCROLL ).width();
                availWidth = ctrl$.find( SEL_GRID_WRAP_SCROLL )[0].clientWidth;
                // Want to know if there *will* be a scrollbar once rows are rendered. This is called first before
                // rows are rendered (when there is no scrollbar) and after (when there may or may not be).
                // Easier to expand the widths than to contract so assume there will be a scrollbar when there is
                // no data if heading fixed to region. When headers stick to the page there should never be a
                // vertical scrollbar - the region should never be given a height.
                if ( hasSize && this.tableData$.children().length === 0 ) {
                    // assume there will be a vertical scrollbar so subtract it from available width
                    availWidth -= util.getScrollbarSize().width;
                }
                if ( w < availWidth ) {
                    availWidth = availWidth - w - 1;
                    if ( availWidth > 10 ) {
                        // there is enough available width to distribute it among all the columns
                        remainingWidth = availWidth;
                        for ( i = 0; i < this.columns.length; i++ ) {
                            col = this.columns[i];
                            if ( col.hidden || col.frozen || col.noStretch || i === setColumn ) {
                                continue;
                            }
                            if ( lastVisibleColumn( i ) ) {
                                // use remainingWidth so there are no rounding errors to cause a gap
                                col.curWidth += remainingWidth;
                            } else {
                                extra = Math.floor( availWidth * ( col.curWidth / w ) );
                                col.curWidth += extra;
                                remainingWidth -= extra;
                            }
                        }
                    } else {
                        // just give it to the last visible column that can be stretched
                        for ( i = this.columns.length - 1; i > 0; i-- ) {
                            col = this.columns[i];
                            if ( col.hidden || col.frozen || col.noStretch || i === setColumn ) {
                                continue;
                            }
                            col.curWidth = col.curWidth + availWidth;
                            break;
                        }
                    }
                    adjustTableColumnWidths( this.tableData$, this.tableHeader$ );
                }
            }

            if ( hasSize ) {
                body$ = ctrl$.children( SEL_GRID_BODY );
                this._adjustSizeForScrollBars( body$.height(),
                    body$.find( SEL_GRID_WRAP_SCROLL ).width() );
            }
        },

        _addFrozenClasses: function( cls, frozenIndex, col, i) {
            if ( col.frozen ) {
                let inc = col.span || 1;

                if ( i === undefined ) {
                    i = col.end;
                }
                if ( i === this.endFrozenColIndex ) {
                    cls += " " + C_FROZEN + " " + C_FROZEN_EN + "1" + C_FROZEN_EL;
                } else if ( i <= this.lastFrozenColIndex ) {
                    cls += " " + C_FROZEN + " " + C_FROZEN_SN + frozenIndex;
                    if ( i === this.lastFrozenColIndex ) {
                        cls += " " + C_FROZEN_SL;
                    }
                    frozenIndex += inc;
                }
            }
            return [cls, frozenIndex];
        },

        _renderGrid: function() {
            const self = this,
                ctrl$ = this.element,
                o = this.options,
                fixedHeader = o.hasSize || o.stickyTop,
                out = util.htmlBuilder(),
                BEGIN_TABLE = "<table role='presentation' class='" + C_GRID_TABLE + "'>",
                // the tab traps detect tabbing out of the floating or off the end of the last row
                // use a span rather than an input to avoid confusion by assistive technology
                TAB_TRAP = "<span class='" + C_TAB_TRAP + " u-vh is-focusable' aria-hidden='true' tabindex='-1'></span>";
            let numSortColumns, isMultipleColumnsInSort, isOneColumnInSort;

            function renderColumns( out ) {
                if ( o.rowHeader !== NONE ) {
                    out.markup( "<col" )
                        .optionalAttr( "width", self.rowHeaderWidth )
                        .markup( "/>" );
                }
                for ( let i = 0; i < self.columns.length; i++) {
                    const col = self.columns[i];

                    if ( col.hidden ) {
                        continue;
                    }
                    out.markup( "<col" )
                        .optionalAttr( "width", col.width )
                        .attr( ATTR_DATA_IDX, i )
                        .markup( "/>" );
                }
            }

            function renderColumnHeaders( out, hidden ) {
                const columns = self.columns,
                    hiddenStyle = hidden ? "visibility:hidden;" : null;
                let cls, frozenIndex;

                function renderTR( out ) {
                    out.markup( `<tr class='${C_GRID_ROW}' role='row' ` )
                        .optionalAttr( ATTR_STYLE, hiddenStyle )
                        .markup( ">" );
                }

                // first do the column groups if any
                for ( let g = 0; g < self.columnGroups.length; g++) {
                    const group = self.columnGroups[g];

                    renderTR( out );
                    frozenIndex = 1;
                    if ( o.rowHeader !== NONE ) {
                        cls = C_GRID_COL_GROUP + " " + C_GRID_SEL_HEADER + " " + C_FROZEN + " " + C_FROZEN_SN + "1";
                        if ( self.lastFrozenColIndex < 0 ) {
                            cls += " " + C_FROZEN_SL;
                        }
                        frozenIndex += 1;
                        out.markup( `<th role='columnheader' class='${cls}'` )
                            .attr( ARIA_ROLEDESCRIPTION, getMessage( "GROUP_CONTEXT" ) )
                            .optionalAttr( ATTR_STYLE, hiddenStyle )
                            .markup( ">" );
                    }
                    for ( let i = 0; i < group.length; i++) {
                        const col = group[i],
                            colId = hidden ? null : col.domId;

                        cls = C_GRID_COL_GROUP;
                        cls += alignmentClass( col.headingAlignment || ALIGN_CENTER, true );
                        [cls, frozenIndex] = self._addFrozenClasses( cls, frozenIndex, col );
                        out.markup( "<th role='columnheader' " )
                            .attr( ATTR_CLASS, cls )
                            .attr( ARIA_ROLEDESCRIPTION, getMessage( "GROUP_CONTEXT" ) )
                            .attr( ATTR_COLSPAN, col.span )
                            .attr( ATTR_DATA_IDX, i )
                            .optionalAttr( ATTR_STYLE, hiddenStyle )
                            .markup( " tabindex='-1'><span class='" + C_GRID_HEADER_LABEL + "'" )
                            .optionalAttr( "id", colId )
                            .markup( ">" + ( col.heading || "" ) )
                            .markup( "</span></th>");
                    }
                    out.markup( "</tr>" );
                }

                // next do the column headings
                renderTR( out );
                frozenIndex = 1;
                if ( o.rowHeader !== NONE ) {
                    cls = C_GRID_COL_HEADER + " " + C_GRID_SEL_HEADER + " " + C_FROZEN + " " + C_FROZEN_SN + "1";
                    if ( self.lastFrozenColIndex < 0 ) {
                        cls += " " + C_FROZEN_SL;
                    }
                    frozenIndex += 1;
                    out.markup( `<th role='columnheader' class='${cls}'` )
                        .attr( ATTR_ABBR, o.multiple ? getMessage( "ROWS_SELECTION" ) : getMessage( "ROW_SELECTION" ) )
                        .optionalAttr( ATTR_STYLE, hiddenStyle )
                        .markup( `><span class='u-vh ${C_GRID_HEADER_LABEL}'></span>` );

                    if ( o.rowHeaderCheckbox && o.multiple && o.selectAll ) {
                        out.markup( `<span class='${C_SELECTOR}'` )
                            .attr( ATTR_ROLE, "checkbox" )
                            .attr( ARIA_CHECKED, FALSE )
                            .attr( ARIA_LABEL, getMessage( "SELECT_ALL_ROWS" ) )
                            .attr( ATTR_TITLE, getMessage( "SELECT_ALL" ) )
                            .markup( "></span>");
                    }
                    if ( o.rowHeader === SEQUENCE ) {
                        out.markup( "<span class='a-GV-rownum' aria-hidden='true'></span>" );
                    } else if ( o.rowHeader === LABEL ) {
                        out.markup( "<span class='a-GV-rowLabel'></span>" );
                    }
                    out.markup( "</th>" );
                }

                for ( let i = 0; i < columns.length; i++ ) {
                    const
                        col = columns[i],
                        colId = hidden ? null : col.domId;
                    let sortTitle, ariaSort, activateableHeader, blankSpacer, abbrAttr, linkRoleDesc;

                    if ( !col.hidden ) {
                        cls = C_GRID_COL_HEADER;
                        cls += alignmentClass( col.headingAlignment || ALIGN_CENTER, true );

                        if ( col.isRequired ) {
                            cls += " is-required";
                        }
                        if ( !col.elementId || col.readonly ) {
                            cls += " " + C_READONLY;
                        }
                        if ( col.headingCssClasses ) {
                            cls += " " + col.headingCssClasses;
                        }
                        [cls, frozenIndex] = self._addFrozenClasses( cls, frozenIndex, col, i );

                        // wai-aria spec says aria-sort should only apply to one header at a time so pick the primary sort column
                        ariaSort = null;
                        if ( col.sortIndex === 1 ) {
                            if ( col.sortDirection === "asc" ) {
                                ariaSort = "ascending";
                            } else if ( col.sortDirection === "desc" ) {
                                ariaSort = "descending";
                            }
                        }

                        // todo could the column metadata include a class?
                        // Accessibility of a sort order considerations:
                        // aria-sort, according to WAI ARIA, SHOULD be applied to the only one header per grid
                        // However, we can involve multiple columns in sort order, but such scenario is not described
                        // by ARIA, thus, if the grid is sorted by one column only, then aria-sort is added,
                        // but if the grid is sorted by two or more columns then we expose it the same way as sort
                        // order is shown visually. This would lead to another issue - announcing the very long
                        // accessible name of a column header each time when navigating through cells in a row, to
                        // avoid such issue, the abbr attribute is added to the TH element
                        if ( col.sortDirection ) {
                            sortTitle = formatMessage(
                                            col.sortDirection === "asc" ? "SORTED_ASCENDING" : "SORTED_DESCENDING",
                                            isMultipleColumnsInSort ? col.sortIndex : "" );
                        }

                        activateableHeader = o.activateColumnHeader && !( col.noHeaderActivate );

                        abbrAttr = null;
                        blankSpacer = ""; // replacement for the col.heading when the heading is null
                        linkRoleDesc = null;
                        // abbr attribute needed to have accessible column header without sort options which are
                        // included into a TH when multiple columns are in sort order
                        if ( col.sortDirection && isMultipleColumnsInSort && col.heading.length > 0 ) {
                            abbrAttr = util.stripHTML( col.heading );
                        }
                        // When column heading is null we hit a bug of JAWS when the whole row of column headers become
                        // inaccessible. Actually, this code triggers the issue: <th><span role=link></span></th>
                        // See Bug 34801533 for details.
                        // We could add &nbsp; as the <span> content to make this link accessible but still without
                        // a meaningful label, but when column header has aria-sort attribute then with added &nbsp;,
                        // the JAWS screen reader does not emit this aria-sort attribute.
                        // also, if multiple columns are involved in sort order then &nbsp; is ignored by JAWS along
                        // with the link, thus screen reader users cannot click on a column header
                        if ( activateableHeader && col.heading.length === 0 ) {
                            abbrAttr = " ";
                            blankSpacer = getMessage( "BLANK_HEADING" );
                            linkRoleDesc = lang.getMessage( "VISUALLY_HIDDEN_LINK" );
                        }

                        out.markup( "<th role='columnheader' " )
                            .attr( ATTR_CLASS, cls )
                            .attr( ATTR_DATA_IDX, i )
                            .optionalAttr( ATTR_STYLE, hiddenStyle )
                            .optionalAttr( ATTR_ABBR, abbrAttr )
                            .markup( " tabindex='-1'><span " )
                            .attr( ATTR_CLASS, linkRoleDesc ? "u-vh " + C_GRID_HEADER_LABEL : C_GRID_HEADER_LABEL )
                            // onmouseover and aria-sort applied to this inner span element, not to the outer th,
                            // because of the "onmouseover" event showing sort buttons.
                            // The sort buttons are rendered within the th element and inherit onmouseover and aria-sort
                            // attributes, where aria-sort looks weird for buttons and "onmouseover" is not applicable.
                            .optionalAttr( "onmouseover", ( o.columnSort && col.canSort ) ? "void(0);" : null )
                            .optionalAttr( ARIA_SORT, isOneColumnInSort ? ariaSort : null )
                            .optionalAttr( "id", colId )
                            // if there is a handler on activate then assume there is a popup
                            .optionalAttr( ATTR_ROLE, activateableHeader ? "link" : null )
                            .optionalAttr( ARIA_ROLEDESCRIPTION, linkRoleDesc )
                            .optionalAttr( ARIA_HASPOPUP, activateableHeader ? "dialog" : null )
                            .markup( ">" )
                            .markup( blankSpacer ? blankSpacer : col.heading )
                            .markup( "</span>" );
                        if ( col.sortDirection ) {
                            out.markup( "<span class='a-GV-header-sort'" )
                                .optionalAttr( ARIA_HIDDEN, isOneColumnInSort )
                                .optionalAttr( ATTR_ROLE, isMultipleColumnsInSort ? "img" : null )
                                .optionalAttr( ARIA_LABEL, isMultipleColumnsInSort ? sortTitle : null )
                                .markup( "><span aria-hidden='true'" )
                                .attr( ATTR_CLASS, "a-Icon " +
                                        ( col.sortDirection === "asc" ? "icon-irr-sort-asc" : "icon-irr-sort-desc" ) )
                                .attr( ATTR_TITLE, sortTitle )
                                .markup( "></span>" );
                            if ( isMultipleColumnsInSort ) {
                                out.markup( "<span aria-hidden='true'>")
                                    .content( col.sortIndex )
                                    .markup( "</span>" );
                            }
                            out.markup( "</span>" );
                        }
                        out.markup( "</th>" );
                    }
                }

                out.markup( "</tr>" );
            }

            numSortColumns = 0;
            for ( let i = 0; i < this.columns.length; i++ ) {
                if ( this.columns[i].sortDirection ) {
                    numSortColumns += 1;
                }
            }
            isOneColumnInSort = numSortColumns === 1;
            isMultipleColumnsInSort = numSortColumns > 1;

            out.markup( `<div class='${C_GRID_HEADER}${( fixedHeader ? " " + C_GRID_HEADER + "--fixed" : "" )}'>\
<div class='${C_GRID_WRAP_HEADER}'>${BEGIN_TABLE}` );
            renderColumns( out );
            out.markup( "<thead role='rowgroup'>" );
            renderColumnHeaders( out, false );
            out.markup( `</thead></table></div></div><div class='${C_GRID_BODY}'>` );
            this._renderAltDataMessages( out, this.idPrefix );

            // use tabindex=-1 because Firefox lets scrollable things take focus and that messes up navigation especially during editing
            out.markup( `<div class='${C_GRID_WRAP_SCROLL}' tabindex='-1'>${BEGIN_TABLE}` );
            renderColumns( out );
            out.markup( "<thead role='rowgroup' style='visibility:hidden'>" );
            renderColumnHeaders( out, true );
            out.markup( "</thead><tbody></tbody></table>" );
            this._renderLoadMore( out, getMessage( "PAGINATION_LANDMARK" ) );
            out.markup( "</div>" );

            if ( o.autoAddRecord ) {
                out.markup( TAB_TRAP );
            }

            out.markup( "</div>" );
            if ( o.editable ) {
                out.markup( "<div class='a-GV-floatingItem' tabindex='-1' style='display: none;'" )
                    .attr( "id", this.idPrefix + "_floatingItem_dialog" )
                    .markup( "><h1" )
                    .attr( "class", "u-vh " + C_OVERFLOW_CELL_HEADING )
                    .attr( ARIA_HIDDEN, "true" )
                    .attr( ARIA_ROLEDESCRIPTION, lang.getMessage( "APEX.DIALOG.VISUALLY_HIDDEN_TITLE" ) );
                out.markup( `></h1><div class='a-GV-cellMoveHandle'></div><button type='button' class='${C_EXPAND_COLLAPSE}' tabindex='-1'>\
<span aria-hidden='true' class='a-Icon'></span></button>${TAB_TRAP}<div class='${C_FLOATING_ITEM_CONT}'></div>${TAB_TRAP}</div>` );
            }

            this._renderFooter( out, this.idPrefix );

            if ( o.columnSort ) {
                out.markup( `<div class='${C_GRID_COL_CONTROLS}' style='display:none'` )
                    .attr( ATTR_ROLE, "group" )
                    .attr( ARIA_LABEL, getMessage( "SORT_OPTIONS" ) )
                    .markup( ">" );
                this._renderButton( out, "a-Button js-asc", "icon-up-chevron", getMessage( "SORT_ASCENDING" ) );
                this._renderButton( out, "a-Button js-desc", "icon-down-chevron", getMessage( "SORT_DESCENDING" ) );
                out.markup( "</div>" );
            }

            if ( o.reorderColumns ) {
                out.markup( `<div class='${C_GRID_COL_HANDLE}' style='display:none'></div>\
<div class='a-GV-colMoveMarker' style='display:none'><span class='a-GV-colMoveMarker-x'></span></div>` );
            }

            // the floatingItem was moved to the end of the body so remove it explicitly because the ctrl$.html won't
            if ( this.floatingItem$ ) {
                this.floatingItem$.remove();
            }

            ctrl$.html( out.toString() );

            this.pageKey = null; // cause the pagination if any to get updated
            this.tableHeader$ = ctrl$.find( ".a-GV-hdr .a-GV-table>thead" ); // want the one in the header only
            this.tableData$ = ctrl$.find( ".a-GV-table>tbody" );
            this._clearChildrenRowCache();
            this.columnControls$ = ctrl$.find( SEL_GRID_COL_CONTROLS );
            this.columnControls$.find( "button" ).attr( ATTR_TABINDEX, -1 );
            this.columnHandle$ = ctrl$.find( "." + C_GRID_COL_HANDLE );
            this.columnMoveMarker$ = ctrl$.find( ".a-GV-colMoveMarker" );
            this.floatingItem$ = ctrl$.find( SEL_FLOATING_ITEM ); // Note: this gets moved to end of document body
        },

        _calcSpanAllColumns: function( frozen ) {
            let start, end,
                hasFrozenColumns = this.lastFrozenColIndex >= 0 || this.options.rowHeader !== NONE,
                span = 0;

            if ( frozen == null || !hasFrozenColumns ) {
                start = 0;
                end = this.columns.length;
            } else {
                // frozen != null && hasFrozenColumns
                if ( frozen ) {
                    start = 0;
                    end = this.lastFrozenColIndex + 1;
                    if ( this.options.rowHeader !== NONE ) {
                        span += 1;
                    }
                } else {
                    start = this.lastFrozenColIndex + 1;
                    end = this.columns.length;
                }
            }
            for ( let i = start; i < end; i++ ) {
                if ( !this.columns[i].hidden ) {
                    span += 1;
                }
            }
            return span;
        },

        //
        // Begin tableModelViewBase overrides
        //

        _getHeaderHeight: function() {
            return this.element.find( SEL_GRID_HEADER ).outerHeight();
        },

        _selectedCount: function() {
            const o = this.options;
            let count = 0;

            if ( !this.tableData$ ) {
                // ignore if not yet initialized or perhaps destroyed (can happen because selection debounce
                // if selection changes and destoryed right away)
                return;
            }
            if ( o.selectCells ) {
                count = this.tableData$.find( SEL_SELECTED ).filter( SEL_CELL ).length;
            } else {
                if ( o.persistSelection ) {
                    // if selection is persisted in the model the ask the model for the count
                    // in this case the selection could span multiple pages
                    count = this.model.getSelectedCount();
                } else {
                    count = this.tableData$.find( "tr.is-selected" ).length;
                }
            }
            return count;
        },

        _selectedStatusMessage: function( count ) {
            if ( this.options.selectCells ) {
                return formatMessage( "SELECTION_CELL_COUNT", count );
            } // else
            return this._super( count );
        },

        _deletedRowsHidden: function() {
            // make sure none of the deleted rows are selected
            this.element.find( SEL_DELETED ).removeClass( C_SELECTED ).removeAttr( ARIA_SELECTED );
            // todo may need to move last focused too
        },

        _deletedCount: function() {
            // xxx what if virtual pagination? why not ask the model?
            return this.tableData$.find( SEL_DELETED ).length;
        },

        _hasControlBreaks: function() {
            return this.breakColumns.length > 0;
        },

        _controlBreakSelector: function() {
            return SEL_CONTROL_BREAK;
        },

        // no need for _itemSelector because it is only needed for nested control breaks

        _getFixedRecordHeight: function() {
            let rowHeight,
                r$ = this.tableData$.find( SEL_ROW ).filter( SEL_VISIBLE ).first();

            // This only works well for fixed height rows
            // This can be called when the table is empty so add an empty row just to measure then clean it up.
            // Including a character so at a minimum will measure based on the font height
            if ( !r$.length ) {
                r$ = $( `<tr class='${C_GRID_ROW}'><td class='${C_GRID_CELL}' style='visibility: hidden;'>T</td></tr>` );
                this.tableData$.append( r$ );
                rowHeight = r$.outerHeight();
                r$.remove();
            } else {
                rowHeight = r$.outerHeight();
            }
            return rowHeight;
        },

        _getDataContainer: function() {
            return this.tableData$;
        },

        _insertFiller: function( out, curFiller$ ) {
            let  filler$ = $( out.toString() );

            if ( curFiller$ ) {
                curFiller$.last().before( filler$ );
            } else {
                this.tableData$.html( filler$ );
            }
            this._clearChildrenRowCache();
            return filler$;
        },

        _insertData: function( out, filler$, how ) {
            const o = this.options;
            let body$, toSelect, saveFocusInHeader,
                // after the rendering any anchors or buttons (any tab stop) in cells need to have the tab stops
                // disabled this happens in getRows$
                dataRows$ = getRows$( out );

            if ( !filler$ ) {
                this.tableData$.append( dataRows$ );
            } else {
                // else must have filler$ and how must be before or after
                filler$.last()[how]( dataRows$ );
            }
            this._clearChildrenRowCache();

            // if all rows are selected then it makes sense to select new rows as they are inserted.
            if ( this.allSelected && o.pagination.scroll && !o.persistSelection ) {
                toSelect = dataRows$.map( function ( i, el ) {
                    return $( el ).children()[0];
                } );
                saveFocusInHeader = this.focusInHeader;
                this.focusInHeader = false;
                // don't want to change focus at all
                this._select( toSelect, SEL_ACTION_ADD, null, false );
                this.focusInHeader = saveFocusInHeader;
            }
            // It is possible for new rows inserted to be selected. Could happen because of initial selection
            // state from the server or select all or from filling in data from a missing range in the model.
            // If the selection counts differs before and after insert need to update status and
            // also trigger a selection change event
            if ( !o.selectCells && this.prevSelCount !== this._selectedCount() ) {
                this._selNotifyDelay( true );
            }

            if ( !o.pagination.scroll && o.persistSelection ) {
                // for page pagination when the selection is persisted the select all state needs to be updated
                // xxx maybe for scroll too?
                this._updateSelectAll();
            }
            if ( o.hasSize ) {
                body$ = this.element.children( SEL_GRID_BODY );
                this._adjustSizeForScrollBars( body$.height(),
                    body$.find( SEL_GRID_WRAP_SCROLL ).width() );
            }

            if ( this.gotoCellPending ) {
                setTimeout( ()=> {
                    this.gotoCell( this.gotoCellPending.record, this.gotoCellPending.column );
                }, 0 );
            }
        },

        _controlBreakData: function( rowItem ) {
            const o = this.options;
            let label = "";

            for ( let i = 0; i < this.breakColumns.length; i++ ) {
                let value, columnItem,
                    col = this.breakColumns[i];

                if ( i > 0 ) {
                    label += ", ";
                }
                value = this.model.getValue( rowItem, col.property );
                // this is a subset of what _renderFieldDataValue does, for example links and cell templates are not supported
                if ( value === null ) {
                    value = "";
                }
                // check to see if the model has a display value
                if ( typeof value === "object" && hasOwnProperty( value, "d" ) ) {
                    value = value.d;
                } else {
                    // otherwise if there is a column item it may have a display value
                    columnItem = this.columnItems[ col.property ];
                    if ( columnItem ) {
                        value = columnItem.item.displayValueFor( value );
                    }
                }
                if ( value === "" && o.showNullAs ) {
                    value = o.showNullAs;
                }
                // if escape is false then value can contain markup otherwise it is escaped as element content
                // note that the !== false test is so that anything else defaults to true.
                if ( col.escape !== false ) {
                    value = util.escapeHTML( value );
                }
                if ( col.label || col.heading ) {
                    label += `<span class='a-GV-breakLabel'>${( col.label ? util.escapeHTML( col.label ) : col.heading )}:</span> `;
                }
                label += `<span class='a-GV-breakValue'> ${value}</span>`;
            }
            return {
                label: label,
                controlBreakId: this.model.getControlBreakId( rowItem )
            };
        },

        _renderBreak: function ( out, expandControl, breakData, serverOffset ) {
            const o = this.options,
                label = breakData.label,
                ctrlBreak = this._getControlBreak( serverOffset + 1, true );

            if ( ctrlBreak ) {
                // with virtual paging it is possible to render a break record that had been rendered in the past
                // so use the previous expansion state
                expandControl = ctrlBreak.expanded;
            } else {
                this.controlBreaks.push( {
                    offset: serverOffset + 1,
                    label: label,
                    expanded: expandControl
                } );
                // todo this sorting gets done a little too frequently
                this.controlBreaks.sort( controlBreakCompare );
            }
            // render the control break table row
            const hasFrozenColumns = this.lastFrozenColIndex >= 0 || o.rowHeader !== NONE;
            let cls = C_GRID_BREAK_HEADER;

            if ( hasFrozenColumns ) {
                cls += " " + C_FROZEN + " " + C_FROZEN_SN + "1";
            }
            out.markup( `<tr role='row' class='${C_CONTROL_BREAK}${expandControl ? " " + C_EXPANDED : ""}'` )
                // serverOffset not known if the result set is empty
                .attr( ATTR_DATA_ID, breakData.controlBreakId )
                .optionalAttr( ATTR_DATA_ROWNUM , serverOffset != null ? serverOffset + 1 : null )
                .markup( `><th role='rowheader' class='${cls}'` )
                .attr( ATTR_COLSPAN, this._calcSpanAllColumns( true ) )
                .markup( ">" );
            if ( o.collapsibleControlBreaks ) {
                let iconCls, message;

                if ( expandControl ) {
                    iconCls = "icon-down-arrow";
                    message = getMessage( "BREAK_COLLAPSE" );
                } else {
                    iconCls = "icon-right-arrow";
                    message = getMessage( "BREAK_EXPAND" );
                }
                this._renderButton( out, "a-Button " + C_TOGGLE_BREAK, iconCls, message, expandControl );
            }
            out.markup( "<span class='a-GV-controlBreakLabel'>")
                .markup( label )
                .markup( "</span></th>" );
            if ( hasFrozenColumns ) {
                // todo maybe there is a better way to freeze what spans all rows but it seems need a separate th for frozen and scroll
                out.markup( `<th role="rowheader" class="${C_GRID_BREAK_HEADER}" colspan="${this._calcSpanAllColumns( false )}"></th>`);
            }
            out.markup( "</tr>" );

            this.controlBreakCollapsed = !expandControl;
        },

        _renderFillerRecord: function ( out, cssClass ) {
            out.markup( `<tr aria-hidden="true" class="${cssClass}"><td ` )
                .attr( ATTR_COLSPAN, this._calcSpanAllColumns() )
                .markup( "></td></tr>" );
            // todo consider putting placeholders inside the filler
        },

        _renderRecord: function( out, rowItem, index, id, meta ) {
            this._renderRow( out, rowItem, index, id, meta ); // todo consider to merge _renderRecord and _renderRow
        },

        _insertRecord: function( row$, record, id, meta, where ) {
            const out = util.htmlBuilder();
            let newRow$,
                inserted = [];

            if ( !row$ && this._hasControlBreaks() ) {
                // If not inserted after any particular row and there are control breaks make sure the new record is
                // inserted within a control break. This means either the first control break or if the last focus was
                // on a control break row then after that last focused break.
                row$ = $( this.lastFocused ).closest( SEL_CONTROL_BREAK ); // see if a break row last had focus
                if ( !row$.length ) {
                    // if not find the first break row
                    row$ = this.tableData$.find( SEL_CONTROL_BREAK ).first();
                }
                if ( row$ ) {
                    this._expandCollapseControlBreak( [ row$ ], true ); // make sure it is expanded
                }
                where = "after"; // force this
            }

            // An inserted row doesn't have an index because it would cause all the other indexes to shift down!
            this._renderRow( out, record, null, id, meta );
            newRow$ = getRows$( out );
            inserted.push( newRow$[0] );
            if ( where === "after" && row$ ) {
                row$.after( newRow$ );
            } else {
                this.tableData$.prepend( newRow$ );
            }
            this._clearChildrenRowCache();
            return $(inserted);
        },

        _afterInsert: function( insertedElements ) {
            const focus = !!this.element.find( "." + C_FOCUSED ).length ||
                        $( document.activeElement ).hasClass( C_AUTO_ADD );
            let col,
                cell$ = insertedElements[0].find( SEL_GRID_CELL ).first();

            // find the first editable cell
            for ( let i = 0; i < this.columns.length; i++ ) {
                col = this.columns[i];
                // no need to check readonly class on cell because can't have checksum on newly added row so col.readonly should catch all cases
                if ( !col.hidden && !col.readonly && this.columnItems[col.property] ) {
                    cell$ = cellFromColumnIndex( insertedElements[0], this.fieldToColumnIndex[col.property] );
                    break;
                }
            }
            // the model has filled in any control break values in the new record

            // delay selecting slightly to make sure any previous focused cell is activated before causing a new cell to
            // be activated.
            setTimeout( () => {
                // the select will have no effect while focus is in the header
                this.focusInHeader = false;
                // select and edit
                this._select( cell$,  null, focus, false, false );
                if ( focus && this.options.editable && !this.editMode ) {
                    this.setEditMode( true );
                }
            }, 0 );
        },

        _updateRecordField: function( row, record, field, meta ) {
            var cell$, columnItem, col, cellMeta,
                index = this.fieldToColumnIndex[field],
                out = util.htmlBuilder();

            if ( index === undefined ) {
                return; // there is no cell to update
            }
            cell$ = cellFromColumnIndex( row, index );
            // update just the changed cell
            if ( this.editMode && record === this.activeRecord && !this.ignoreItemChange && !meta.agg ) {
                columnItem = this.columnItems[field];
                if ( columnItem ) {
                    this._setColumnItemValue( columnItem.item, record, field );
                }
            }
            if ( !cell$.hasClass( C_ACTIVE ) ) {
                // update the readonly/display value
                col = this.options.columns[0][field];
                cellMeta = null;
                if ( meta.fields ) {
                    cellMeta = meta.fields[col.property];
                }
                out = util.htmlBuilder();
                this._renderFieldDataValue( out, col, record, meta, cellMeta );
                cell$.html( out.toString() );
            }
        },

        _checkAllHidden: util.debounce( function() {
            const pagination = this.options.pagination;

            if ( !this.tableData$.children( SEL_GRID_ROW ).is( ":visible" ) ) {
                // no items are visible so switch to showing no data
                this.noData$.show();
                this.noData$.parent().children().not( SEL_GRID_ALT_MSG ).hide();
                this.noData = true;
            } else {
                // at least one item is visible
                // but some may be hidden so check if need to render more items
                if ( pagination.scroll && !pagination.loadMore && !pagination.virtual) {
                    if ( this.tableData$.height() < this.scrollParent$.height() ) {
                        // If add more scrolling it is possible for visible items to be smaller than the viewport but still
                        // not have all the data. In this case it is not possible to add more data because can't scroll.
                        this._addNextPage();
                    }
                }
                // Note client side filtering works best when all the records are rendered. This means it makes
                // no sense for pagination.page unless the rowsPerPage includes all records. It does not work
                // for virtual scroll pagination. It works somewhat for non-virtual scroll pagination. For
                // load more it works but it can get tedious clicking on load more button.
                // May not work well with control breaks especially if collapsible or aggregates
                // Pagination footer info may be confusing while filtering
                // Doesn't work with highlighter because record not re-rendered
                // TODO doc these limitations
                // TODO need to keep adding pages in _addPageOfRecords if the viewport is not full
            }
        }, 10 ),

        _updateRecordState: function( row$, itemId, item, meta, property ) {
            const o = this.options,
                noTooltip = !this.tooltipOptions;
            let cls = getRowClass( meta, o, row$.hasClass( C_SELECTED ), this.model, item ),
                isDisabled = cls.includes( " " + C_DISABLED ); // likely faster than asking the model again

            row$.attr( ATTR_CLASS, cls );
            if ( isDisabled ) {
                row$.attr( ARIA_DISABLED, TRUE );
                // if selected deselect it
                if ( row$.hasClass( C_SELECTED ) ) {
                    this._select( row$.children( SEL_CELL ).first(), SEL_ACTION_UNSET,
                        $( document.activeElement ).closest( row$[0] ).length > 0, null );
                }
            } else {
                row$.removeAttr( ARIA_DISABLED );
            }

            if ( property === "hidden" ) {
                // just showing or hiding.
                if ( this.noData && !meta.hidden ) {
                    // was showing no data and now something is visible so switch to showing data
                    this.noData$.hide();
                    this.noData$.parent().children().not( SEL_GRID_ALT_MSG ).show();
                    this.noData = false;
                }
                if ( !this.noData ) {
                    // check if all rows are hidden after all the calls to update the hidden state
                    this._checkAllHidden();
                }
                return;
            } // else

            if ( noTooltip ) {
                // NOTE this assumes/requires that there be a row header in order to see these record level error messages
                if ( meta.message ) {
                    row$.first().find( SEL_GRID_SEL_HEADER ).attr( ATTR_TITLE, meta.message );
                } else {
                    row$.first().find( SEL_GRID_SEL_HEADER ).removeAttr( ATTR_TITLE );
                }
            }
            // todo this may make volatile columns stale

            // handle field level metadata but don't care if the record is deleted
            if ( meta.fields ) {
                for ( const [f, cellMeta] of objectEntries( meta.fields ) ) {
                    let cell$,
                        index = this.fieldToColumnIndex[f];

                    if ( index === undefined ) {
                        continue; // there is no cell for this field, move on
                    }
                    cell$ = cellFromColumnIndex( row$, index );

                    cls = getCellClass( o.columns[0][f], meta, cellMeta, o, cell$, this.model, item );
                    cell$.attr( ATTR_CLASS, cls );
                    if ( noTooltip ) {
                        if ( cellMeta.message ) {
                            cell$.attr( ATTR_TITLE, cellMeta.message );
                        } else {
                            cell$.removeAttr( ATTR_TITLE );
                        }
                    }
                }
            }
        },

        _removeRecord: function( row ) {
            row.remove();
        },

        _identityChanged: function( prevId, id ) {
            // need to update the dom and the activeRecordId if it applies
            const row$ = this._elementsFromRecordIds( [prevId] )[0];

            if ( row$ ) {
                row$.attr( ATTR_DATA_ID, id );
                if ( this.activeRecordId === prevId ) {
                    this.activeRecordId = id;
                }
            }
        },

        _replaceRecord: function( row$, rec, oldId, id, meta ) {
            const out = util.htmlBuilder();
            let newRow$, wasSelected, wasFocused, wasActive, focus, toFocus, newCell$, lastCell,
                rowIndex = null,
                colIndex = null,
                newRow = [],
                index = row$.children().first().find( ".a-GV-rownum" ).text() || null; // xxx

            if ( index ) {
                index = toInteger( index ) - 1;
            }

            if ( this.activeRecordId === oldId ) {
                this.activeRecord = this.activeRecordId = null; // if active record replaced don't hold on to stale data
            }
            wasSelected = row$.hasClass( C_SELECTED );
            wasFocused = row$.find( this.lastFocused ).length;
            if ( wasFocused ) {
                lastCell = this.lastFocused;
                focus = getContainingTableCell$( lastCell ).hasClass( C_FOCUSED );
            }
            wasActive = row$.find( this.lastEditModeCell ).length && $( this.lastEditModeCell ).hasClass( C_FOCUSED );
            if ( wasActive ) {
                lastCell = this.lastEditModeCell;
            }
            if ( lastCell ) {
                rowIndex = 0;
                colIndex = domIndex( getContainingGridCell$( lastCell ) );
            }

            this._renderRow( out, rec, index, id, meta );
            newRow$ = getRows$( out );
            newRow.push( newRow$[0] );
            row$.last().replaceWith( newRow$ );
            this._clearChildrenRowCache();

            newRow$ = $( newRow );
            if ( wasSelected ) {
                // select the row again and if present the checkbox selector (ok to just update the class because selection state didn't really change)
                newRow$.add(
                    newRow$.find( ".a-GV-selHeader .u-selector,.a-GV-selHeader ." + C_SELECTOR_VH )
                        .attr( ARIA_CHECKED, TRUE )
                ).addClass( C_SELECTED ).attr( ARIA_SELECTED, TRUE );
            }
            if ( wasActive ) {
                this._activateCell( cellFromColumnIndex( newRow$.eq( rowIndex ), colIndex ) );
            } else if ( wasFocused ) {
                newCell$ = cellFromColumnIndex( newRow$.eq( rowIndex ), colIndex );
                toFocus = this._getCellFocusable( newCell$ );
                this._setFocusable( toFocus );
                this._setCurrentRow( newCell$[0] );
                if ( focus ) {
                    this._setFocus( toFocus );
                }
            }
        },

        _removeFocus: function( row ) {
            let curRow$, cell$, next$;

            // If the row has focus then move it to the next row (or prev row if at end) keeping in the same column
            curRow$ = $( this.lastFocused ).closest( SEL_ROW );
            if ( curRow$[0] === row[0] || ( row.length > 1 && curRow$[0] === row[1] ) ) {
                cell$ = getContainingDataCell$( this.lastFocused );
                next$ = this._getNextCellDown( cell$, 1 );
                if ( !next$ ) {
                    next$ = this._getPrevCellUp( cell$, 1 );
                }
                if ( next$ ) {
                    this._select( next$, null, true, false );
                }
            }
        },

        _elementsFromRecordIds: function( ids ) {
            let rows = [];

            for ( let i = 0; i < ids.length; i++ ) {
                let row = this.tableData$[0].querySelector( `[data-id="${util.escapeCSS(ids[i])}"]` ); // using querySelector for performance

                if ( row ) {
                    rows.push( $( row ) );
                }
            }
            return rows;
        },

        //
        // End tableModelViewBase overrides
        //

        /* When exact is true looking for a specific control break row,
         * when false looking for closest control break for the given row.
         * Note: serverOffset is in terms of the view rownum which is serverOffset + 1
         */
        _getControlBreak: function( serverOffset, exact ) {
            let i,
                ctrlBreak = null;

            if ( this.breakColumns.length > 0 ) {
                i = binarySearch( this.controlBreaks, { offset: serverOffset }, controlBreakCompare );
                ctrlBreak = this.controlBreaks[i];
                if ( !exact && !( ctrlBreak && ctrlBreak.offset === serverOffset ) ) {
                    ctrlBreak = this.controlBreaks[i - 1];
                }
            }
            return ctrlBreak;
        },

        _renderRow: function( out, rowItem, index, id, meta ) {
            const
                o = this.options,
                columns = this.columns,
                noTooltip = !this.tooltipOptions,
                msgSelectRow = getMessage( "SELECT_ROW" );
            let cls, selectorCls, cellMeta, selRole, selRoleDesc, rownum, hasLabel, controlBreakData,
                frozenIndex = 1,
                title = null,
                rowHeaderTitle = null,
                cellTitle = null,
                isDisabled = false;

            cls = getRowClass( meta, o, null, this.model, rowItem );
            isDisabled = cls.includes( " " + C_DISABLED ); // likely faster than asking the model again
            if ( meta.agg ) {
                if ( meta.grandTotal ) {
                    title = o.aggregateLabels[meta.agg].overallLabel;
                } else {
                    title = o.aggregateLabels[meta.agg].label;
                }
                // todo mark as potentially stale if the model has changes
            } else {
                if ( meta.message && noTooltip ) {
                    rowHeaderTitle = meta.message;
                }
            }

            rownum = meta.serverOffset !== undefined ? meta.serverOffset + 1 : "";
            if ( this.controlBreakCollapsed === null && this._hasControlBreaks() ) {
                // find out if this record is going into a collapsed break
                this.controlBreakCollapsed = false; // assume not
                controlBreakData = this._getControlBreak( rownum );
                if ( controlBreakData ) {
                    // is the break collapsed and does this row belong to the same control break?
                    if ( !controlBreakData.expanded && this._controlBreakData( rowItem ).label === controlBreakData.label ) {
                        this.controlBreakCollapsed = true;
                    }
                }
            }

            out.markup( "<tr role='row'" )
                .attr( ATTR_DATA_ID, id )
                .optionalAttr( ATTR_DATA_ROWNUM, rownum )
                .optionalAttr( ARIA_DISABLED, isDisabled ? TRUE : null )
                .attr( ATTR_CLASS, cls )
                .optionalAttr( ATTR_TITLE, title )
                .optionalAttr( ARIA_SELECTED, meta.sel ? TRUE : null )
                .optionalAttr( ATTR_STYLE, this.controlBreakCollapsed && !meta.agg ? "display:none;": null ) // always show the aggregate rows even if break collapsed
                .markup( ">" );

            if ( o.rowHeader !== NONE ) {
                hasLabel = meta.agg || o.rowHeader === LABEL;
                cls = C_GRID_CELL + " " + C_GRID_SEL_HEADER + " " + C_FROZEN + " " + C_FROZEN_SN + "1";
                if ( hasLabel ) {
                    cls += " " + C_ROW_HEADER;
                }
                if ( this.lastFrozenColIndex < 0 ) {
                    cls += " " + C_FROZEN_SL;
                }
                frozenIndex += 1;
                // In terms of accessibility, this is not a row header, thus
                // the role should be gridcell, not a rowheader.
                out.markup( "<th role='gridcell'" )
                    .attr( ATTR_CLASS, cls )
                    .optionalAttr( ATTR_TITLE, rowHeaderTitle )
                    .markup( ">");
                if ( !meta.agg ) {

                    if ( o.multiple ) {
                        selectorCls = o.rowHeaderCheckbox ? C_SELECTOR : C_SELECTOR_VH;
                        selRole = 'checkbox';
                        selRoleDesc = lang.getMessage( "APEX.CHECKBOX.VISUALLY_HIDDEN_CHECKBOX" );
                    } else {
                        selectorCls = o.rowHeaderCheckbox ? C_SELECTOR_SINGLE : C_SELECTOR_VH;
                        selRole = 'radio';
                        selRoleDesc = lang.getMessage( "APEX.RADIO.VISUALLY_HIDDEN_RADIO" );
                    }
                    if ( o.rowHeaderCheckbox && meta.sel ) {
                        selectorCls += " " + C_SELECTED;
                    }
                    out.markup( "<span " )
                        .attr( ATTR_CLASS, selectorCls )
                        .attr( ATTR_ROLE, selRole )
                        .optionalAttr( ARIA_ROLEDESCRIPTION, o.rowHeaderCheckbox ? null : selRoleDesc )
                        .attr( ARIA_CHECKED, meta.sel ? TRUE : FALSE )
                        .attr( ARIA_LABEL, msgSelectRow )
                        .optionalAttr( ATTR_TITLE, o.rowHeaderCheckbox ? msgSelectRow : null ) // todo acc include row number and row header col value 25153552
                        .markup( "></span>" );
                    if ( o.rowHeader === SEQUENCE ) {
                        // aria-hidden because a screen reader user has the context row read to them so they don't need to hear the sequence repeated
                        out.markup( "<span class='a-GV-rownum' aria-hidden='true'>" )
                            .content( rownum )
                            .markup( "</span>" );
                    }
                }
                if ( hasLabel ) {
                    out.markup( "<span class='a-GV-rowLabel'>" );
                    if ( meta.agg ) {
                        out.content( o.aggregateLabels[meta.agg][ meta.grandTotal ? "overallLabel" : "label" ] );
                    } else if ( o.rowHeaderLabelColumn ) {
                        out.markup( this.model.getValue( rowItem, o.rowHeaderLabelColumn ) );
                    }
                    out.markup( "</span>" );
                }
                out.markup("</th>" );
            }

            // render columns
            for ( let i = 0; i < columns.length; i++) {
                const col = columns[i];

                cellMeta = null;
                if ( meta.fields ) {
                    cellMeta = meta.fields[col.property];
                }
                if ( !col.hidden ) {
                    cls = getCellClass( col, meta, cellMeta, o, null, this.model, rowItem );
                    cellTitle = null;
                    // todo mark volatile columns as stale if the item is edited if cellMeta
                    if ( noTooltip ) {
                        if ( cellMeta && cellMeta.message ) {
                            cellTitle = cellMeta.message;
                        } else if ( meta.agg ) {
                            cellTitle = o.aggregateTooltips[ meta.agg + "|" + col.property ];
                        }
                    }
                    [cls, frozenIndex] = this._addFrozenClasses( cls, frozenIndex, col, i );

                    out.markup( "<td tabindex='-1'" )
                        .attr( ATTR_ROLE, col.usedAsRowHeader ? ROLE_ROWHEADER : ROLE_GRIDCELL )
                        .attr( ATTR_CLASS, cls )
                        .optionalAttr( ATTR_TITLE, cellTitle )
                        .markup( ">" );
                    this._renderFieldDataValue( out, col, rowItem, meta, cellMeta );
                    out.markup( "</td>" );
                }
            }
            out.markup( "</tr>" );
        },

        _getColumnMetadata: function( cell$ ) {
            var index, headerTable$, hdr$;

            if ( cell$.hasClass( C_GRID_CELL ) ) {
                index = domIndex( cell$ );
                headerTable$ = this.tableHeader$;
                hdr$ = headerTable$.children().last().children().eq( index );
            } else if ( cell$.hasClass( C_GRID_COL_HEADER ) ) {
                hdr$ = cell$;
            } else {
                return null;
            }
            index = toInteger( hdr$.attr( ATTR_DATA_IDX ) );
            if ( !isNaN( index ) ) {
                return this.columns[index];
            } // else
            return null;
        },

        _activateColumnHeader: function( event, cell$ ) {
            const col = this._getColumnMetadata( cell$ );

            if ( !col.noHeaderActivate ) {
                this._trigger( EVENT_ACTIVATE_COLUMN_HEADER, event, {
                    header$: cell$,
                    column: col
                });
            }
        },

        _activateRow: function( cell$ ) {
            var i, columnItem, prop, activeRecord, activeRecordId, meta, editable,
                row$ = cell$.parent(),
                id = row$.attr( ATTR_DATA_ID ),
                self = this;

            activeRecord = this.model.getRecord( id );
            activeRecordId = this.model.getRecordId( activeRecord );
            editable = this.model.allowEdit( activeRecord );
            meta = this.model.getRecordMetadata( activeRecordId );
            row$.addClass( C_ACTIVE );
            // load all values
            this._beginSetColumnItems();
            for ( i = 0; i < this.columns.length; i++ ) {
                prop = this.columns[i].property;
                columnItem = this.columnItems[ prop ];
                if ( columnItem ) {
                    this._setColumnItemValue( columnItem.item, activeRecord, prop,
                        editable ? meta : null );
                }
            }

            // change detection for non-active columns is gated by activeRecord, which is cleared in _deactivateRow, so don't set until after values are set
            // do set before calling reinit in case there is a callback into this for getActiveRecordId
            this.activeRecord = activeRecord;
            this.activeRecordId = activeRecordId;
            this._endSetColumnItems();

            // Let the cell be activated before triggering the event.
            setTimeout(function() {
                self._triggerBeginEditing( self.activeRecord, self.activeRecordId );
            }, 0 );
        },

        _deactivateRow: function( callback ) {
            var i, columnItem, prop, validity, meta, colMeta, isDisabled,
                row$ = this.element.find( ".a-GV-row.is-active" );

            if ( this.activeLockCount > 0 ) {
                this.activeUnlockCallback = callback;
                return;
            }
            row$.removeClass( C_ACTIVE );
            meta = this.model.getRecordMetadata(( this.activeRecordId ) );
            // do final validation mainly for the benefit of inserted rows
            // don't validate rows that are deleted or can't be edited
            if ( meta && !meta.deleted && this.model.allowEdit( this.activeRecord ) ) {
                for ( i = 0; i < this.columns.length; i++ ) {
                    let column = this.columns[i];
                    prop = column.property;
                    columnItem = this.columnItems[ prop ];

                    // TODO Only check validity for enabled and visible items
                    if ( columnItem ) {
                        isDisabled = columnItem.item.isDisabled();
                        if ( !isDisabled ) {
                            validity = columnItem.item.getValidity();
                            if ( !validity.valid ) {
                                this.model.setValidity( "error", this.activeRecordId, prop, columnItem.item.getValidationMessage( column.label || column.heading ) );
                            }
                        } else {
                            this.model.setValidity( "valid", this.activeRecordId, prop );
                        }
                        // update disabled metadata
                        colMeta = meta.fields ? meta.fields[prop] : null;
                        if ( ( colMeta && colMeta.disabled ) || isDisabled ) {
                            if ( !colMeta ) {
                                if ( !meta.fields ) {
                                    meta.fields = {};
                                }
                                colMeta = {};
                                meta.fields[prop] = colMeta;
                            }
                            colMeta.disabled = isDisabled;
                            // todo think is a call to metadataChanged needed?
                        }
                    }
                }
            }
            this._triggerEndEditing( this.activeRecord, this.activeRecordId );
            this.activeRecord = null;
            this.activeRecordId = null;
            callback();
        },

        _beginDeactivate: function( cell$, focus ) {
            // make sure this is done just once
            if ( !this.deactivateDelayTimer ) {
                this.deactivateDelayTimer = setTimeout( () => {
                    this.lastEditModeCell = null;
                    this._deactivateCell( cell$ );
                    if ( focus ) {
                        // put focus back in cell without focusing the editable field.
                        this.dontFocusEditableItem = true;
                        cell$.trigger( "focus");
                    }
                    this.deactivateDelayTimer = null;
                }, DEACTIVATE_TIME );
            }
        },

        _clearDeactivate: function() {
            if ( this.deactivateDelayTimer ) {
                clearTimeout( this.deactivateDelayTimer );
                this.deactivateDelayTimer = null;
            }
        },

        // this is only for in edit mode
        _setTabTraps: function( cell$ ) {
            let next$, floatingTrap, endTrap,
                autoAdd = this.options.autoAddRecord,
                allowAdd = autoAdd && this.model.allowAdd(), // don't waste a call to allowAdd if autoAdd is false
                traps$ = this.tabTraps$;

            // make next and previous cells tab stops
            cell$.attr( ATTR_TABINDEX, -1 ); // but can't be a tabstop
            next$ = this._nextCellWithWrap( cell$ ).attr( ATTR_TABINDEX, 0 );
            this._prevCellWithWrap( cell$ ).attr( ATTR_TABINDEX, 0 );
            endTrap = null;
            if ( autoAdd ) {
                endTrap = 0;
                floatingTrap = 2;
            } else {
                floatingTrap = 1;
            }
            if ( endTrap !== null ) {
                if ( autoAdd && this.onLastPage && next$.length === 0 && allowAdd ) {
                    traps$.eq( endTrap ).prop( PROP_TABINDEX, 0 ).addClass( C_AUTO_ADD );
                } else {
                    traps$.eq( endTrap ).prop( PROP_TABINDEX, next$.length ? 0 : -1 ).removeClass( C_AUTO_ADD );
                }
            }
            if ( autoAdd && this.onLastPage && next$.length === 0 && allowAdd ) {
                traps$.eq( floatingTrap ).prop( PROP_TABINDEX, 0 )
                    .toggleClass( "js-last", !next$.length )
                    .addClass( C_AUTO_ADD );
            } else {
                traps$.eq( floatingTrap ).prop( PROP_TABINDEX, 0 ) // need the tab stop even if there is no next to avoid tabbing of the end of the body
                    .toggleClass( "js-last", !next$.length )
                    .removeClass( C_AUTO_ADD );
            }
            // the floating prev tab trap is still needed
        },

        // this is only for in edit mode
        _clearTabTraps: function() {
            this.element.find( ".a-GV-cell[tabindex='0'],.a-GV-controlBreakHeader[tabindex='0']" ).attr( ATTR_TABINDEX, -1 );
            this.tabTraps$.prop( PROP_TABINDEX, -1 );
        },

        // must only be called while in edit mode
        _activateCell: function( cell$, toFocus, context ) {
            let column, popupSelector,
                self = this,
                activated = false,
                columnItem = null,
                columnItemHeight = null,
                isBreak =  cell$.hasClass( C_GRID_BREAK_HEADER );

            function focusCell( cell$ ) {
                toFocus = toFocus || self._getCellFocusable( cell$ );
                if ( toFocus !== cell$[0] ) {
                    toFocus.focus();
                }
            }

            function activate() {
                let caretPos = 0,
                    cellHeight = cell$.outerHeight(); // measure this now because when active class is added it can change due to padding changes

                column = self._getColumnMetadata( cell$ );
                if ( column ) {
                    columnItem = self.columnItems[column.property];
                }
                // Check if editing is allowed for this cell. Trust the cell class added during rendering because don't have access to the model cell metadata
                if ( columnItem && self.model.allowEdit( self.activeRecord ) && !column.readonly && !cell$.hasClass( C_READONLY ) ) {
                    cell$.addClass( C_ACTIVE );
                    // If an item has a popup that is attached at the end of the body (anywhere outside this widget) then
                    // we need to know about the popup so that we can manage focus and know that the cell is still active.
                    // see also the focusin, focusout handlers
                    popupSelector = columnItem.item.getPopupSelector();
                    if ( popupSelector ) {
                        $( document.body ).on( "focusin.gridpopup", function( event ) {
                            // ignore focus changes within a popup
                            if ( $( event.target ).closest( popupSelector ).length ) {
                                self._clearDeactivate();
                            }
                        } ).on( "focusout.gridpopup", function( event ) {
                            if ( $( event.target ).closest( popupSelector ).length ) {
                                let cell$ = $( self.lastEditModeCell );
                                self._beginDeactivate( cell$, true );
                            }
                        } );
                    }
                    columnItemHeight = columnItem.element$.height();
                    columnItem.element$ = columnItem.element$.detach();
                    // preserve height before editing a cell
                    cell$.css( "height", cellHeight + "px" ).empty();
                    if ( columnItemHeight > cellHeight ) {
                        self.floatingItem$.children( SEL_FLOATING_ITEM_CONT ).append( columnItem.element$ );
                        self._expandFloatingItem( cell$ );
                    } else {
                        cell$.append( columnItem.element$ );
                    }

                    // xxx acc perhaps label ids should come from the cells labelledby attr?
                    self._activateColumnItem( columnItem, column.domId ); // xxx acc how to include column group and possibly control break and row header what if heading contains markup?

                    if ( !self.dontFocusEditableItem ) {

                        // only setFocus if item is not disabled (prevents unnecessary deactivation being triggered causing bug #30801170)
                        if ( !columnItem.item.isDisabled() ) {
                            // item value has already been set when row was activated
                            columnItem.item.setFocus();

                            /*
                             * Normal behavior for text inputs is that on focus by tab the whole value is initially selected
                             * and focus by mouse down the caret is just before/after the character clicked. But the flyweight
                             * pattern sets focus long after the event that would have caused the focus if the field was
                             * already in the cell. It is not easy to map the mouse x coordinate to a character position
                             * in a text input (it would be easier with a DOM selection because you can get a range and
                             * measure it).
                             */
                            let el = document.activeElement;
                            if ( el.nodeName === "INPUT" && ["text", "search", "password", "tel", "email", "url"].includes( el.type.toLowerCase() ) ) {
                                let el$ = $( el ),
                                    value = el.value,
                                    rtl = self.element.hasClass( C_RTL ),
                                    align = cell$.css("text-align"); // use the cell because that is what was clicked on
                                                                     // the input may not be the same alignment

                                // normalize alignment
                                if ( align === ALIGN_LEFT ) {
                                    align = ALIGN_START;
                                } else if ( align === ALIGN_RIGHT ) {
                                    align = ALIGN_END;
                                }
                                if ( context < 0 || value.length === 0 ) {
                                    // using this rather than select because it supports the direction which
                                    // leaves text scroll offset at the beginning rather than the end (not all browsers do it right)
                                    el.setSelectionRange( 0, value.length, rtl ? "forward" : "backward" );
                                } else {
                                    if ( context != null ) {
                                        let w, charWidth,
                                            // seems there is no way to measure the text inside the input so add this temp
                                            // span just to measure the text and find a reasonable position for the caret.
                                            temp$ = $( `<span class="${C_GRID_CELL}" style="position:absolute;top:0;white-space:nowrap;">${util.escapeHTML(value)}</span>` );

                                        // The font is likely proportional so this won't be exact but
                                        // get an average char width for the text and use that to get close.
                                        // Another thing that can confuse the caret position is multiple consecutive spaces
                                        // because in the cell they are normalized to a single space but exist in the text field value
                                        // if spaces are significant then should use a cell template to wrap value in <pre>
                                        self.element.append(temp$);
                                        w = temp$.width();
                                        charWidth = w / value.length;
                                        // context is the pixel offset from the left side of the cell, adjust based on alignment
                                        if ( align === ALIGN_END ) {
                                            // if content wider than cell 0
                                            context -= Math.max( 0, cell$.outerWidth() - toInteger( el$.css( "paddingRight" ) ) - w );
                                        } else if ( align === ALIGN_CENTER ) {
                                            context -= Math.max( 0, ( cell$.outerWidth() - toInteger( el$.css( "paddingRight" ) ) - w ) / 2 );
                                        } else {
                                            context -= toInteger( el$.css( "paddingLeft" ) );
                                        }
                                        if ( context < 0 ) {
                                            context = 0;
                                        }
                                        caretPos = Math.round( context / charWidth );
                                        temp$.remove();
                                    }
                                    el.setSelectionRange( caretPos, caretPos );
                                }
                            }
                        }
                    }
                    self.dontFocusEditableItem = false;
                    activated = true;
                    if ( self._savedActivationtarget ) {
                        self._interactWithCellItem( $.Event( "activate", {target: self._savedActivationtarget } ), cell$, column, columnItem.item );
                        self._savedActivationtarget = null;
                    }
                } else {
                    // if activate a cell that has a button or link in it focus the button
                    focusCell( cell$ );
                }
            }

            this.lastEditModeCell = cell$[0];

            // if the current row is not selected (can happen because of tab into new row) then select it but don't focus.
            if ( !cell$.parent().hasClass( C_SELECTED ) ) {
                this._select( cell$, null, false, false );
            } else {
                // fix bug 29351878: if the cell to activate is not in the previous current row then set the current row
                if ( !( this.lastRow$ && ( this.lastRow$.index( cell$ ) >= 0 ) ) ) {
                    this._setCurrentRow( cell$[0] );
                }
            }

            this._setFocusable( cell$[0] ); // this cell has to have been focusable
            this._setTabTraps( cell$ );

            // if this cell is in a new row need to deactivate this row and activate the new one, or if no active row then need to activate the new row
            // but deactivate row is a possibly async operation (if the active row is locked).
            if ( !this.activeRecord || this.activeRecordId !== cell$.parent().attr( ATTR_DATA_ID ) ) {
                if ( this.activeRecord ) {
                    this._deactivateRow( function() {
                        if ( !isBreak ) {
                            self._activateRow( cell$ );
                            activate();
                        } else {
                            focusCell( cell$ );
                        }
                    });
                    return;
                }
                if ( !isBreak ) {
                    this._activateRow( cell$ );
                } else {
                    focusCell( cell$ );
                }
            }
            if ( !isBreak ) {
                activate();
            } else {
                focusCell( cell$ );
            }
            return activated;
        },

        _checkInteractWithCellItem: function( event, target$, cell$ ) {
            let selector,
                interactionHappened = false,
                column = this._getColumnMetadata( cell$ ),
                colItem = column && this.columnItems[column.property];

            if ( colItem ) {
                colItem = colItem.item;
                if ( colItem && colItem.getInteractionSelector ) {
                    selector = colItem.getInteractionSelector();
                    // todo think: for click or mouse down event the target will be the selector or something in it
                    // but for keydown even the target is the cell unless tabbableCellContent has caused something
                    // inside the cell to get focus. In the first case closest is right in the other find is right?
                    // for now wrt checkbox item tabbableCellContent now includes input.
                    if ( target$.closest( selector ).length ) {
                        if ( event ) {
                            this._interactWithCellItem( event, cell$, column, colItem );
                            interactionHappened = true;
                        } else {
                            this._savedActivationtarget = target$[0];
                        }
                    }
                }
            }
            return interactionHappened;
        },

        _interactWithCellItem: function( event, cell$, column, columnItem ) {
            const row$ = cell$.parent(),
                id = row$.attr( ATTR_DATA_ID ),
                activeRecord = this.model.getRecord( id );

            if ( event.type === "activate" ) {
                columnItem.onInteraction( event );
            } else if ( this.model.allowEdit( activeRecord ) && !column.readonly && !cell$.hasClass( C_READONLY ) ) {
                columnItem.onInteraction( event, this.model, activeRecord, column.property );
            }
        },

        _expandFloatingItem: function( cell$ ) {
            const
                startTop = this.element.hasClass( C_RTL ) ? "right top" : "left top",
                cellWidth = cell$.outerWidth(),
                col = this._getColumnMetadata( cell$ ),
                colName = col.property,
                colHeading = col.label || col.heading;
            let column, columnItem, lastPos;

            // using aria-owns we show to screen readers that the floating item is still inside the grid,
            // and the focus does not leave the grid visually
            // Otherwise, JAWS emits the grid name on each column change on Tab key in navigation mode.
            cell$.attr( ARIA_OWNS, this.floatingItem$.attr( "id" ) );
            this.floatingItem$.find( SEL_OVERFLOW_CELL_HEADING )
                .removeAttr( ARIA_HIDDEN )
                .html( util.escapeHTML( getMessage( "FLOATING_ITEM.DIALOG.TITLE" ) ) );
            this.floatingItem$.find( SEL_EXPAND_COLLAPSE )
                .removeAttr( ARIA_EXPANDED )
                .removeAttr( ARIA_HASPOPUP )
                .attr( ARIA_LABEL, getMessage( "FLOATING_ITEM.DIALOG.HIDE_DIALOG" ) );
            this.floatingItem$
                .attr( "role", "dialog" )
                .attr( ARIA_MODAL, "true" )
                .attr( ARIA_LABEL, getMessage( "FLOATING_ITEM.DIALOG.TITLE" ) )
                .attr( ARIA_DESCRIPTION, colHeading )
                .css( "position", "" )
                .css( "min-width", cellWidth + "px" )
                .appendTo( E_BODY )
                .show()
                .addClass( C_EXPANDED )
                .draggable( "enable" )
                // This attribute links the contained column item back to the containing region so that the
                // region getSessionState can submit this column item if needed.
                // Note the widget should generally have an id but nowhere else is it enforced or assumed
                .attr( "data-owning-region", this.element[0].id )
                .find( SEL_EXPAND_COLLAPSE + " span" ).removeClass( "icon-ig-expand" ).addClass( "icon-ig-restore" );

            this.floatingItem$.children( SEL_FLOATING_ITEM_CONT )
                .show()
                .css( {width: "", height: ""} );

            lastPos = this.lastFloatingPos[colName];
            if ( !lastPos ) {
                this.floatingItem$.position( {
                    my: startTop,
                    at: startTop,
                    of: cell$,
                    collision: "fit fit"
                } );
            } else {
                this.floatingItem$.css( { left: lastPos.left, top: lastPos.top } );
            }
            this.floatingItem$.find( SEL_TAB_TRAP ).not( ".js-last" ).attr( ATTR_TABINDEX, 0 );
            // focus the item
            column = this._getColumnMetadata( cell$ );
            if ( column ) {
                columnItem = this.columnItems[column.property];

                // only setFocus if item is not disabled (prevents unnecessary deactivation being triggered causing bug #30801170)
                if ( !columnItem.item.isDisabled() ) {
                    columnItem.item.setFocus();
                }
            }
        },

        _collapseFloatingItem: function( cell$ ) {
            var w = cell$.innerWidth(),
                h = cell$.innerHeight();

            cell$.removeAttr( ARIA_OWNS );
            this.floatingItem$.find( SEL_OVERFLOW_CELL_HEADING )
                .attr( ARIA_HIDDEN, "true" )
                .empty();
            this.floatingItem$.find( SEL_EXPAND_COLLAPSE )
                .attr( ARIA_EXPANDED, "false" )
                .attr( ARIA_HASPOPUP, "dialog" )
                .attr( ARIA_LABEL, getMessage( "FLOATING_ITEM.SHOW_DIALOG" ) );
            // Dialog dismissed
            this.floatingItem$
                .attr( "role", "none" )
                .removeAttr( ARIA_MODAL )
                .removeAttr( ARIA_LABEL )
                .removeAttr( ARIA_DESCRIPTION )
                .css( {"position": "relative", "left": "", "top": ""} )
                .appendTo( cell$ )
                .draggable( "disable" )
                .removeClass( C_EXPANDED + " ui-state-disabled" ) // want it disabled for dragging but don't want the content to look disabled
                .removeAttr( "data-owning-region" )
                .find( SEL_EXPAND_COLLAPSE + " span" ).removeClass( "icon-ig-restore" ).addClass( "icon-ig-expand" );
            this.floatingItem$.children( SEL_FLOATING_ITEM_CONT ).hide()
                .width( w )
                .height( h );
            this.floatingItem$.find( SEL_EXPAND_COLLAPSE ).trigger( "focus" );
            this.floatingItem$.find( SEL_TAB_TRAP ).not( ".js-last" ).attr( ATTR_TABINDEX, -1 );
        },

        // must only be called while in edit mode
        _deactivateCell: function( cell$ ) {
            var column, out, meta, cellMeta,
                columnItem = null;

            if ( cell$.length <= 0 ) {
                return;
            }

            // remove previous tab stops
            this._clearTabTraps();
            this._setFocusable( cell$[0] );

            column = this._getColumnMetadata( cell$ );
            if ( column ) {
                columnItem = this.columnItems[column.property];
            }
            if ( columnItem && cell$.hasClass( C_ACTIVE ) ) {
                $( document.body ).off( ".gridpopup" );

                this._setModelValue( cell$, columnItem.item, this.activeRecord, column.property );

                meta = this.model.getRecordMetadata( this.activeRecordId );
                if ( !meta ) {
                    // unusual but possible if manipulating the model and grid programatically, the model
                    // could be cleared and the deactivate call from refresh would get here
                    return;
                }
                cellMeta = null;
                if ( meta.fields ) {
                    cellMeta = meta.fields[column.property];
                }

                if ( !this.debugDontDeactivateCell ) { // see debugCellEdit
                    this.floatingItem$.appendTo( E_BODY );
                    // must deactivate while visible (bug 33964904)
                    this._deactivateColumnItem( columnItem );
                    this.floatingItem$.hide();

                    out = util.htmlBuilder();
                    this._renderFieldDataValue( out, column, this.activeRecord, meta, cellMeta );
                    // clear cell height so it can have its natural height
                    cell$.html( out.toString() )
                        .css( "height", "" );
                } else {
                    cell$.addClass( C_FOCUSED + " " + C_ACTIVE ); // put this back to make it look like it can be edited
                }

                // Also need to update the cell and row state
                // we know that itemId is not used also cell$ must be in the lastRow$ and using parent() will
                // include the row from both tables. xxx this both tables stuff doesn't apply anymore
                this._updateRecordState(  this.lastRow$.parent(), this.activeRecordId, this.activeRecord, meta );
            }
        },

        _finishEditing: function( deferred ) {
            const prevActive$ = $( this.lastEditModeCell );

            if ( prevActive$.length ) {
                let wasFocused = prevActive$.hasClass( C_FOCUSED );

                this._clearDeactivate();
                this._deactivateCell( prevActive$ );
                if ( wasFocused ) {
                    this._activateCell( prevActive$ );
                }
            }
            deferred.resolve();
        },

        /*
         * Focus a cell or some content of a cell.
         * el is usually a grid table cell including headers, group headers etc. but it could also be an element
         * such as a button or link inside a cell. _setFocusable will soon be called because of focusin handler.
         */
        _setFocus: function( el, event = null ) {
            el.tabIndex = 0;
            if ( event && event.type === "keydown" ) {
                const cell$ = $( el ).closest( SEL_GRID_CELL_OR_HEADER );

                if ( cell$[0] ) {
                    // This provides smoother scrolling when using keyboard. It avoids the default browser behavior
                    // that moves the focused item to the center of the view port.
                    el.focus( {preventScroll: true} );
                    cell$[0].scrollIntoView( {block: "nearest"} );
                    return;
                }
            } // else

            el.focus();
        },

        /*
         * Make a cell or contents of a cell focusable.
         * el is usually a grid table cell including headers, group headers etc. but it could also be an element
         * such as a button or link inside a cell. When a cell is made focusable all actionable content (e.g. buttons) in the
         * cell is made a tab stop. Any previous cell tab stops are removed.
         */
        _setFocusable: function ( el ) {
            const
                tabContent = this.options.tabbableCellContent,
                newCell$ = getContainingTableCell$( el ),
                row$ = newCell$.closest( SEL_ROW ),
                prevCell$ = this.getCurrentCell();
            let focusableContentLen, ctxMsg, controlBreak,
                rownum = row$.attr( ATTR_DATA_ROWNUM ),
                colnum = null;

            if ( newCell$.hasClass( C_GRID_BREAK_HEADER ) || newCell$.hasClass( C_GRID_COL_GROUP )) {
                colnum = this.lastColIndex;
            }
            if ( colnum === null ) {
                colnum = columnIndexFromCell( newCell$ );
            }
            colnum += 1;

            if ( this.lastFocused ) {
                const cell$ = getContainingTableCell$( this.lastFocused );
                // if the cell has changed remove the previous tab stops
                if ( newCell$[0] !== cell$[0] ) {
                    cell$.add( cell$.find( tabContent ).not( SEL_IGNORE_TAB_CONTENT ) ).prop( PROP_TABINDEX, -1 );

                    // Bug 35269401. JAWS 2023, 2024 has a bug, when role "rowheader" applied, then JAWS does not emit
                    // the column header for such columns in the grid navigation mode (JAWS Forms mode)
                    // So we can change the role of the cell to "gridcell" on cell focus to workaround this bug
                    // Here wee restore the "rowheader" role on loosing focus  to provide row headers in
                    // the Virtual PC Cursor mode of JAWS
                    // todo: Once JAWS 2025 released, retest it by removing this block, and similar block
                    // for the bug 35269401 below
                    if ( cell$.hasClass( C_ROW_HEADER ) ) {
                        setTimeout( function () {
                            // This line is wrapped into setTimeout to work around another JAWS bug
                            // If we set the role immediately then JAWS may emit on left/right arrow keys:
                            // * First character of the newly focused cell content (incorrect)
                            // * The column header (correct, this is the fix of Bug 35269401)
                            // Newly focused cell content (correct)
                            cell$.attr( ATTR_ROLE, ROLE_ROWHEADER );
                        }, 10 );
                    }
                }
            }

            // Bug 35269401. JAWS 2023, 2024 has a bug, when role "rowheader" applied, then JAWS does not emit
            // the column header for such columns in the grid navigation mode (JAWS Forms mode)
            // So we change the role of the cell to "gridcell" on cell focus to workaround this bug
            // todo: Once JAWS 2025 released, retest it by removing this block, and similar block
            // for the bug 35269401 above
            if ( newCell$.hasClass( C_ROW_HEADER ) ) {
                newCell$.attr( ATTR_ROLE, ROLE_GRIDCELL );
            }

            // The following classes do not require accessibility context because the context is provided by the screen
            // reader. C_GRID_COL_HEADER - the context is exposed through TH tag
            // C_GRID_COL_GROUP - provided through aria-roledescription

            // adding the accessibility context messages
            if ( row$.hasClass( C_CONTROL_BREAK ) ) {
                rownum = rownum + "b"; // a break row has the same rownum as the row after it so make it unique
                ctxMsg = getMessage( "BREAK_CONTEXT" ); // xxx acc todo expand/collapse description when in first col??
            } else if ( row$.hasClass( C_AGGREGATE ) ) {
                ctxMsg = getMessage( "AGG_CONTEXT" );
            } else {
                // Here the acc context for the changed row and column is provided.
                // The column change does not require additional context as it matches the context from the screen
                // reader. However, we do use the context for the row change as grid row numbers do not match with
                // ARIA row numbers. ARIA counts column headers as additional row, as well as a row with column group
                // headers. So the row number for the first data row is 2 or 3 for ARIA, and 1 for the grid
                if ( rownum !== this.curRowNum && colnum !== this.curColNum ) {
                    ctxMsg = formatMessage( "ROW_COLUMN_CONTEXT", rownum, colnum );
                } else if ( rownum !== this.curRowNum ) {
                    ctxMsg = formatMessage( "ROW_CONTEXT", rownum );
                }
                // include control break label in the context if change from one break section to another
                controlBreak = this._getControlBreak( toInteger( rownum ) );
                if ( controlBreak && controlBreak.offset !== this.curControlBreak ) {
                    ctxMsg = getMessage( "BREAK_CONTEXT" ) + " " + util.stripHTML( controlBreak.label ) + "." + ctxMsg;
                }
            }

            // if the cell contains any buttons focus them but not if the cell contains an edit item
            focusableContentLen = 0;
            if ( !newCell$.children( ".a-GV-columnItem" )[0] ) {
                focusableContentLen = newCell$.find( tabContent ).not( SEL_IGNORE_TAB_CONTENT ).prop( PROP_TABINDEX, 0 ).length;
            }
            if ( !focusableContentLen ) {
                // otherwise focus the cell
                newCell$.prop( PROP_TABINDEX, 0 );
            }

            // it is expected that el is either the cell or a link or button in the cell
            this.lastFocused = el;

            // Screen readers obtain the row header from elements with role=rowheader
            // Therefore, no need to add the row headers to the label of a cell/focusable element on the row change

            // Same for for column headers.
            // Screen readers perceive column headers from cells with role columnheader
            // Therefore, no need to add the column headers to the label of a cell/focusable element on the row change
            // here. Also, screen readers have setting like "Table titles" where users can disable or enable row
            // and column headers.
            // We should allow users to choose whether they want to see column header on not. By adding the column
            // name into aria-label we force screen reader users to listen this column name ignoring their screen
            // reader settings

            // Do not add aria-labelledby to the cell, pointing to the same cell,
            // the label is derived from the inner content
            // unless more aria-labelledby added, so for the context inner content aria-description suits better
            if ( ctxMsg ) {
                apex.message.ariaMessage( ctxMsg );
            }
            this.curRowNum = rownum;
            this.curColNum = colnum;
            this.curControlBreak = controlBreak ? controlBreak.offset : null;
            if ( this.getCurrentCell()[0] !== prevCell$[0] ) {
                setTimeout( () => {
                    this._trigger( EVENT_CURRENT_CELL_CHANGE );
                }, 1 );
            }
        },

        _getCellFocusable: function( cell$ ) {
            const a$ = cell$.find( this.options.tabbableCellContent ).not( SEL_IGNORE_TAB_CONTENT );

            if ( a$[0] ) {
                return a$[0];
            }
            return cell$[0];
        },

        _getPrevCellUp: function( cur$, n, noHeader ) {
            var row$,
                next$ = null,
                colIndex = null;

            if ( cur$.hasClass( C_GRID_BREAK_HEADER ) || cur$.hasClass( C_GRID_COL_GROUP )) {
                colIndex = this.lastColIndex;
            }
            if ( colIndex === null ) {
                colIndex = columnIndexFromCell( cur$ );
                this.lastColIndex = colIndex;
            }

            // find the nth previous row
            cur$.closest( SEL_ROW ).prevAll( SEL_VISIBLE ).each( function( i ) {
                let tr$ = $( this );
                // don't go past a filler row
                if ( tr$.hasClass( C_GRID_SCROLL_FILLER ) ) {
                    noHeader = true; // don't go into the header in this case
                    return false;
                }
                row$ = tr$;
                return i < n - 1;
            } );

            if ( !this.focusInHeader && !noHeader && !row$ ) {
                this.focusInHeader = true;
                row$ = this.tableHeader$.children().last();
            }
            if ( row$ ) {
                if ( row$.hasClass( C_CONTROL_BREAK )) {
                    // Stay within closest span
                    // todo update this when support frozen end column
                    if ( cur$.hasClass( C_FROZEN ) ) {
                        next$ = row$.children().first();
                    } else {
                        next$ = row$.children().last();
                    }
                } else {
                    next$ = cellFromColumnIndex( row$, colIndex );
                }
            }
            return next$;
        },

        _getNextCellDown: function( cur$, n ) {
            var row$, count,
                next$ = null,
                colIndex = null;

            if ( cur$.hasClass( C_GRID_BREAK_HEADER ) || cur$.hasClass( C_GRID_COL_GROUP )) {
                colIndex = this.lastColIndex;
            }
            if ( colIndex === null ) {
                colIndex = columnIndexFromCell( cur$ );
                this.lastColIndex = colIndex;
            }

            // find the nth next row
            count = 0;
            cur$.closest( SEL_ROW ).nextAll( SEL_VISIBLE ).each( function( i ) {
                let tr$ = $( this );
                // don't go past a filler row
                count += 1;
                if ( tr$.hasClass( C_GRID_SCROLL_FILLER ) ) {
                    return false;
                }
                row$ = tr$;
                return i < n - 1;
            } );

            if ( this.focusInHeader && ( !row$ || count < n ) ) {
                this.focusInHeader = false;
                row$ = this.tableData$.children().first();
            }
            if ( row$ ) {
                if ( row$.hasClass( C_CONTROL_BREAK )) {
                    // Stay within closest span
                    // todo update this when support frozen end column
                    if ( cur$.hasClass( C_FROZEN ) ) {
                        next$ = row$.children().first();
                    } else {
                        next$ = row$.children().last();
                    }
                } else {
                    next$ = cellFromColumnIndex( row$, colIndex );
                }
            }
            return next$;
        },

        _copy: function( pDataTransfer ) {
            const m = this.model,
                o = this.options,
                out = util.htmlBuilder(),
                fmts = o.dataTransferFormats;

            const cellContentToCopy = ( column, value, text ) => {
                let content = text, // default to cell text
                    copyValue = column ? column.copyValueToClipboard : false;

                if ( typeof copyValue === "function" ) {
                    content = copyValue( column, value, text );
                } else if ( copyValue === true ) {
                    content = value;
                    if ( content.d ) {
                        content = content.d; // choose the display value if there is one.
                    }
                }

                return "" + content; // force it to be a string
            };

            if ( o.selectCells ) {
                let columns = [],
                    selection = this.getSelectedRange();

                if ( selection && selection.values.length ) {
                    columns = selection.columns.map(function(x) { return x ? o.columns[0][x] : null; } );
                    // begin
                    fmts.forEach( x => {
                        x.writer.begin( m, selection, columns );
                    } );
                    for ( let r = 0; r < selection.values.length; r++ ) {
                        let row, value,
                            id = selection.recordIds[r],
                            record = ( id !== null ) ? m.getRecord(id) : null;

                        // beginRow
                        fmts.forEach( x => {
                            x.writer.beginRow( r, record, id );
                        } );

                        row = selection.values[r];
                        for ( let c = 0; c < row.length; c++ ) {
                            value = ( record && columns[c] ) ? m.getValue(record, columns[c].property ) : "";
                            // cell
                            fmts.forEach( x=> {
                                x.writer.cell( c, columns[c], value, cellContentToCopy( columns[c], value, row[c] ) );
                            } );
                        }
                        // endRecord
                        fmts.forEach( x=> {
                            x.writer.endRow();
                        } );
                    }
                } else {
                    return;
                }
            } else {
                const includeRowHeader = [ SEQUENCE, LABEL ].includes( o.rowHeader );
                let selection = this.getSelection(), // array of jQuery elements
                    selectedRecords = this.getSelectedRecords(); // this is a superset of selection

                if ( selectedRecords.length ) {
                    let columns = [],
                        selIndex = 0,
                        curSel$ = selection[selIndex];

                    if ( includeRowHeader ) {
                        // if there is a column header the row selection will include it. do this so columns line up
                        columns.push( null );
                    }
                    this.getColumns().forEach(function( col ) {
                        if ( !col.hidden ) {
                            columns.push( col );
                        }
                    } );
                    // begin
                    fmts.forEach( x=> {
                        x.writer.begin( m, selection, columns );
                    } );
                    /*
                     * Loop over the whole selection. The selected records can, in some cases, be a superset of
                     * the selection row elements. Need to match up the record and the TRs and if there is
                     * no TR then need to render the record so that .text() can be used on each cell.
                     * r is index into selectedRecords and selIndex is index into selection
                     */
                    for ( let r = 0; r < selectedRecords.length; r++ ) {
                        let cells$, value, row$, meta,
                            record = selectedRecords[r],
                            id = m.getRecordId( record ),
                            selId = curSel$?.attr( ATTR_DATA_ID );

                        if ( id && selId === id ) {
                            row$ = curSel$;
                        } else if ( selId ) {
                            meta = m.getRecordMetadata( selId );
                            if ( record === meta?.record ) {
                                row$ = curSel$;
                            } else {
                                meta = null;
                            }
                        }
                        if ( !row$ ) {
                            // the row is not in the DOM so render a temp row
                            if ( !meta && id ) {
                                meta = m.getRecordMetadata( id );
                            } else {
                                meta = {
                                    sel: true,
                                    record: record
                                };
                            }
                            this._renderRecord( out, record, 1, id, meta );
                            row$ = $( out.toString() );
                            out.clear();
                        } else {
                            // found a matching row. move on to the next selection
                            curSel$ = null;
                            selIndex += 1;
                            if ( selIndex < selection.length ) {
                                curSel$ = selection[selIndex];
                            }
                        }

                        // beginRow
                        fmts.forEach( function( x ) {
                            x.writer.beginRow( r, record, id );
                        } );

                        cells$ = row$.children();
                        for ( let c = 0; c < cells$.length; c++ ) {
                            if ( c === 0 && !includeRowHeader && o.rowHeader !== NONE ) {
                                continue; // skip over empty row header
                            }
                            value = ( record && columns[c] ) ? m.getValue(record, columns[c].property ) : "";
                            // cell
                            fmts.forEach( x => {
                                x.writer.cell( c, columns[c], value,
                                    cellContentToCopy( columns[c], value, cells$.eq( c ).text() ) );
                            } );
                        }

                        // endRow
                        fmts.forEach( x => {
                            x.writer.endRow();
                        } );
                    }
                    // end
                    fmts.forEach( x => {
                        x.writer.end();
                    } );
                } else {
                    return;
                }
            }

            // end
            fmts.forEach( x => {
                x.writer.end();
                pDataTransfer.setData( x.format, x.writer.toString() );
            } );
        },

        _setSelectionMode: function() {
            const o = this.options,
                prevSel$ = this.element.children( SEL_GRID_BODY ).find( SEL_SELECTED ); // ok to include u-selector here

            this.element.toggleClass( "a-GV--selectCells", o.selectCells );

            // do this so selection is cleared even if focus is in header
            prevSel$.removeClass( C_SELECTED )
                .removeAttr( ARIA_SELECTED )
                .filter( SEL_CHECK_SELECTOR ).attr( ARIA_CHECKED, FALSE );
            if ( o.persistSelection ) {
                this.model.clearSelection();
            }
            this.allSelected = false;
            // only select something if there was a previous selection
            if ( this.lastFocused && prevSel$[0] ) {
                this._select( $( this.lastFocused ), null, false );
            }
        },

        /*
         * Selects and focuses the first cell in cells$.
         * focus: true - focus cell, false - set focusable but don't focus, null do nothing with the cell
         */
        _select: function ( cells$, event, focus, delayTrigger, noNotify ) {
            let prevSelected, start, end, startCol, endCol, temp, toFocus, rows$, selectableRows$, selectable,
                inSameRow, prevSel$, doNotify, modelRangeAnchor,
                actionSelectAll = false,
                checked = null,
                o = this.options,
                action = SEL_ACTION_SET;

            const updateModelSelectionState = ( rows$, selectState ) => {
                const updateForRows = rows$ => {
                    rows$.each( ( i, el ) => {
                        let id = $( el ).attr( ATTR_DATA_ID );

                        if ( id ) {
                            this.model.setSelectionState( id, selectState, action );
                        }
                    } );
                };

                if ( o.persistSelection && !actionSelectAll ) {
                    updateForRows( rows$ );
                    if ( action !== SEL_ACTION_TOGGLE && rows$.length > 1 ) {
                        updateForRows( selectableRows$.first() ); // to set the anchor
                    }
                }
            };

            function checkState( el$ ) {
                const selectableCols = el$.children( "td" ).length,
                      selectedCols = el$.children( "[aria-selected='true']" ).length;
                if ( selectableCols === selectedCols ) {
                    return TRUE;
                }
                if ( selectedCols === 0 ) {
                    return FALSE;
                }
                return "mixed";
            }

            // un-selecting is allowed for invisible cells so don't filter them out
            // unset only used internally to clear selection when collapse control break
            if ( event !== SEL_ACTION_UNSET && !o.allowSelectHidden ) {
                // can't select something that isn't visible
                cells$ = cells$.filter( SEL_VISIBLE );
            }
            rows$ = cells$.parent( SEL_ROW );
            inSameRow = this.lastRow$ && ( this.lastRow$.index( cells$.first() ) >= 0 );

            if ( event && ( o.selectCells && o.multipleCells || !o.selectCells && o.multiple ) ) {
                if ( typeof event === "string" ) {
                    action = event; // override normal event processing
                } else if ( event.type === "click" ) {
                    // control+click for Windows and command+click for Mac
                    if ( event.ctrlKey || event.metaKey ) {
                        action = SEL_ACTION_TOGGLE;
                    } else if ( event.shiftKey ) {
                        action = SEL_ACTION_RANGE;
                    }
                } else if ( ["keydown", "keyup"].includes( event.type ) ) {
                    // Mac has no concept of toggle with the keyboard
                    if ( event.which === keys.SPACE ) {
                        if ( event.ctrlKey ) {
                            action = SEL_ACTION_TOGGLE;
                        } else if ( event.shiftKey ) {
                            action = SEL_ACTION_RANGE;
                        } else {
                            action = SEL_ACTION_ADD;
                        }
                    } else if ( event.ctrlKey ) {
                        action = SEl_ACTION_NONE;
                    } else if ( event.shiftKey ) {
                        action = SEL_ACTION_RANGE;
                    }
                }
                if ( o.selectCells ) {
                    // in cell selection mode range and set are the only options
                    if ( action !== SEL_ACTION_RANGE ) {
                        action = SEL_ACTION_SET;
                    }
                }
                // if there is no target it is a fake event so get rid of it so not used in notification
                if ( !event.target ) {
                    event = null;
                }
            }

            if ( o.persistSelection ) {
                modelRangeAnchor = this.model.getSelectionState().rangeAnchor;
            }
            if ( action === SEL_ACTION_ALL ) {
                actionSelectAll = true;
                action = SEL_ACTION_SET;
            } else if ( action === SEL_ACTION_RANGE && ( ( !this.selectAnchor && !modelRangeAnchor ) || this.focusInHeader ) ) {
                action = SEL_ACTION_SET; // when there is no anchor (or in header) turn range selection into set
            }

            // if the cell is in the header don't change the selection
            if ( !this.focusInHeader ) {
                // clear out previous selection if needed
                if ( action === SEL_ACTION_SET || action === SEL_ACTION_RANGE ) {
                    prevSel$ = this.element.children( SEL_GRID_BODY ).find( o.selectCells ? "td.is-selected,th.is-selected" : "tr.is-selected" );
                    if ( o.rowHeaderCheckbox ) {
                        prevSel$.find( SEL_SELECTOR ).removeClass( C_SELECTED );
                    }
                    prevSel$.removeClass( C_SELECTED )
                        .removeAttr( ARIA_SELECTED )
                        .find( SEL_CHECK_SELECTOR ).attr( ARIA_CHECKED, FALSE );
                    if ( o.persistSelection ) {
                        this.model.clearSelection();
                    }
                }

                // perform selection action
                if ( o.selectCells ) {
                    if ( action === SEL_ACTION_RANGE ) {
                        let a, b,
                            anchor$ = $( this.selectAnchor );

                        start = domIndex( anchor$.parent() );
                        end = domIndex( cells$.last().parent() );
                        if ( start > end ) {
                            temp = end;
                            end = start;
                            start = temp;
                        }
                        startCol = domIndex( anchor$ );
                        endCol = domIndex( cells$.last() );

                        if ( startCol > endCol ) {
                            temp = endCol;
                            endCol = startCol;
                            startCol = temp;
                        }
                        a = startCol;
                        b = endCol + 1;
                        this.tableData$.children().each( ( index, el ) => {
                            var el$ = $( el );

                            if ( index > end ) {
                                return false;
                            }
                            // todo think should aggregates be allowed in the selection. Would be useful for copy to clipboard but not for copy down
                            if ( index >= start && el$.hasClass( C_GRID_ROW ) && !el$.hasClass( C_AGGREGATE ) &&
                                ( o.allowSelectHidden || el$.is( SEL_VISIBLE ) ) ) {

                                el$.children().slice( a, b ).addClass( C_SELECTED )
                                    .attr( ARIA_SELECTED, TRUE );
                                el$.find( SEL_CHECK_SELECTOR ).attr( ARIA_CHECKED, checkState( el$ ) );
                            }
                        } );
                    } else { // must be set
                        const el$ = cells$.parent();
                        cells$.addClass( C_SELECTED )
                            .attr( ARIA_SELECTED, TRUE );
                        el$.find( SEL_CHECK_SELECTOR ).attr( ARIA_CHECKED, checkState( el$ ) );
                        this.selectAnchor = cells$[0];
                    }
                } else {
                    if ( o.persistSelection && actionSelectAll ) {
                        this.model.setSelectionState( null, true, SEL_ACTION_ALL );
                    }

                    prevSelected = rows$.hasClass( C_SELECTED );
                    selectableRows$ = rows$.filter( SEL_GRID_ROW ).not( "." + C_AGGREGATE );
                    if ( action !== SEL_ACTION_UNSET ) {
                        // can't select disabled rows unless it is to deselect
                        selectableRows$ = selectableRows$.not( "." + C_DISABLED );
                    }
                    if ( action === SEL_ACTION_SET ||  action === SEL_ACTION_ADD || (action === SEL_ACTION_TOGGLE && !prevSelected) ) {
                        // Set checked state on checkbox or radio when checkbox or radio clicked
                        selectableRows$.addClass( C_SELECTED )
                            .attr( ARIA_SELECTED, TRUE )
                            .find( SEL_CHECK_SELECTOR ).attr( ARIA_CHECKED, TRUE );
                        updateModelSelectionState( selectableRows$, true );
                        if ( !actionSelectAll ) {
                            // select all should not change the anchor
                            this.selectAnchor = selectableRows$[0];
                        }
                        checked = true;
                    } else if ( action === SEL_ACTION_RANGE ) {
                        let modelAnchorRow,
                            anchor$ = $( this.selectAnchor ),
                            end$ = rows$.last();

                        start = this._rowIndex( anchor$ );
                        if ( o.persistSelection ) {
                            // the model has its own anchor which should take priority over the view anchor if any
                            let meta = this.model.getRecordMetadata( modelRangeAnchor );

                            if ( meta && meta.serverOffset ) {
                                modelAnchorRow = meta.serverOffset + 1;
                                if ( modelAnchorRow !== toInteger( anchor$.attr( ATTR_DATA_ROWNUM ) ) ) {
                                    start = -1;
                                }
                            }
                        }
                        end = this._rowIndex( end$ );
                        if ( start < 0 ) {
                            let anchorRow = modelAnchorRow || toInteger( anchor$.attr( ATTR_DATA_ROWNUM ) ),
                                endRow = toInteger( end$.attr( ATTR_DATA_ROWNUM ) );

                            if ( o.pagination.virtual ) {
                                // with virtual scroll paging the anchor may not be in the DOM
                                let fillers = this.tableData$.find( SEL_GRID_SCROLL_FILLER ).toArray();

                                // move anchor to next closest row that is in the DOM
                                if ( endRow > anchorRow ) {
                                    for ( let i = 0; i < fillers.length; i++ ) {
                                        anchor$ = $( fillers[i] ).next();
                                        if ( toInteger( anchor$.attr( ATTR_DATA_ROWNUM ) ) > anchorRow ) {
                                            break;
                                        }
                                    }
                                } else {
                                    for ( let i = fillers.length - 1; i >= 0; i-- ) {
                                        anchor$ = $( fillers[i] ).prev();
                                        if ( toInteger( anchor$.attr( ATTR_DATA_ROWNUM ) ) < anchorRow ) {
                                            break;
                                        }
                                    }
                                }
                                start = this._rowIndex( anchor$ );
                            } else if ( !o.pagination.scroll && o.persistSelection ) {
                                // with traditional paging and selection kept in the model the anchor could be on a different page
                                anchor$ = this.tableDataChildren$[endRow > anchorRow ? "first" : "last"]();
                                start = this._rowIndex( anchor$ );
                            }
                        }

                        if ( o.persistSelection ) {
                            if ( end$.hasClass( C_CONTROL_BREAK ) ) {
                                // control breaks are not actual rows in the model so use the adjacent one
                                end$ = end$[start > end ? "next" : "prev"]();
                            }
                            updateModelSelectionState( end$, true ); // for range only need to update the last record
                        }

                        if ( start > end ) {
                            temp = end;
                            end = start;
                            start = temp;
                        }
                        end += 1;

                        selectable = [];
                        // because _rowIndex called can be sure tableDataChildren$ exist
                        this.tableDataChildren$.slice( start, end ).each( function ( index, el ) {
                            let el$ = $( el );

                            if ( el$.hasClass( C_GRID_ROW ) && !el$.hasClass( C_AGGREGATE ) &&
                                !el$.hasClass( C_DISABLED ) &&
                                ( o.allowSelectHidden || el$.is( SEL_VISIBLE ) ) ) {
                                selectable.push( el );
                            }
                        } );
                        selectableRows$ = $( selectable );
                        selectableRows$.addClass( C_SELECTED )
                            .attr( ARIA_SELECTED, TRUE );
                        checked = true;
                    } else if ( ( action === SEL_ACTION_TOGGLE && prevSelected ) || action === SEL_ACTION_UNSET ) {
                        selectableRows$.removeClass( C_SELECTED )
                            .removeAttr( ARIA_SELECTED );
                        updateModelSelectionState( selectableRows$, false );
                        this.selectAnchor = selectableRows$[0];
                        checked = false;
                    }

                    if ( checked !== null && o.rowHeaderCheckbox ) {
                        selectableRows$.find( SEL_CHECK_SELECTOR )
                            .toggleClass( C_SELECTED, checked )
                            .attr( ARIA_CHECKED, checked );
                    }
                    if ( o.multiple && o.selectAll ) {
                        this._updateSelectAll();
                    }
                }
            }

            // focus if needed
            if ( cells$.length > 0 && focus !== null ) {
                toFocus = this._getCellFocusable( cells$.first() );
                if ( focus ) {
                    this._setFocus( toFocus, event );
                } else {
                    this._setFocusable( toFocus );
                }
                // set the current row after focus has been set so that lastRow$ is correct during any cell or row deactivation
                if ( !inSameRow ) {
                    this._setCurrentRow( cells$[0] );
                }
            }

            if ( o.persistSelection ) {
                this.hasSelection = this.model.getSelectedCount() > 0;
            }

            // notify if needed xxx currently selectCells will always notify
            if ( !this.focusInHeader && ( action === SEL_ACTION_TOGGLE ||
                action === SEL_ACTION_UNSET || // assuming at least some of the things to unset were previously selected
                (action === SEL_ACTION_RANGE && ( o.selectCells || !prevSelected ) ) ||
                (action === SEL_ACTION_ADD ) || // assuming at least some of the things to add were previously not selected
                (action === SEL_ACTION_SET && ( o.selectCells || !util.arrayEqual( prevSel$, selectableRows$ ) ) ) ) ) { // todo xxx what if selection differs in model only

                // don't fire selection change for click events when in navigation mode xxx does this apply when clicking on links in cells?
                doNotify = !(noNotify || ( o.navigation && event && event.type === "click" ));
                if ( delayTrigger ) {
                    this._selNotifyLongDelay( doNotify, event );
                } else {
                    this._selNotifyDelay( doNotify, event );
                }
            }
        },

        _checkSelectionChange: function( originalCount ) {
            // this check is fast but weak and may result in unneeded selection change event
            if ( this._selectedCount() !== originalCount ) {
                this._selNotifyDelay();
            }
        },

        // don't call directly go through _selNotifyDelay, _selNotifyLongDelay
        _selChangeNotify: function( notify, event ) {
            if ( this.element.hasClass( C_GRID ) ) { // make sure the grid widget has not been destroyed
                const o = this.options;

                if ( o.selectionStateItem ) {
                    let selItem = item( o.selectionStateItem );

                    if ( selItem.node ) {
                        let value,
                            values = this.getSelectedRecords();

                        // todo consider if cellSelection mode should be supported
                        if ( !values.length ) {
                            value = "";
                        } else {
                            value = values.map( r => this.model.getRecordId( r ) ).join( ":" );
                        }
                        selItem.setValue( value );
                    } else {
                        debug.warn( "Item not found ", o.selectionStateItem );
                    }
                }

                this._updateStatus();
                if ( notify ) {
                    this._trigger( EVENT_SELECTION_CHANGE, event );
                }
            }
        },

        // "All Rows" means all normal rows currently rendered (and visible unless allowSelectHidden)
        _getAllSelectableRows: function() {
            let allRows$ = this.tableData$.children( SEL_GRID_ROW ).not( "." + C_AGGREGATE + ",." + C_DISABLED );

            if ( !this.options.allowSelectHidden ) {
                allRows$ = allRows$.filter( SEL_VISIBLE );
            }
            return allRows$;
        },

        _updateSelectAll: function() {
            let checked,
                o = this.options;

            if ( o.persistSelection ) {
                let selState = this.model.getSelectionState();

                checked = selState.selectAll;
            } else {
                let allRows$ = this._getAllSelectableRows();

                // checking for more than zero rows covers the case where all control breaks are collapsed
                checked = (allRows$.length > 0 && allRows$.length === allRows$.filter( SEL_SELECTED ).length);
            }
            // set all checked
            this.allSelected = checked;
            if ( o.rowHeaderCheckbox ) {
                this.tableHeader$.find( SEL_CHECK_SELECTOR ).first()
                    .toggleClass( C_SELECTED, checked )
                    .attr( ARIA_CHECKED, checked ? TRUE : FALSE )
                    .closest( SEL_GRID_SEL_HEADER ).toggleClass( C_SELECTED, checked );
            }
        },

        _clearChildrenRowCache: function() {
            // clear the cache of children rows
            this.tableDataChildren$ = null;
        },

        _rowIndex: function( row$ ) {
            var tableChildren$;

            if ( !row$.parents( SEL_GRID_BODY ).length ) {
                return domIndex( row$ );
            } else {
                // cache the children collection because it is used often
                // do both so the cache is available as a side effect
                if ( !this.tableDataChildren$ ) {
                    this.tableDataChildren$ = this.tableData$.children();
                }
                tableChildren$ = this.tableDataChildren$;
            }
            return tableChildren$.index( row$ );
        },

        _setCurrentRow: function( cell ) {
            this.lastRow$ = getRowForCell( $( cell ) ).children();
        },

        _fireActivate: function( event, cell$ ) {
            var row$ = getRowForCell( cell$ );
            this._trigger( EVENT_ACTIVATE_CELL, event, {
                cell$: cell$,
                row$: row$
            });
        },

        _nextCellWithWrap: function( cell$ ) {
            let nextCell$,
                skip = this.options.skipReadonlyCells;

            function nextRow( row$ ) {
                // not interested in aggregate rows when skipReadonlyCells and don't want collapsed control break rows
                while ( ( skip && row$.hasClass( C_AGGREGATE ) ) || row$.not( SEL_VISIBLE ).length ) {
                    row$ = row$.next();
                }
                return row$.children().first();
            }

            function next( cell$ ) {
                let row$,
                    nextCell$ = cell$.next();

                if ( !nextCell$.length ) {
                    row$ = cell$.closest( SEL_ROW );
                    // go to first cell in next row
                    row$ = row$.next();
                    nextCell$ = nextRow( row$ );
                }
                return nextCell$;
            }

            nextCell$ = next( cell$ );
            if ( skip ) {
                while ( nextCell$.hasClass( C_READONLY ) ) {
                    nextCell$ = next( nextCell$ );
                }
            }
            return nextCell$;
        },

        _prevCellWithWrap: function( cell$ ) {
            let prevCell$,
                skip = this.options.skipReadonlyCells;

            function prevRow( row$ ) {
                // not interested in aggregate rows when skipReadonlyCells and don't want collapsed control break rows
                while ( ( skip && row$.hasClass( C_AGGREGATE ) ) || row$.not( SEL_VISIBLE ).length ) {
                    row$ = row$.prev();
                }
                return row$.children().last();
            }

            function prev( cell$ ) {
                let row$,
                    prevCell$ = cell$.prev();

                if ( !prevCell$.length ) {
                    row$ = cell$.closest( SEL_ROW );
                    // go to last cell in prev row
                    row$ = row$.prev();
                    prevCell$ = prevRow( row$ );
                }
                return prevCell$;
            }

            prevCell$ = prev( cell$ );
            if ( skip ) {
                while ( prevCell$.hasClass( C_READONLY ) ) {
                    prevCell$ = prev( prevCell$ );
                }
            }
            return prevCell$;
        },

        // todo now that there is just one table can probably get rid of this hover state logic
        _clearHoverStates: function() {
            this.element.find( SEL_HOVER ).removeClass( C_HOVER );
            this.columnControls$.hide();
            this.columnHandle$.hide();
        },

        _setRowHoverState: function( row$ ) {
            this.element.find( SEL_HOVER ).removeClass( C_HOVER ); // remove previous hover state
            row$ = getRowForCell( row$.children().eq(0) );
            row$.addClass( C_HOVER );
        },

        /*
         * The possible directions are "asc" and "desc"
         * The possible actions are:
         * - set: set this column to given direction clearing all others
         * - clear: don't sort any columns
         * - remove: don't sort this column leave other columns alone
         * - add: sort this column in given direction leave other columns alone (column wasn't sorted)
         * - change: sort this column in given direction leave other columns alone (column was sorted)
         * How the action is determined:
         *  Column       | User action             | columnSortMultiple setting
         *  current sort | direction   | Shift Key | false     | true
         *  -----------------------------------------------------------------
         *  asc/desc     | asc/desc    | true      | clear     | remove
         *  asc/desc     | asc/desc    | false     | clear     | clear
         *  asc/desc     | desc/asc    | true      | set       | change
         *  asc/desc     | desc/asc    | false     | set       | set
         *  none         | desc/asc    | true      | set       | add
         *  none         | desc/asc    | false     | set       | set
         */
        _sortChange: function( event, cell$, dir ) {
            var same,
                action = "set",
                column = this._getColumnMetadata( cell$ );

            if ( column.canSort ) {
                same = dir === column.sortDirection;
                if ( this.options.columnSortMultiple ) {
                    if ( event.shiftKey ) {
                        action = "add";
                        if ( same ) {
                            action = "remove";
                        } else if ( !column.sortDirection ) {
                            action = "add";
                        } else {
                            action = "change";
                        }
                    } else {
                        if ( same ) {
                            action = "clear";
                        }
                    }
                } else {
                    if ( same ) {
                        action = "clear";
                    }
                }
                this._trigger( EVENT_SORT_CHANGE, event, {
                    header$: cell$,
                    column: column,
                    direction: dir,
                    action: action
                });
            }
        },

        // todo think it might be nice to include based on shift key if the sort will be additive and what number
        // the problem is that this widget has no idea what the caller will do with the sort event and also the
        // next sort number is not readily known
        // also think about if the action should show up on the status bar
        _updateColumnControls: function( column ) {
            const
                labelAsc = getMessage( "SORT_ASCENDING" ),
                labelDesc = getMessage( "SORT_DESCENDING" );
            let titleAsc, titleDesc,
                ascActive = false,
                descActive = false;

            if ( column.sortDirection === "asc" ) {
                titleAsc = getMessage( "SORT_OFF" );
                titleDesc = labelDesc;
                ascActive = true;
            } else if ( column.sortDirection === "desc" ) {
                titleAsc = labelAsc;
                titleDesc = getMessage( "SORT_OFF" );
                descActive = true;
            } else {
                titleAsc = labelAsc;
                titleDesc = labelDesc;
            }
            this.columnControls$.find( ".js-asc" )
                .attr( ATTR_TITLE, titleAsc )
                .attr( ARIA_LABEL, labelAsc )
                .attr( ARIA_PRESSED, ascActive )
                .toggleClass( C_ACTIVE, ascActive );
            this.columnControls$.find( ".js-desc" )
                .attr( ATTR_TITLE, titleDesc )
                .attr( ARIA_LABEL, labelDesc )
                .attr( ARIA_PRESSED, descActive )
                .toggleClass( C_ACTIVE, descActive );
        },

        // headerHeight is optional
        _adjustSizeForScrollBars: function( h, w, headerHeight ) {
            var c$ = this.element.children(),
                headerScroll$ = c$.filter( SEL_GRID_HEADER ).children( SEL_GRID_WRAP_HEADER ),
                bars = hasScrollbar( this.tableData$.parent(), headerHeight );

            // if content has a horizontal scrollbar
            if ( bars.h ) {
                h -= util.getScrollbarSize().height;
            }
            // if content has a vertical scrollbar
            if ( bars.v ) {
                w -= util.getScrollbarSize().width;
            }
            headerScroll$.width( w );
        },

        //
        // Column Header scroll support
        //

        _headerScrollCheck: function( pos, width, update ) {
            var sLeft, scrolled, offsetLeft,
                deltaX = 0,
                sp = this.hdrScrollParent;

            if ( sp ) {
                offsetLeft = $( this.hdrScrollParent ).offset().left;

                if ( this.element.hasClass( C_RTL ) ) {
                    if ( pos - width - offsetLeft < HEADER_SCROLL_SENSITIVITY ) {
                        deltaX = -HEADER_SCROLL_SPEED;
                    } else if ( ( offsetLeft + sp.offsetWidth ) - pos < HEADER_SCROLL_SENSITIVITY && ( offsetLeft + sp.offsetWidth ) - pos > 0 ) {
                        deltaX = HEADER_SCROLL_SPEED;
                    }
                    if ( update && deltaX ) {
                        sLeft = sp.scrollLeft + deltaX;
                        if ( sLeft > 0 ) {
                            sp.scrollLeft = 0;
                            deltaX = 0;
                        } else if ( sLeft > sp.scrollWidth - sp.clientWidth ) {
                            sp.scrollLeft = sp.scrollWidth - sp.clientWidth;
                            deltaX = 0;
                        } else {
                            sp.scrollLeft = sLeft;
                        }
                    }
                } else {
                    if ( ( offsetLeft + sp.offsetWidth ) - ( pos + width ) < HEADER_SCROLL_SENSITIVITY ) {
                        deltaX = HEADER_SCROLL_SPEED;
                    } else if ( pos - offsetLeft < HEADER_SCROLL_SENSITIVITY && pos - offsetLeft > 0 ) {
                        deltaX = -HEADER_SCROLL_SPEED;
                    }
                    if ( update && deltaX ) {
                        sLeft = sp.scrollLeft + deltaX;
                        if ( sLeft < 0 ) {
                            sp.scrollLeft = 0;
                            deltaX = 0;
                        } else if ( sLeft > sp.scrollWidth - sp.clientWidth ) {
                            sp.scrollLeft = sp.scrollWidth - sp.clientWidth;
                            deltaX = 0;
                        } else {
                            sp.scrollLeft = sLeft;
                        }
                    }
                }
                scrolled = !!deltaX;
            }
            return scrolled;
        },

        _headerScrollStart: function( pos, width, callback ) {
            var self = this,
                timeIndex = 0,
                times = [ 151, 134, 119, 106, 95, 86, 79, 74, 71]; // 70 + (9 - i)^2

            function scroll() {
                self.scrollTimerId = setTimeout( function() {
                    if ( self._headerScrollCheck( pos, width, true ) ) {
                        callback();
                        scroll();
                    } else {
                        self._headerScrollStop();
                    }
                }, times[timeIndex] );
                if ( timeIndex < times.length - 1 ) {
                    timeIndex += 1;
                }
            }

            if ( this.scrollTimerId ) {
                this._headerScrollStop();
            }
            scroll();
        },

        _headerScrollStop: function() {
            clearTimeout( this.scrollTimerId );
            this.scrollTimerId = null;
        },

        _expandCollapseControlBreak: function( pRows, expand ) {
            let saveFocusInHeader, foundNextBreak, addOffset,
                unselect = [],
                notifyRows = [],
                o = this.options,
                checkSelect = !o.allowSelectHidden;

            function doRow( _, tr ) {
                let tr$ = $(tr);

                if ( tr$.hasClass( C_GRID_ROW ) && !tr$.hasClass( C_AGGREGATE ) ) {
                    // normally invisible rows cannot be selected
                    // collect selected rows to call _select to toggle (unselect)
                    if ( !expand && checkSelect && tr$.hasClass( C_SELECTED ) ) {
                        unselect.push( tr$.children( SEL_CELL )[0] );
                    }
                    tr$[expand ? "show" : "hide"]();
                } else if ( tr$.hasClass( C_CONTROL_BREAK ) ) {
                    foundNextBreak = true;
                    return false;
                } else if ( tr$.hasClass( C_GRID_SCROLL_FILLER ) ) {
                    // in the case of fetching more data when collapsing this is where to fetch from
                    addOffset = toInteger( tr$.attr( "data-start" ) );
                    if ( expand && tr$.css( "visibility" ) === "collapse" ) { // see fillerVisible in base widget
                        tr$.css( "visibility", "" ).removeClass( "is-hidden" ); // see toggleFillerVisible in base widget
                    } else {
                        // todo it is possible that there are more records in the same break after this filler
                        // but would have to check the break label to know for sure. For now ignore.
                        // The result is that on collapse some records may not be unselected.
                        return false;
                    }
                }
            }

            if ( !isArray( pRows ) ) {
                pRows = [ pRows ];
            }

            for ( let i = 0; i < pRows.length; i++ ) {
                let title, ctrlBreak,
                    row$ = pRows[i];

                if ( row$.hasClass( C_CONTROL_BREAK ) ) {
                    notifyRows.push( row$ );
                    foundNextBreak = false;
                    row$.nextAll().each( doRow );
                    ctrlBreak = this._getControlBreak( toInteger( row$.attr( ATTR_DATA_ROWNUM ) ), true );
                    if ( ctrlBreak ) {
                        ctrlBreak.expanded = expand;
                    }

                    if ( expand ) {
                        title = getMessage( "BREAK_COLLAPSE" );
                        row$.addClass( C_EXPANDED )
                            .find( SEL_TOGGLE_BREAK ).attr( ARIA_EXPANDED, TRUE )
                            .attr( ATTR_TITLE, title ).attr( ARIA_LABEL, title )
                            .children( ".a-Icon" ).removeClass( "icon-right-arrow" ).addClass( "icon-down-arrow" );
                    } else {
                        title = getMessage( "BREAK_EXPAND" );
                        row$.removeClass( C_EXPANDED )
                            .find( SEL_TOGGLE_BREAK ).attr( ARIA_EXPANDED, FALSE )
                            .attr( ATTR_TITLE, title ).attr( ARIA_LABEL, title )
                            .children( ".a-Icon" ).removeClass( "icon-down-arrow" ).addClass( "icon-right-arrow" );
                        // A control break should always have at least one record even if not yet loaded into the model
                        // if collapsing the last break row and no next break is found then must be at the end of what has been
                        // rendered so far so try to load more
                        if ( i === pRows.length - 1 && o.pagination.scroll && !o.pagination.loadMore ) {
                            if ( !foundNextBreak ) {
                                if ( o.pagination.virtual ) {
                                    if ( addOffset >= 0 ) {
                                        this.pageOffset = addOffset;
                                        this._addPageOfRecords();
                                    }
                                } else {
                                    this._addNextPage();
                                }
                            } else {
                                if ( o.pagination.virtual ) {
                                    // The scroll top hasn't changed but the row offsets have because of the collapse
                                    // so force _scrollPage to reevaluate so more rows are rendered if needed
                                    this.lastScrollTop = null;
                                    this._scrollPage();
                                } else if ( this.tableData$.height() < this.scrollParent$.height() ) {
                                    // If add more scrolling it is possible on collapse to be smaller than the viewport but still
                                    // not have all the data. In this case it is not possible to add more data because can't scroll.
                                    this._addNextPage();
                                }
                            }
                        }
                    }
                }
            }
            if ( unselect.length ) {
                // clear focus in header around _select call otherwise it will have no effect
                saveFocusInHeader = this.focusInHeader;
                this.focusInHeader = false;
                this._select( $( unselect ), SEL_ACTION_UNSET, $( document.activeElement ).closest( this.element[0] ).length > 0, null ); // no focus
                this.focusInHeader = saveFocusInHeader;
            }

            this._trigger( EVENT_EXPANSION_CHANGE, null, {
                type: "break",
                expand: expand,
                rows$: notifyRows
            } );
        },

        /**
         * <p>This method is for <strong>developer debugging only</strong>.
         * When developing an item plug-in that is to be used in a grid cell it can be difficult to debug CSS styling
         * because as soon as the cell looses focus the item is moved in the DOM to a hidden area. Calling this with
         * a true argument to turn on cell edit debugging leaves the item in the cell after it looses focus so that
         * the DOM and styles can be inspected with browser developer tools. This is not effective for end user use.
         * Because the cell is not fully deactivated it can affect editing in general. Call it again with false to
         * turn off cell edit debugging or refresh the page.</p>
         * @param {boolean} pValue Set to true to debug. Keeps cells from fully deactivating when they loose focus. Set to false when done.
         * @example <caption>This example shows how to debug a column item plug-in. From the browser JavaScript console:</caption>
         * var view$ = ... // this is the grid widget jQuery object.
         * view$.grid("debugCellEdit", true)
         * // do your debugging
         * view$.grid("debugCellEdit", false)
         */
        debugCellEdit: function( pValue ) {
            this.debugDontDeactivateCell = !!pValue;
        }

        /* todo remove when no longer needed
        //
        // For debugging
        //
        dumpColumnWidths: function() {
            var self = this,
                ctrl$ = this.element,
                dataWidths  = "  data width: ",
                hdrWidths   = "header width: ",
                colWidths   = "   col width: ",
                dataCols$ = ctrl$.children( SEL_GRID_BODY ).find( "thead" ).find( ".a-GV-header" ),
                headerCols$ = ctrl$.children( SEL_GRID_HEADER ).find( "thead" ).find( ".a-GV-header" );

            dataCols$.each(function( i ) {
                var col$ = $( this ),
                    col = self.columns[ col$.attr(ATTR_DATA_IDX) ];

                if (i > 0) {
                    hdrWidths += ", ";
                    dataWidths += ", ";
                    colWidths += ", ";
                }
                hdrWidths += headerCols$.eq(i).width() + "/" + headerCols$.eq(i).outerWidth();
                dataWidths += col$.width() + "/" + col$.outerWidth();
                if ( col ) {
                    colWidths += (col.width || "-") + "/" + (col.curWidth || "-");
                } else {
                    colWidths += "- / -";
                }
            });
            console.log("Dump column widths:");
            console.log(colWidths);
            console.log(hdrWidths);
            console.log(dataWidths);
            ctrl$.find( SEL_TABLE ).each(function() {
                console.log("table widths: " + $(this ).width());
            });
        }
        */
    }, apex.widget.contextMenuMixin ) );

    /*
     * Allow floating item popup to work in jQuery UI dialogs
     */
    if ( $.ui.dialog ) {
        $.widget( "ui.dialog", $.ui.dialog, {
            _allowInteraction: function( event ) {
                return $( event.target ).closest( SEL_FLOATING_ITEM ).length > 0 || this._super( event );
            }
        });
    }

})( apex.util, apex.model, apex.debug, apex.lang, apex.item, apex.clipboard, apex.widget.util, apex.jQuery );
