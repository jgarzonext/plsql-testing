/* Formatted on 01/07/2019 02:52 AM IST */
/***************************** 01/07/2019 02:52 AM IST ****************************************************************
Versión         Descripción
01              - Visualizacion de Recobros para campos de observaciones y recobro en pesos
					Se debe realizar visualizacion de los campos de observaciones y recobro en pesos en los detalles de recobros con la informacion adecuada.
IAXIS-4663        01/07/2019 Pranay Khobragade
**********************************************************************************************************************/

SET SERVEROUTPUT on;
BEGIN

--For the title of ISINRETPAG to show in recovery details table.
insert into axis_codliterales (SLITERA, CLITERA) values (89906337, 3);

insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (1, 89906337, 'Importe Moneda Pago');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (2, 89906337, 'Importe Moneda Pago');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (8, 89906337, 'Importe Moneda Pago');

COMMIT;

EXCEPTION
   WHEN OTHERS THEN
	dbms_output.put_line('ERROR OCCURED--> ' || SQLERRM);
    dbms_output.put_line('ERROR OCCURED--> ' || DBMS_UTILITY.format_error_backtrace);
    ROLLBACK;
END;
/