-- LITERAL 9908461
DELETE FROM AXIS_LITERALES WHERE SLITERA = 9908461;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 9908461 AND CLITERA = 3;
INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (9908461,3);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 9908461, 'No es permet el valor del nou percentatge doncs causa que es passi del total per a la garantia');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 9908461, 'No se permite el valor del nuevo porcentaje pues causa que se pase del total para la garantia');
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (8,9908461,'No se permite el valor del nuevo porcentaje pues causa que se pase del total para la garantia');

-- LITERAL 9908462
DELETE FROM AXIS_LITERALES WHERE SLITERA = 9908462;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 9908462 AND CLITERA = 3;
INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (9908462,3);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1,9908462, 'No es permet valor d import doncs causa que es passi del total real per l impor');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2,9908462, 'No se permite valor de importe pues causa que se pase del total real para el importe');
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (8,9908462,'No se permite valor de importe pues causa que se pase del total real para el importe');

-- LITERAL 9908463
DELETE FROM AXIS_LITERALES WHERE SLITERA = 9908463;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 9908463 AND CLITERA = 3;
INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (9908463,3);
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1,9908463, 'No es permet valor de cesion doncs causa que es passi del total real per a la cesion');
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2,9908463, 'No se permite valor de cesion pues causa que se pase del total real para la cesion');
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (8,9908463,'No se permite valor de cesion pues causa que se pase del total real para la cesion');
/
COMMIT;