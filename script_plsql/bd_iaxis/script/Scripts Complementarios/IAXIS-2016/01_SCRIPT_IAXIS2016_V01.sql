/* Formatted on 11/03/2019 11:00*/
/* **************************** 11/03/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Este script agrega el literal "Carga Scoring de canales" para su uso a través del tratamiento de 
                   ficheros.
IAXIS-2016         11/03/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906236;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906236;
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89906236,3);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89906236, 'Càrrega Scoring de canals');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89906236, 'Carga Scoring de canales');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89906236, 'Carga Scoring de canales');
--
COMMIT;

