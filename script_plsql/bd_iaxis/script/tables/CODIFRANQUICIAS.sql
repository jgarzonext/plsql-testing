--------------------------------------------------------
--  DDL for Table CODIFRANQUICIAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODIFRANQUICIAS" 
   (	"CFRANQ" NUMBER(6,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CACTIVI" NUMBER(2,0), 
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

   COMMENT ON COLUMN "AXIS"."CODIFRANQUICIAS"."CFRANQ" IS 'Codigo de Franquicias';
   COMMENT ON COLUMN "AXIS"."CODIFRANQUICIAS"."CRAMO" IS 'Ramo';
   COMMENT ON COLUMN "AXIS"."CODIFRANQUICIAS"."CMODALI" IS 'Modalidad';
   COMMENT ON COLUMN "AXIS"."CODIFRANQUICIAS"."CTIPSEG" IS 'Tipo seguro';
   COMMENT ON COLUMN "AXIS"."CODIFRANQUICIAS"."CCOLECT" IS 'Colectividad';
   COMMENT ON COLUMN "AXIS"."CODIFRANQUICIAS"."CACTIVI" IS 'Actividad';
   COMMENT ON COLUMN "AXIS"."CODIFRANQUICIAS"."FALTA" IS 'Fecha alta';
   COMMENT ON COLUMN "AXIS"."CODIFRANQUICIAS"."CUSUALT" IS 'Codigo usuario alta';
   COMMENT ON COLUMN "AXIS"."CODIFRANQUICIAS"."FBAJA" IS 'Fecha baja';
   COMMENT ON TABLE "AXIS"."CODIFRANQUICIAS"  IS 'Tabla Codigo de Franquicias';
  GRANT UPDATE ON "AXIS"."CODIFRANQUICIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIFRANQUICIAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODIFRANQUICIAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODIFRANQUICIAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIFRANQUICIAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODIFRANQUICIAS" TO "PROGRAMADORESCSI";