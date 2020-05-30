--------------------------------------------------------
--  DDL for Table LOG_INSTALACION
--------------------------------------------------------

  CREATE TABLE "GEDOX"."LOG_INSTALACION" 
   (	"CODIGO" VARCHAR2(20 BYTE), 
	"FECHA" DATE, 
	"USUARIO" VARCHAR2(300 BYTE), 
	"MODULOS" VARCHAR2(4000 BYTE), 
	"ERROR" NUMBER, 
	"TITULO" VARCHAR2(1000 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "GEDOX" ;

   COMMENT ON COLUMN "GEDOX"."LOG_INSTALACION"."CODIGO" IS 'Codigo de la entrega, actualizacion';
   COMMENT ON COLUMN "GEDOX"."LOG_INSTALACION"."FECHA" IS 'Fecha y hora de instalacion';
   COMMENT ON COLUMN "GEDOX"."LOG_INSTALACION"."USUARIO" IS 'Usuario de instalacion';
   COMMENT ON COLUMN "GEDOX"."LOG_INSTALACION"."MODULOS" IS 'Lista de modulos instalados';
   COMMENT ON COLUMN "GEDOX"."LOG_INSTALACION"."ERROR" IS 'Indica si existe error en la instalacion de la actualizacion';
