--------------------------------------------------------
--  DDL for Table ESTPER_NACIONALIDADES
--------------------------------------------------------

  CREATE TABLE "AXIS"."ESTPER_NACIONALIDADES" 
   (	"SPERSON" NUMBER(10,0), 
	"CAGENTE" NUMBER, 
	"CPAIS" NUMBER(3,0), 
	"CDEFECTO" NUMBER(1,0) DEFAULT 0, 
	"NORDEN" NUMBER(2,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."ESTPER_NACIONALIDADES"."SPERSON" IS 'Identificador �nico de persona';
   COMMENT ON COLUMN "AXIS"."ESTPER_NACIONALIDADES"."CAGENTE" IS 'Identificador �nico de agente';
   COMMENT ON COLUMN "AXIS"."ESTPER_NACIONALIDADES"."CPAIS" IS 'C�digo de p�as';
   COMMENT ON COLUMN "AXIS"."ESTPER_NACIONALIDADES"."CDEFECTO" IS 'Indica si la es la nacionalidad por defecto de la persona (0/1) -> (Si/No). (VF 108)';
   COMMENT ON COLUMN "AXIS"."ESTPER_NACIONALIDADES"."NORDEN" IS 'N�mero de orden';
   COMMENT ON COLUMN "AXIS"."ESTPER_NACIONALIDADES"."CUSUALT" IS 'Usuario Creaci�n';
   COMMENT ON COLUMN "AXIS"."ESTPER_NACIONALIDADES"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."ESTPER_NACIONALIDADES"."CUSUMOD" IS 'Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."ESTPER_NACIONALIDADES"."FMODIFI" IS 'Fecha de Modificaci�n';
  GRANT UPDATE ON "AXIS"."ESTPER_NACIONALIDADES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPER_NACIONALIDADES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."ESTPER_NACIONALIDADES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."ESTPER_NACIONALIDADES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."ESTPER_NACIONALIDADES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."ESTPER_NACIONALIDADES" TO "PROGRAMADORESCSI";
