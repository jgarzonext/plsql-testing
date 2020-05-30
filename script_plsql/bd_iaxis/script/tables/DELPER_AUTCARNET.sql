--------------------------------------------------------
--  DDL for Table DELPER_AUTCARNET
--------------------------------------------------------

  CREATE TABLE "AXIS"."DELPER_AUTCARNET" 
   (	"CUSUARIDEL" VARCHAR2(40 BYTE), 
	"FDEL" DATE, 
	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CTIPCAR" VARCHAR2(4 BYTE), 
	"FCARNET" DATE, 
	"CDEFECTO" NUMBER(1,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DELPER_AUTCARNET"."SPERSON" IS 'Codigo de persona';
   COMMENT ON COLUMN "AXIS"."DELPER_AUTCARNET"."CAGENTE" IS 'Codigo de Agente';
   COMMENT ON COLUMN "AXIS"."DELPER_AUTCARNET"."CTIPCAR" IS 'codigo tipo de carnet';
   COMMENT ON COLUMN "AXIS"."DELPER_AUTCARNET"."FCARNET" IS 'Fecha de carnet';
   COMMENT ON COLUMN "AXIS"."DELPER_AUTCARNET"."CDEFECTO" IS 'Fecha de carnet por defecto a mostrar';
   COMMENT ON TABLE "AXIS"."DELPER_AUTCARNET"  IS 'Tabla de DELPER_AUTCARNET';
  GRANT UPDATE ON "AXIS"."DELPER_AUTCARNET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_AUTCARNET" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DELPER_AUTCARNET" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DELPER_AUTCARNET" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_AUTCARNET" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DELPER_AUTCARNET" TO "PROGRAMADORESCSI";
