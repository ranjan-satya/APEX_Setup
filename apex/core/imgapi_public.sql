set define '^' verify off
prompt ...wwv_flow_image_api
create or replace package wwv_flow_image_api as
--==============================================================================
--
-- NAME
--   imgapi_public.sql
--
-- MODIFIED (MM/DD/YYYY)
--  sdillon  04/13/2001 - Created
--==============================================================================

    g_varchar2_table sys.dbms_sql.varchar2_table; -- used by wwv_flow_gen_api2.create_flow_image_repository

/*
 * Create a new image_repository entry, returns unique id for 
 *  wwv_flow_image_repository table.
 *
 * *** API Deprecated, use wwv_flow_imp_shared.create_app_static_file and create_workspace_static_file instead ***
 */


function new_image_repository_record(
    p_name                  in out varchar2,
    p_varchar2_table            in sys.dbms_sql.varchar2_table,
    p_mimetype                  in varchar2,
    p_flow_id                   in number,
    p_nlang                     in varchar2,
    p_height                    in number default null,
    p_width                     in number default null,
    p_notes                     in varchar2)
    return number
    ;
    
--
-- F I L E S Y S T E M   I N T E G R A T I O N
--

/* 
 * pass in the image name and flow id of the wwv_flow_image_repository record 
 *  representing the image you want to drop. If this image does not exist 
 *  according to the wwv_flow_image_repository table, this will not work.
 *
 * *** API Deprecated ***
 */
procedure remove_image(
    p_image_name                in varchar2,
    p_flow_id                   in number)
    ;

end wwv_flow_image_api;
/
show error
