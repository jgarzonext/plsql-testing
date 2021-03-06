--------------------------------------------------------
--  DDL for Table CODIACTSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODIACTSEG" 
   (	"CRAMO" NUMBER(8,0), 
	"CACTIVI" NUMBER(4,0), 
	"CCLARIE" NUMBER(2,0), 
	"CCALIF1" VARCHAR2(1 BYTE), 
	"CCALIF2" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODIACTSEG"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."CODIACTSEG"."CACTIVI" IS 'C�digo actividad del seguro';
   COMMENT ON COLUMN "AXIS"."CODIACTSEG"."CCLARIE" IS 'C�dogo de la Clase de Riesgo';
  GRANT UPDATE ON "AXIS"."CODIACTSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIACTSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODIACTSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODIACTSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIACTSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODIACTSEG" TO "PROGRAMADORESCSI";
