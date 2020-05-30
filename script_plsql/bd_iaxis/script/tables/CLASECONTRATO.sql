--------------------------------------------------------
--  DDL for Table CLASECONTRATO
--------------------------------------------------------

  CREATE TABLE "AXIS"."CLASECONTRATO" 
   (	"CCODCONTRATO" NUMBER, 
	"CCLACONTRATO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CLASECONTRATO"."CCODCONTRATO" IS 'Código de contrato';
   COMMENT ON COLUMN "AXIS"."CLASECONTRATO"."CCLACONTRATO" IS 'Código clase de contrato';
   COMMENT ON TABLE "AXIS"."CLASECONTRATO"  IS 'Contratos y clases de contrato';
  GRANT UPDATE ON "AXIS"."CLASECONTRATO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CLASECONTRATO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CLASECONTRATO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CLASECONTRATO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CLASECONTRATO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CLASECONTRATO" TO "PROGRAMADORESCSI";