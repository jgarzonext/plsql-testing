--------------------------------------------------------
--  DDL for Table FUSIONANTIGUEDAD
--------------------------------------------------------

  CREATE TABLE "AXIS"."FUSIONANTIGUEDAD" 
   (	"SPERSONORI" NUMBER(10,0), 
	"SPERSONDES" NUMBER(10,0), 
	"FANTIGUEDAD" DATE, 
	"CESTADO" NUMBER, 
	"SSEGURO_INI" NUMBER, 
	"NMOVIMI_INI" NUMBER, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FUSIONANTIGUEDAD"."SPERSONORI" IS 'Persona origen';
   COMMENT ON COLUMN "AXIS"."FUSIONANTIGUEDAD"."SPERSONDES" IS 'Persona des destino';
   COMMENT ON COLUMN "AXIS"."FUSIONANTIGUEDAD"."FANTIGUEDAD" IS 'Fecha de antiguedad';
   COMMENT ON COLUMN "AXIS"."FUSIONANTIGUEDAD"."CESTADO" IS 'Estado de la antiguedad';
   COMMENT ON COLUMN "AXIS"."FUSIONANTIGUEDAD"."SSEGURO_INI" IS 'Numero de movimiento inicial';
   COMMENT ON COLUMN "AXIS"."FUSIONANTIGUEDAD"."NMOVIMI_INI" IS 'Movimiento inicial';
   COMMENT ON COLUMN "AXIS"."FUSIONANTIGUEDAD"."CUSUARI" IS 'C�digo usuario modificaci�n registro';
   COMMENT ON COLUMN "AXIS"."FUSIONANTIGUEDAD"."FMOVIMI" IS 'Fecha modificaci�n registro';
   COMMENT ON TABLE "AXIS"."FUSIONANTIGUEDAD"  IS 'Tabla con las antiguedades que se han fusionado';
  GRANT UPDATE ON "AXIS"."FUSIONANTIGUEDAD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FUSIONANTIGUEDAD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FUSIONANTIGUEDAD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FUSIONANTIGUEDAD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FUSIONANTIGUEDAD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FUSIONANTIGUEDAD" TO "PROGRAMADORESCSI";