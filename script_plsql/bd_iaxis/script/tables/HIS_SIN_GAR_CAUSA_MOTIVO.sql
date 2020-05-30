--------------------------------------------------------
--  DDL for Table HIS_SIN_GAR_CAUSA_MOTIVO
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO" 
   (	"SCAUMOT" NUMBER(22,0), 
	"SPRODUC" NUMBER(22,0), 
	"CACTIVI" NUMBER(22,0), 
	"CGARANT" NUMBER(22,0), 
	"CTRAMIT" NUMBER(22,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"ICOSMIN" NUMBER(22,0), 
	"ICOSMAX" NUMBER(22,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."SCAUMOT" IS 'Secuencia Causa/Motivo';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."SPRODUC" IS 'Secuencia Producto';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."CACTIVI" IS 'C�digo Actividad';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."CTRAMIT" IS 'C�digo Tramitaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."CUSUALT" IS 'C�digo Usuario Alta';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."FALTA" IS 'Fecha Alta';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."CUSUMOD" IS 'C�digo Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."ICOSMIN" IS 'Minimo coste siniestral para peritar';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."ICOSMAX" IS 'Maximo coste siniestral para peritar';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO"  IS 'Hist�rico de la tabla SIN_GAR_CAUSA_MOTIVO';
  GRANT UPDATE ON "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_SIN_GAR_CAUSA_MOTIVO" TO "PROGRAMADORESCSI";