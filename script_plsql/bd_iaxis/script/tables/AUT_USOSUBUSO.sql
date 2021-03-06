--------------------------------------------------------
--  DDL for Table AUT_USOSUBUSO
--------------------------------------------------------

  CREATE TABLE "AXIS"."AUT_USOSUBUSO" 
   (	"CCLAVEH" VARCHAR2(5 BYTE), 
	"CTIPVEH" VARCHAR2(3 BYTE), 
	"CUSO" VARCHAR2(2 BYTE), 
	"CSUBUSO" VARCHAR2(2 BYTE), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"FBAJA" DATE, 
	"CEMPRES" NUMBER(2,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AUT_USOSUBUSO"."CCLAVEH" IS 'C�digo de la clase';
   COMMENT ON COLUMN "AXIS"."AUT_USOSUBUSO"."CTIPVEH" IS 'C�digo del tipo de veh�culo';
   COMMENT ON COLUMN "AXIS"."AUT_USOSUBUSO"."CUSO" IS 'C�digo del uso';
   COMMENT ON COLUMN "AXIS"."AUT_USOSUBUSO"."CSUBUSO" IS 'C�digo del sub-uso';
   COMMENT ON COLUMN "AXIS"."AUT_USOSUBUSO"."CUSUALT" IS 'Usuario que da de alta el registro';
   COMMENT ON COLUMN "AXIS"."AUT_USOSUBUSO"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."AUT_USOSUBUSO"."CUSUMOD" IS 'Usuario de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AUT_USOSUBUSO"."FMODIFI" IS 'Fecha de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."AUT_USOSUBUSO"."FBAJA" IS 'Fecha de baja del registro';
   COMMENT ON COLUMN "AXIS"."AUT_USOSUBUSO"."CEMPRES" IS 'Codigo de empresa';
  GRANT UPDATE ON "AXIS"."AUT_USOSUBUSO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_USOSUBUSO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AUT_USOSUBUSO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AUT_USOSUBUSO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AUT_USOSUBUSO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AUT_USOSUBUSO" TO "PROGRAMADORESCSI";
