--------------------------------------------------------
--  DDL for Table DIR_FINCAS
--------------------------------------------------------

  CREATE TABLE "AXIS"."DIR_FINCAS" 
   (	"IDFINCA" NUMBER(10,0), 
	"IDLOCAL" NUMBER(8,0), 
	"CCATAST" VARCHAR2(30 BYTE), 
	"CTIPFIN" NUMBER(1,0), 
	"NANYCON" NUMBER(4,0), 
	"TFINCA" VARCHAR2(100 BYTE), 
	"CNOASEG" NUMBER(1,0), 
	"TNOASEG" NUMBER(2,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DIR_FINCAS"."IDFINCA" IS 'Identificador de la finca';
   COMMENT ON COLUMN "AXIS"."DIR_FINCAS"."IDLOCAL" IS 'Identificador de la localidad';
   COMMENT ON COLUMN "AXIS"."DIR_FINCAS"."CCATAST" IS 'Referencia Catastral';
   COMMENT ON COLUMN "AXIS"."DIR_FINCAS"."CTIPFIN" IS 'Codigo tipo finca';
   COMMENT ON COLUMN "AXIS"."DIR_FINCAS"."NANYCON" IS 'A�o de Construcci�n Finca';
   COMMENT ON COLUMN "AXIS"."DIR_FINCAS"."TFINCA" IS 'Nombre de la Finca (ej. Edificio Walden)';
   COMMENT ON COLUMN "AXIS"."DIR_FINCAS"."CNOASEG" IS 'Indica si la Finca est� identificada como no asegurable';
   COMMENT ON COLUMN "AXIS"."DIR_FINCAS"."TNOASEG" IS 'Tipificaci�n de no asegurable';
   COMMENT ON TABLE "AXIS"."DIR_FINCAS"  IS 'Direcciones fincas';
  GRANT UPDATE ON "AXIS"."DIR_FINCAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIR_FINCAS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DIR_FINCAS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DIR_FINCAS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DIR_FINCAS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DIR_FINCAS" TO "PROGRAMADORESCSI";
