--------------------------------------------------------
--  DDL for Table CODIREGALO
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODIREGALO" 
   (	"CREGALO" NUMBER(2,0), 
	"CTIPREG" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODIREGALO"."CREGALO" IS 'C�digo del Regalo';
   COMMENT ON COLUMN "AXIS"."CODIREGALO"."CTIPREG" IS 'Tipus de regal v.f.908';
   COMMENT ON TABLE "AXIS"."CODIREGALO"  IS 'C�digo del Regalo';
  GRANT UPDATE ON "AXIS"."CODIREGALO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIREGALO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODIREGALO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODIREGALO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIREGALO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODIREGALO" TO "PROGRAMADORESCSI";
