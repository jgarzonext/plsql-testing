--------------------------------------------------------
--  DDL for Table DELPER_PARPERSONAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DELPER_PARPERSONAS" 
   (	"CUSUARIDEL" VARCHAR2(40 BYTE), 
	"FDEL" DATE, 
	"CPARAM" VARCHAR2(20 BYTE), 
	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"NVALPAR" NUMBER(20,0), 
	"TVALPAR" VARCHAR2(100 BYTE), 
	"FVALPAR" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DELPER_PARPERSONAS"."CPARAM" IS 'C�digo del par�metro';
   COMMENT ON COLUMN "AXIS"."DELPER_PARPERSONAS"."SPERSON" IS 'C�digo de la persona';
   COMMENT ON COLUMN "AXIS"."DELPER_PARPERSONAS"."CAGENTE" IS 'C�digo del agente';
   COMMENT ON COLUMN "AXIS"."DELPER_PARPERSONAS"."NVALPAR" IS 'C�digo del par�metro';
   COMMENT ON COLUMN "AXIS"."DELPER_PARPERSONAS"."TVALPAR" IS 'Texto del par�metro';
   COMMENT ON COLUMN "AXIS"."DELPER_PARPERSONAS"."FVALPAR" IS 'Fecha del par�metro';
   COMMENT ON COLUMN "AXIS"."DELPER_PARPERSONAS"."CUSUARI" IS 'usuario de Alta';
   COMMENT ON COLUMN "AXIS"."DELPER_PARPERSONAS"."FMOVIMI" IS 'Fecha de alta';
   COMMENT ON TABLE "AXIS"."DELPER_PARPERSONAS"  IS 'Tabla de DELPER_parpersonas';
  GRANT UPDATE ON "AXIS"."DELPER_PARPERSONAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_PARPERSONAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DELPER_PARPERSONAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DELPER_PARPERSONAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_PARPERSONAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DELPER_PARPERSONAS" TO "PROGRAMADORESCSI";
