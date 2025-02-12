set define '^' verify off
prompt ...wwv_htf
--------------------------------------------------------------------------------
--
-- Copyright (c) 1999, 2024, Oracle and/or its affiliates.
--
--   NAME
--     wwv_htf.sql
--
--   DESCRIPTION
--     htf extensions
--
--   NOTES
--     Missing functionality in standard htp htf packages
--
--   RUNTIME DEPLOYMENT: YES
--
--   MODIFIED   (MM/DD/YYYY)
--     webdb_20    08/23/1999 - Created
--
--------------------------------------------------------------------------------
create or replace package wwv_htf is
/**
 *
 */
nbsp constant varchar2(6) := '&nbsp;';

/**
 * Encode special characters
 */
function url_encode
(
    ctext      in varchar2 DEFAULT NULL
)
return varchar2;

/**
 * Encode all characters of the string
 */
function url_encode2
(
    ctext      in varchar2 DEFAULT NULL
)
return varchar2;

/**
 * Encode characters to a specific character set.
 */

function url_encode3(p_url_text varchar2,
                     p_escape_reserved varchar2,
                     p_charset varchar2)
return varchar2;

/**
 * Same function as sys.htf.escape_sc but it limits the output to 3996 chars
 * so that it also works in a SQL statement without raising a numeric value error.
 */

function escape_sc_sql (
    p_text in varchar2 )
    return varchar2;

/**
 * Same function as sys.htf.escape_sc but for CLOBs.
 */

function escape_sc (
    p_text in clob )
    return clob;

/**
 * Return an opening HMTL table cell "TD" tag.
 */
function tableDataOpen
(
    calign      in varchar2 DEFAULT NULL,
    cdp         in varchar2 DEFAULT NULL,
    cnowrap     in varchar2 DEFAULT NULL,
    crowspan    in varchar2 DEFAULT NULL,
    ccolspan    in varchar2 DEFAULT NULL,
    cattributes in varchar2 DEFAULT NULL
)
return varchar2;


/**
 * Return a closing HMTL table cell "TD" tag.
 */
tableDataClose constant varchar2(5) := '</TD>';


/**
 * Return an opening HTML paragraph "P" tag.
 */
function paragraphOpen
(
    calign       in varchar2 DEFAULT NULL,
    cnowrap      in varchar2 DEFAULT NULL,
    cclear       in varchar2 DEFAULT NULL,
    cattributes  in varchar2 DEFAULT NULL
)
return varchar2;


/**
 * Return a closing HTML paragraph "P" tag.
 */
paragraphClose constant varchar2(4) := '</P>';


/**
 * Return an opening HTML division "DIV" tag.
 */
function divOpen
(
    calign      in varchar2 DEFAULT NULL,
    cattributes in varchar2 DEFAULT NULL,
    cclass      in varchar2 DEFAULT NULL
)
return varchar2;

/**
 * Return an opening HTML fieldset tag which can
 * contain the optional attributes id, class and
 * additional parameter for other attributes
 */
function fieldsetOpen
(
    cid         in varchar2 default null,
    cclass      in varchar2 default null,
    cattributes in varchar2 default null
)
return varchar2;

/**
 * Return a closing HTML fieldset tag.
 */
function fieldsetClose
return varchar2;

/**
 * Return a closing HTML division "DIV" tag.
 */
divClose constant varchar2(6) := '</DIV>';


/**
 * Return a form button "INPUT" HTML tag.
 */
function formButton
(
    cname in varchar2 DEFAULT NULL,
    cvalue in varchar2 DEFAULT NULL,
    cattributes in varchar2 DEFAULT NULL
)
return varchar2;


/**
 * Return an opening HMTL script "SCRIPT" tag.
 */
function scriptOpen
return varchar2;


/**
 * Return a closing HMTL script "SCRIPT" tag.
 */
function scriptClose return varchar2;


/**
 * Return an opening HMTL script "CENTER" tag.
 */
centerOpen constant varchar2(8) := '<center>';


/**
 * Return a closing HMTL script "CENTER" tag.
 */
centerClose constant varchar2(9) := '</center>';


/**
 * Return an opening HMTL script "LI" tag.
 */
function listitemopen
(
    cclear      in varchar2 default null,
    cdingbat    in varchar2 default null,
    csrc        in varchar2 default null,
    cattributes in varchar2 default null
)
return varchar2;


