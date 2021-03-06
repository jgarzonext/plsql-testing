--------------------------------------------------------
--  DDL for Table INT_SGT_SUBTABS
--------------------------------------------------------

  CREATE TABLE "AXIS"."INT_SGT_SUBTABS" 
   (	"SINTERF" NUMBER, 
	"NLINEA" NUMBER(6,0), 
	"IDREG" NUMBER(6,0), 
	"CSUBTABLA" NUMBER(9,0), 
	"TPERIODO" VARCHAR2(20 BYTE), 
	"TSUBTABLA" VARCHAR2(200 BYTE), 
	"TCLAVAL1" VARCHAR2(200 BYTE), 
	"TCLAVAL2" VARCHAR2(200 BYTE), 
	"TCLAVAL3" VARCHAR2(200 BYTE), 
	"TCLAVAL4" VARCHAR2(200 BYTE), 
	"TCLAVAL5" VARCHAR2(200 BYTE), 
	"TCLAVAL6" VARCHAR2(200 BYTE), 
	"TCLAVAL7" VARCHAR2(200 BYTE), 
	"TCLAVAL8" VARCHAR2(200 BYTE), 
	"TCLAVAL9" VARCHAR2(200 BYTE), 
	"TCLAVAL10" VARCHAR2(200 BYTE), 
	"TCLAVAL11" VARCHAR2(200 BYTE), 
	"TCLAVAL12" VARCHAR2(200 BYTE), 
	"TCLAVAL13" VARCHAR2(200 BYTE), 
	"TCLAVAL14" VARCHAR2(200 BYTE), 
	"TCLAVAL15" VARCHAR2(200 BYTE), 
	"TCLAVAL16" VARCHAR2(200 BYTE), 
	"TCLAVAL17" VARCHAR2(200 BYTE), 
	"TCLAVAL18" VARCHAR2(200 BYTE), 
	"TCLAVAL19" VARCHAR2(200 BYTE), 
	"TCLAVAL20" VARCHAR2(200 BYTE), 
	"TCLAVAL21" VARCHAR2(200 BYTE), 
	"TCLAVAL22" VARCHAR2(200 BYTE), 
	"TCLAVAL23" VARCHAR2(200 BYTE), 
	"TCLAVAL24" VARCHAR2(200 BYTE), 
	"PROCESO" NUMBER(6,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."SINTERF" IS 'Secuencia de la interfaz';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."NLINEA" IS 'Numero de linea';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."IDREG" IS 'Identificador de registro';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."CSUBTABLA" IS 'C�digo de subtabla';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TPERIODO" IS 'Periodo Vigencia';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TSUBTABLA" IS 'Descripci�n Subtabla';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL1" IS 'Clave/Valor 1';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL2" IS 'Clave/Valor 2';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL3" IS 'Clave/Valor 3';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL4" IS 'Clave/Valor 4';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL5" IS 'Clave/Valor 5';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL6" IS 'Clave/Valor 6';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL7" IS 'Clave/Valor 7';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL8" IS 'Clave/Valor 8';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL9" IS 'Clave/Valor 9';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL10" IS 'Clave/Valor 10';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL11" IS 'Clave/Valor 11';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL12" IS 'Clave/Valor 12';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL13" IS 'Clave/Valor 13';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL14" IS 'Clave/Valor 14';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL15" IS 'Clave/Valor 15';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL16" IS 'Clave/Valor 16';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL17" IS 'Clave/Valor 17';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL18" IS 'Clave/Valor 18';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL19" IS 'Clave/Valor 19';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL20" IS 'Clave/Valor 20';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL21" IS 'Clave/Valor 21';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL22" IS 'Clave/Valor 22';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL23" IS 'Clave/Valor 23';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."TCLAVAL24" IS 'Clave/Valor 24';
   COMMENT ON COLUMN "AXIS"."INT_SGT_SUBTABS"."PROCESO" IS 'Id. Proceso';
   COMMENT ON TABLE "AXIS"."INT_SGT_SUBTABS"  IS 'Interfase Subtablas SGT';
  GRANT UPDATE ON "AXIS"."INT_SGT_SUBTABS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_SGT_SUBTABS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."INT_SGT_SUBTABS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."INT_SGT_SUBTABS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."INT_SGT_SUBTABS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."INT_SGT_SUBTABS" TO "PROGRAMADORESCSI";
