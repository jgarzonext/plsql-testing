--------------------------------------------------------
--  DDL for Table MIG_ECO_TIPOCAMBIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_ECO_TIPOCAMBIO" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"CMONORI" VARCHAR2(3 BYTE), 
	"CMONDES" VARCHAR2(3 BYTE), 
	"FCAMBIO" DATE, 
	"ITASA" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_ECO_TIPOCAMBIO"."NCARGA" IS 'N¿mero de carga';
   COMMENT ON COLUMN "AXIS"."MIG_ECO_TIPOCAMBIO"."CESTMIG" IS 'Estado del registro';
   COMMENT ON COLUMN "AXIS"."MIG_ECO_TIPOCAMBIO"."CMONORI" IS 'C¿digo de la moneda origen';
   COMMENT ON COLUMN "AXIS"."MIG_ECO_TIPOCAMBIO"."CMONDES" IS 'C¿digo de la moneda destino';
   COMMENT ON COLUMN "AXIS"."MIG_ECO_TIPOCAMBIO"."FCAMBIO" IS 'Fecha del tipo de cambio, truncada ser¿ v¿lida para todo ese d¿a';
   COMMENT ON COLUMN "AXIS"."MIG_ECO_TIPOCAMBIO"."ITASA" IS 'Tasa de cambio al d¿a';
   COMMENT ON TABLE "AXIS"."MIG_ECO_TIPOCAMBIO"  IS 'Fichero con la informaci¿n de los movimientos de Tasas de Cambio necesarias para el c¿lculo de los contratos de reaseguro con moneda extranjera.';
  GRANT UPDATE ON "AXIS"."MIG_ECO_TIPOCAMBIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_ECO_TIPOCAMBIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_ECO_TIPOCAMBIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."MIG_ECO_TIPOCAMBIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_ECO_TIPOCAMBIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_ECO_TIPOCAMBIO" TO "PROGRAMADORESCSI";
