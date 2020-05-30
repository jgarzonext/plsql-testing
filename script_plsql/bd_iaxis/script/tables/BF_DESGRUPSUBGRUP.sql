--------------------------------------------------------
--  DDL for Table BF_DESGRUPSUBGRUP
--------------------------------------------------------

  CREATE TABLE "AXIS"."BF_DESGRUPSUBGRUP" 
   (	"CEMPRES" NUMBER(6,0), 
	"CGRUP" NUMBER(6,0), 
	"CSUBGRUP" NUMBER(6,0), 
	"CVERSION" NUMBER(6,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TGRUPSUBGRUP" VARCHAR2(200 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."BF_DESGRUPSUBGRUP"."CEMPRES" IS 'C�digo de Empresa';
   COMMENT ON COLUMN "AXIS"."BF_DESGRUPSUBGRUP"."CGRUP" IS 'C�digo de Grupo de Bonus/Franqu�cias';
   COMMENT ON COLUMN "AXIS"."BF_DESGRUPSUBGRUP"."CSUBGRUP" IS 'C�digo Subgrupo de Bonus/Franqu�cias';
   COMMENT ON COLUMN "AXIS"."BF_DESGRUPSUBGRUP"."CVERSION" IS 'C�digo de Versi�n';
   COMMENT ON COLUMN "AXIS"."BF_DESGRUPSUBGRUP"."CIDIOMA" IS 'C�digo del Idioma';
   COMMENT ON COLUMN "AXIS"."BF_DESGRUPSUBGRUP"."TGRUPSUBGRUP" IS 'Descripci�n Grupo/Subgrupo de Bonus/Franqu�cias';
   COMMENT ON COLUMN "AXIS"."BF_DESGRUPSUBGRUP"."CUSUALT" IS 'Usuario creaci�n';
   COMMENT ON COLUMN "AXIS"."BF_DESGRUPSUBGRUP"."FALTA" IS 'Fecha creaci�n';
   COMMENT ON COLUMN "AXIS"."BF_DESGRUPSUBGRUP"."CUSUMOD" IS 'Usuario modificaci�n';
   COMMENT ON COLUMN "AXIS"."BF_DESGRUPSUBGRUP"."FMODIFI" IS 'Fecha modificaci�n';
   COMMENT ON TABLE "AXIS"."BF_DESGRUPSUBGRUP"  IS 'Descripci�n Grupos/Subgrupos de Bonus/Franqu�cias';
  GRANT UPDATE ON "AXIS"."BF_DESGRUPSUBGRUP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BF_DESGRUPSUBGRUP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."BF_DESGRUPSUBGRUP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."BF_DESGRUPSUBGRUP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."BF_DESGRUPSUBGRUP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."BF_DESGRUPSUBGRUP" TO "PROGRAMADORESCSI";