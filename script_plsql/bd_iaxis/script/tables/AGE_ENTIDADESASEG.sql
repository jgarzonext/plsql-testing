--------------------------------------------------------
--  DDL for Table AGE_ENTIDADESASEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGE_ENTIDADESASEG" 
   (	"CAGENTE" NUMBER, 
	"CTIPENTIDADASEG" NUMBER, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGE_ENTIDADESASEG"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."AGE_ENTIDADESASEG"."CTIPENTIDADASEG" IS 'C�digo tipo entidad aseguradora (v.f. 800077)';
   COMMENT ON COLUMN "AXIS"."AGE_ENTIDADESASEG"."CUSUALT" IS 'C�digo usuario alta del registro';
   COMMENT ON COLUMN "AXIS"."AGE_ENTIDADESASEG"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."AGE_ENTIDADESASEG"."CUSUARI" IS 'C�digo usuario modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AGE_ENTIDADESASEG"."FMOVIMI" IS 'Fecha modificaci�n del registro';
   COMMENT ON TABLE "AXIS"."AGE_ENTIDADESASEG"  IS 'Otras entidades aseguradoras del agente';
  GRANT UPDATE ON "AXIS"."AGE_ENTIDADESASEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGE_ENTIDADESASEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGE_ENTIDADESASEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGE_ENTIDADESASEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGE_ENTIDADESASEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGE_ENTIDADESASEG" TO "PROGRAMADORESCSI";
