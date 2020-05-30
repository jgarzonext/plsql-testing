/* Formatted on 18/06/2019 */
/* **************************** 18/06/2019  **********************************************************************
Versión           Descripción
01.               -Insert required  to configure  the new AXIS_LITERALES for Beneficiario añadido and Beneficiario anulado
                   (Gastos de expedicion en polizas).
IAXIS-4920        18/06/2019 Rohit Lokhande
********************************************************************************************************************* */

SET SERVEROUTPUT on;
BEGIN

Insert into AXIS_CODLITERALES (SLITERA,CLITERA) values (89906328,2);
Insert into AXIS_CODLITERALES (SLITERA,CLITERA) values (89906329,2);

Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (8,89906328,'Beneficiario añadido');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (2,89906328,'Beneficiario añadido');

Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (8,89906329,'Beneficiario anulado');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (2,89906329,'Beneficiario anulado');

Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (1,89906329,'Beneficiario anulado');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values (1,89906328,'Beneficiario añadido');

COMMIT;
EXCEPTION
   WHEN OTHERS THEN
   dbms_output.put_line('ERROR OCCURED-->'||SQLERRM);
     dbms_output.put_line('ERROR OCCURED-->'||DBMS_UTILITY.format_error_backtrace);
     rollback;
End;
/
