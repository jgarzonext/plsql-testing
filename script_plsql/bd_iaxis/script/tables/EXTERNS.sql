--------------------------------------------------------
--  DDL for Table EXTERNS
--------------------------------------------------------

  CREATE TABLE "AXIS"."EXTERNS" 
   (	"TNOMBRE" VARCHAR2(90 BYTE), 
	"SPROCES" NUMBER, 
	"FPROCES" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EXTERNS"."TNOMBRE" IS 'Nom del fitxer';
   COMMENT ON COLUMN "AXIS"."EXTERNS"."SPROCES" IS 'N�mero de proc�s';
   COMMENT ON COLUMN "AXIS"."EXTERNS"."FPROCES" IS 'Data del proc�s';
  GRANT UPDATE ON "AXIS"."EXTERNS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXTERNS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EXTERNS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EXTERNS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXTERNS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EXTERNS" TO "PROGRAMADORESCSI";
