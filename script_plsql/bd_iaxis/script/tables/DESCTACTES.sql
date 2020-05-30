--------------------------------------------------------
--  DDL for Table DESCTACTES
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESCTACTES" 
   (	"CCONCTA" NUMBER(2,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TCCONCTA" VARCHAR2(100 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESCTACTES"."CCONCTA" IS 'C�digo concepto cta. corriente.';
   COMMENT ON COLUMN "AXIS"."DESCTACTES"."CIDIOMA" IS 'C�digo Idioma';
   COMMENT ON COLUMN "AXIS"."DESCTACTES"."TCCONCTA" IS 'Descripci�n del concepto cta. corriente';
  GRANT UPDATE ON "AXIS"."DESCTACTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESCTACTES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESCTACTES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESCTACTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESCTACTES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESCTACTES" TO "PROGRAMADORESCSI";