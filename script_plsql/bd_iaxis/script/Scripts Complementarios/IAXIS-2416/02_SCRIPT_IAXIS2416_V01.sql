/* Formatted on 27/02/2019 11:00*/
/* **************************** 27/02/2019 11:00 **********************************************************************
Versión           Descripción
01.               -Este script actualiza el literal "La Actividad-Producto seleccionada no aplica convenios verifique comisión o pregunta".
                   a "Verificar la pregunta 2913 --> Convenio grandes beneficiarios. Debe corresponder con el Agente y Asegurado seleccionados"
TCS-140            27/02/2019 Daniel Rodríguez
***********************************************************************************************************************/
-- El domicilio del agente debe corresponder a la ciudad del Gestor
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906045;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906045;
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89906045,3);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89906045, 'Verificar la pregunta 2913 -> Conveni grans beneficiaris. Ha de correspondre amb lagent i assegurat seleccionats');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89906045, 'Verificar la pregunta 2913 --> Convenio grandes beneficiarios. Debe corresponder con el Agente y Asegurado seleccionados');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89906045, 'Verificar la pregunta 2913 --> Convenio grandes beneficiarios. Debe corresponder con el Agente y Asegurado seleccionados');
--
COMMIT;
