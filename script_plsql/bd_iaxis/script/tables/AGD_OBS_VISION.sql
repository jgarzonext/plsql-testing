--------------------------------------------------------
--  DDL for Table AGD_OBS_VISION
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGD_OBS_VISION" 
   (	"CEMPRES" NUMBER(2,0), 
	"IDOBS" NUMBER(8,0), 
	"CTIPVISION" NUMBER(2,0), 
	"TTIPVISION" VARCHAR2(100 BYTE), 
	"CVISIBLE" NUMBER(1,0), 
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

   COMMENT ON COLUMN "AXIS"."AGD_OBS_VISION"."IDOBS" IS 'ID del apunte que le vamos a restringir la visi�n';
   COMMENT ON COLUMN "AXIS"."AGD_OBS_VISION"."CTIPVISION" IS 'Tipo de grupo de visi�n : 0 Rol, 1 Usuario';
   COMMENT ON COLUMN "AXIS"."AGD_OBS_VISION"."TTIPVISION" IS 'Usuario o Rol dependiendo de ctipo al qual le vamos a asignar una visi�n';
   COMMENT ON COLUMN "AXIS"."AGD_OBS_VISION"."CVISIBLE" IS 'Visible(1) o no visible (0)';
   COMMENT ON COLUMN "AXIS"."AGD_OBS_VISION"."CUSUALT" IS 'USUARIO QUE DA DE ALTA EL REGISTRO';
   COMMENT ON COLUMN "AXIS"."AGD_OBS_VISION"."FALTA" IS 'FECHA DE ALTA DEL REGISTRO';
   COMMENT ON COLUMN "AXIS"."AGD_OBS_VISION"."CUSUMOD" IS 'USUARIO QUE MODIFICA EL REGISTRO';
   COMMENT ON COLUMN "AXIS"."AGD_OBS_VISION"."FMODIFI" IS 'FECHA DE MOFICIACI�N DEL REGISTRO';
   COMMENT ON TABLE "AXIS"."AGD_OBS_VISION"  IS 'Visi�n de las agendas';
  GRANT UPDATE ON "AXIS"."AGD_OBS_VISION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGD_OBS_VISION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGD_OBS_VISION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGD_OBS_VISION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGD_OBS_VISION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGD_OBS_VISION" TO "PROGRAMADORESCSI";
