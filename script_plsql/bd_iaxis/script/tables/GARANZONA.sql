--------------------------------------------------------
--  DDL for Table GARANZONA
--------------------------------------------------------

  CREATE TABLE "AXIS"."GARANZONA" 
   (	"SPRODUC" NUMBER(6,0), 
	"CACTIVI" NUMBER(4,0), 
	"CGARANT" NUMBER(6,0), 
	"SZONIF" NUMBER(4,0), 
	"SZONA" NUMBER(7,0), 
	"CZONA" NUMBER(1,0), 
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

   COMMENT ON COLUMN "AXIS"."GARANZONA"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."GARANZONA"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."GARANZONA"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."GARANZONA"."FMODIFI" IS 'Fecha en que se modifica el registro';
  GRANT SELECT ON "AXIS"."GARANZONA" TO "PROGRAMADORESCSI";
  GRANT DELETE ON "AXIS"."GARANZONA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANZONA" TO "CONF_DWH";
  GRANT UPDATE ON "AXIS"."GARANZONA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."GARANZONA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."GARANZONA" TO "R_AXIS";
