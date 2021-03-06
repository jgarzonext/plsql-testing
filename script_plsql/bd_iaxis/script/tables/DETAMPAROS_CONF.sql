--------------------------------------------------------
--  DDL for Table DETAMPAROS_CONF
--------------------------------------------------------

  CREATE TABLE "AXIS"."DETAMPAROS_CONF" 
   (	"CCODAMPARO" NUMBER, 
	"CIDIOMA" NUMBER, 
	"TDESCRIPCION" VARCHAR2(200 BYTE), 
	"TCARATULA" VARCHAR2(200 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."DETAMPAROS_CONF"."CCODAMPARO" IS 'Codigo del amparo';
   COMMENT ON COLUMN "AXIS"."DETAMPAROS_CONF"."CIDIOMA" IS 'Idioma ';
   COMMENT ON COLUMN "AXIS"."DETAMPAROS_CONF"."TDESCRIPCION" IS 'Descripcion del amparo';
   COMMENT ON COLUMN "AXIS"."DETAMPAROS_CONF"."TCARATULA" IS 'Titulo en caratula';
  GRANT UPDATE ON "AXIS"."DETAMPAROS_CONF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETAMPAROS_CONF" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."DETAMPAROS_CONF" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."DETAMPAROS_CONF" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."DETAMPAROS_CONF" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."DETAMPAROS_CONF" TO "PROGRAMADORESCSI";
