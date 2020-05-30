--------------------------------------------------------
--  DDL for Table ANUCASOS_BPMSEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."ANUCASOS_BPMSEG" 
   (	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
	"CEMPRES" NUMBER(5,0), 
	"NNUMCASO" NUMBER, 
	"CACTIVO" NUMBER(1,0), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ANUCASOS_BPMSEG"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente';
   COMMENT ON COLUMN "AXIS"."ANUCASOS_BPMSEG"."NMOVIMI" IS 'N�mero de movimiento';
   COMMENT ON COLUMN "AXIS"."ANUCASOS_BPMSEG"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."ANUCASOS_BPMSEG"."NNUMCASO" IS 'N�mero de caso';
   COMMENT ON COLUMN "AXIS"."ANUCASOS_BPMSEG"."CACTIVO" IS 'Indica si el caso est� activo para el movimiento de seguro o no (1-0)';
   COMMENT ON COLUMN "AXIS"."ANUCASOS_BPMSEG"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."ANUCASOS_BPMSEG"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."ANUCASOS_BPMSEG"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."ANUCASOS_BPMSEG"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON TABLE "AXIS"."ANUCASOS_BPMSEG"  IS 'Tabla que relaciona el caso BPM con el movimiento del seguro';
  GRANT UPDATE ON "AXIS"."ANUCASOS_BPMSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUCASOS_BPMSEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ANUCASOS_BPMSEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ANUCASOS_BPMSEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ANUCASOS_BPMSEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ANUCASOS_BPMSEG" TO "PROGRAMADORESCSI";