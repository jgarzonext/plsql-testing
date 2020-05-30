--------------------------------------------------------
--  DDL for Table DELPER_ANTIGUEDAD
--------------------------------------------------------

  CREATE TABLE "AXIS"."DELPER_ANTIGUEDAD" 
   (	"CUSUARIDEL" VARCHAR2(40 BYTE), 
	"FDEL" DATE, 
	"SPERSON" NUMBER(10,0), 
	"CAGRUPA" NUMBER(3,0), 
	"NORDEN" NUMBER(8,0), 
	"FANTIGUEDAD" DATE, 
	"CESTADO" NUMBER(3,0), 
	"SSEGURO_INI" NUMBER(6,0), 
	"NMOVIMI_INI" NUMBER(4,0), 
	"FFIN" DATE, 
	"SSEGURO_FIN" NUMBER(6,0), 
	"NMOVIMI_FIN" NUMBER(4,0), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."SPERSON" IS 'Secuencia unica de identificacion de una persona';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."CAGRUPA" IS 'C�digo de la agrupaci�n (tabla CODAGRUPA_ANTIGUEDAD)';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."NORDEN" IS 'N� de orden por persona por agrupaci�n';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."FANTIGUEDAD" IS 'Fecha de antig�edad de la persona en la agrupaci�n';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."CESTADO" IS 'Estado de la antig�edad de la persona (v.f.1120)';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."SSEGURO_INI" IS 'Identificador de la p�liza que provoc� el inicio de la antig�edad';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."NMOVIMI_INI" IS 'Movimiento del sseguro_ini en el cual se provoc� el inicio de la antig�edad';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."FFIN" IS 'Fecha fin de la antig�edad de la persona en la agrupaci�n';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."SSEGURO_FIN" IS 'Identificador de la p�liza que provoc� el fin de la antig�edad';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."NMOVIMI_FIN" IS 'Movimiento del sseguro_fin en el cual se provoc� el fin de la antig�edad';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."FALTA" IS 'Fecha de alta';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."CUSUALT" IS 'Usuario de alta';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."FMODIFI" IS 'Fecha de modificaci�n';
   COMMENT ON COLUMN "AXIS"."DELPER_ANTIGUEDAD"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON TABLE "AXIS"."DELPER_ANTIGUEDAD"  IS 'Antig�edad por persona por agrupaci�n PERSONAS-BORRADAS';
  GRANT UPDATE ON "AXIS"."DELPER_ANTIGUEDAD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_ANTIGUEDAD" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DELPER_ANTIGUEDAD" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DELPER_ANTIGUEDAD" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DELPER_ANTIGUEDAD" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DELPER_ANTIGUEDAD" TO "PROGRAMADORESCSI";
