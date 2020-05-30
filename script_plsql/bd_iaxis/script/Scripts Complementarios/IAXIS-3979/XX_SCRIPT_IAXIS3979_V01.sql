/* Formatted on 27/08/2019 18:00*/
/* **************************** 27/08/2019 18:00 **********************************************************************
Versi�n           Descripci�n
01.               -Se desactivan primas m�nimas en endosos para verificar tarifaci�n de endosos
IAXIS-3979        27/08/2019 Daniel Rodr�guez
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

