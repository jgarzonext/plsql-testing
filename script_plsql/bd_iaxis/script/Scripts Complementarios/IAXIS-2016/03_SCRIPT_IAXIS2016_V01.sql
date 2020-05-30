/* Formatted on 15/03/2019 11:00*/
/* **************************** 15/03/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Este script agrega el literal "Reporte histórico de calificaciones por tomador" para su uso a través del 
                   lanzador de reportes.
IAXIS-2016         11/03/2019 Daniel Rodríguez
***********************************************************************************************************************/
--
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906090;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906090;
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89906090,3);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89906090, 'Informe històric de qualificacions per prenedor');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89906090, 'Reporte histórico de calificaciones por tomador');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89906090, 'Reporte histórico de calificaciones por tomador');
--
COMMIT;

