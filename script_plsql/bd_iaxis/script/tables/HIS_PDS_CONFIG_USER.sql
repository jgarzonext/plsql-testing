--------------------------------------------------------
--  DDL for Table HIS_PDS_CONFIG_USER
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PDS_CONFIG_USER" 
   (	"CUSER" VARCHAR2(50 BYTE), 
	"CCONFWIZ" VARCHAR2(50 BYTE), 
	"CCONACC" VARCHAR2(50 BYTE), 
	"CCONFORM" VARCHAR2(50 BYTE), 
	"CCONFMEN" VARCHAR2(50 BYTE), 
	"CCONSUPL" VARCHAR2(50 BYTE), 
	"FMODIF" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_USER"."CUSER" IS 'Id. del usuario';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_USER"."CCONFWIZ" IS 'id. conf del wizard';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_USER"."CCONFORM" IS 'id. conf de los formularios';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_USER"."CCONFMEN" IS 'id. conf del menu';
   COMMENT ON COLUMN "AXIS"."HIS_PDS_CONFIG_USER"."CCONSUPL" IS 'id. conf de los suplementos';
  GRANT UPDATE ON "AXIS"."HIS_PDS_CONFIG_USER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PDS_CONFIG_USER" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PDS_CONFIG_USER" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PDS_CONFIG_USER" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PDS_CONFIG_USER" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PDS_CONFIG_USER" TO "PROGRAMADORESCSI";