/* Formatted on 02/01/2019 11:00*/
/* **************************** 02/01/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Creacion del literal Informacion Financiera 
IAXIS-2036        01/03/2019 Angelo Benavides 
***********************************************************************************************************************/
--
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906231;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906231;
--
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89906231,6);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89906231, 'Ja existeix informació financera per al període ingressat');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89906231, 'Ya existe información financiera para el periodo ingresado');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89906231, 'Ya existe información financiera para el periodo ingresado');
--
COMMIT;