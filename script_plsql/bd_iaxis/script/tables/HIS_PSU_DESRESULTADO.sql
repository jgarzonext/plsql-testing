--------------------------------------------------------
--  DDL for Table HIS_PSU_DESRESULTADO
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PSU_DESRESULTADO" 
   (	"CCONTROL" NUMBER(6,0), 
	"SPRODUC" NUMBER(6,0), 
	"CNIVEL" NUMBER(6,0), 
	"CIDIOMA" NUMBER(2,0), 
	"TDESNIV" VARCHAR2(500 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."HIS_PSU_DESRESULTADO"."CCONTROL" IS 'C�digo del Control';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_DESRESULTADO"."SPRODUC" IS 'C�digo del Producto';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_DESRESULTADO"."CNIVEL" IS 'Nivel Necesario para Control/Rango Valores';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_DESRESULTADO"."CIDIOMA" IS 'C�digo del idioma';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_DESRESULTADO"."TDESNIV" IS 'Descripci�n del Nivel M�nimo exigible';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_DESRESULTADO"."CUSUALT" IS 'Usuario Creaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_DESRESULTADO"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_DESRESULTADO"."CUSUMOD" IS 'Usurio Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_DESRESULTADO"."FMODIFI" IS 'Fecha de Modificaci�n';
   COMMENT ON TABLE "AXIS"."HIS_PSU_DESRESULTADO"  IS 'Nivel M�nimo Exigible por Control y Rango Valores';
  GRANT UPDATE ON "AXIS"."HIS_PSU_DESRESULTADO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PSU_DESRESULTADO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PSU_DESRESULTADO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PSU_DESRESULTADO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PSU_DESRESULTADO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PSU_DESRESULTADO" TO "PROGRAMADORESCSI";