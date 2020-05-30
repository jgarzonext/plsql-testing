--------------------------------------------------------
--  DDL for Table CODRECHAZO_BANCO
--------------------------------------------------------

  CREATE TABLE "AXIS"."CODRECHAZO_BANCO" 
   (	"CEMPRES" NUMBER(2,0), 
	"CCOBBAN" NUMBER(3,0), 
	"CRECHAZO" VARCHAR2(10 BYTE), 
	"CTIPRECHAZO" NUMBER, 
	"CDEVMOT" NUMBER(3,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."CODRECHAZO_BANCO"."CEMPRES" IS 'C�digo de la empresa';
   COMMENT ON COLUMN "AXIS"."CODRECHAZO_BANCO"."CCOBBAN" IS 'C�digo del cobrador bancario';
   COMMENT ON COLUMN "AXIS"."CODRECHAZO_BANCO"."CRECHAZO" IS 'C�digo del rechazo';
   COMMENT ON COLUMN "AXIS"."CODRECHAZO_BANCO"."CTIPRECHAZO" IS 'Tipo de rechazo VF.1122';
   COMMENT ON TABLE "AXIS"."CODRECHAZO_BANCO"  IS 'C�digos de rechazo por empresa';
  GRANT UPDATE ON "AXIS"."CODRECHAZO_BANCO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODRECHAZO_BANCO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."CODRECHAZO_BANCO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."CODRECHAZO_BANCO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."CODRECHAZO_BANCO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."CODRECHAZO_BANCO" TO "PROGRAMADORESCSI";
