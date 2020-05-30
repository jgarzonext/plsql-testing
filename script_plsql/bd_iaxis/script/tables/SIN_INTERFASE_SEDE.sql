--------------------------------------------------------
--  DDL for Table SIN_INTERFASE_SEDE
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_INTERFASE_SEDE" 
   (	"CORIGEN" VARCHAR2(20 BYTE), 
	"SPROFES" NUMBER, 
	"SPERSON" NUMBER, 
	"CCODIGO" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_INTERFASE_SEDE"."CORIGEN" IS 'Origen';
   COMMENT ON COLUMN "AXIS"."SIN_INTERFASE_SEDE"."SPROFES" IS 'C�digo del proveedor';
   COMMENT ON COLUMN "AXIS"."SIN_INTERFASE_SEDE"."SPERSON" IS 'Secuencia personas de la sede';
   COMMENT ON COLUMN "AXIS"."SIN_INTERFASE_SEDE"."CCODIGO" IS 'C�digo cliente para la sede';
   COMMENT ON TABLE "AXIS"."SIN_INTERFASE_SEDE"  IS 'Tabla sin_dettarifas_rel relaci�n de c�digos AXIS (sin_dettarifas) con codigos externos';
  GRANT UPDATE ON "AXIS"."SIN_INTERFASE_SEDE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_INTERFASE_SEDE" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_INTERFASE_SEDE" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_INTERFASE_SEDE" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_INTERFASE_SEDE" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_INTERFASE_SEDE" TO "PROGRAMADORESCSI";