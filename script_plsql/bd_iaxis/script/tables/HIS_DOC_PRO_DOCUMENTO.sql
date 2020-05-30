--------------------------------------------------------
--  DDL for Table HIS_DOC_PRO_DOCUMENTO
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_DOC_PRO_DOCUMENTO" 
   (	"SPRODUC" NUMBER(22,0), 
	"CACTIVI" NUMBER(22,0), 
	"CDOCUME" NUMBER(22,0), 
	"CMODUL" NUMBER(22,0), 
	"COBLIGA" NUMBER(22,0), 
	"CGARANT" NUMBER(22,0), 
	"CMOTMOV" NUMBER(22,0), 
	"CCAUSIN" NUMBER(22,0), 
	"CMOTSIN" NUMBER(22,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"NORDEN" NUMBER(22,0), 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."SPRODUC" IS 'Secuencia Producto';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."CACTIVI" IS 'C�digo Actividad';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."CDOCUME" IS 'C�digo Documento';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."CMODUL" IS 'C�digo M�dulo (0.Producci�n/1.Siniestros)';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."COBLIGA" IS 'C�digo Documento Obligatorio (0.No/1.S�)';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."CMOTMOV" IS 'C�digo Motivo Movimiento';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."CCAUSIN" IS 'C�digo Causa Siniestro';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."CMOTSIN" IS 'C�digo Motivo Siniestro';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."NORDEN" IS 'N�mero de orden';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DOC_PRO_DOCUMENTO"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_DOC_PRO_DOCUMENTO"  IS 'Hist�rico de la tabla DOC_PRO_DOCUMENTO';
  GRANT UPDATE ON "AXIS"."HIS_DOC_PRO_DOCUMENTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_DOC_PRO_DOCUMENTO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_DOC_PRO_DOCUMENTO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_DOC_PRO_DOCUMENTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_DOC_PRO_DOCUMENTO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_DOC_PRO_DOCUMENTO" TO "PROGRAMADORESCSI";