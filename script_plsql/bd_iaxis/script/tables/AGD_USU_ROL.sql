--------------------------------------------------------
--  DDL for Table AGD_USU_ROL
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGD_USU_ROL" 
   (	"CEMPRES" NUMBER(2,0), 
	"CUSUARI" VARCHAR2(50 BYTE), 
	"CROLOBS" NUMBER(9,0), 
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

   COMMENT ON COLUMN "AXIS"."AGD_USU_ROL"."CEMPRES" IS 'Empresa';
   COMMENT ON COLUMN "AXIS"."AGD_USU_ROL"."CUSUARI" IS 'Usuario';
   COMMENT ON COLUMN "AXIS"."AGD_USU_ROL"."CROLOBS" IS 'Rol para las Agendas';
   COMMENT ON COLUMN "AXIS"."AGD_USU_ROL"."CUSUALT" IS 'USUARIO QUE DA DE ALTA EL REGISTRO';
   COMMENT ON COLUMN "AXIS"."AGD_USU_ROL"."FALTA" IS 'FECHA DE ALTA DEL REGISTRO';
   COMMENT ON COLUMN "AXIS"."AGD_USU_ROL"."CUSUMOD" IS 'USUARIO QUE MODIFICA EL REGISTRO';
   COMMENT ON COLUMN "AXIS"."AGD_USU_ROL"."FMODIFI" IS 'FECHA DE MOFICIACI�N DEL REGISTRO';
   COMMENT ON TABLE "AXIS"."AGD_USU_ROL"  IS 'Asignaci�n de roles a usuarios';
  GRANT UPDATE ON "AXIS"."AGD_USU_ROL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGD_USU_ROL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGD_USU_ROL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGD_USU_ROL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGD_USU_ROL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGD_USU_ROL" TO "PROGRAMADORESCSI";