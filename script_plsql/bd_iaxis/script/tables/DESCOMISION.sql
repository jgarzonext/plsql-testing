--------------------------------------------------------
--  DDL for Table DESCOMISION
--------------------------------------------------------

  CREATE TABLE "AXIS"."DESCOMISION" 
   (	"CIDIOMA" NUMBER(2,0), 
	"CCOMISI" NUMBER, 
	"TCOMISI" VARCHAR2(100 BYTE), 
	"FALTA" DATE, 
	"CUSUALTA" VARCHAR2(32 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(32 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DESCOMISION"."CIDIOMA" IS 'C�digo de Idioma';
   COMMENT ON COLUMN "AXIS"."DESCOMISION"."CCOMISI" IS 'C�digo comisi�n';
   COMMENT ON COLUMN "AXIS"."DESCOMISION"."TCOMISI" IS 'Descripci�n comisi�n';
   COMMENT ON COLUMN "AXIS"."DESCOMISION"."FALTA" IS 'Fecha alta comisi�n';
   COMMENT ON COLUMN "AXIS"."DESCOMISION"."CUSUALTA" IS 'Usuario alta comisi�n';
   COMMENT ON COLUMN "AXIS"."DESCOMISION"."FMODIFI" IS 'Fecha modificaci�n comisi�n';
   COMMENT ON COLUMN "AXIS"."DESCOMISION"."CUSUMOD" IS 'Usuario modificaci�n comisi�n';
  GRANT UPDATE ON "AXIS"."DESCOMISION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESCOMISION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DESCOMISION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DESCOMISION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DESCOMISION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DESCOMISION" TO "PROGRAMADORESCSI";
