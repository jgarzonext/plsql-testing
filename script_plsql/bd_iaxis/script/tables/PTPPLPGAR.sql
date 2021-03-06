--------------------------------------------------------
--  DDL for Table PTPPLPGAR
--------------------------------------------------------

  CREATE TABLE "AXIS"."PTPPLPGAR" 
   (	"CEMPRES" NUMBER(2,0), 
	"FCALCUL" DATE, 
	"SPROCES" NUMBER, 
	"CRAMDGS" NUMBER(4,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"SSEGURO" NUMBER, 
	"NSINIES" VARCHAR2(14 BYTE), 
	"IPPLPSD" NUMBER, 
	"IPPLPRC" NUMBER, 
	"CERROR" NUMBER(2,0), 
	"IVALBRUTO" NUMBER, 
	"IVALPAGO" NUMBER, 
	"IPPL" NUMBER, 
	"IPPP" NUMBER, 
	"CGARANT" NUMBER(4,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."CEMPRES" IS 'C�digo empresa';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."FCALCUL" IS 'Fecha de calculo';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."SPROCES" IS 'C�digo proceso generador';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."CRAMDGS" IS 'C�digo ramo DGS';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."CMODALI" IS 'C�digo modalidad';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."CTIPSEG" IS 'C�digo tipo de seguro';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."SSEGURO" IS 'N�mero consecutivo de seguro';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."NSINIES" IS 'N�mero Siniestro';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."IPPLPSD" IS 'Importe de directo';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."IPPLPRC" IS 'Importe cedido';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."CERROR" IS 'C�digo error';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."IPPL" IS 'Importe de provisi�n pendiente de liquidar';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."IPPP" IS 'Importe de provisi�n pendiente de pagar';
   COMMENT ON COLUMN "AXIS"."PTPPLPGAR"."CGARANT" IS 'C�digo de garant�a';
  GRANT UPDATE ON "AXIS"."PTPPLPGAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PTPPLPGAR" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PTPPLPGAR" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PTPPLPGAR" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PTPPLPGAR" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PTPPLPGAR" TO "PROGRAMADORESCSI";
