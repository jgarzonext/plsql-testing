--------------------------------------------------------
--  DDL for Table CFG_USER_DEF
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_USER_DEF" 
   (	"CEMPRES" NUMBER(2,0), 
	"CTIPACC" NUMBER(2,0), 
	"CROLMEN" VARCHAR2(20 BYTE), 
	"CCFGFORM" VARCHAR2(50 BYTE), 
	"CCFGWIZ" VARCHAR2(50 BYTE), 
	"CCFGACC" VARCHAR2(50 BYTE), 
	"CCONSUPL" VARCHAR2(50 BYTE), 
	"CDSIROL" VARCHAR2(20 BYTE), 
	"CCFGDOC" VARCHAR2(50 BYTE), 
	"CACCPROD" VARCHAR2(50 BYTE), 
	"CCFGMAP" VARCHAR2(50 BYTE), 
	"CROL" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_USER_DEF"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."CFG_USER_DEF"."CTIPACC" IS 'C�digo tipo acceso al aplicativo';
   COMMENT ON COLUMN "AXIS"."CFG_USER_DEF"."CROLMEN" IS 'C�digo rol men�';
   COMMENT ON COLUMN "AXIS"."CFG_USER_DEF"."CCFGFORM" IS 'C�digo configuraci�n de pantallas';
   COMMENT ON COLUMN "AXIS"."CFG_USER_DEF"."CCFGWIZ" IS 'C�digo configuraci�n de la seq�encia de las pantallas (WIZARD)';
   COMMENT ON COLUMN "AXIS"."CFG_USER_DEF"."CCFGACC" IS 'C�digo configuraci�n de acciones';
   COMMENT ON COLUMN "AXIS"."CFG_USER_DEF"."CCONSUPL" IS 'C�digo configuraci�n suplementos';
   COMMENT ON COLUMN "AXIS"."CFG_USER_DEF"."CDSIROL" IS 'Congiraci�n men� Back Office';
   COMMENT ON COLUMN "AXIS"."CFG_USER_DEF"."CACCPROD" IS 'C�digo del perfil de acceso a productos';
   COMMENT ON COLUMN "AXIS"."CFG_USER_DEF"."CCFGMAP" IS 'Id. del tipo de perfil de map';
   COMMENT ON COLUMN "AXIS"."CFG_USER_DEF"."CROL" IS 'Rol del usuario';
   COMMENT ON TABLE "AXIS"."CFG_USER_DEF"  IS 'C�digo de configuraci�n de documentos';
  GRANT UPDATE ON "AXIS"."CFG_USER_DEF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_USER_DEF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_USER_DEF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_USER_DEF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_USER_DEF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_USER_DEF" TO "PROGRAMADORESCSI";