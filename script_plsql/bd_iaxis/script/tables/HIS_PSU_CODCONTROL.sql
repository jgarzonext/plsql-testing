--------------------------------------------------------
--  DDL for Table HIS_PSU_CODCONTROL
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PSU_CODCONTROL" 
   (	"CCONTROL" NUMBER(6,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_PSU_CODCONTROL"."CCONTROL" IS 'C�digo de Control';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CODCONTROL"."CUSUALT" IS 'Usuario Creaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CODCONTROL"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CODCONTROL"."CUSUMOD" IS 'Usurio Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_CODCONTROL"."FMODIFI" IS 'Fecha de Modificaci�n';
   COMMENT ON TABLE "AXIS"."HIS_PSU_CODCONTROL"  IS 'C�digos de Control';
  GRANT UPDATE ON "AXIS"."HIS_PSU_CODCONTROL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PSU_CODCONTROL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PSU_CODCONTROL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PSU_CODCONTROL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PSU_CODCONTROL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PSU_CODCONTROL" TO "PROGRAMADORESCSI";