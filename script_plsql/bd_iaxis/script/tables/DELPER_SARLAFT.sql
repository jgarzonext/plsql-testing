--------------------------------------------------------
--  DDL for Table DELPER_SARLAFT
--------------------------------------------------------

  CREATE TABLE "AXIS"."DELPER_SARLAFT" 
   (	"CUSUARIDEL" VARCHAR2(40 BYTE), 
	"FDEL" DATE, 
	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"FEFECTO" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DELPER_SARLAFT"."SPERSON" IS 'Secuencia �nica de identificaci�n de una persona';
   COMMENT ON COLUMN "AXIS"."DELPER_SARLAFT"."CAGENTE" IS 'C�digo de agente';
   COMMENT ON COLUMN "AXIS"."DELPER_SARLAFT"."FEFECTO" IS 'Fecha de efecto del documento SARLAFT';
   COMMENT ON COLUMN "AXIS"."DELPER_SARLAFT"."CUSUALT" IS 'C�digo usuario alta del registro';
   COMMENT ON COLUMN "AXIS"."DELPER_SARLAFT"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."DELPER_SARLAFT"."CUSUARI" IS 'C�digo usuario modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."DELPER_SARLAFT"."FMOVIMI" IS 'Fecha de modificaci�n del registro';
   COMMENT ON TABLE "AXIS"."DELPER_SARLAFT"  IS 'Tabla de datos SARLAFT de la persona';
  GRANT UPDATE ON "AXIS"."DELPER_SARLAFT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_SARLAFT" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DELPER_SARLAFT" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DELPER_SARLAFT" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_SARLAFT" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DELPER_SARLAFT" TO "PROGRAMADORESCSI";
