--------------------------------------------------------
--  DDL for Table CODICAMPANYA
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODICAMPANYA" 
   (	"CCAMPANYA" NUMBER(3,0), 
	"FINICIO" DATE, 
	"FFIN" DATE, 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FMODIF" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODICAMPANYA"."CCAMPANYA" IS 'C�digo de campa�a';
   COMMENT ON COLUMN "AXIS"."CODICAMPANYA"."FINICIO" IS 'Fecha de inicio de la campa�a';
   COMMENT ON COLUMN "AXIS"."CODICAMPANYA"."FFIN" IS 'Fecha fin de la campa�a';
   COMMENT ON COLUMN "AXIS"."CODICAMPANYA"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."CODICAMPANYA"."CUSUALT" IS 'Usuario que ha dado de alta el registro';
   COMMENT ON COLUMN "AXIS"."CODICAMPANYA"."FMODIF" IS 'Fecha de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."CODICAMPANYA"."CUSUMOD" IS 'Usurario que ha modificado el registro';
   COMMENT ON TABLE "AXIS"."CODICAMPANYA"  IS 'C�digos de Campa�as';
  GRANT UPDATE ON "AXIS"."CODICAMPANYA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODICAMPANYA" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODICAMPANYA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODICAMPANYA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODICAMPANYA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODICAMPANYA" TO "PROGRAMADORESCSI";
