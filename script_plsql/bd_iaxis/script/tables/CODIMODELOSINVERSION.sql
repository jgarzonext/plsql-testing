--------------------------------------------------------
--  DDL for Table CODIMODELOSINVERSION
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODIMODELOSINVERSION" 
   (	"CIDIOMA" NUMBER(2,0), 
	"TMODINV" VARCHAR2(50 BYTE), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CMODINV" NUMBER(4,0), 
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

   COMMENT ON COLUMN "AXIS"."CODIMODELOSINVERSION"."CIDIOMA" IS 'C�digo de idioma';
   COMMENT ON COLUMN "AXIS"."CODIMODELOSINVERSION"."TMODINV" IS 'Texto del modelo de inversi�n';
   COMMENT ON COLUMN "AXIS"."CODIMODELOSINVERSION"."CMODINV" IS 'C�digo de modelo de inversi�n';
   COMMENT ON COLUMN "AXIS"."CODIMODELOSINVERSION"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."CODIMODELOSINVERSION"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."CODIMODELOSINVERSION"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."CODIMODELOSINVERSION"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON TABLE "AXIS"."CODIMODELOSINVERSION"  IS 'C�digos de modelos de inversi�n';
  GRANT UPDATE ON "AXIS"."CODIMODELOSINVERSION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIMODELOSINVERSION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODIMODELOSINVERSION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODIMODELOSINVERSION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODIMODELOSINVERSION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODIMODELOSINVERSION" TO "PROGRAMADORESCSI";