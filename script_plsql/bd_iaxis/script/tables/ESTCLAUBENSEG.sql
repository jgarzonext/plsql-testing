--------------------------------------------------------
--  DDL for Table ESTCLAUBENSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTCLAUBENSEG" 
   (	"NMOVIMI" NUMBER(4,0), 
	"SCLABEN" NUMBER(4,0), 
	"SSEGURO" NUMBER, 
	"NRIESGO" NUMBER(6,0), 
	"FINICLAU" DATE, 
	"FFINCLAU" DATE, 
	"COBLIGA" NUMBER(1,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTCLAUBENSEG"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."ESTCLAUBENSEG"."SCLABEN" IS 'Secuencia cl�usula de beneficiario';
   COMMENT ON COLUMN "AXIS"."ESTCLAUBENSEG"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."ESTCLAUBENSEG"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."ESTCLAUBENSEG"."FINICLAU" IS 'Fecha inicio cl�usula';
   COMMENT ON COLUMN "AXIS"."ESTCLAUBENSEG"."FFINCLAU" IS 'Fecha fin cl�usula';
   COMMENT ON COLUMN "AXIS"."ESTCLAUBENSEG"."COBLIGA" IS ' Indica si est� contratada (1) o no (0)';
  GRANT UPDATE ON "AXIS"."ESTCLAUBENSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTCLAUBENSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTCLAUBENSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTCLAUBENSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTCLAUBENSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTCLAUBENSEG" TO "PROGRAMADORESCSI";
