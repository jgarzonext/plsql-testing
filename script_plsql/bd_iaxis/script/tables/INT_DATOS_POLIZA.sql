--------------------------------------------------------
--  DDL for Table INT_DATOS_POLIZA
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_DATOS_POLIZA" 
   (	"SINTERF" NUMBER(6,0), 
	"NPOLIZA" VARCHAR2(15 BYTE), 
	"FPOLIZA" DATE, 
	"NSOLICI" VARCHAR2(15 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_DATOS_POLIZA"."SINTERF" IS 'Secuencia para la interfaz';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_POLIZA"."NPOLIZA" IS 'N�mero de p�liza';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_POLIZA"."FPOLIZA" IS 'Fecha';
   COMMENT ON COLUMN "AXIS"."INT_DATOS_POLIZA"."NSOLICI" IS 'N�mero de solicitud';
   COMMENT ON TABLE "AXIS"."INT_DATOS_POLIZA"  IS 'Interficie detalle datos de p�liza';
  GRANT UPDATE ON "AXIS"."INT_DATOS_POLIZA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_DATOS_POLIZA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_DATOS_POLIZA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_DATOS_POLIZA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_DATOS_POLIZA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_DATOS_POLIZA" TO "PROGRAMADORESCSI";