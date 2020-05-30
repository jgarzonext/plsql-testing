/* *******************************************************************************************************************
Versión	Descripción
ACL
01.		Este script inserta en las tabla prod_plant_cab.          
********************************************************************************************************************** */
DELETE FROM prod_plant_cab
WHERE CTIPO = 13
AND CCODPLAN IN ('CONF800101', 'CONF800104');

insert into prod_plant_cab (sproduc, ctipo, ccodplan, imp_dest, fdesde, cduplica, cusualt, falta)
values (80001, 13, 'CONF800101', 1, TO_DATE('01012016','DDMMYYYY'), 0, 'AXIS', TO_DATE('29112017','DDMMYYYY'));

insert into prod_plant_cab (sproduc, ctipo, ccodplan, imp_dest, fdesde, cduplica, cusualt, falta)
values (80002, 13, 'CONF800101', 1, TO_DATE('01012016','DDMMYYYY'), 0, 'AXIS', TO_DATE('29112017','DDMMYYYY'));

insert into prod_plant_cab (sproduc, ctipo, ccodplan, imp_dest, fdesde, cduplica, cusualt, falta)
values (80003, 13, 'CONF800101', 1, TO_DATE('01012016','DDMMYYYY'), 0, 'AXIS', TO_DATE('29112017','DDMMYYYY'));

insert into prod_plant_cab (sproduc, ctipo, ccodplan, imp_dest, fdesde, cduplica, cusualt, falta)
values (80004, 13, 'CONF800101', 1, TO_DATE('01012016','DDMMYYYY'), 0, 'AXIS', TO_DATE('29112017','DDMMYYYY'));

insert into prod_plant_cab (sproduc, ctipo, ccodplan, imp_dest, fdesde, cduplica, cusualt, falta)
values (80005, 13, 'CONF800101', 1, TO_DATE('01012016','DDMMYYYY'), 0, 'AXIS', TO_DATE('29112017','DDMMYYYY'));

insert into prod_plant_cab (sproduc, ctipo, ccodplan, imp_dest, fdesde, cduplica, cusualt, falta)
values (80006, 13, 'CONF800101', 1, TO_DATE('01012016','DDMMYYYY'), 0, 'AXIS', TO_DATE('29112017','DDMMYYYY'));

insert into prod_plant_cab (sproduc, ctipo, ccodplan, imp_dest, fdesde, cduplica, cusualt, falta)
values (80007, 13, 'CONF800104', 1, TO_DATE('01012016','DDMMYYYY'), 0, 'AXIS', TO_DATE('29112017','DDMMYYYY'));

insert into prod_plant_cab (sproduc, ctipo, ccodplan, imp_dest, fdesde, cduplica, cusualt, falta)
values (80008, 13, 'CONF800104', 1, TO_DATE('01012016','DDMMYYYY'), 0, 'AXIS', TO_DATE('29112017','DDMMYYYY'));

insert into prod_plant_cab (sproduc, ctipo, ccodplan, imp_dest, fdesde, cduplica, cusualt, falta)
values (80009, 13, 'CONF800101', 1, TO_DATE('01012016','DDMMYYYY'), 0, 'AXIS', TO_DATE('29112017','DDMMYYYY'));

insert into prod_plant_cab (sproduc, ctipo, ccodplan, imp_dest, fdesde, cduplica, cusualt, falta)
values (80010, 13, 'CONF800101', 1, TO_DATE('01012016','DDMMYYYY'), 0, 'AXIS', TO_DATE('29112017','DDMMYYYY'));

insert into prod_plant_cab (sproduc, ctipo, ccodplan, imp_dest, fdesde, cduplica, cusualt, falta)
values (80011, 13, 'CONF800101', 1, TO_DATE('01012016','DDMMYYYY'), 0, 'AXIS', TO_DATE('29112017','DDMMYYYY'));
commit;
/
