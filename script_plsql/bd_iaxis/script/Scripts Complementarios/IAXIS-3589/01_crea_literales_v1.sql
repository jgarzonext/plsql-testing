--SGM BUG 3589 - actualizar el saldo del recibo cuando presente abonos
BEGIN
--1-SE CREA LITERAL
DELETE FROM axis_literales WHERE SLITERA = 89906272;
DELETE FROM axis_codliterales WHERE SLITERA = 89906272;

INSERT INTO axis_codliterales VALUES (89906272,3);

INSERT INTO axis_literales VALUES (1,89906272,'Total abonaments');
INSERT INTO axis_literales VALUES (2,89906272,'Total abonos');
INSERT INTO axis_literales VALUES (8,89906272,'Total abonos');

--2-SE CREA LITERAL 
DELETE FROM axis_literales WHERE SLITERA = 89906273;
DELETE FROM axis_codliterales WHERE SLITERA = 89906273;


INSERT INTO axis_codliterales VALUES (89906273,3);

INSERT INTO axis_literales VALUES (1,89906273,'Saldo total del rebut');
INSERT INTO axis_literales VALUES (2,89906273,'Saldo total del recibo');
INSERT INTO axis_literales VALUES (8,89906273,'Saldo total del recibo');
COMMIT;
END;
/

