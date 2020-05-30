--------------------------------------------------------
--  DDL for Table CODSECC
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODSECC" 
   (	"CSECCIO" NUMBER(4,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODSECC"."CSECCIO" IS 'codigo seccion';
  GRANT UPDATE ON "AXIS"."CODSECC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODSECC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODSECC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODSECC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODSECC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODSECC" TO "PROGRAMADORESCSI";