--------------------------------------------------------
--  DDL for Table AGENTES_CONVENIO_PROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGENTES_CONVENIO_PROD" 
   (	"CAGENTE" NUMBER, 
	"SPRODUC" NUMBER(6,0), 
	"FMOVINI" DATE, 
	"FMOVFIN" DATE, 
	"NDIAS_GRACIA" NUMBER, 
	"FALTA" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGENTES_CONVENIO_PROD"."CAGENTE" IS 'C�digo del agente';
   COMMENT ON COLUMN "AXIS"."AGENTES_CONVENIO_PROD"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."AGENTES_CONVENIO_PROD"."FMOVINI" IS 'Fecha de inicio de vigencia del registro';
   COMMENT ON COLUMN "AXIS"."AGENTES_CONVENIO_PROD"."FMOVFIN" IS 'Fecha de final de vigencia del registro';
   COMMENT ON COLUMN "AXIS"."AGENTES_CONVENIO_PROD"."NDIAS_GRACIA" IS 'N�mero de d�as de gracia (para terminaci�n por no pago';
   COMMENT ON COLUMN "AXIS"."AGENTES_CONVENIO_PROD"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."AGENTES_CONVENIO_PROD"."CUSUARI" IS 'Usuario grabador del registro';
   COMMENT ON TABLE "AXIS"."AGENTES_CONVENIO_PROD"  IS 'Parametrizaci�n d�as de gracia a nivel de agente / producto';
  GRANT UPDATE ON "AXIS"."AGENTES_CONVENIO_PROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENTES_CONVENIO_PROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGENTES_CONVENIO_PROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGENTES_CONVENIO_PROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGENTES_CONVENIO_PROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGENTES_CONVENIO_PROD" TO "PROGRAMADORESCSI";