function formhidden(
    cname       in varchar2,
    cvalue      in varchar2 default null,
    cattributes in varchar2 default null
) return varchar2;

function formtextareaclose return varchar2;

function formtextareaopen2(
     cname       in varchar2,
     nrows       in integer,
     ncolumns    in integer,
     nmaxlength  in integer  default null,
     calign      in varchar2 default null,
     cwrap       in varchar2 default null,
     cattributes in varchar2 default null)
  return varchar2;


/*htp overides for xhtml and 508*/

function tabledata (
	CVALUE      in varchar2 default null,
	CALIGN      in varchar2 default null,
	CDP         in varchar2 default null,
	CNOWRAP     in varchar2 default null,
	CROWSPAN    in varchar2 default null,
	CCOLSPAN    in varchar2 default null,
	CATTRIBUTES in varchar2 default null
 ) return varchar2;

function tablerowopen (
 CALIGN      in varchar2 default null,
 CVALIGN     in varchar2 default null,
 CDP         in varchar2 default null,
 CNOWRAP     in varchar2 default null,
 CATTRIBUTES in varchar2 default null
) return varchar2;


function tablerowclose return varchar2;



function tableheader (
 CVALUE      in varchar2 default null,
 CALIGN      in varchar2 default null,
 CDP         in varchar2 default null,
 CNOWRAP     in varchar2 default null,
 CROWSPAN    in varchar2 default null,
 CCOLSPAN    in varchar2 default null,
 CATTRIBUTES in varchar2 default null
 ) return varchar2;



function tableopen (
 CBORDER     in varchar2 default null,
 CALIGN      in varchar2 default null,
 CNOWRAP     in varchar2 default null,
 CCLEAR      in varchar2 default null,
 CATTRIBUTES in varchar2 default null

) return varchar2;

function tableclose return varchar2;

function img (
 CURL        in varchar2 default null,
 CALIGN      in varchar2 default null,
 CALT        in varchar2 default null,
 CISMAP      in varchar2 default null,
 CATTRIBUTES in varchar2 default null
) return varchar2;


function bodyopen (
 CBACKGROUND in varchar2 default null,
 CATTRIBUTES in varchar2 default null
) return varchar2;

function bodyClose return varchar2;

function htmlopen return varchar2;

function htmlClose return varchar2;

function formText (
cname in varchar2 DEFAULT NULL,
csize in varchar2 DEFAULT NULL,
cmaxlength in varchar2 DEFAULT NULL,
cvalue in varchar2 DEFAULT NULL,
cattributes in varchar2 DEFAULT NULL
) return varchar2;

function formPassword (
	cname in varchar2 DEFAULT NULL,
	csize in varchar2 DEFAULT NULL,
	cmaxlength in varchar2 DEFAULT NULL,
	cvalue in varchar2 DEFAULT NULL,
	cattributes in varchar2 DEFAULT NULL
) return varchar2;

function anchor(
curl in varchar2 DEFAULT NULL,
ctext in varchar2 DEFAULT NULL,
cname in varchar2 DEFAULT NULL,
cattributes in varchar2 DEFAULT NULL
)return varchar2;

function anchor2(
curl in varchar2 DEFAULT NULL,
ctext in varchar2 DEFAULT NULL,
cname in varchar2 DEFAULT NULL,
ctarget in varchar2 DEFAULT NULL,
cattributes in varchar2 DEFAULT NULL
)return varchar2;

function formOpen (
    curl        in varchar2 default null,
    cmethod     in varchar2 default null,
    ctarget     in varchar2 default null,
    cenctype    in varchar2 default null,
    cattributes in varchar2 default null,
    novalidate  in boolean  default true )
    return varchar2;

function formSelectOpen(
	cname in varchar2 DEFAULT NULL,
	cprompt in varchar2 DEFAULT NULL,
	nsize in integer DEFAULT NULL,
	cattributes in varchar2 DEFAULT NULL
)return varchar2;


function formSelectOption(
	cvalue in varchar2 DEFAULT NULL,
	cselected in varchar2 DEFAULT NULL,
	cattributes in varchar2 DEFAULT NULL
)return varchar2;

function formSelectClose return varchar2;

function formSubmit(
   cname          in       varchar2   DEFAULT NULL,
   cvalue         in       varchar2   DEFAULT 'Submit',
   cattributes    in       varchar2   DEFAULT NULL
)return varchar2;

end wwv_htf;
/
show errors
