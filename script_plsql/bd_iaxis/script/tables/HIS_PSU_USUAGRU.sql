--------------------------------------------------------
--  DDL for Table HIS_PSU_USUAGRU
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PSU_USUAGRU" 
   (	"CUSUARI" VARCHAR2(20 BYTE), 
	"CUSUAGRU" VARCHAR2(4 BYTE), 
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

   COMMENT ON COLUMN "AXIS"."HIS_PSU_USUAGRU"."CUSUARI" IS 'C�digo del Usuario';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_USUAGRU"."CUSUAGRU" IS 'C�digo de la agrupaci�n';
   COMMENT ON TABLE "AXIS"."HIS_PSU_USUAGRU"  IS 'Asociaci�n Usuarios con sus Agrupaciones';
  GRANT UPDATE ON "AXIS"."HIS_PSU_USUAGRU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PSU_USUAGRU" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PSU_USUAGRU" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PSU_USUAGRU" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PSU_USUAGRU" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PSU_USUAGRU" TO "PROGRAMADORESCSI";
