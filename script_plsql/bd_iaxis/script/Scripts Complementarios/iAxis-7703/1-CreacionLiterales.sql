--Cartera Produccion Delima
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89908054;

DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89908054;

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89908054,2);

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89908054, 'Cartera Produccion Delima');

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89908054, 'Cartera Produccion Delima');

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89908054, 'Cartera Produccion Delima'); 

COMMIT;