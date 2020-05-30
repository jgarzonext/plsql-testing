--------------------------------------------------------
--  DDL for Table AGD_SINIESTRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."AGD_SINIESTRO" 
   (	"NSINIES" VARCHAR2(14 BYTE), 
	"IDAPUNTE" NUMBER(8,0), 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"CGRUPO" VARCHAR2(40 BYTE), 
	"TGRUPO" VARCHAR2(40 BYTE), 
	"CAMBITO" NUMBER(1,0), 
	"CPRIORI" NUMBER(2,0), 
	"CPERAGD" NUMBER(1,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."AGD_SINIESTRO"."NSINIES" IS 'N�mero Siniestro';
   COMMENT ON COLUMN "AXIS"."AGD_SINIESTRO"."IDAPUNTE" IS 'Identificador Apunte';
   COMMENT ON COLUMN "AXIS"."AGD_SINIESTRO"."CUSUARI" IS 'C�digo Usuario';
   COMMENT ON COLUMN "AXIS"."AGD_SINIESTRO"."CGRUPO" IS 'C�digo Grupo';
   COMMENT ON COLUMN "AXIS"."AGD_SINIESTRO"."TGRUPO" IS 'Valor Grupo';
   COMMENT ON COLUMN "AXIS"."AGD_SINIESTRO"."CAMBITO" IS 'C�digo Ambito (Interno, Externo)';
   COMMENT ON COLUMN "AXIS"."AGD_SINIESTRO"."CPRIORI" IS 'C�digo Prioridad';
   COMMENT ON COLUMN "AXIS"."AGD_SINIESTRO"."CPERAGD" IS 'C�digo Permiso Agenda';
   COMMENT ON COLUMN "AXIS"."AGD_SINIESTRO"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."AGD_SINIESTRO"."FALTA" IS 'Fecha Alta';
   COMMENT ON TABLE "AXIS"."AGD_SINIESTRO"  IS 'Agenda Siniestro';
  GRANT UPDATE ON "AXIS"."AGD_SINIESTRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGD_SINIESTRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."AGD_SINIESTRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."AGD_SINIESTRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."AGD_SINIESTRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."AGD_SINIESTRO" TO "PROGRAMADORESCSI";