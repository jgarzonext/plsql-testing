--------------------------------------------------------
--  DDL for Table MIG_DETMOVRECIBO_PARCIAL
--------------------------------------------------------

  CREATE TABLE "AXIS"."MIG_DETMOVRECIBO_PARCIAL" 
   (	"NCARGA" NUMBER, 
	"CESTMIG" NUMBER, 
	"MIG_PK" VARCHAR2(50 BYTE), 
	"MIG_FK" VARCHAR2(50 BYTE), 
	"NRECIBO" NUMBER, 
	"SMOVREC" NUMBER, 
	"NORDEN" NUMBER(2,0), 
	"CCONCEP" NUMBER(2,0), 
	"CGARANT" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"FMOVIMI" DATE, 
	"ICONCEP" NUMBER, 
	"ICONCEP_MONPOL" NUMBER, 
	"NMOVIMA" NUMBER, 
	"FCAMBIO" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."MIG_PK" IS 'Clave �nica de MIG_DETMOVRECIBO_PARCIAL';
   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."MIG_FK" IS 'Clave externa para MIG_RECIBOS';
   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."NRECIBO" IS 'N�mero de recibo.';
   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."SMOVREC" IS 'Secuencial del movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."NORDEN" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."CCONCEP" IS 'C�digo del concepto (VALOR FIJO:27)';
   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."CGARANT" IS 'C�digo de garant�a. (Definici�n Producto)';
   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."NRIESGO" IS 'N�mero de Riesgo.';
   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."FMOVIMI" IS 'Fecha de movimiento';
   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."ICONCEP" IS 'Importe del concepto en moneda del producto.';
   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."ICONCEP_MONPOL" IS 'Importe del concepto en moneda de la p�liza';
   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."NMOVIMA" IS 'N�mero de movimiento de alta.';
   COMMENT ON COLUMN "AXIS"."MIG_DETMOVRECIBO_PARCIAL"."FCAMBIO" IS 'Fecha de cambio';
  GRANT DELETE ON "AXIS"."MIG_DETMOVRECIBO_PARCIAL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."MIG_DETMOVRECIBO_PARCIAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DETMOVRECIBO_PARCIAL" TO "R_AXIS";
  GRANT UPDATE ON "AXIS"."MIG_DETMOVRECIBO_PARCIAL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."MIG_DETMOVRECIBO_PARCIAL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."MIG_DETMOVRECIBO_PARCIAL" TO "PROGRAMADORESCSI";