--------------------------------------------------------
--  DDL for Table CODIGARAN
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODIGARAN" 
   (	"CGARANT" NUMBER(4,0), 
	"CRAMDGS" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODIGARAN"."CGARANT" IS 'C�digo de garant�a';
  GRANT UPDATE ON "AXIS"."CODIGARAN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIGARAN" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODIGARAN" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODIGARAN" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIGARAN" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODIGARAN" TO "PROGRAMADORESCSI";
