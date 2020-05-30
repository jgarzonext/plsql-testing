--------------------------------------------------------
--  DDL for Table OBJASEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."OBJASEG" 
   (	"CIDIOMA" NUMBER(2,0), 
	"COBJASEG" VARCHAR2(2 BYTE), 
	"TOBJASEG" VARCHAR2(100 BYTE), 
	"FBAJLOG" DATE, 
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

   COMMENT ON COLUMN "AXIS"."OBJASEG"."CIDIOMA" IS 'C�digo del idioma';
   COMMENT ON COLUMN "AXIS"."OBJASEG"."COBJASEG" IS 'C�digo del Tipo';
   COMMENT ON COLUMN "AXIS"."OBJASEG"."TOBJASEG" IS 'Descripci�n del Tipo';
   COMMENT ON COLUMN "AXIS"."OBJASEG"."FBAJLOG" IS 'Fecha de baja l�gica';
   COMMENT ON COLUMN "AXIS"."OBJASEG"."CUSUALT" IS 'Usuario que ha dado de alta el registro';
   COMMENT ON COLUMN "AXIS"."OBJASEG"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."OBJASEG"."CUSUMOD" IS 'Usuario que ha realizado la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."OBJASEG"."FMODIFI" IS 'Fecha de la �ltima modificaci�n del registro';
   COMMENT ON TABLE "AXIS"."OBJASEG"  IS 'Tabla de Tipos Objetos asegurados';
  GRANT UPDATE ON "AXIS"."OBJASEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."OBJASEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."OBJASEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."OBJASEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."OBJASEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."OBJASEG" TO "PROGRAMADORESCSI";
