/* Formatted on 30/07/2019 03:20 PM IST */
/***************************** 30/07/2019 03:20 PM IST ****************************************************************
Versión         Descripción
01              - Campo Patrimonio liquido
					Se debe realizar visualizacion de los campos de observaciones y recobro en pesos en los detalles de recobros con la informacion adecuada.
IAXIS-4945        30/07/2019 Pranay Khobragade
**********************************************************************************************************************/

SET SERVEROUTPUT on;
BEGIN

--update existing order
UPDATE CODPARAM SET NORDEN = 27 WHERE CPARAM = 'RESV_LEGAL' AND NORDEN = 26;
UPDATE CODPARAM SET NORDEN = 28 WHERE CPARAM = 'CAP_SOCIAL' AND NORDEN = 27;
UPDATE CODPARAM SET NORDEN = 29 WHERE CPARAM = 'RES_EJER_ANT' AND NORDEN = 28;
UPDATE CODPARAM SET NORDEN = 30 WHERE CPARAM = 'PRIMA_ACCION' AND NORDEN = 29;
UPDATE CODPARAM SET NORDEN = 31 WHERE CPARAM = 'RESV_OCASI' AND NORDEN = 30;
UPDATE CODPARAM SET NORDEN = 32 WHERE CPARAM = 'VALORIZA' AND NORDEN = 31;
UPDATE CODPARAM SET NORDEN = 33 WHERE CPARAM = 'ASIGNADO' AND NORDEN = 32;

--insert new field configuration
Insert into CODPARAM (CPARAM,CUTILI,CTIPO,CGRPPAR,NORDEN,COBLIGA,TDEFECTO,CVISIBLE) values ('PATRI_LIQUIDO',11,2,'GEN',26,0,null,1);

--insert new field 'Patrimonio Líquido' to be created
Insert into DESPARAM (CPARAM,CIDIOMA,TPARAM) values ('PATRI_LIQUIDO',1,'Patrimonio Líquido');
Insert into DESPARAM (CPARAM,CIDIOMA,TPARAM) values ('PATRI_LIQUIDO',2,'Patrimonio Líquido');
Insert into DESPARAM (CPARAM,CIDIOMA,TPARAM) values ('PATRI_LIQUIDO',8,'Patrimonio Líquido');

--insert new field configuration
Insert into CODPARAM_PER (CPARAM,CVISIBLE,CTIPPER) values ('PATRI_LIQUIDO',0,0);

--for error code
Insert into axis_codliterales (SLITERA, CLITERA) values (89906345, 3);

Insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (1, 89906345, 'Patrimonio Líquido debe ser igual a Reserva legal + Capital social + Resultado ejercicios anteriores + Prima en colocación de acciones + Reservas ocasionales + Inversión suplementaria');
Insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (2, 89906345, 'Patrimonio Líquido debe ser igual a Reserva legal + Capital social + Resultado ejercicios anteriores + Prima en colocación de acciones + Reservas ocasionales + Inversión suplementaria');
Insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (8, 89906345, 'Patrimonio Líquido debe ser igual a Reserva legal + Capital social + Resultado ejercicios anteriores + Prima en colocación de acciones + Reservas ocasionales + Inversión suplementaria');


COMMIT;

EXCEPTION
   WHEN OTHERS THEN
	dbms_output.put_line('ERROR OCCURED--> ' || SQLERRM);
    dbms_output.put_line('ERROR OCCURED--> ' || DBMS_UTILITY.format_error_backtrace);
    ROLLBACK;
END;
/
