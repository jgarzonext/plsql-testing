-- LITERAL 89906312
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906312;
/
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906312 AND CLITERA = 3;
/
INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (89906312, 3);
/
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89906312, 'El pagament del sinistre no es troba en estat pagat');
/
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89906312, 'El pago del siniestro no se encuentra en estado pagado');
/
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (8, 89906312,'El pago del siniestro no se encuentra en estado pagado');
/

-- LITERAL 89906313
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906313;
/
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906313 AND CLITERA = 3;
/
INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) VALUES (89906313, 3);
/
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89906313, 'El sinistre no té pagaments registrats');
/
INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89906313, 'El siniestro no tiene pagos registrados');
/
INSERT INTO AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) VALUES (8, 89906313,'El siniestro no tiene pagos registrados');
/
COMMIT;
/
