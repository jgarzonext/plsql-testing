DELETE FROM AXIS_LITERALES WHERE SLITERA = 89907054;

DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89907054;

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89907054,2);

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89907054, 'Liquiación Reaseguro');

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89907054, 'Liquidación Reaseguro');

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89907054, 'Liquidación Reaseguro'); 


--Literal con instricciones para imprimir el reporte
DELETE FROM AXIS_LITERALES WHERE SLITERA = 89907055;

DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89907055;

INSERT INTO AXIS_CODLITERALES (SLITERA, CLITERA) VALUES (89907055,2);

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (1, 89907055, 'Per imprimir el seu document adreceu-vos a l'||CHR(39)||'opció Llançador de Reports, que es troba en el menu Informes; Seleccioneu l'||CHR(39)||'àrea de Reassegurances i el Llistat Liquidació Reaseguro, finalment Escrigui el No Procés:');

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (2, 89907055, 'Para imprimir su documento diríjase a la opción Lanzador de Reportes, que se encuentra en el menu Informes; Seleccione el área de Reaseguros y el Listado Liquidación Reaseguro,  por último digite el No Proceso: ');

INSERT INTO AXIS_LITERALES (CIDIOMA, SLITERA, TLITERA) VALUES (8, 89907055, 'Para imprimir su documento diríjase a la opción Lanzador de Reportes, que se encuentra en el menu Informes; Seleccione el área de Reaseguros y el Listado Liquidación Reaseguro,  por último digite el No Proceso: '); 

COMMIT;