--------------------------------------------------------
--  DDL for Table CODIDEPOR
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODIDEPOR" 
   (	"CDEPORT" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODIDEPOR"."CDEPORT" IS 'C�digo de deporte';
  GRANT UPDATE ON "AXIS"."CODIDEPOR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIDEPOR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODIDEPOR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODIDEPOR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIDEPOR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODIDEPOR" TO "PROGRAMADORESCSI";
