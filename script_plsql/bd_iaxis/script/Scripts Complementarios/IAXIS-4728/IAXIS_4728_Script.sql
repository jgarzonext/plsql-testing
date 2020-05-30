/* Formatted on 08/07/2019 11:31 PM IST */
/***************************** 08/07/2019 11:31 PM IST ****************************************************************
Versión         Descripción
01              - Registros Sección Régimen Fiscal Personas
					Cuando se cree un régimen fiscal se debe validar que la fecha de efecto debe ser igual o mayor al día en que se esta realizando el registro. Esta regla debe aplicar en la pantalla de creación y modificación de personas.
IAXIS-2728        08/07/2019 Pranay Khobragade
**********************************************************************************************************************/

SET SERVEROUTPUT on;
BEGIN

--For the Error message to be shown on the screen.
insert into axis_codliterales (SLITERA, CLITERA) values (89906343, 6);

insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (1, 89906343, 'Fecha de efecto inferior a la actual');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (2, 89906343, 'Fecha de efecto inferior a la actual');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (8, 89906343, 'Fecha de efecto inferior a la actual');

insert into axis_codliterales (SLITERA, CLITERA) values (89906344, 6);

insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (1, 89906344, 'Fecha no puede ser menor a la registrada en el sistema');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (2, 89906344, 'Fecha no puede ser menor a la registrada en el sistema');
insert into axis_literales (CIDIOMA,SLITERA, TLITERA) values (8, 89906344, 'Fecha no puede ser menor a la registrada en el sistema');

COMMIT;

EXCEPTION
   WHEN OTHERS THEN
	dbms_output.put_line('ERROR OCCURED--> ' || SQLERRM);
    dbms_output.put_line('ERROR OCCURED--> ' || DBMS_UTILITY.format_error_backtrace);
    ROLLBACK;
END;
/