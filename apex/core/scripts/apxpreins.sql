Rem  Copyright (c) 1999, 2023, Oracle and/or its affiliates.
Rem
Rem    NAME
Rem      apxpreins.sql
Rem
Rem    DESCRIPTION
Rem
Rem    NOTES
Rem      Assumes the SYS user is connected.
Rem
Rem    REQUIREMENTS
Rem      - Oracle Database 19c or later
Rem
Rem
Rem    MODIFIED   (MM/DD/YYYY)
Rem      jstraub   11/20/2014 - Created


set define '^'
set concat on
set concat .


column :cdb_root new_value CDB_ROOT NOPRINT
variable cdb_root varchar2(60)

column :cdb new_value CDB NOPRINT
variable cdb varchar2(60)

column :meta_link new_value META_LINK NOPRINT
variable meta_link varchar2(60)

whenever sqlerror exit
set serveroutput on

declare
    l_install_type  varchar2(255)   := 'LOCAL';
    l_cdb_root      varchar2(255)   := 'NO';
    l_cdb           varchar2(255)   := 'NO';
    l_apex_in_pdb   varchar2(255)   := 'NO';
    l_apex_schema   varchar2(255)   := null;
begin

    l_cdb_root := sys_context('USERENV','CON_NAME');

    select cdb into l_cdb from v$database;

    if l_cdb_root = 'CDB$ROOT' then
        l_cdb_root := 'YES';
    else
        l_cdb_root := 'NO';
    end if;

    --
    -- Bug 33643243 We cannot rely on APEX component being in the DBTOOLS namespace
    -- for versions prior to 21.2
    --
    for c1 in (select schema
                 from sys.dba_registry
                where comp_id = 'APEX' )
    loop
        l_apex_schema := c1.schema;
    end loop;

    if l_apex_schema is not null then
        select min(sharing) into l_install_type
          from sys.dba_objects
         where object_type = 'PACKAGE'
           and owner = l_apex_schema
           and object_name = 'WWV_FLOW'
           and rownum = 1;
    elsif l_cdb_root = 'YES' then --connected to CDB$ROOT, check if a PDB has local APEX
        for c1 in (select 1
                     from cdb_objects a, cdb_registry b
                    where a.sharing = 'NONE'
                      and b.con_id = a.con_id
                      and b.schema = a.owner
                      and b.comp_id = 'APEX'
                      and a.object_type = 'PACKAGE'
                      and a.object_name = 'WWV_FLOW'
                      and a.con_id > 1 )
        loop
            l_apex_in_pdb := 'YES';
            exit;
        end loop;
    end if;

    :cdb            := l_cdb;
    :cdb_root       := l_cdb_root;
    :meta_link      := l_install_type;

    if l_cdb_root = 'YES' and l_apex_in_pdb = 'YES' then
        dbms_output.put_line('Error: Application Express is installed locally in a PDB and you are connected to CDB$ROOT.');
        dbms_output.put_line('Resolution: Connect directly to the PDB to upgrade or configure Application Express.');
        execute immediate 'bogus statement to force exit';
    end if;

end;
/

whenever sqlerror continue

select :cdb from sys.dual;
select :cdb_root from sys.dual;
select :meta_link from sys.dual;
