/* Formatted on 09/09/2019 10:00*/
/* **************************** 09/09/2019 10:00 **********************************************************************
Versión           Descripción
01.               -Se actualizan todos los porcentajes de gastos por defecto de las coaseguradoras actualmente 
                   configuradas.
IAXIS-5090        09/09/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
UPDATE companias c SET c.gastdef = 2 WHERE c.ctipcom = 2;
--
COMMIT;
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     rollback;
End;
/

