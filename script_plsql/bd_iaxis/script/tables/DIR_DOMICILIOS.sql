--------------------------------------------------------
--  DDL for Table DIR_DOMICILIOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DIR_DOMICILIOS" 
   (	"IDDOMICI" NUMBER(10,0), 
	"IDFINCA" NUMBER(10,0), 
	"IDPORTAL" NUMBER(2,0), 
	"IDGEODIR" NUMBER(10,0), 
	"CESCALE" VARCHAR2(10 BYTE), 
	"CPLANTA" VARCHAR2(10 BYTE), 
	"CPUERTA" VARCHAR2(10 BYTE), 
	"CCATAST" VARCHAR2(30 BYTE), 
	"NM2CONS" NUMBER(6,0), 
	"CTIPDPT" NUMBER(1,0), 
	"TALIAS" VARCHAR2(50 BYTE), 
	"CNOASEG" NUMBER(1,0), 
	"TNOASEG" NUMBER(2,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."IDDOMICI" IS 'Id interno de Domicilio';
   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."IDFINCA" IS 'Id interno de la Finca';
   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."IDPORTAL" IS 'Secuencial del Portal en la Finca';
   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."IDGEODIR" IS 'Id interno de la GEODirecci�n';
   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."CESCALE" IS 'Escalera (o vac�o)';
   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."CPLANTA" IS 'Planta (o vac�o)';
   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."CPUERTA" IS 'Puerta (o vac�o)';
   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."CCATAST" IS 'Referencia Catastral (o vac�o)';
   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."NM2CONS" IS 'M2 Departamento (o vac�o)';
   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."CTIPDPT" IS 'Tipo de departamento (Vivienda, Garaje, Almac�n,�)';
   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."TALIAS" IS 'Alias del domicilio del inmueble';
   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."CNOASEG" IS 'Indica si el domicilio est� identificado como no asegurable';
   COMMENT ON COLUMN "AXIS"."DIR_DOMICILIOS"."TNOASEG" IS 'Tipificaci�n de no asegurable';
   COMMENT ON TABLE "AXIS"."DIR_DOMICILIOS"  IS 'Direcciones domicilios';
  GRANT UPDATE ON "AXIS"."DIR_DOMICILIOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIR_DOMICILIOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DIR_DOMICILIOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DIR_DOMICILIOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIR_DOMICILIOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DIR_DOMICILIOS" TO "PROGRAMADORESCSI";