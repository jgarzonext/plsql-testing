--------------------------------------------------------
--  DDL for Table HIS_SIN_GAR_CAUSA
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_SIN_GAR_CAUSA" 
   (	"SPRODUC" NUMBER(22,0), 
	"CACTIVI" NUMBER(22,0), 
	"CGARANT" NUMBER(22,0), 
	"CCAUSIN" NUMBER(22,0), 
	"CMOTSIN" NUMBER(22,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"NUMSINI" NUMBER(22,0), 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."SPRODUC" IS 'Secuencia Producto';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."CACTIVI" IS 'C�digo Actividad';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."CCAUSIN" IS 'C�digo Causa Siniestro';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."CMOTSIN" IS 'C�digo Motivo Siniestro';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."NUMSINI" IS 'N�mero m�ximo de siniestros que puede tener una p�liza para una causa, motivo y garantia.';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_SIN_GAR_CAUSA"  IS 'Hist�rico de la tabla SIN_GAR_CAUSA';
  GRANT INSERT ON "AXIS"."HIS_SIN_GAR_CAUSA" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_SIN_GAR_CAUSA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_SIN_GAR_CAUSA" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_SIN_GAR_CAUSA" TO "PROGRAMADORESCSI";
  GRANT UPDATE ON "AXIS"."HIS_SIN_GAR_CAUSA" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_SIN_GAR_CAUSA" TO "R_AXIS";
