--------------------------------------------------------
--  DDL for Table DESCPROD
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESCPROD" 
   (	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CDESC" NUMBER(2,0), 
	"CMODDESC" NUMBER(1,0), 
	"PDESC" NUMBER(5,2), 
	"SPRODUC" NUMBER(6,0), 
	"FINIVIG" DATE DEFAULT to_date('01/01/1900','dd/mm/yyyy'), 
	"FALTA" DATE, 
	"CUSUALTA" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"NINIALT" NUMBER, 
	"NFINALT" NUMBER
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESCPROD"."CRAMO" IS 'C�digo ramo';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."CMODALI" IS 'C�digo modalidad';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."CTIPSEG" IS 'C�digo tipo de seguro';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."CCOLECT" IS 'C�digo de colectividad';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."CDESC" IS 'C�digo descuento';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."CMODDESC" IS 'Modalidad de descuento';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."PDESC" IS 'Porcentaje de descuento';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."SPRODUC" IS 'Codi producte';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."FINIVIG" IS 'Fecha inicio vigencia comisi�n';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."FALTA" IS 'Fecha alta comisi�n';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."CUSUALTA" IS 'Codigo usuario alta comisi�n';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."FMODIFI" IS 'Fecha modificaci�n comision';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."CUSUMOD" IS 'C�digo usuario modificaci�n comisi�n';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."NINIALT" IS 'Inicio de la altura';
   COMMENT ON COLUMN "AXIS"."DESCPROD"."NFINALT" IS 'Fin de la altura';
   COMMENT ON TABLE "AXIS"."DESCPROD"  IS 'Descuento Productos';
  GRANT UPDATE ON "AXIS"."DESCPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESCPROD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESCPROD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESCPROD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESCPROD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESCPROD" TO "PROGRAMADORESCSI";
