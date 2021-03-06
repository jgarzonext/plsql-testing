--------------------------------------------------------
--  DDL for Table CODCIPSAP
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODCIPSAP" 
   (	"CCIPSAP" VARCHAR2(4 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODCIPSAP"."CCIPSAP" IS 'C�digo CIPSAP';
  GRANT UPDATE ON "AXIS"."CODCIPSAP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODCIPSAP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODCIPSAP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODCIPSAP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODCIPSAP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODCIPSAP" TO "PROGRAMADORESCSI";
