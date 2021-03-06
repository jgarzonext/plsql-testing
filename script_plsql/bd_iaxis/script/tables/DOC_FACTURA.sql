--------------------------------------------------------
--  DDL for Table DOC_FACTURA
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOC_FACTURA" 
   (	"DOC_FACTURA" NUMBER, 
	"NSINIES" NUMBER, 
	"NDOCUMENTO" VARCHAR2(200 BYTE), 
	"DESCRIPCION" VARCHAR2(200 BYTE), 
	"FRECLAMACION" DATE, 
	"FRECEPCION" DATE, 
	"IDDOC_IMP" NUMBER, 
	"EANULACION" NUMBER, 
	"CUSUALT" VARCHAR2(200 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(200 BYTE), 
	"FMODIF" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOC_FACTURA"."DOC_FACTURA" IS 'Identificador �nico del documento equivalente a factura';
   COMMENT ON COLUMN "AXIS"."DOC_FACTURA"."NSINIES" IS 'N�mero del siniestro';
   COMMENT ON COLUMN "AXIS"."DOC_FACTURA"."NDOCUMENTO" IS 'Nombre del documento ';
   COMMENT ON COLUMN "AXIS"."DOC_FACTURA"."DESCRIPCION" IS 'Nombre del proveedor y la fecha desde � hasta.';
   COMMENT ON COLUMN "AXIS"."DOC_FACTURA"."FRECLAMACION" IS 'Fecha de reclamaci�n';
   COMMENT ON COLUMN "AXIS"."DOC_FACTURA"."FRECEPCION" IS 'Fecha de recepci�n';
   COMMENT ON COLUMN "AXIS"."DOC_FACTURA"."IDDOC_IMP" IS 'Id documento impreso en GEDOX';
   COMMENT ON COLUMN "AXIS"."DOC_FACTURA"."EANULACION" IS 'Estado de anulaci�n ';
   COMMENT ON COLUMN "AXIS"."DOC_FACTURA"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."DOC_FACTURA"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."DOC_FACTURA"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON COLUMN "AXIS"."DOC_FACTURA"."FMODIF" IS 'Fecha de modificaci�n';
  GRANT UPDATE ON "AXIS"."DOC_FACTURA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOC_FACTURA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOC_FACTURA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOC_FACTURA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOC_FACTURA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOC_FACTURA" TO "PROGRAMADORESCSI";
