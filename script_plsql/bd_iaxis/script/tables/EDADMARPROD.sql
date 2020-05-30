--------------------------------------------------------
--  DDL for Table EDADMARPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."EDADMARPROD" 
   (	"SPRODUC" NUMBER(6,0), 
	"NEDAMAR" NUMBER(2,0), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EDADMARPROD"."SPRODUC" IS 'Secuencia del producto';
   COMMENT ON COLUMN "AXIS"."EDADMARPROD"."NEDAMAR" IS 'Edad M�x. de renovaci�n';
   COMMENT ON COLUMN "AXIS"."EDADMARPROD"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."EDADMARPROD"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."EDADMARPROD"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."EDADMARPROD"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."EDADMARPROD"  IS 'Tabla vincula la edad M�x de renovaci�n con sus productos';
  GRANT SELECT ON "AXIS"."EDADMARPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EDADMARPROD" TO "PROGRAMADORESCSI";
  GRANT UPDATE ON "AXIS"."EDADMARPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EDADMARPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EDADMARPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EDADMARPROD" TO "R_AXIS";
