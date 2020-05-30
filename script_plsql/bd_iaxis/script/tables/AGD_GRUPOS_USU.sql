--------------------------------------------------------
--  DDL for Table AGD_GRUPOS_USU
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGD_GRUPOS_USU" 
   (	"CEMPRES" NUMBER(2,0), 
	"CGRUPO" VARCHAR2(50 BYTE), 
	"CUSUARIO" VARCHAR2(50 BYTE), 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(50 BYTE), 
	"FMODIFI" DATE, 
	"CUSUMOD" VARCHAR2(50 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGD_GRUPOS_USU"."CEMPRES" IS 'Código de la empresa';
   COMMENT ON COLUMN "AXIS"."AGD_GRUPOS_USU"."CGRUPO" IS 'Id del grupo';
   COMMENT ON COLUMN "AXIS"."AGD_GRUPOS_USU"."CUSUARIO" IS 'Usuario';
   COMMENT ON COLUMN "AXIS"."AGD_GRUPOS_USU"."FALTA" IS 'Fecha de modificación';
   COMMENT ON COLUMN "AXIS"."AGD_GRUPOS_USU"."CUSUALT" IS 'Usuario de modificación';
   COMMENT ON TABLE "AXIS"."AGD_GRUPOS_USU"  IS 'Grupos de la agenda';
  GRANT UPDATE ON "AXIS"."AGD_GRUPOS_USU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGD_GRUPOS_USU" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGD_GRUPOS_USU" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGD_GRUPOS_USU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGD_GRUPOS_USU" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGD_GRUPOS_USU" TO "PROGRAMADORESCSI";
