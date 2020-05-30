--------------------------------------------------------
--  DDL for Table CODENFERM
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODENFERM" 
   (	"CENFGRP" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODENFERM"."CENFGRP" IS 'codigo enfermedad';
  GRANT INSERT ON "AXIS"."CODENFERM" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODENFERM" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODENFERM" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODENFERM" TO "PROGRAMADORESCSI";
  GRANT SELECT ON "AXIS"."CODENFERM" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."CODENFERM" TO "R_AXIS";