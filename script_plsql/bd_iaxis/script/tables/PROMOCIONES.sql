--------------------------------------------------------
--  DDL for Table PROMOCIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."PROMOCIONES" 
   (	"CPROMOC" NUMBER(2,0), 
	"TPROMOC" VARCHAR2(60 BYTE), 
	"CIDIOMA" NUMBER(2,0), 
	"TDESCPRO" VARCHAR2(150 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PROMOCIONES"."CPROMOC" IS 'C�digo de Promoci�n';
   COMMENT ON COLUMN "AXIS"."PROMOCIONES"."TPROMOC" IS 'Descripci�n de la Promoci�n';
   COMMENT ON COLUMN "AXIS"."PROMOCIONES"."CIDIOMA" IS 'C�digo del idioma';
   COMMENT ON COLUMN "AXIS"."PROMOCIONES"."TDESCPRO" IS 'Descripci� llarga de la promoci�';
   COMMENT ON TABLE "AXIS"."PROMOCIONES"  IS 'Descripcion promociones';
  GRANT UPDATE ON "AXIS"."PROMOCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROMOCIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PROMOCIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PROMOCIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PROMOCIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PROMOCIONES" TO "PROGRAMADORESCSI";
