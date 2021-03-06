--------------------------------------------------------
--  DDL for Table DESTIPIMP
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESTIPIMP" 
   (	"CTIPIMP" NUMBER(1,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TTIPIMP" VARCHAR2(100 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESTIPIMP"."CTIPIMP" IS 'Codi del tipus impresi�';
   COMMENT ON COLUMN "AXIS"."DESTIPIMP"."CIDIOMA" IS 'Codi del idioma';
   COMMENT ON COLUMN "AXIS"."DESTIPIMP"."TTIPIMP" IS 'Desc del tipus impresi�';
  GRANT UPDATE ON "AXIS"."DESTIPIMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESTIPIMP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESTIPIMP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESTIPIMP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESTIPIMP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESTIPIMP" TO "PROGRAMADORESCSI";
