--SGM BUG 3324 - SGM Interacci�n del Rango DIAN con la p�liza (No. Certificado)
--1-SE ELIMINA TRIGGER
DROP TRIGGER bi_movseguro;
--2-SE CREA LITERAL
DELETE FROM axis_literales WHERE SLITERA = 89906252;
DELETE FROM axis_codliterales WHERE SLITERA = 89906252;

INSERT INTO axis_codliterales VALUES (89906252,6);

INSERT INTO axis_literales VALUES (1,89906252,'producte i/o agent no parametritzats o resoluci� no vigent');
INSERT INTO axis_literales VALUES (2,89906252,'producto y/o agente no parametrizados o resoluci�n no vigente');
INSERT INTO axis_literales VALUES (8,89906252,'producto y/o agente no parametrizados o resoluci�n no vigente');

--3-SE CREA LITERAL 
DELETE FROM axis_literales WHERE SLITERA = 89906258;
DELETE FROM axis_codliterales WHERE SLITERA = 89906258;


INSERT INTO axis_codliterales VALUES (89906258,2);

INSERT INTO axis_literales VALUES (1,89906258,'Cert. DIAN');
INSERT INTO axis_literales VALUES (2,89906258,'Cert. DIAN');
INSERT INTO axis_literales VALUES (8,89906258,'Cert. DIAN');

--4-SE CREA LITERAL 
DELETE FROM axis_literales WHERE SLITERA = 89906259;
DELETE FROM axis_codliterales WHERE SLITERA = 89906259;

INSERT INTO axis_codliterales VALUES (89906259,6);

INSERT INTO axis_literales VALUES (1,89906259,'producte i activitat no configurats');
INSERT INTO axis_literales VALUES (2,89906259,'producto y actividad no configurados');
INSERT INTO axis_literales VALUES (8,89906259,'producto y actividad no configurados');