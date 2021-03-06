--------------------------------------------------------
--  DDL for Table CODPLANBENEF
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODPLANBENEF" 
   (	"CEMPRES" NUMBER(2,0), 
	"CPLAN" NUMBER(6,0), 
	"NORDEN" NUMBER(6,0), 
	"CACCION" NUMBER(3,0), 
	"CGARANT" NUMBER(4,0), 
	"NVALOR" NUMBER, 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODPLANBENEF"."CEMPRES" IS 'C�digo de la empresa';
   COMMENT ON COLUMN "AXIS"."CODPLANBENEF"."CPLAN" IS 'C�digo del plan';
   COMMENT ON COLUMN "AXIS"."CODPLANBENEF"."NORDEN" IS 'Orden de ejecuci�n';
   COMMENT ON COLUMN "AXIS"."CODPLANBENEF"."CACCION" IS 'Acci�n sobre la que se aplica el descuento del plan (v.f. 1130)';
   COMMENT ON COLUMN "AXIS"."CODPLANBENEF"."CGARANT" IS 'C�digo de garant�a';
   COMMENT ON COLUMN "AXIS"."CODPLANBENEF"."NVALOR" IS 'Capital de la garantia';
   COMMENT ON COLUMN "AXIS"."CODPLANBENEF"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."CODPLANBENEF"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."CODPLANBENEF"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."CODPLANBENEF"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON TABLE "AXIS"."CODPLANBENEF"  IS 'Descuentos por plan de beneficios';
  GRANT UPDATE ON "AXIS"."CODPLANBENEF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODPLANBENEF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODPLANBENEF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODPLANBENEF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODPLANBENEF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODPLANBENEF" TO "PROGRAMADORESCSI";
