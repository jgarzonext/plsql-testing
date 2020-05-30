--------------------------------------------------------
--  DDL for Table CODISECTOR
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODISECTOR" 
   (	"CSECTOR" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODISECTOR"."CSECTOR" IS 'Código de sector';
   COMMENT ON TABLE "AXIS"."CODISECTOR"  IS 'Código del sector';
  GRANT UPDATE ON "AXIS"."CODISECTOR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODISECTOR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODISECTOR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODISECTOR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODISECTOR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODISECTOR" TO "PROGRAMADORESCSI";