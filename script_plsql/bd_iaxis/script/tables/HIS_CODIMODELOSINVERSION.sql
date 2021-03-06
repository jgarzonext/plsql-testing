--------------------------------------------------------
--  DDL for Table HIS_CODIMODELOSINVERSION
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_CODIMODELOSINVERSION" 
   (	"CIDIOMA" NUMBER(22,0), 
	"TMODINV" VARCHAR2(50 BYTE), 
	"CRAMO" NUMBER(22,0), 
	"CMODALI" NUMBER(22,0), 
	"CTIPSEG" NUMBER(22,0), 
	"CCOLECT" NUMBER(22,0), 
	"CMODINV" NUMBER(22,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_CODIMODELOSINVERSION"."CIDIOMA" IS 'C�digo de idioma';
   COMMENT ON COLUMN "AXIS"."HIS_CODIMODELOSINVERSION"."TMODINV" IS 'Texto del modelo de inversi�n';
   COMMENT ON COLUMN "AXIS"."HIS_CODIMODELOSINVERSION"."CMODINV" IS 'C�digo de modelo de inversi�n';
   COMMENT ON COLUMN "AXIS"."HIS_CODIMODELOSINVERSION"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CODIMODELOSINVERSION"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CODIMODELOSINVERSION"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CODIMODELOSINVERSION"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CODIMODELOSINVERSION"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_CODIMODELOSINVERSION"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_CODIMODELOSINVERSION"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_CODIMODELOSINVERSION"  IS 'Hist�rico de la tabla CODIMODELOSINVERSION';
  GRANT UPDATE ON "AXIS"."HIS_CODIMODELOSINVERSION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CODIMODELOSINVERSION" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_CODIMODELOSINVERSION" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_CODIMODELOSINVERSION" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CODIMODELOSINVERSION" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_CODIMODELOSINVERSION" TO "PROGRAMADORESCSI";
