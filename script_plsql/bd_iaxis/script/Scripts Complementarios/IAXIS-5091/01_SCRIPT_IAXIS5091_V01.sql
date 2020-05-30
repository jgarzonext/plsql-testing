/* Formatted on 27/08/2019 11:00*/
/* **************************** 27/08/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Se permite la visualización de las preguntas de riesgo en la pantalla de consulta de póliza de todos los
                   productos. 
IAXIS-5091        27/08/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
UPDATE cfg_form_property c SET c.cvalue = 1 WHERE c.citem = 'DSP_PREGUNTAS_RIESGO';
--
COMMIT;
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     rollback;
End;
/

