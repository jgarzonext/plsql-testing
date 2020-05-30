--------------------------------------------------------
--  DDL for Table PSU_DESNIVEL
--------------------------------------------------------

  CREATE TABLE "AXIS"."PSU_DESNIVEL" 
   (	"CNIVEL" NUMBER(6,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TNIVEL" VARCHAR2(50 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."PSU_DESNIVEL"."CNIVEL" IS 'C�digo del Nivel';
   COMMENT ON COLUMN "AXIS"."PSU_DESNIVEL"."CIDIOMA" IS 'C�digo del Idioma';
   COMMENT ON COLUMN "AXIS"."PSU_DESNIVEL"."TNIVEL" IS 'Descripci�n del Nivel';
   COMMENT ON COLUMN "AXIS"."PSU_DESNIVEL"."CUSUALT" IS 'Usuario creaci�n';
   COMMENT ON COLUMN "AXIS"."PSU_DESNIVEL"."FALTA" IS 'Fecha creaci�n';
   COMMENT ON COLUMN "AXIS"."PSU_DESNIVEL"."CUSUMOD" IS 'Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."PSU_DESNIVEL"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON TABLE "AXIS"."PSU_DESNIVEL"  IS 'Descripci�n de los niveles de Usuarios y Controles';
  GRANT UPDATE ON "AXIS"."PSU_DESNIVEL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PSU_DESNIVEL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PSU_DESNIVEL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PSU_DESNIVEL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PSU_DESNIVEL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PSU_DESNIVEL" TO "PROGRAMADORESCSI";
