--------------------------------------------------------
--  DDL for Table DETRECIBOS_FCAMBIO
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETRECIBOS_FCAMBIO" 
   (	"NRECIBO" NUMBER, 
	"CCONCEP" NUMBER(2,0), 
	"CGARANT" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"ICONCEP" NUMBER, 
	"CAGEVEN" NUMBER, 
	"NMOVIMA" NUMBER, 
	"SMOVREC" NUMBER, 
	"ICONCEP_MONPOL" NUMBER, 
	"FCAMBIO" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DETRECIBOS_FCAMBIO"."NRECIBO" IS 'N�mero de recibo.';
   COMMENT ON COLUMN "AXIS"."DETRECIBOS_FCAMBIO"."CCONCEP" IS 'C�digo del recargo';
   COMMENT ON COLUMN "AXIS"."DETRECIBOS_FCAMBIO"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."DETRECIBOS_FCAMBIO"."NRIESGO" IS 'N�mero de Riesgo correspondiente';
   COMMENT ON COLUMN "AXIS"."DETRECIBOS_FCAMBIO"."ICONCEP" IS 'Importe de la garant�a.';
   COMMENT ON COLUMN "AXIS"."DETRECIBOS_FCAMBIO"."CAGEVEN" IS 'C�digo de agente de venta';
   COMMENT ON COLUMN "AXIS"."DETRECIBOS_FCAMBIO"."NMOVIMA" IS 'N�mero de movimiento de alta';
   COMMENT ON COLUMN "AXIS"."DETRECIBOS_FCAMBIO"."SMOVREC" IS 'Secuencia del movimiento';
   COMMENT ON COLUMN "AXIS"."DETRECIBOS_FCAMBIO"."ICONCEP_MONPOL" IS 'Importe de la garant�a en la moneda a nivel de p�liza (por defecto ser� la de la empresa)';
   COMMENT ON COLUMN "AXIS"."DETRECIBOS_FCAMBIO"."FCAMBIO" IS 'Fecha empleada para el c�lculo de los contravalores';
   COMMENT ON TABLE "AXIS"."DETRECIBOS_FCAMBIO"  IS 'Actualiza el importe de DETRECIBOS a fecha';
  GRANT UPDATE ON "AXIS"."DETRECIBOS_FCAMBIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETRECIBOS_FCAMBIO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETRECIBOS_FCAMBIO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETRECIBOS_FCAMBIO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETRECIBOS_FCAMBIO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETRECIBOS_FCAMBIO" TO "PROGRAMADORESCSI";