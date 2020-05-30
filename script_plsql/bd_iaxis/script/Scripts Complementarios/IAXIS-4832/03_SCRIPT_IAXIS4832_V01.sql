/* Formatted on 04/09/2019 17:30*/
/* **************************** 04/09/2019 17:30 **********************************************************************
Versión           Descripción
01.               - Se actualiza la nomenclatura de "Autopista" AUTOP a AUT de acuerdo a la nomenclatura DIAN.
IAXIS-4832        04/09/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
UPDATE tipos_via t SET t.tsiglas = 'AUT' WHERE t.csiglas = 6;
--
COMMIT;
--
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     ROLLBACK;
End;
/
