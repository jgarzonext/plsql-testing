--------------------------------------------------------
--  DDL for Table SIN_DETTARIFAS_REL
--------------------------------------------------------

  CREATE TABLE "AXIS"."SIN_DETTARIFAS_REL" 
   (	"CORIGEN" VARCHAR2(20 BYTE), 
	"CODAXIS" NUMBER, 
	"CODIGO1" NUMBER, 
	"CODIGO2" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."SIN_DETTARIFAS_REL"."CORIGEN" IS 'Origen';
   COMMENT ON COLUMN "AXIS"."SIN_DETTARIFAS_REL"."CODAXIS" IS 'C�digo AXIS';
   COMMENT ON COLUMN "AXIS"."SIN_DETTARIFAS_REL"."CODIGO1" IS 'C�digo externo 1';
   COMMENT ON COLUMN "AXIS"."SIN_DETTARIFAS_REL"."CODIGO2" IS 'C�digo Especifico';
   COMMENT ON TABLE "AXIS"."SIN_DETTARIFAS_REL"  IS 'Tabla sin_dettarifas_rel relaci�n de c�digos AXIS (sin_dettarifas) con codigos externos';
  GRANT UPDATE ON "AXIS"."SIN_DETTARIFAS_REL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_DETTARIFAS_REL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SIN_DETTARIFAS_REL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SIN_DETTARIFAS_REL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SIN_DETTARIFAS_REL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SIN_DETTARIFAS_REL" TO "PROGRAMADORESCSI";
