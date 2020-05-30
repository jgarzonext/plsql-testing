/* Permite realizar la toración de las tablas de TAB_ERROR_DNN (Diarias) y TAB_ERROR_MNN (Mensuales)
   eliminando las anteriores y creando las nuevas
   1.0  JLTS 26/06/2019 */
-- Se borra
DECLARE
  job_doesnt_exist EXCEPTION;
  PRAGMA EXCEPTION_INIT(job_doesnt_exist, -27475);
BEGIN
  dbms_scheduler.drop_job(job_name => '"TABLAS_ERRORES_ROTATE"');
EXCEPTION
  WHEN job_doesnt_exist THEN
    NULL;
END;
/
-- Se crea
BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
            job_name => '"TABLAS_ERRORES_ROTATE"',
            job_type => 'STORED_PROCEDURE',
            job_action => 'P_TAB_ERROR_ROTATE',
            number_of_arguments => 0,
            start_date => TO_TIMESTAMP_TZ('2019-06-26 10:39:24.000000000 AMERICA/BOGOTA','YYYY-MM-DD HH24:MI:SS.FF TZR'),
            repeat_interval => 'FREQ=DAILY;BYTIME=030000;BYDAY=MON,TUE,WED,THU,FRI,SAT',
            end_date => NULL,
            enabled => FALSE,
            auto_drop => FALSE,
            comments => 'ROTACION DE LAS TABLAS DE ERRORES');
    DBMS_SCHEDULER.SET_ATTRIBUTE( 
             name => '"TABLAS_ERRORES_ROTATE"', 
             attribute => 'store_output', value => TRUE);
    DBMS_SCHEDULER.SET_ATTRIBUTE( 
             name => '"TABLAS_ERRORES_ROTATE"', 
             attribute => 'logging_level', value => DBMS_SCHEDULER.LOGGING_OFF);
    DBMS_SCHEDULER.enable(
             name => '"TABLAS_ERRORES_ROTATE"');
END;
/
