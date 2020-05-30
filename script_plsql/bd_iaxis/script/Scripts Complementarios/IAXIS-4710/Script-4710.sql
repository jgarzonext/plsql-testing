CREATE OR REPLACE PROCEDURE P_GENERA_SCENARIO_INFO_CUENTAS IS
  vpasexec NUMBER(8) := 1;
  vobject  VARCHAR2(200) := 'P_GENERA_SCENARIO_INFO_CUENTAS';
  v_cnt    number;
BEGIN
  vpasexec := 2;
  PAC_CONTA_SAP.Genera_codescenario;
  vpasexec := 3;
  PAC_CONTA_SAP.Genera_info_cuentas;
  vpasexec := 4;
EXCEPTION
  WHEN OTHERS THEN
    p_tab_error(f_sysdate,
                f_user,
                'P_GENERA_SCENARIO_INFO_CUENTAS',
                vpasexec,
                SQLCODE,
                SQLERRM);
END;
/


BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
            job_name => '"AXIS"."JOB_GENERA_CONTABLE"',
            job_type => 'STORED_PROCEDURE',
            job_action => 'AXIS.P_GENERA_SCENARIO_INFO_CUENTAS',
            number_of_arguments => 0,
            start_date => TO_TIMESTAMP_TZ('2019-07-26 15:37:40.000000000 AMERICA/BOGOTA','YYYY-MM-DD HH24:MI:SS.FF TZR'),
            repeat_interval => 'FREQ=MINUTELY;INTERVAL=5;BYDAY=MON,TUE,WED,THU,FRI,SAT,SUN',
            end_date => NULL,
            enabled => FALSE,
            auto_drop => FALSE,
            comments => 'JOB PARA LLAMAR INTERFACE I031 GENERAR CONTABILIDAD');
             
    DBMS_SCHEDULER.SET_ATTRIBUTE( 
             name => '"AXIS"."JOB_GENERA_CONTABLE"', 
             attribute => 'store_output', value => TRUE);
    DBMS_SCHEDULER.SET_ATTRIBUTE( 
             name => '"AXIS"."JOB_GENERA_CONTABLE"', 
             attribute => 'logging_level', value => DBMS_SCHEDULER.LOGGING_OFF);
              
    DBMS_SCHEDULER.enable(
             name => '"AXIS"."JOB_GENERA_CONTABLE"');
END;  
/
