--------------------------------------------------------
--  DDL for Table DOMI_SEPA
--------------------------------------------------------

  CREATE TABLE "AXIS"."DOMI_SEPA" 
   (	"IDDOMISEPA" NUMBER(8,0), 
	"CREDTTM" DATE, 
	"NBOFTXS" NUMBER(8,0), 
	"CTRLSUM" NUMBER(18,2), 
	"INITGPTY_NM_3" VARCHAR2(70 BYTE), 
	"OTHR_ID_6" VARCHAR2(35 BYTE), 
	"MSGID" NUMBER(6,0)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DOMI_SEPA"."CREDTTM" IS 'Fecha y hora de creación';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA"."NBOFTXS" IS 'Número de operaciones individuales que contiene el mensaje.';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA"."CTRLSUM" IS 'Suma total de todos los importes individuales';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA"."INITGPTY_NM_3" IS 'Nombre de la parte';
   COMMENT ON COLUMN "AXIS"."DOMI_SEPA"."OTHR_ID_6" IS 'Identificador de la parte iniciadora asignada por la entidad';
   COMMENT ON TABLE "AXIS"."DOMI_SEPA"  IS 'Tabla domiciliaciones sepa cabecera';
  GRANT UPDATE ON "AXIS"."DOMI_SEPA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOMI_SEPA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DOMI_SEPA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DOMI_SEPA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DOMI_SEPA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DOMI_SEPA" TO "PROGRAMADORESCSI";
