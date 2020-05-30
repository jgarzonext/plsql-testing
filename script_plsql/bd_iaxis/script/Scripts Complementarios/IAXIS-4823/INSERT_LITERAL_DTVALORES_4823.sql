DELETE FROM AXIS_LITERALES WHERE SLITERA = 89908010;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89908010;
insert into axis_codliterales(SLITERA,CLITERA) VALUES (89908010,2);
insert into axis_literales(CIDIOMA,SLITERA,TLITERA) VALUES ('1',89908010,'Tipo de Reasegurador');
insert into axis_literales(CIDIOMA,SLITERA,TLITERA) VALUES ('2',89908010,'Tipo de Reasegurador');
insert into axis_literales(CIDIOMA,SLITERA,TLITERA) VALUES ('8',89908010,'Tipo de Reasegurador');


insert into detvalores(cvalor,cidioma,catribu,tatribu) VALUES ('8002025','8',0,'Exterior');
insert into detvalores(cvalor,cidioma,catribu,tatribu) VALUES ('8002025','8',1,'Interior');

alter table COMPANIAS  add CTIPREA NUMBER(2,0);
COMMENT ON COLUMN "COMPANIAS"."CTIPREA" IS 'Tipo de Reaegurador Interior o Exterior';
commit;