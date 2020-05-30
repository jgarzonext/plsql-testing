--------------------------------------------------------
--  DDL for Table HIS_PSU_USUAGRU_NIVEL
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PSU_USUAGRU_NIVEL" 
   (	"CUSUAGRU" VARCHAR2(4 BYTE), 
	"SPRODUC" NUMBER(6,0), 
	"CNIVEL" NUMBER(6,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_PSU_USUAGRU_NIVEL"."CUSUAGRU" IS 'C�digo Agrupaci�n de Usuarios';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_USUAGRU_NIVEL"."SPRODUC" IS 'C�digo del Producto';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_USUAGRU_NIVEL"."CNIVEL" IS 'C�digo del Nivel de la Agrupaci�n de Usuarios';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_USUAGRU_NIVEL"."CUSUALT" IS 'Usuario Creaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_USUAGRU_NIVEL"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_USUAGRU_NIVEL"."CUSUMOD" IS 'Usurio Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PSU_USUAGRU_NIVEL"."FMODIFI" IS 'Fecha de Modificaci�n';
   COMMENT ON TABLE "AXIS"."HIS_PSU_USUAGRU_NIVEL"  IS 'Asignaci�n niveles a las Agrupaciones de Usuarios por Producto';
  GRANT UPDATE ON "AXIS"."HIS_PSU_USUAGRU_NIVEL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PSU_USUAGRU_NIVEL" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PSU_USUAGRU_NIVEL" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PSU_USUAGRU_NIVEL" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PSU_USUAGRU_NIVEL" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PSU_USUAGRU_NIVEL" TO "PROGRAMADORESCSI";
