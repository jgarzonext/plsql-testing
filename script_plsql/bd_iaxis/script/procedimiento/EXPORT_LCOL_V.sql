--------------------------------------------------------
--  DDL for Procedure EXPORT_LCOL_V
--------------------------------------------------------
set define off;

  CREATE OR REPLACE EDITIONABLE PROCEDURE "AXIS"."EXPORT_LCOL_V" 



IS
  l_schema         VARCHAR2(30) := sys_context('USERENV', 'CURRENT_SCHEMA');
  l_dp_handle      NUMBER;
BEGIN
  l_dp_handle := dbms_datapump.open
    ( operation=>'EXPORT'
    , job_mode => 'SCHEMA'
    , remote_link =>NULL
    , job_name => 'EMP_EXPORT'
    , version => 'LATEST'
    );
    --
  dbms_datapump.add_file
    (handle => l_dp_handle
    , filename =>l_schema||'_'||to_char(sysdate,'yyyymmddhh24miss')||'.dmp'
    , directory => 'DATA_PUMP_DIR'
    );

  dbms_datapump.metadata_filter
    (handle => l_dp_handle
    , name => 'SCHEMA_EXPR'
    , value => '='''||l_schema||''''
    );
  dbms_datapump.start_job(l_dp_handle);
  dbms_datapump.detach(l_dp_handle);
END; 

/

  GRANT EXECUTE ON "AXIS"."EXPORT_LCOL_V" TO "R_AXIS";
  GRANT EXECUTE ON "AXIS"."EXPORT_LCOL_V" TO "CONF_DWH";
  GRANT EXECUTE ON "AXIS"."EXPORT_LCOL_V" TO "PROGRAMADORESCSI";
