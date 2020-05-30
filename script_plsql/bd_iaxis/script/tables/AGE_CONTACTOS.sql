--------------------------------------------------------
--  DDL for Table AGE_CONTACTOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGE_CONTACTOS" 
   (	"CAGENTE" NUMBER, 
	"CTIPO" NUMBER, 
	"NORDEN" NUMBER, 
	"NOMBRE" VARCHAR2(100 BYTE), 
	"CARGO" VARCHAR2(100 BYTE), 
	"IDDOMICI" NUMBER(2,0), 
	"TELEFONO" NUMBER(10,0), 
	"TELEFONO2" NUMBER(10,0), 
	"FAX" NUMBER(10,0), 
	"WEB" VARCHAR2(200 BYTE), 
	"EMAIL" VARCHAR2(200 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"FMOVIMI" DATE
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."CAGENTE" IS 'C�digo del agente';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."CTIPO" IS 'C�digo del tipo de contacto';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."NORDEN" IS 'Numero de orden';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."NOMBRE" IS 'Nombre del contacto';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."CARGO" IS 'Descripci�n del cargo';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."IDDOMICI" IS 'C�digo del domicilio';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."TELEFONO" IS 'N� Tel�fono';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."TELEFONO2" IS 'N� Tel�fono';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."FAX" IS 'N� Fax';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."WEB" IS 'Direcci�n web';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."EMAIL" IS 'Email';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."CUSUALT" IS 'C�digo usuario alta del registro';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."CUSUARI" IS 'C�digo usuario modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AGE_CONTACTOS"."FMOVIMI" IS 'Fecha modificaci�n del registro';
   COMMENT ON TABLE "AXIS"."AGE_CONTACTOS"  IS 'Personas de contacto agente ';
  GRANT UPDATE ON "AXIS"."AGE_CONTACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGE_CONTACTOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGE_CONTACTOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGE_CONTACTOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGE_CONTACTOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGE_CONTACTOS" TO "PROGRAMADORESCSI";