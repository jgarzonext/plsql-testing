--Validador cartera CANCEL sin CANCEL
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89908017;

DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89908017;

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89908017,2);

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89908017, 'Validador cartera CANCEL sense CANCEL');

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89908017, 'Validador cartera CANCEL sin CANCEL');

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89908017, 'Validador cartera CANCEL sin CANCEL'); 

COMMIT;