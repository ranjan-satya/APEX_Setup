set define '^' verify off
prompt ...wwv_flow_cloud_db_services
create or replace package wwv_flow_cloud_db_services authid definer as
--------------------------------------------------------------------------------
--
--  Copyright (c) 2011, 2021, Oracle and/or its affiliates.
--
--    NAME
--      wwv_flow_cloud_db_services.sql
--
--    DESCRIPTION
--      General API for managing workspaces in a database cloud
--
--    MODIFIED   (MM/DD/YYYY)
--    jkallman    05/11/2011 - Created
--
--------------------------------------------------------------------------------

type t_workspace_statistics is record(
    workspace_name            wwv_flow_companies.short_name%type,
    workspace_display_name    wwv_flow_companies.display_name%type,
    page_events_today         number,
    page_events_yesterday     number,
    emails_sent               number,
    emails_ingested           number,
    total_db_objects          number,
    table_count               number,
    view_count                number,
    trigger_count             number,
    other_db_object_count     number,
    db_app_count              number,
    restful_ws_count          number,
    tablespace_bytes_total    number,
    tablespace_bytes_used     number,
    tablespace_bytes_free     number,
    tablespace_pct_used       number);

type t_upgrade_status is record(
    upgrade_date    timestamp with time zone,
    upgrade_version varchar2(4000),
    state           varchar2(255),
    status_checked  boolean default false);


procedure create_workspace(
    p_workspace_name          in varchar2,
    p_schema_name             in varchar2,
    p_max_size_mb             in number,
    p_initial_size_mb         in number   default null,
    p_install_sample_app      in varchar2 default null,
    p_install_sample_ws       in varchar2 default null,
    p_install_emp_dept        in varchar2 default null,
    p_allow_to_be_purged_yn   in varchar2 default null,
    p_rm_consumer_group       in varchar2 default null,
    p_workspace_description   in varchar2 default null,
    p_workspace_type          in varchar2 default null,
    p_use_existing_schema_yn  in varchar2 default 'N');

procedure remove_workspace(
    p_workspace_name          in varchar2,
    p_drop_users              in varchar2 default 'N',
    p_drop_tablespaces        in varchar2 default 'N' );

-- deprecated
procedure update_workspace_size(
    p_workspace_name          in varchar2,
    p_max_size_mb             in number );

-- preferred
procedure update_workspace_size(
    p_workspace_name          in varchar2,
    p_add_size_mb             in number );

procedure set_workspace_display_name(
    p_workspace_name          in varchar2,
    p_workspace_display_name  in varchar2 );

procedure add_workspace_admin(
    p_workspace_name          in varchar2,
    p_username                in varchar2,
    p_email                   in varchar2,
    p_first_name              in varchar2 default null,
    p_last_name               in varchar2 default null );

procedure add_user(
    p_workspace_name          in varchar2,
    p_username                in varchar2,
    p_email                   in varchar2,
    p_first_name              in varchar2 default null,
    p_last_name               in varchar2 default null,
    p_is_admin                in varchar2 default 'N');

procedure update_user(
    p_workspace_name          in varchar2,
    p_username                in varchar2,
    p_new_username            in varchar2 default null,
    p_new_email               in varchar2 default null,
    p_is_admin                in varchar2 default 'N' );

procedure remove_user(
    p_workspace_name          in varchar2,
    p_username                in varchar2 );

-- Available workspace statuses:  AVAILABLE, ASSIGNED, SUSPENDED
procedure set_workspace_status(
    p_workspace_name          in varchar2,
    p_workspace_status        in varchar2 );


function get_workspace_statistics(
    p_workspace_name          in varchar2 ) return t_workspace_statistics;


-- p_for_when: Y - yesterday, T - today
procedure get_workspace_stats(
    p_workspace_name          in   varchar2,
    p_for_when                in   varchar2  default 'Y',
    p_page_events             out  number,
    p_emails_sent             out  number,
    p_total_objects           out  number,
    p_tables                  out  number,
    p_custom_database_apps    out  number,
    p_packaged_database_apps  out  number,
    p_restful_web_services    out  number,
    p_tablespace_bytes_total  out  number,
    p_tablespace_bytes_used   out  number,
    p_tablespace_bytes_free   out  number,
    p_tablespace_pct_used     out  number);


procedure get_workspace_applications (
    p_workspace_name    in   varchar2,
    p_custom_db_apps    out  varchar2,
    p_packaged_db_apps  out  varchar2 );

procedure reset_instance_parameters( p_reset_all in boolean default false );

procedure csconv (
    p_new_charset  in varchar2 default null,
    p_orig_charset in varchar2 default null );

function get_upgrade_status return t_upgrade_status;


end wwv_flow_cloud_db_services;
/
show errors
