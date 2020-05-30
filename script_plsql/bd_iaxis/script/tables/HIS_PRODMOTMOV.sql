--------------------------------------------------------
--  DDL for Table HIS_PRODMOTMOV
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PRODMOTMOV" 
   (	"SPRODUC" NUMBER(22,0), 
	"CMOTMOV" NUMBER(22,0), 
	"TFORMS" VARCHAR2(8 BYTE), 
	"NORDEN" NUMBER(22,0), 
	"TREPORT" VARCHAR2(20 BYTE), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_PRODMOTMOV"."SPRODUC" IS 'Clave del C�digo';
   COMMENT ON COLUMN "AXIS"."HIS_PRODMOTMOV"."CMOTMOV" IS 'C�digo del Motivo';
   COMMENT ON COLUMN "AXIS"."HIS_PRODMOTMOV"."TFORMS" IS 'Nombre Formulario a utilizar al hacer un suplemento';
   COMMENT ON COLUMN "AXIS"."HIS_PRODMOTMOV"."NORDEN" IS 'Numero de Orden de apareci�n en listas';
   COMMENT ON COLUMN "AXIS"."HIS_PRODMOTMOV"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODMOTMOV"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODMOTMOV"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODMOTMOV"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODMOTMOV"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PRODMOTMOV"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PRODMOTMOV"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_PRODMOTMOV"  IS 'Hist�rico de la tabla PRODMOTMOV';
  GRANT UPDATE ON "AXIS"."HIS_PRODMOTMOV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PRODMOTMOV" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PRODMOTMOV" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PRODMOTMOV" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PRODMOTMOV" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PRODMOTMOV" TO "PROGRAMADORESCSI";
