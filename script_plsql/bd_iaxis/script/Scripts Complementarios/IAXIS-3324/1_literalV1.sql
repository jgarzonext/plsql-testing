--SGM BUG 3324 - SGM Interacci�n del Rango DIAN con la p�liza (No. Certificado)
--3-SE CREA LITERAL 
DELETE FROM axis_literales WHERE SLITERA = 89907051;
DELETE FROM axis_codliterales WHERE SLITERA = 89907051;


INSERT INTO axis_codliterales VALUES (89907051,2);

INSERT INTO axis_literales VALUES (1,89907051,'Certificado DIAN');
INSERT INTO axis_literales VALUES (2,89907051,'Certificado DIAN');
INSERT INTO axis_literales VALUES (8,89907051,'Certificado DIAN');