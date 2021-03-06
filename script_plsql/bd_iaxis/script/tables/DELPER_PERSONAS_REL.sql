--------------------------------------------------------
--  DDL for Table DELPER_PERSONAS_REL
--------------------------------------------------------

  CREATE TABLE "AXIS"."DELPER_PERSONAS_REL" 
   (	"CUSUARIDEL" VARCHAR2(40 BYTE), 
	"FDEL" DATE, 
	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"SPERSON_REL" NUMBER(10,0), 
	"CTIPPER_REL" NUMBER(2,0), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE, 
	"PPARTICIPACION" NUMBER(3,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DELPER_PERSONAS_REL"."SPERSON" IS 'Secuencia unica de identificacion de una persona';
   COMMENT ON COLUMN "AXIS"."DELPER_PERSONAS_REL"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."DELPER_PERSONAS_REL"."SPERSON_REL" IS 'C�digo de persona de la persona relacionada';
   COMMENT ON COLUMN "AXIS"."DELPER_PERSONAS_REL"."CTIPPER_REL" IS 'Tipo de persona relacionada (V.F. 1037)';
   COMMENT ON COLUMN "AXIS"."DELPER_PERSONAS_REL"."CUSUARI" IS 'C�digo usuario modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."DELPER_PERSONAS_REL"."FMOVIMI" IS 'Fecha modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."DELPER_PERSONAS_REL"."PPARTICIPACION" IS 'Porcentaje de Participacion';
   COMMENT ON TABLE "AXIS"."DELPER_PERSONAS_REL"  IS 'Tabla de Personas relacionadas';
  GRANT UPDATE ON "AXIS"."DELPER_PERSONAS_REL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_PERSONAS_REL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DELPER_PERSONAS_REL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DELPER_PERSONAS_REL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_PERSONAS_REL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DELPER_PERSONAS_REL" TO "PROGRAMADORESCSI";
