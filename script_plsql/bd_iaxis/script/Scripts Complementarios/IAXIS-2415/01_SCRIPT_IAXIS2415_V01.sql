/* Formatted on 27/02/2019 11:00*/
/* **************************** 27/02/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Este script agrega el literal "El domicilio debe corresponder a la Ciudad del  Gestor".
TCS-18            27/02/2019 Daniel Rodríguez
***********************************************************************************************************************/
-- El domicilio del agente debe corresponder a la ciudad del Gestor
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906228;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906228;
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89906228,6);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89906228, 'El domicili de lagent ha de correspondre a la ciutat del Gestor');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89906228, 'El domicilio del agente debe corresponder a la ciudad del Gestor');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89906228, 'El domicilio del agente debe corresponder a la ciudad del Gestor');
--
COMMIT;
