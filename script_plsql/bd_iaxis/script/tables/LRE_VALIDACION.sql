--------------------------------------------------------
--  DDL for Table LRE_VALIDACION
--------------------------------------------------------

  CREATE TABLE "AXIS"."LRE_VALIDACION" 
   (	"CEMPRES" NUMBER(2,0), 
	"SPRODUC" NUMBER(8,0), 
	"CACTIVI" NUMBER(4,0), 
	"NORDVAL" NUMBER(3,0), 
	"CACCION" NUMBER(2,0), 
	"TLREVAL" VARCHAR2(2000 BYTE), 
	"CCLALIS" NUMBER(3,0), 
	"CTIPLIS" NUMBER(3,0), 
	"CROL" NUMBER(3,0), 
	"CNOTIFI" NUMBER(1,0) DEFAULT 0, 
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

   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."CEMPRES" IS 'C�digo de la empresa';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."CACTIVI" IS 'C�digo de la actividad';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."NORDVAL" IS 'Secuencia en que se realizan las validaciones';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."CACCION" IS 'Acci�n realizada: (V.F. 800121)';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."TLREVAL" IS 'Funci�n que valida si es necesario introducir una LRI';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."CCLALIS" IS 'Clase lista (V.F. 800040) Externa, Interna';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."CTIPLIS" IS 'Tipo lista (V.F. 800048)';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."CROL" IS 'Rol de la persona 1-Tomadores, 2-Asegurados, 3-Tomadores y Asegurados, 4-Conductores, 5.Auto(matr�cula)';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."CNOTIFI" IS 'Indicador de notificaci�n de personas en la LRE 0-NO 1-SI';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."CUSUALT" IS 'Usuario alta del registro';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."FALTA" IS 'Fecha alta del registro';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."CUSUMOD" IS 'Usuario �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."LRE_VALIDACION"."FMODIFI" IS 'Fecha �ltima modificaci�n del registro';
   COMMENT ON TABLE "AXIS"."LRE_VALIDACION"  IS 'Tabla de configuraci�n de las validaciones de inserci�n en LRI';
  GRANT UPDATE ON "AXIS"."LRE_VALIDACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LRE_VALIDACION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."LRE_VALIDACION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."LRE_VALIDACION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."LRE_VALIDACION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."LRE_VALIDACION" TO "PROGRAMADORESCSI";
