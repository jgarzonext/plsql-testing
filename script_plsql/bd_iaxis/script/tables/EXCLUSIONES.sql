--------------------------------------------------------
--  DDL for Table EXCLUSIONES
--------------------------------------------------------

  CREATE TABLE "AXIS"."EXCLUSIONES" 
   (	"CEXCLU" VARCHAR2(6 BYTE), 
	"CIDIOMA" NUMBER(2,0), 
	"TEXCLU" VARCHAR2(255 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EXCLUSIONES"."CEXCLU" IS 'C�digo de exclusion';
   COMMENT ON COLUMN "AXIS"."EXCLUSIONES"."CIDIOMA" IS 'C�digo del Idioma. 1.- Catal�  2.- Castellano';
   COMMENT ON COLUMN "AXIS"."EXCLUSIONES"."TEXCLU" IS 'Texto de la exclusi�n';
   COMMENT ON TABLE "AXIS"."EXCLUSIONES"  IS 'Descripci�n de exclusiones';
  GRANT UPDATE ON "AXIS"."EXCLUSIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXCLUSIONES" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EXCLUSIONES" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EXCLUSIONES" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXCLUSIONES" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EXCLUSIONES" TO "PROGRAMADORESCSI";
