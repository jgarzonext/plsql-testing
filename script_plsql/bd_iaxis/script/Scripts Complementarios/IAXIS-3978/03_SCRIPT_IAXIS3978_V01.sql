/* Formatted on 16/08/2019 13:00*/
/* **************************** 16/08/2019 13:00 **********************************************************************
Versión           Descripción
01.               -Se remueve en su totalidad la configuración de Gastos de Expedición en todos los productos del ramo de 
                   Responsabilidad Civil Extracontractual. 
IAXIS-3978        16/08/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
-- Se eliminan los conceptos de Gatos de Expedición e IVA de Gastos de Expedición de la tabla imprec para el ramo de 
-- RCE.
--
DELETE FROM imprec i WHERE i.cconcep IN (14, 86) AND i.cramo = 802;
--
-- Se quitan los Derechos de Registro (Gastos de Expedición) de todas las coberturas del ramo de RCE en la tabla garanpro.
--
UPDATE garanpro g SET g.cderreg = 0 WHERE g.cramo = 802;
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

