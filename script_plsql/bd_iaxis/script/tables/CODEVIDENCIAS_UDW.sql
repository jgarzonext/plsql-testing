--------------------------------------------------------
--  DDL for Table CODEVIDENCIAS_UDW
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODEVIDENCIAS_UDW" 
   (	"CEMPRES" NUMBER, 
	"CEVIDEN" NUMBER, 
	"IEVIDEN" NUMBER, 
	"CTIPO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODEVIDENCIAS_UDW"."CEMPRES" IS 'C�digo de la empresa';
   COMMENT ON COLUMN "AXIS"."CODEVIDENCIAS_UDW"."CEVIDEN" IS 'C�digo de la evidencia';
   COMMENT ON COLUMN "AXIS"."CODEVIDENCIAS_UDW"."CTIPO" IS 'Si es medical evidence o no VF ';
  GRANT UPDATE ON "AXIS"."CODEVIDENCIAS_UDW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODEVIDENCIAS_UDW" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODEVIDENCIAS_UDW" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODEVIDENCIAS_UDW" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODEVIDENCIAS_UDW" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODEVIDENCIAS_UDW" TO "PROGRAMADORESCSI";