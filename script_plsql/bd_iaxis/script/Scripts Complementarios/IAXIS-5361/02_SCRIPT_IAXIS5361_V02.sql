/* Formatted on 21/05/2020 17:30*/
/* **************************** 21/05/2020 17:30 **********************************************************************
Versión           Descripción
01.               -Este script agrega a los literales necesarios para la configuración del error: 
                   "No puede fijarse un importe de facultativo manual menor al calculado por la aplicación".
IAXIS-5361         21/05/2020 Daniel Rodríguez
***********************************************************************************************************************/
--
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89908058;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89908058;
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89908058,6);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89908058, 'No pot fixar-se un import de facultatiu manual menor a lcalculat per laplicació.');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89908058, 'No puede fijarse un importe de facultativo manual menor al calculado por la aplicación.');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89908058, 'No puede fijarse un importe de facultativo manual menor al calculado por la aplicación.');
--
COMMIT;
--
/
