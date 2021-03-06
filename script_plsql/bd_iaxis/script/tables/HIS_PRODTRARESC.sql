--------------------------------------------------------
--  DDL for Table HIS_PRODTRARESC
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_PRODTRARESC" 
   (	"SIDRESC" NUMBER(22,0), 
	"SPRODUC" NUMBER(22,0), 
	"CTIPMOV" NUMBER(22,0), 
	"FINICIO" DATE, 
	"FFIN" DATE, 
	"CTIPO" NUMBER(22,0), 
	"NMESESSINPENALI" NUMBER(22,0), 
	"NANYOSEFECTO" NUMBER(22,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."SPRODUC" IS 'Clave del Producto';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."CTIPMOV" IS 'Tipo de movto. 1-traspasos 2-rescates parciales 3- rescates totales 4-aportaciones';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."FINICIO" IS 'Fecha inicio de vigencia del registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."FFIN" IS 'Fecha final de vigencia del registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."CTIPO" IS 'C�mo tener en cuenta los a�os (v.f.360)';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."NMESESSINPENALI" IS 'Meses sin penalizaci�n desde �ltima revisi�n';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."NANYOSEFECTO" IS 'Si ctipo in (4,5) a�os desde la �ltima fecha de revisi�n';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_PRODTRARESC"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_PRODTRARESC"  IS 'Hist�rico de la tabla PRODTRARESC';
  GRANT UPDATE ON "AXIS"."HIS_PRODTRARESC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PRODTRARESC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_PRODTRARESC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_PRODTRARESC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_PRODTRARESC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_PRODTRARESC" TO "PROGRAMADORESCSI";
