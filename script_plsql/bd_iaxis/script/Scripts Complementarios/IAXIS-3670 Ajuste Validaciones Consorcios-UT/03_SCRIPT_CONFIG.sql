/* Formatted on 07/07/2015 08:17 (Formatter Plus v4.8.8) - (CSI-Factory Standard Format v.2.0) */
BEGIN
DELETE CFG_FORM_PROPERTY WHERE CFORM = 'AXISPER025';
--
DELETE CFG_FORM_DEP WHERE CCFGDEP = 869;
--
DELETE AXIS_LITERALES WHERE SLITERA = 89906267;
DELETE AXIS_CODLITERALES where SLITERA = 89906267;
-----------
INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) values (89906267,3);
-----------
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values ('1',89906267,'La suma de porcentajes de participación de la agrupacion de consorcios debe ser del 100%');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values ('2',89906267,'La suma de porcentajes de participación de la agrupacion de consorcios debe ser del 100%');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values ('8',89906267,'La suma de porcentajes de participación de la agrupacion de consorcios debe ser del 100%');
-----------
DELETE AXIS_LITERALES WHERE SLITERA = 89906268;
DELETE AXIS_CODLITERALES where SLITERA = 89906268;
-----------
INSERT INTO AXIS_CODLITERALES (SLITERA,CLITERA) values (89906268,3);
-----------
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values ('1',89906268,'No se permite incluir un consorcio dentro de otro consorcio');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values ('2',89906268,'No se permite incluir un consorcio dentro de otro consorcio');
Insert into AXIS_LITERALES (CIDIOMA,SLITERA,TLITERA) values ('8',89906268,'No se permite incluir un consorcio dentro de otro consorcio');
-----------
COMMIT;
EXCEPTION WHEN OTHERS THEN
NULL;
END;
/