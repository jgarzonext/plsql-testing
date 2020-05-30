/* Formatted on 27/08/2019 18:00*/
/* **************************** 27/08/2019 18:00 **********************************************************************
Versión           Descripción
01.               -Se desactivan primas mínimas en endosos para verificar tarifación de endosos
IAXIS-3979        27/08/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
UPDATE parproductos p SET p.cvalpar = 0 WHERE p.cparpro = 'PRIMA_MINIMA_SUP';
--
COMMIT;
--
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURRED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURRED-->'||DBMS_UTILITY.format_error_backtrace);
     rollback;
End;
/

