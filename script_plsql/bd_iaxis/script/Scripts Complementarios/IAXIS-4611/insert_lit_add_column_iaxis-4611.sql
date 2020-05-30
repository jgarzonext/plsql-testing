DELETE FROM AXIS_LITERALES WHERE SLITERA = 89906330;
DELETE FROM AXIS_CODLITERALES WHERE SLITERA = 89906330;
insert into axis_codliterales(SLITERA,CLITERA) VALUES (89906330,2);
insert into axis_literales(CIDIOMA,SLITERA,TLITERA) VALUES ('1',89906330,'Prioridad');
insert into axis_literales(CIDIOMA,SLITERA,TLITERA) VALUES ('2',89906330,'Prioridad');
insert into axis_literales(CIDIOMA,SLITERA,TLITERA) VALUES ('8',89906330,'Prioridad');
commit;

--Nuevo campo para la tabla TRAMOS para guardar la prioridad
alter table TRAMOS  add IPRIO NUMBER;
alter table MIG_TRAMOS ADD PIPRIO NUMBER;
alter table MIG_TRAMOS_BS ADD PPIPRIO NUMBER;

COMMENT ON COLUMN "AXIS"."TRAMOS"."IPRIO" IS 'Prioridad de la capa o del tramo';
COMMENT ON COLUMN "AXIS"."MIG_TRAMOS"."PIPRIO" IS 'Prioridad de la capa o del tramo';
COMMENT ON COLUMN "AXIS"."MIG_TRAMOS_BS"."PPIPRIO" IS 'Prioridad de la capa o del tramo';
COMMIT;

