/* Formatted on 18/06/2019 */
/***************************** 18/06/2019 10:25 PM IST ****************************************************************
Versión         Descripción
01              -Mostrar el valor de coaseguro hasta 4 decimales.
IAXIS-4202       18/06/2019 Harshita Bhargava
**********************************************************************************************************************/

SET SERVEROUTPUT on;
BEGIN

ALTER TABLE COACUADRO
MODIFY PLOCCOA NUMBER(9,5);

COMMIT;


END;
/