--------------------------------------------------------
--  DDL for Table INT_DATOS_POL_PREG
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_DATOS_POL_PREG" 
   (	"SINTERF" NUMBER(6,0), 
	"CNIVEL" VARCHAR2(15 BYTE), 
	"TVALORES" VARCHAR2(2000 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_DATOS_POL_PREG"."SINTERF" IS 'Secuencia para la interfaz';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_POL_PREG"."CNIVEL" IS 'Nivel de los datos (poliza, preguntas, ...)';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_POL_PREG"."TVALORES" IS 'Valores recolectados';
   COMMENT ON TABLE "AXIS"."INT_DATOS_POL_PREG"  IS 'Interficie detalle datos de la p�liza y de las preguntas';
  GRANT UPDATE ON "AXIS"."INT_DATOS_POL_PREG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_DATOS_POL_PREG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_DATOS_POL_PREG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_DATOS_POL_PREG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_DATOS_POL_PREG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_DATOS_POL_PREG" TO "PROGRAMADORESCSI";
