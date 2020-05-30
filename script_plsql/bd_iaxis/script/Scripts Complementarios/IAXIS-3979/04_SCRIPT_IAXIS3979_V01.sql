/* Formatted on 13/08/2019 17:00*/
/* **************************** 13/08/2019 17:00 **********************************************************************
Versi�n           Descripci�n
01.               -Se actualiza la f�rmula para primas m�nimas a partir de cambios realizados para la tarea IAXIS-4985
02.               -Se incluyen los par�metros 'CAGENTE' y 'SPRODUC' para la nueva f�rmula
03.               -Se incluye el par�metro 'CACTIVI' para la nueva f�rmula
                  -Se actualiza la f�rmula
IAXIS-3979        13/08/2019 Daniel Rodr�guez
***********************************************************************************************************************/
BEGIN
--
DELETE FROM sgt_trans_formula WHERE clave = 750058 AND parametro IN ('CAGENTE','SPRODUC','CACTIVI');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (750058, 'CAGENTE');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (750058, 'SPRODUC');
--
INSERT INTO sgt_trans_formula (CLAVE, PARAMETRO)
VALUES (750058, 'CACTIVI');
--
UPDATE sgt_formulas
   SET formula = 'CASE WHEN PRIMAREC*(1+DTOCOM/100) >(pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE))
     THEN PRIMAREC*(1+DTOCOM/100)
     ELSE (pac_isqlfor_conf.f_get_prima_minima(24, CAGENTE, SPRODUC, CACTIVI, SYSDATE)) END'
 WHERE clave = 750058;
--
COMMIT;
--
EXCEPTION
   WHEN OTHERS THEN
     dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     rollback;
End;
/
