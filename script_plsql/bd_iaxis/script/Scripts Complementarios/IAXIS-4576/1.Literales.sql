-- LITERAL 89907031
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89907031;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89907031 AND CLITERA = 3;
INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (89907031, 3);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89907031, 'Si seleccioneu Certificat Residència fiscal, ha d ingressar una data valida d inici i fi');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89907031, 'Si selecciona Certificado Residencia Fiscal, debe ingresar una fecha valida de inicio y fin');
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (8, 89907031,'Si selecciona Certificado Residencia Fiscal, debe ingresar una fecha valida de inicio y fin');
/
COMMIT;
