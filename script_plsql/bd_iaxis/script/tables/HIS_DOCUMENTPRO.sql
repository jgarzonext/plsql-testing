--------------------------------------------------------
--  DDL for Table HIS_DOCUMENTPRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_DOCUMENTPRO" 
   (	"CDOCUMENT" NUMBER(22,0), 
	"NVERSION" NUMBER(22,0), 
	"NORDEN" NUMBER(22,0), 
	"CRAMO" NUMBER(22,0), 
	"CMODALI" NUMBER(22,0), 
	"CTIPSEG" NUMBER(22,0), 
	"CCOLECT" NUMBER(22,0), 
	"CMOTMOV" NUMBER(22,0), 
	"FALTA" DATE, 
	"CUSUALTA" VARCHAR2(20 BYTE), 
	"FBAJA" DATE, 
	"CUSUBAJA" VARCHAR2(20 BYTE), 
	"CTIPDOC" NUMBER(22,0), 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."CDOCUMENT" IS 'Codigo de Documentacion';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."NVERSION" IS 'Numerador de version Documentacion';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."NORDEN" IS 'Numerador de orden de documentacion/version';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."CRAMO" IS 'Codigo ramo';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."CMODALI" IS 'Codigo Modalidad';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."CTIPSEG" IS 'Codigo tipo seguro';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."CCOLECT" IS 'Codigo Colectivo';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."CMOTMOV" IS 'Codigo Movimiento Seguro';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."CUSUALTA" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."FBAJA" IS 'Fecha baja';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."CUSUBAJA" IS 'Usuario baja';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."CTIPDOC" IS 'Tipo documentacion oblig/opcional';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DOCUMENTPRO"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_DOCUMENTPRO"  IS 'Hist�rico de la tabla DOCUMENTPRO';
  GRANT UPDATE ON "AXIS"."HIS_DOCUMENTPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_DOCUMENTPRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_DOCUMENTPRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_DOCUMENTPRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_DOCUMENTPRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_DOCUMENTPRO" TO "PROGRAMADORESCSI";
