DELETE FROM AXIS_LITERALES WHERE SLITERA = 89907026;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89907026;
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89907026,2);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89907026, 'Cargue masivo ULAE');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89907026, 'Cargue masivo ULAE');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89907026, 'Cargue masivo ULAE');

DELETE FROM AXIS_LITERALES WHERE SLITERA = 89907027;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89907027;
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89907027,2);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89907027, 'Valor reserva ULAE');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89907027, 'Valor reserva ULAE');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89907027, 'Valor reserva ULAE');

DELETE FROM AXIS_LITERALES WHERE SLITERA = 89907028;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89907028;
INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89907028,3);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89907028, 'Executar ULAE');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89907028, 'Executar ULAE');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89907028, 'Executar ULAE');

COMMIT;