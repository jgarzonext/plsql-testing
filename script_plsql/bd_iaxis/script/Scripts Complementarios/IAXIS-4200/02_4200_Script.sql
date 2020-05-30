/* Formatted on 13/07/2019 04:34 AM IST */
/***************************** 13/07/2019 04:34 AM IST ****************************************************************
Versión         Descripción
01              - Amparos y Tarifación pólizas RC Derivado de Contratos y RC General
					Cambios en configuracion en ambiente de SIT.
IAXIS-4200      13/07/2019 Pranay Khobragade
**********************************************************************************************************************/

SET SERVEROUTPUT on;
BEGIN

--Updation for prima calculation correction
UPDATE sgt_formulas SET FORMULA = '((CAPITAL*TASA)/365*(TO_DATE(FFINVIG,"YYYYMMDD")-TO_DATE(FINIVIG,"YYYYMMDD")-1))' WHERE clave = 248023;

--Insertion for RC products
Insert into DETVALORES_DEP (CEMPRES,CVALOR,CATRIBU,CVALORDEP,CATRIBUDEP) values (24,8063,1,1104,0);
Insert into DETVALORES_DEP (CEMPRES,CVALOR,CATRIBU,CVALORDEP,CATRIBUDEP) values (24,8063,1,1104,1);
Insert into DETVALORES_DEP (CEMPRES,CVALOR,CATRIBU,CVALORDEP,CATRIBUDEP) values (24,8062,1,1104,0);
Insert into DETVALORES_DEP (CEMPRES,CVALOR,CATRIBU,CVALORDEP,CATRIBUDEP) values (24,8062,1,1104,1);
Insert into DETVALORES_DEP (CEMPRES,CVALOR,CATRIBU,CVALORDEP,CATRIBUDEP) values (24,8064,1,1104,0);
Insert into DETVALORES_DEP (CEMPRES,CVALOR,CATRIBU,CVALORDEP,CATRIBUDEP) values (24,8064,1,1104,1);

COMMIT;

EXCEPTION
   WHEN OTHERS THEN
	dbms_output.put_line('ERROR OCCURED--> ' || SQLERRM);
    dbms_output.put_line('ERROR OCCURED--> ' || DBMS_UTILITY.format_error_backtrace);
    rollback;
END;
/