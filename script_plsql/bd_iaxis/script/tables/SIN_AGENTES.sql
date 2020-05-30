--------------------------------------------------------
--  DDL for Table SIN_AGENTES
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_AGENTES" 
   (	"SCLAVE" NUMBER, 
	"CAGENTE" NUMBER, 
	"CTRAMTE" NUMBER(4,0), 
	"CRAMO" NUMBER(4,0), 
	"CTIPCOD" NUMBER(4,0), 
	"CTRAMITAD" VARCHAR2(4 BYTE), 
	"SPROFES" NUMBER(8,0), 
	"CVALORA" NUMBER(1,0), 
	"FINICIO" DATE, 
	"FFIN" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FALTA" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_AGENTES"."SCLAVE" IS 'clave unica';
   COMMENT ON COLUMN "AXIS"."SIN_AGENTES"."CAGENTE" IS 'Codigo de agente';
   COMMENT ON COLUMN "AXIS"."SIN_AGENTES"."CTRAMTE" IS 'Tipo de tramite';
   COMMENT ON COLUMN "AXIS"."SIN_AGENTES"."CRAMO" IS 'Ramo';
   COMMENT ON COLUMN "AXIS"."SIN_AGENTES"."CTIPCOD" IS 'Indica si es agente o profesional (VF 740)';
   COMMENT ON COLUMN "AXIS"."SIN_AGENTES"."CTRAMITAD" IS 'Codigo de tramitador';
   COMMENT ON COLUMN "AXIS"."SIN_AGENTES"."SPROFES" IS 'Codigo de profesional';
   COMMENT ON COLUMN "AXIS"."SIN_AGENTES"."CVALORA" IS 'Preferido/Excluido (VF 741)';
   COMMENT ON COLUMN "AXIS"."SIN_AGENTES"."FINICIO" IS 'Fecha desde';
   COMMENT ON COLUMN "AXIS"."SIN_AGENTES"."FFIN" IS 'Fecha hasta';
   COMMENT ON COLUMN "AXIS"."SIN_AGENTES"."CUSUARI" IS 'Usuario creador';
   COMMENT ON COLUMN "AXIS"."SIN_AGENTES"."FALTA" IS 'Fecha de alta';
   COMMENT ON TABLE "AXIS"."SIN_AGENTES"  IS 'Reslaciones entre agentes y personal de siniestros';
  GRANT UPDATE ON "AXIS"."SIN_AGENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_AGENTES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_AGENTES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_AGENTES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_AGENTES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_AGENTES" TO "PROGRAMADORESCSI";
