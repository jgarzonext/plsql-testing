--------------------------------------------------------
--  DDL for Table GARANPRO_ULK
--------------------------------------------------------

  CREATE TABLE "AXIS"."GARANPRO_ULK" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CGARANT" NUMBER(4,0), 
	"NFUNCIO" NUMBER(6,0), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."GARANPRO_ULK"."CRAMO" IS 'C�digo de ramo';
   COMMENT ON COLUMN "AXIS"."GARANPRO_ULK"."CMODALI" IS 'C�digo de modalidad';
   COMMENT ON COLUMN "AXIS"."GARANPRO_ULK"."CTIPSEG" IS 'C�digo de tipo de seguro';
   COMMENT ON COLUMN "AXIS"."GARANPRO_ULK"."CCOLECT" IS 'C�digo de colectivo';
   COMMENT ON COLUMN "AXIS"."GARANPRO_ULK"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."GARANPRO_ULK"."NFUNCIO" IS 'C�digo de funci�n que calcula el capital de riesgo';
   COMMENT ON COLUMN "AXIS"."GARANPRO_ULK"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."GARANPRO_ULK"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."GARANPRO_ULK"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."GARANPRO_ULK"."FMODIFI" IS 'Fecha en que se modifica el registro';
  GRANT UPDATE ON "AXIS"."GARANPRO_ULK" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANPRO_ULK" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GARANPRO_ULK" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."GARANPRO_ULK" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANPRO_ULK" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."GARANPRO_ULK" TO "PROGRAMADORESCSI";