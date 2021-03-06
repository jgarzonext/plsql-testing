--------------------------------------------------------
--  DDL for Table PREGUNPROTAB
--------------------------------------------------------

  CREATE TABLE "AXIS"."PREGUNPROTAB" 
   (	"CPREGUN" NUMBER(4,0), 
	"SPRODUC" NUMBER(8,0), 
	"COLUMNA" VARCHAR2(100 BYTE), 
	"TVALIDA" VARCHAR2(100 BYTE), 
	"CTIPDATO" VARCHAR2(250 BYTE), 
	"COBLIGA" NUMBER(1,0), 
	"CREVALORIZA" NUMBER(1,0), 
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

   COMMENT ON COLUMN "AXIS"."PREGUNPROTAB"."CPREGUN" IS 'C�digo de la pregunta';
   COMMENT ON COLUMN "AXIS"."PREGUNPROTAB"."SPRODUC" IS 'Identificador del producto';
   COMMENT ON COLUMN "AXIS"."PREGUNPROTAB"."COLUMNA" IS 'Identificador de la columna';
   COMMENT ON COLUMN "AXIS"."PREGUNPROTAB"."TVALIDA" IS 'Funci�n de validaci�n';
   COMMENT ON COLUMN "AXIS"."PREGUNPROTAB"."CTIPDATO" IS 'Tipo de DATO Nuevo DETVALOR';
   COMMENT ON COLUMN "AXIS"."PREGUNPROTAB"."COBLIGA" IS 'Indica si la columna es obligatoria dentro del atributo';
   COMMENT ON COLUMN "AXIS"."PREGUNPROTAB"."CREVALORIZA" IS 'Revaloriza si/no . Detvalores 108';
   COMMENT ON COLUMN "AXIS"."PREGUNPROTAB"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."PREGUNPROTAB"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."PREGUNPROTAB"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."PREGUNPROTAB"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."PREGUNPROTAB"  IS 'Parametrizaci�n pregunta tabla por producto';
  GRANT UPDATE ON "AXIS"."PREGUNPROTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNPROTAB" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PREGUNPROTAB" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PREGUNPROTAB" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PREGUNPROTAB" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PREGUNPROTAB" TO "PROGRAMADORESCSI";
