--------------------------------------------------------
--  DDL for Table ACCUMULATION
--------------------------------------------------------

  CREATE TABLE "AXIS"."ACCUMULATION" 
   (	"IDENTITY_DOCUMENT" VARCHAR2(50 BYTE), 
	"NORDEN" NUMBER, 
	"NEW_APPLICATION_NUMBER" VARCHAR2(50 BYTE), 
	"PREVIOUS_POLICY_NUMBER" VARCHAR2(50 BYTE), 
	"NAME" VARCHAR2(500 BYTE), 
	"TOTAL_SI_ON_RISK" NUMBER, 
	"EVIDENCE_ON" NUMBER, 
	"RISK_TYPES" VARCHAR2(100 BYTE), 
	"PAST_DECISIONS" VARCHAR2(4000 BYTE), 
	"FATCA_STATUS" VARCHAR2(200 BYTE), 
	"PREMIUM" NUMBER, 
	"PREV_POLICY_DETAILS" VARCHAR2(4000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ACCUMULATION"."IDENTITY_DOCUMENT" IS 'Identificador de la persona';
   COMMENT ON COLUMN "AXIS"."ACCUMULATION"."NORDEN" IS 'Orden';
   COMMENT ON COLUMN "AXIS"."ACCUMULATION"."NEW_APPLICATION_NUMBER" IS 'Ref recuperado del fichero de accumulations';
   COMMENT ON COLUMN "AXIS"."ACCUMULATION"."PREVIOUS_POLICY_NUMBER" IS 'Ref recuperado del fichero de accumulations';
   COMMENT ON COLUMN "AXIS"."ACCUMULATION"."NAME" IS 'Nombres y apellidos de la persona';
   COMMENT ON COLUMN "AXIS"."ACCUMULATION"."TOTAL_SI_ON_RISK" IS 'Valor asegurado de la propuesta';
   COMMENT ON COLUMN "AXIS"."ACCUMULATION"."EVIDENCE_ON" IS 'Valor asegurado de acumulaci�n. Este es el que deber� tener en cuenta para c�mulos.';
   COMMENT ON COLUMN "AXIS"."ACCUMULATION"."RISK_TYPES" IS 'Nos llegar�n los siguientes valores: Life, Disability, Accidental Death, CI';
   COMMENT ON COLUMN "AXIS"."ACCUMULATION"."PAST_DECISIONS" IS 'Aqu� van a poner extramortalidades aplicadas, etc.';
   COMMENT ON COLUMN "AXIS"."ACCUMULATION"."FATCA_STATUS" IS 'Ser� la clasificaci�n FATCA que ellos nos env�en.';
   COMMENT ON COLUMN "AXIS"."ACCUMULATION"."PREMIUM" IS 'Prima de acumulaci�n.';
  GRANT UPDATE ON "AXIS"."ACCUMULATION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ACCUMULATION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ACCUMULATION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ACCUMULATION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ACCUMULATION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ACCUMULATION" TO "PROGRAMADORESCSI";
