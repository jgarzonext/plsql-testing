/* Formatted on 11/07/2019 08:54 PM IST */
/***************************** 11/07/2019 08:54 PM IST ****************************************************************
Versión         Descripción
01              - Amparos y Tarifación pólizas RC Derivado de Contratos y RC General
					Cambios en configuracion en ambiente de SIT.
IAXIS-4200      11/07/2019 Pranay Khobragade
**********************************************************************************************************************/

SET SERVEROUTPUT on;
BEGIN

--Updation for Moneda
Update CFG_FORM_PROPERTY set CVALUE = 1 where CITEM = 'CMONCAP' and CFORM = 'AXISCTR207' and CIDCFG = 803801;
UPDATE cfg_form_property SET CVALUE = 1 WHERE CFORM = 'AXISCTR207' and CITEM = 'CMONCAP' and CIDCFG IN (806201, 806301, 806401);

--Updation for prima calculation correction
UPDATE sgt_formulas SET FORMULA = '((CAPITAL*TASA)/365*(TO_DATE(FFINVIG,"YYYYMMDD")-TO_DATE(FINIVIG,"YYYYMMDD")-1))' WHERE clave = 248023;



COMMIT;

EXCEPTION
   WHEN OTHERS THEN
	dbms_output.put_line('ERROR OCCURED--> ' || SQLERRM);
    dbms_output.put_line('ERROR OCCURED--> ' || DBMS_UTILITY.format_error_backtrace);
    rollback;
END;
/