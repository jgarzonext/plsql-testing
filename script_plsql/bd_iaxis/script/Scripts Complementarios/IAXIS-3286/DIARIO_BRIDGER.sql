BEGIN
    DBMS_SCHEDULER.CREATE_JOB (
            job_name => '"DIARIO_BRIDGER"',
            job_type => 'STORED_PROCEDURE',
            job_action => 'P_CARGARBRIDGER',
            number_of_arguments => 0,
            start_date => NULL,
            repeat_interval => 'FREQ=DAILY;BYTIME=080000,120000,160000;BYDAY=MON,TUE,WED,THU,FRI',
            end_date => NULL,
            enabled => FALSE,
            auto_drop => FALSE,
            comments => 'Este trabajo se ejecutará a las 8 AM, 12 PM y 4 PM y creará el archivo en \ interfaces \ axis path con el nombre de archivo ITC_IA_CMLOAAAAMMDD_HH_MM_SS');
              
 
    DBMS_SCHEDULER.SET_ATTRIBUTE( 
             name => '"DIARIO_BRIDGER"', 
             attribute => 'store_output', value => TRUE);
    DBMS_SCHEDULER.SET_ATTRIBUTE( 
             name => '"DIARIO_BRIDGER"', 
             attribute => 'logging_level', value => DBMS_SCHEDULER.LOGGING_OFF);
      
    
    DBMS_SCHEDULER.enable(
             name => '"DIARIO_BRIDGER"');
END;
/

grant execute on AXIS.DIARIO_BRIDGER to AXIS00; 
 

-- Utilizar para crear synonym
create or replace synonym AXIS.DIARIO_BRIDGER for AXIS00.DIARIO_BRIDGER;
