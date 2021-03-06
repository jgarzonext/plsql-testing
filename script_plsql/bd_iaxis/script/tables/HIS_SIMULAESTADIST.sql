--------------------------------------------------------
--  DDL for Table HIS_SIMULAESTADIST
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_SIMULAESTADIST" 
   (	"SSIMULA" NUMBER(22,0), 
	"CAGENTE" NUMBER(22,0), 
	"SPRODUC" NUMBER(22,0), 
	"CTIPO" NUMBER(22,0), 
	"FECHA" DATE, 
	"CUSUARI" VARCHAR2(20 BYTE), 
	"SSEGURO" NUMBER(22,0), 
	"CUSUALT" VARCHAR2(30 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(30 BYTE), 
	"FMODIFI" DATE, 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."CAGENTE" IS 'C�digo de la Oficina que realiza la simulaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."SPRODUC" IS 'C�digo del producto';
   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."CTIPO" IS 'Tipo de Simulacion (Valor Fijo 263)';
   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."FECHA" IS 'Fecha en la que se realiza la simulaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."CUSUARI" IS 'Usuario que realiza la simulaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."SSEGURO" IS 'C�digo del seguro';
   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_SIMULAESTADIST"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_SIMULAESTADIST"  IS 'Hist�rico de la tabla SIMULAESTADIST';
  GRANT UPDATE ON "AXIS"."HIS_SIMULAESTADIST" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_SIMULAESTADIST" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_SIMULAESTADIST" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_SIMULAESTADIST" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_SIMULAESTADIST" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_SIMULAESTADIST" TO "PROGRAMADORESCSI";
