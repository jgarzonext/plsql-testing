--------------------------------------------------------
--  DDL for Table SUBOBJASEG
--------------------------------------------------------

  CREATE TABLE "AXIS"."SUBOBJASEG" 
   (	"CIDIOMA" NUMBER(2,0), 
	"COBJASEG" VARCHAR2(2 BYTE), 
	"CSUBOBJASEG" VARCHAR2(2 BYTE), 
	"TSUBOBJASEG" VARCHAR2(100 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."SUBOBJASEG"."CIDIOMA" IS 'C�digo del idioma';
   COMMENT ON COLUMN "AXIS"."SUBOBJASEG"."COBJASEG" IS 'C�digo del Objeto Asegurado';
   COMMENT ON COLUMN "AXIS"."SUBOBJASEG"."CSUBOBJASEG" IS 'C�digo del subTipo';
   COMMENT ON COLUMN "AXIS"."SUBOBJASEG"."TSUBOBJASEG" IS 'Descripci�n del subTipo';
   COMMENT ON COLUMN "AXIS"."SUBOBJASEG"."FBAJLOG" IS 'Fecha de baja l�gica';
   COMMENT ON COLUMN "AXIS"."SUBOBJASEG"."CUSUALT" IS 'Usuario que ha dado de alta el registro';
   COMMENT ON COLUMN "AXIS"."SUBOBJASEG"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."SUBOBJASEG"."CUSUMOD" IS 'Usuario que ha realizado la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."SUBOBJASEG"."FMODIFI" IS 'Fecha de la �ltima modificaci�n del registro';
   COMMENT ON TABLE "AXIS"."SUBOBJASEG"  IS 'Tabla de Tipos sub Objetos asegurados';
  GRANT UPDATE ON "AXIS"."SUBOBJASEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SUBOBJASEG" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."SUBOBJASEG" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."SUBOBJASEG" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."SUBOBJASEG" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."SUBOBJASEG" TO "PROGRAMADORESCSI";
