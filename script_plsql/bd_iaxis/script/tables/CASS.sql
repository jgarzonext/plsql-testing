--------------------------------------------------------
--  DDL for Table CASS
--------------------------------------------------------

  CREATE TABLE "AXIS"."CASS" 
   (	"CCOMPANI" VARCHAR2(20 BYTE), 
	"FREMESA" VARCHAR2(20 BYTE), 
	"NREMESA" VARCHAR2(20 BYTE), 
	"CTIPO" VARCHAR2(20 BYTE), 
	"CCLAS" VARCHAR2(20 BYTE), 
	"DESCLAS" VARCHAR2(80 BYTE), 
	"FCARGA" DATE, 
	"IMPTOT" VARCHAR2(20 BYTE), 
	"NUMPAGOS" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CASS"."CCOMPANI" IS 'Codi companyia assegurança. Dato tipo registro 1';
   COMMENT ON COLUMN "AXIS"."CASS"."FREMESA" IS 'Data de la remesa, format AAAAMMDD. Dato tipo registro 1';
   COMMENT ON COLUMN "AXIS"."CASS"."NREMESA" IS 'Número de remesa, any + comptador de 6, exemple 2005000356. Dato tipo registro 1';
   COMMENT ON COLUMN "AXIS"."CASS"."CTIPO" IS 'Tipus d''apunt: ''A'' – abonament, ''C'' - càrrec. Dato tipo registro 1';
   COMMENT ON COLUMN "AXIS"."CASS"."CCLAS" IS 'Codi classe prestació.Valores 0001,0002. Dato tipo registro 1';
   COMMENT ON COLUMN "AXIS"."CASS"."DESCLAS" IS 'Descripció classe prestació. Dato tipo registro 1';
   COMMENT ON COLUMN "AXIS"."CASS"."FCARGA" IS 'Fecha de carga';
   COMMENT ON COLUMN "AXIS"."CASS"."IMPTOT" IS 'Import total remesa, exemple 000000103668 per 1036,68. Dato tipo registro 4';
   COMMENT ON COLUMN "AXIS"."CASS"."NUMPAGOS" IS 'Quantitat de pagaments inclosos en la remesa, exemple 00068 per 68. Dato tipo registro 4';
  GRANT UPDATE ON "AXIS"."CASS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CASS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CASS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CASS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CASS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CASS" TO "PROGRAMADORESCSI";
