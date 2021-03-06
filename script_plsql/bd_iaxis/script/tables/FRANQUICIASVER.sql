--------------------------------------------------------
--  DDL for Table FRANQUICIASVER
--------------------------------------------------------

  CREATE TABLE "AXIS"."FRANQUICIASVER" 
   (	"CFRANQ" NUMBER(6,0), 
	"NFRAVER" NUMBER(6,0), 
	"FFRAINI" DATE, 
	"FFRAFIN" DATE, 
	"FFRAACT" DATE, 
	"CESTADO" VARCHAR2(1 BYTE), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FBAJA" DATE, 
	"CUSUBAJ" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FRANQUICIASVER"."CFRANQ" IS 'Codigo de FRANQUICIAS';
   COMMENT ON COLUMN "AXIS"."FRANQUICIASVER"."NFRAVER" IS 'Numero de version de FRANQUICIAS';
   COMMENT ON COLUMN "AXIS"."FRANQUICIASVER"."FFRAINI" IS 'Fecha inicial de FRANQUICIAS';
   COMMENT ON COLUMN "AXIS"."FRANQUICIASVER"."FFRAFIN" IS 'Fecha final de FRANQUICIAS';
   COMMENT ON COLUMN "AXIS"."FRANQUICIASVER"."FFRAACT" IS 'Fecha activacion de FRANQUICIAS';
   COMMENT ON COLUMN "AXIS"."FRANQUICIASVER"."CESTADO" IS 'Codigo estado de FRANQUICIAS';
   COMMENT ON COLUMN "AXIS"."FRANQUICIASVER"."FALTA" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."FRANQUICIASVER"."CUSUALT" IS 'Usuario alta';
   COMMENT ON COLUMN "AXIS"."FRANQUICIASVER"."FBAJA" IS 'Fecha baja';
   COMMENT ON COLUMN "AXIS"."FRANQUICIASVER"."CUSUBAJ" IS 'Usuario baja';
   COMMENT ON TABLE "AXIS"."FRANQUICIASVER"  IS 'Tabla versiones de FRANQUICIAS';
  GRANT UPDATE ON "AXIS"."FRANQUICIASVER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FRANQUICIASVER" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FRANQUICIASVER" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FRANQUICIASVER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FRANQUICIASVER" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FRANQUICIASVER" TO "PROGRAMADORESCSI";
