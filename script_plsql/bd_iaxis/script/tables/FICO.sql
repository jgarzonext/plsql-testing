--------------------------------------------------------
--  DDL for Table FICO
--------------------------------------------------------

  CREATE TABLE "AXIS"."FICO" 
   (	"PROCESO" NUMBER(10,0), 
	"NLINEA" NUMBER(9,0), 
	"ENTIDAD" VARCHAR2(4 BYTE), 
	"ESTADO" VARCHAR2(11 BYTE), 
	"POLIZA" VARCHAR2(16 BYTE), 
	"CIF" VARCHAR2(9 BYTE), 
	"FANULACION" DATE, 
	"ANULACION" VARCHAR2(2 BYTE), 
	"CAPITAL" NUMBER(5,0), 
	"DIRECCION" VARCHAR2(45 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."FICO"."PROCESO" IS 'Proceso carga fichero';
   COMMENT ON COLUMN "AXIS"."FICO"."NLINEA" IS 'N�mero linea carga fichero';
   COMMENT ON COLUMN "AXIS"."FICO"."ENTIDAD" IS 'Entidad';
   COMMENT ON COLUMN "AXIS"."FICO"."ESTADO" IS 'Datos ICEA';
   COMMENT ON COLUMN "AXIS"."FICO"."POLIZA" IS 'N�mero p�liza';
   COMMENT ON COLUMN "AXIS"."FICO"."CIF" IS 'Identificador persona';
   COMMENT ON COLUMN "AXIS"."FICO"."FANULACION" IS 'Fecha de anulaci�n';
   COMMENT ON COLUMN "AXIS"."FICO"."ANULACION" IS 'Motivo anulaci�n. A -Exceso siniestralidad / F -Siniestralidad no comprobada / A* -NO exceso siniestralidad / F* -NO siniestralidad comprobada';
   COMMENT ON COLUMN "AXIS"."FICO"."CAPITAL" IS 'Capital';
   COMMENT ON COLUMN "AXIS"."FICO"."DIRECCION" IS 'Direcci�n';
   COMMENT ON TABLE "AXIS"."FICO"  IS 'Carga ficheros FICO de la empresa ICEA';
  GRANT UPDATE ON "AXIS"."FICO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FICO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."FICO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."FICO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."FICO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."FICO" TO "PROGRAMADORESCSI";
