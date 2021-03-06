--------------------------------------------------------
--  DDL for Table SGT_SUBTABS
--------------------------------------------------------

  CREATE TABLE "AXIS"."SGT_SUBTABS" 
   (	"CEMPRES" NUMBER(5,0), 
	"CSUBTABLA" NUMBER(9,0), 
	"FALTA" DATE, 
	"FBAJA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SGT_SUBTABS"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."SGT_SUBTABS"."CSUBTABLA" IS 'C�digo de subtabla';
   COMMENT ON COLUMN "AXIS"."SGT_SUBTABS"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."SGT_SUBTABS"."FBAJA" IS 'Fecha de baja';
   COMMENT ON COLUMN "AXIS"."SGT_SUBTABS"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."SGT_SUBTABS"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."SGT_SUBTABS"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON TABLE "AXIS"."SGT_SUBTABS"  IS 'Subtablas SGT';
  GRANT UPDATE ON "AXIS"."SGT_SUBTABS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SGT_SUBTABS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SGT_SUBTABS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SGT_SUBTABS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SGT_SUBTABS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SGT_SUBTABS" TO "PROGRAMADORESCSI";
