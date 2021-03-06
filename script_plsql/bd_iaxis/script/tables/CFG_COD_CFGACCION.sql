--------------------------------------------------------
--  DDL for Table CFG_COD_CFGACCION
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_COD_CFGACCION" 
   (	"CEMPRES" NUMBER(2,0), 
	"CCFGACC" VARCHAR2(50 BYTE), 
	"TDESC" VARCHAR2(250 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_COD_CFGACCION"."CEMPRES" IS 'Código de la empresa';
   COMMENT ON COLUMN "AXIS"."CFG_COD_CFGACCION"."CCFGACC" IS 'Codi de la configuració d''accions';
   COMMENT ON COLUMN "AXIS"."CFG_COD_CFGACCION"."TDESC" IS 'Descripció de la configuració d''accions';
   COMMENT ON TABLE "AXIS"."CFG_COD_CFGACCION"  IS 'taula amb les diferents configuracions d''accions disponibles';
  GRANT UPDATE ON "AXIS"."CFG_COD_CFGACCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_COD_CFGACCION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_COD_CFGACCION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_COD_CFGACCION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_COD_CFGACCION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_COD_CFGACCION" TO "PROGRAMADORESCSI";
