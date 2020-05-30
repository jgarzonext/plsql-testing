--------------------------------------------------------
--  DDL for Table RIESGOACTAMP_CONF
--------------------------------------------------------

  CREATE TABLE "AXIS"."RIESGOACTAMP_CONF" 
   (	"CEMPRES" NUMBER(2,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CACTIVI" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"CRIESGOACT" NUMBER, 
	"CCODAMPARO" NUMBER, 
	"PRECARG" NUMBER(6,2), 
	"IEXTRAP" NUMBER(19,12), 
	"CRETEN" CHAR(1 BYTE), 
	"FFECINI" DATE, 
	"FFECFIN" DATE, 
	"CGRURIES" NUMBER(2,0), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CEMPRES" IS 'Codigo de la empresa';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CRAMO" IS 'Codigo del ramo';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CMODALI" IS 'Codigo de la modalidad';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CTIPSEG" IS 'Codigo del tipo de seguro';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CCOLECT" IS 'Codigo de colectividad';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CACTIVI" IS 'Codigo de actividad';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CGARANT" IS 'Codigo de garantia';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CRIESGOACT" IS 'Riesgo actividad';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CCODAMPARO" IS 'Codigo del amparo';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."PRECARG" IS 'Sobreprima';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."IEXTRAP" IS 'Extraprima';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CRETEN" IS '¿Se retiene la poliza? (S=Si, N=No, R=Rechazar, F=Necesidad Facultativo)';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."FFECINI" IS 'Fecha de inicio vigencia';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."FFECFIN" IS 'Fecha fin vigencia';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CGRURIES" IS 'Codigo de grupo de riesgo';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."FALTA" IS 'Fecha en la que se crea el registro';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."RIESGOACTAMP_CONF"."FMODIFI" IS 'Fecha en que se modifica el registro';
  GRANT UPDATE ON "AXIS"."RIESGOACTAMP_CONF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."RIESGOACTAMP_CONF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."RIESGOACTAMP_CONF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."RIESGOACTAMP_CONF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."RIESGOACTAMP_CONF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."RIESGOACTAMP_CONF" TO "PROGRAMADORESCSI";
