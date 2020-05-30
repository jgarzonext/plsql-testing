--------------------------------------------------------
--  DDL for Table SINIESTROS_CC
--------------------------------------------------------

  CREATE TABLE "AXIS"."SINIESTROS_CC" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCIERRE" DATE, 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"NPOLIZA" NUMBER, 
	"NSINIES" NUMBER(8,0), 
	"SIDEPAG" NUMBER(8,0), 
	"CFORPAG" NUMBER(2,0), 
	"CTIPPROD" NUMBER(1,0), 
	"SPRODUC" NUMBER(6,0), 
	"POLISSA_INI" VARCHAR2(15 BYTE), 
	"FSINIES" DATE, 
	"FORDPAG" DATE, 
	"FEFEPAG" DATE, 
	"CCOMPANI" NUMBER(3,0), 
	"ISINRET" NUMBER, 
	"CTIPPAG" NUMBER(1,0), 
	"SSEGURO" NUMBER
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 60 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."FCIERRE" IS 'Fecha de cierre ';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."FCALCUL" IS 'Fecha de ejecuci�n del proceso';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."SPROCES" IS 'C�digo de proceso';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."CRAMO" IS 'C�digo de ramo';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."CMODALI" IS 'C�digo de modalidad';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."CTIPSEG" IS 'Tipo de seguro';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."CCOLECT" IS 'Colectividad';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."NPOLIZA" IS 'N�mero de p�liza';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."NSINIES" IS 'N�mero de siniestro';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."SIDEPAG" IS 'N�mero de pago de siniestro';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."CFORPAG" IS 'Forma de pago del pago de sin.';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."CTIPPROD" IS 'Tipus de producte (Parproducto TIPUSPROD)';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."SPRODUC" IS 'Codi de Producte';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."POLISSA_INI" IS 'P�liza sistema antiguo';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."FSINIES" IS 'Fecha de efecto del siniestro';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."FORDPAG" IS 'Fecha de orden de pago';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."FEFEPAG" IS 'Fecha de efecto de pago';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."CCOMPANI" IS 'C�digo de la compa��a';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."ISINRET" IS 'Importe del pago';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."CTIPPAG" IS 'Tipo de pago';
   COMMENT ON COLUMN "AXIS"."SINIESTROS_CC"."SSEGURO" IS 'N�mero de seguro ';
   COMMENT ON TABLE "AXIS"."SINIESTROS_CC"  IS 'Cuadre de cuenta corriente (siniestros)';
  GRANT UPDATE ON "AXIS"."SINIESTROS_CC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SINIESTROS_CC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SINIESTROS_CC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SINIESTROS_CC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SINIESTROS_CC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SINIESTROS_CC" TO "PROGRAMADORESCSI";