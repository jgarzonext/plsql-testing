--------------------------------------------------------
--  DDL for Table BENECONTIGPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."BENECONTIGPROD" 
   (	"SPRODUC" NUMBER, 
	"CTIPOCON" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."BENECONTIGPROD"."SPRODUC" IS 'N�mero de producto';
  GRANT UPDATE ON "AXIS"."BENECONTIGPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BENECONTIGPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."BENECONTIGPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."BENECONTIGPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BENECONTIGPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."BENECONTIGPROD" TO "PROGRAMADORESCSI";
