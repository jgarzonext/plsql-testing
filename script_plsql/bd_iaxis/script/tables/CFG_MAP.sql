--------------------------------------------------------
--  DDL for Table CFG_MAP
--------------------------------------------------------

  CREATE TABLE "AXIS"."CFG_MAP" 
   (	"CEMPRES" NUMBER(2,0), 
	"CCFGMAP" VARCHAR2(50 BYTE), 
	"CMAPEAD" VARCHAR2(5 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CFG_MAP"."CEMPRES" IS 'C�digo de empresa';
   COMMENT ON COLUMN "AXIS"."CFG_MAP"."CCFGMAP" IS 'Id. del tipo de perfil de map';
   COMMENT ON COLUMN "AXIS"."CFG_MAP"."CMAPEAD" IS 'C�digo del map';
   COMMENT ON TABLE "AXIS"."CFG_MAP"  IS 'Maps que pueden ejecutarse para cada perfil';
  GRANT UPDATE ON "AXIS"."CFG_MAP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_MAP" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CFG_MAP" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CFG_MAP" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CFG_MAP" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CFG_MAP" TO "PROGRAMADORESCSI";
