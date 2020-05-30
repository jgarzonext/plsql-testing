--------------------------------------------------------
--  DDL for Table ANATOMIA
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANATOMIA" 
   (	"CIDIOMA" NUMBER(2,0), 
	"CANATOM" VARCHAR2(2 BYTE), 
	"TANATOM" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANATOMIA"."CIDIOMA" IS 'C�digo de Idioma';
   COMMENT ON COLUMN "AXIS"."ANATOMIA"."CANATOM" IS 'codigo anatomia';
  GRANT UPDATE ON "AXIS"."ANATOMIA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANATOMIA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANATOMIA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANATOMIA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANATOMIA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANATOMIA" TO "PROGRAMADORESCSI";
