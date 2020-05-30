/* Formatted on 01/04/2019 16:59*/
/* **************************** 01/04/2019 16:59 **********************************************************************
Versión           Descripción
01.               -Este script agrega a los literales el mensaje "Documento Sarlaft duplicado correctamente. Su nuevo documento Sarlaft es: ..."
IAXIS-3287        01/04/2019 Daniel Rodríguez
***********************************************************************************************************************/
BEGIN
--
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906257;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906257;
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89906257,4);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89906257, 'Document Sarlaft duplicat correctament. El seu nou document Sarlaft és: ');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89906257, 'Documento Sarlaft duplicado correctamente. Su nuevo documento Sarlaft es: ');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89906257, 'Documento Sarlaft duplicado correctamente. Su nuevo documento Sarlaft es: ');
--
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906167;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906167;
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89906167,5);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89906167, 'La data de expedició ha de ser major o igual a 18 anys de la data de naixement');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89906167, 'La fecha de expedición debe ser mayor o igual a 18 años de la fecha de nacimiento.');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89906167, 'La fecha de expedición debe ser mayor o igual a 18 años de la fecha de nacimiento.');
--
COMMIT;
--
END;

/