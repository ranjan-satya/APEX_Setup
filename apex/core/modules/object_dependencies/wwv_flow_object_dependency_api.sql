set define '^' verify off
prompt ...wwv_flow_object_dependency_api
create or replace package wwv_flow_object_dependency_api as
--------------------------------------------------------------------------------
--
--  Copyright (c) 2024, Oracle and/or its affiliates.
--
--  NAME
--    wwv_flow_object_dependency_api.sql
--
--  DESCRIPTION
--    Generates base data for object dependency reports
--
--  MODIFIED   (MM/DD/YYYY)
--  JPKEMP      03/18/2024 - Created
--
--------------------------------------------------------------------------------

--==============================================================================
-- Constants
--==============================================================================

-- reporting options
c_option_all          constant varchar2(12) := 'ALL';          -- everything
c_option_dependencies constant varchar2(12) := 'DEPENDENCIES'; -- dependencies + errors
c_option_identifiers  constant varchar2(12) := 'IDENTIFIERS';  -- pl/scope identifiers + errors
c_option_errors       constant varchar2(12) := 'ERRORS';       -- errors only

--==============================================================================
-- Removes all dependency report data for a given application
--
-- Parameters:
-- * p_application_id: ID of the application for which cache should be cleared
--
-- Example:
-- ```
-- begin
--     apex_app_object_dependency.clear_cache ( p_application_id => :app_id );
-- end;
-- ```
--
--==============================================================================
procedure clear_cache (
    p_application_id in number );
  
--==============================================================================
-- Generates data for object dependency report
--
-- ### Description
--
-- Scans the application (or a page in the application) for all database objects
-- (including but not limited to tables, views, procedures, functions, packages,
-- and synonyms) that it depends on, whether these dependencies are in forms,
-- reports, PL/SQL regions, conditions, plugins, or elsewhere.
--
-- The results are visible by querying the following views:
-- * `APEX_USED_DB_OBJECT_COMP_PROPS` - all application SQL and PL/SQL found
-- * `APEX_USED_DB_OBJECTS`           - all database objects referred to
-- * `APEX_USED_DB_OBJ_DEPENDENCIES`  - all dependencies found
--
-- In the event that a fragment of SQL or PL/SQL is invalid (e.g. a required
-- object is missing), the dependencies will not be detected. The compilation
-- error message may be queried in the `APEX_USED_DB_OBJECT_COMP_PROPS` view.
--
-- The results of the scan will be retained until:
-- * a new scan is initiated
-- * `apex_app_object_dependency.clear_cache` is called, or
-- * the APEX instance is upgraded
--
-- ### PL/SCOPE
--
-- The scanner will only detect dependencies specific to functions and
-- procedures within packages compiled with PL/Scope.
--
-- Before starting the scan, you may choose to compile the schema(s) of interest
-- with PL/Scope:
--
-- ```
-- alter session set plscope_settings='identifiers:all';
-- exec sys.dbms_utility.compile_schema(user, true);
-- alter session set plscope_settings='identifiers:none';
-- ```
--
-- This may take some time to run depending on the size of the codebase.
--
-- For packages not compiled with PL/Scope, the scanner will only detect a
-- dependency on the package; but the report will not list each method
-- referenced within it.
--
-- ### Requirements
--
-- The application owner schema requires `CREATE PROCEDURE` privilege.
--
-- ### Known Limitations
--
-- * Does not detect dependencies within SQL generated dynamically (e.g. using
--   execute immediate or dbms_sql).
--
-- * Does not detect dependencies arising from Function Returning SQL or
--   Function Body Returning SQL (i.e. the functions are not executed so the
--   code they generate is not scanned for dependencies).
--
-- * Does not detect recursive dependencies (i.e. other database objects
--   referred to by the objects detected in the scan).
--   Tip: Recursive dependencies may be found by querying the
--   `USER_DEPENDENCIES` database view.
--
-- * Does not detect dependencies in Supporting Object scripts, including those
--   that may arise in Required Object Names, Install Scripts, Upgrade Scripts,
--   or Deinstall Scripts.
--
-- Parameters:
-- * p_application_id: ID of the application which should be analyzed
-- * p_page_id       : Set this parameter to analyze a single page of an
--                     application
-- * p_options       : `c_option_all` to scan all sources (default).
--
--                     `c_option_dependencies` to scan for top-level
--                     dependencies (via `dba_dependencies`) only.
--
--                     `c_option_identifiers` to scan for detailed dependencies
--                     (via PL/Scope) where available. This allows detection of
--                     dependencies on columns in tables and views, and member
--                     functions and procedures within packages compiled with
--                     `'identifiers:all'`.
--
--                     `c_option_errors` to scan neither (report compilation
--                     errors only).
--
-- Example:
-- ```
-- begin
--     apex_app_object_dependency.scan ( p_application_id => :app_id );
-- end;
-- ```
--
--==============================================================================
procedure scan (
    p_application_id in number,
    p_page_id        in number   default null,
    p_options        in varchar2 default c_option_all );
  
end wwv_flow_object_dependency_api;
/
show err