/***********************************************************************************************************************
Versión           Descripción
01.               -Creacion del literal Informacion Financiera
IAXIS-2036        01/03/2019 Angelo Benavides y 10/03/2019 Jorge Torres
***********************************************************************************************************************/
--
DELETE axis_literales a WHERE a.slitera in (2000088,2000089);

DELETE axis_codliterales a WHERE a.slitera in (2000088,2000089);

DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906237;

DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906237;
--
INSERT INTO axis_codliterales (slitera, clitera) VALUES (2000088, 3);
INSERT INTO axis_codliterales (slitera, clitera) VALUES (2000089, 3);
--
INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 2000088, 'Error borrando datos de la tabla FIN_GENERAL_DET');

INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 2000088, 'Error borrando datos de la tabla FIN_GENERAL_DET');

INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 2000088, 'Error borrando datos de la tabla FIN_GENERAL_DET');

INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (1, 2000089, 'Solo existe un movimiento, no se puede eliminar');

INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (2, 2000089, 'Solo existe un movimiento, no se puede eliminar');

INSERT INTO axis_literales (cidioma, slitera, tlitera) VALUES (8, 2000089, 'Solo existe un movimiento, no se puede eliminar');
--
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89906237,6);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89906237, 'Ja existeix informació general per al període ingressat');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89906237, 'Ya existe información general para el periodo ingresado');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89906237, 'Ya existe información general para el periodo ingresado');

