/* Formatted on 15/01/2020 12:30*/
/* **************************** 15/01/2020 12:30 **********************************************************************
Versión           Descripción
01.               - Se actualiza el parámetro ANUL_EXTORN_REC_PEND para los productos de RC Médica y RC Clínica a fin de no 
                    extornar los recibos pendintes.
IAXIS-10553        15/01/2020 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
UPDATE parproductos p
   SET p.cvalpar = 0
 WHERE p.cparpro = 'ANUL_EXTORN_REC_PEND'
   AND p.sproduc IN (8062, 8063);
--
COMMIT;
--
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURRED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURRED-->'||DBMS_UTILITY.format_error_backtrace);
     ROLLBACK;
End;
/


