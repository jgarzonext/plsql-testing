--------------------------------------------------------
--  DDL for Table ESTADOS_RECIBO
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTADOS_RECIBO" 
   (	"CEMPRES" NUMBER, 
	"CTIPCOB" NUMBER, 
	"CESTIMP" NUMBER, 
	"CEXTORNO" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTADOS_RECIBO"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."ESTADOS_RECIBO"."CTIPCOB" IS 'Tipo de cobro del recibo (VF 1026)';
   COMMENT ON COLUMN "AXIS"."ESTADOS_RECIBO"."CESTIMP" IS 'Estado de impresi�n';
   COMMENT ON COLUMN "AXIS"."ESTADOS_RECIBO"."CEXTORNO" IS 'Es extorno';
   COMMENT ON TABLE "AXIS"."ESTADOS_RECIBO"  IS 'Estados de recibo permitidos';
  GRANT UPDATE ON "AXIS"."ESTADOS_RECIBO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTADOS_RECIBO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTADOS_RECIBO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTADOS_RECIBO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTADOS_RECIBO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTADOS_RECIBO" TO "PROGRAMADORESCSI";