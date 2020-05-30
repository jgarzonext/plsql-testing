--------------------------------------------------------
--  DDL for Table CCAAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CCAAS" 
   (	"IDCCAA" NUMBER(2,0), 
	"CPAIS" NUMBER(3,0), 
	"TCCAA" VARCHAR2(100 BYTE), 
	"CFORAL" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CCAAS"."IDCCAA" IS 'Identificador comunidad autonoma.';
   COMMENT ON COLUMN "AXIS"."CCAAS"."CPAIS" IS 'Código pais.';
   COMMENT ON COLUMN "AXIS"."CCAAS"."TCCAA" IS 'Nombre comunidad autonoma.';
   COMMENT ON COLUMN "AXIS"."CCAAS"."CFORAL" IS 'Es foral 0=No, 1=Si';
   COMMENT ON TABLE "AXIS"."CCAAS"  IS 'Tabla maestra comunidades autónomas.';
  GRANT UPDATE ON "AXIS"."CCAAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CCAAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CCAAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CCAAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CCAAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CCAAS" TO "PROGRAMADORESCSI";
