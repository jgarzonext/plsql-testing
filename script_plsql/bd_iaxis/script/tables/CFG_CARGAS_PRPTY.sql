--------------------------------------------------------
--  DDL for Table CFG_CARGAS_PRPTY
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_CARGAS_PRPTY" 
   (	"CEMPRES" NUMBER(2,0), 
	"CPROCESO" NUMBER, 
	"CCAMPO" VARCHAR2(50 BYTE), 
	"CPRPTY" NUMBER, 
	"CVALUE" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_CARGAS_PRPTY"."CEMPRES" IS 'Codigo de empresa';
   COMMENT ON COLUMN "AXIS"."CFG_CARGAS_PRPTY"."CPROCESO" IS 'Codigo identificador de la carga';
   COMMENT ON COLUMN "AXIS"."CFG_CARGAS_PRPTY"."CCAMPO" IS 'Codigo del campo a aplicar propiedad';
   COMMENT ON COLUMN "AXIS"."CFG_CARGAS_PRPTY"."CPRPTY" IS 'identificador de la propiedad';
   COMMENT ON COLUMN "AXIS"."CFG_CARGAS_PRPTY"."CVALUE" IS 'valor asociado a la propiedad';
   COMMENT ON TABLE "AXIS"."CFG_CARGAS_PRPTY"  IS 'Carga de propiedades para las cargas';
  GRANT UPDATE ON "AXIS"."CFG_CARGAS_PRPTY" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_CARGAS_PRPTY" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_CARGAS_PRPTY" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_CARGAS_PRPTY" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_CARGAS_PRPTY" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_CARGAS_PRPTY" TO "PROGRAMADORESCSI";