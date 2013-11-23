--
-- Thorsten Bruhns (Thorsten.Bruhns@opitz-consulting.de)
-- $Id: dbms_metadata2.sql 260 2010-12-03 12:33:55Z tbr $
--
-- prints DDL from dbms_metadata for object with only 2 Parameters
--

prompt 1. Parameter : OBJECT_NAME
prompt 2. Parameter : OBJECT_TYPE
set long 10000000
set longchunksize 10000000
set lines 2000
set pages 0
set trimspool on
set heading off

begin
   DBMS_METADATA.SET_TRANSFORM_PARAM(DBMS_METADATA.SESSION_TRANSFORM,'STORAGE',false);
   DBMS_METADATA.SET_TRANSFORM_PARAM(DBMS_METADATA.SESSION_TRANSFORM,'SQLTERMINATOR',true);
end;
/

select dbms_metadata.get_ddl('&2', '&1')
  from dual;

set heading on
