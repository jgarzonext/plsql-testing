--------------------------------------------------------
--  DDL for Table DIR_PORTALES
--------------------------------------------------------

  CREATE TABLE "AXIS"."DIR_PORTALES" 
   (	"IDFINCA" NUMBER(10,0), 
	"IDPORTAL" NUMBER(2,0), 
	"CPRINCIP" NUMBER(1,0), 
	"CNOASEG" NUMBER(1,0), 
	"TNOASEG" NUMBER(2,0), 
	"NANYCON" NUMBER(4,0), 
	"NDEPART" NUMBER(3,0), 
	"NPLSOTA" NUMBER(2,0), 
	"NPLALTO" NUMBER(3,0), 
	"NASCENS" NUMBER(2,0), 
	"NESCALE" NUMBER(2,0), 
	"NM2VIVI" NUMBER(6,0), 
	"NM2COME" NUMBER(6,0), 
	"NM2GARA" NUMBER(6,0), 
	"NM2JARD" NUMBER(6,0), 
	"NM2CONS" NUMBER(6,0), 
	"NM2SUEL" NUMBER(6,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."IDFINCA" IS 'Id interno de la Finca';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."IDPORTAL" IS 'Secuencial del Portal en la Finca';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."CPRINCIP" IS 'Indica si el portal es el principal de la Finca. S�lo 1. (0,No;1,S�)';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."CNOASEG" IS 'Indica si el portal est� identificado como no asegurable';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."TNOASEG" IS 'Tipificaci�n de no asegurable';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."NANYCON" IS 'A�o de Construcci�n';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."NDEPART" IS 'N�mero de Departamentos';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."NPLSOTA" IS 'N�mero de Plantas S�tano';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."NPLALTO" IS 'N�mero de Plantas en Alto';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."NASCENS" IS 'N�mero de Ascensores';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."NESCALE" IS 'N�mero de Escaleras';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."NM2VIVI" IS 'M2 Viviendas';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."NM2COME" IS 'M2 Comerciales';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."NM2GARA" IS 'M2 Garajes';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."NM2JARD" IS 'M2 Jardines';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."NM2CONS" IS 'M2 Superficie Construida';
   COMMENT ON COLUMN "AXIS"."DIR_PORTALES"."NM2SUEL" IS 'M2 Superficie Suelo';
   COMMENT ON TABLE "AXIS"."DIR_PORTALES"  IS 'Direcciones Portales';
  GRANT UPDATE ON "AXIS"."DIR_PORTALES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIR_PORTALES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DIR_PORTALES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DIR_PORTALES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIR_PORTALES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DIR_PORTALES" TO "PROGRAMADORESCSI";
