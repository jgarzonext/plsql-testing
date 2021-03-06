--------------------------------------------------------
--  DDL for Table HIS_CTACARGOPRODUCTO
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_CTACARGOPRODUCTO" 
   (	"SPRODUC" NUMBER(22,0), 
	"SCUECAR" NUMBER(22,0), 
	"CATRIBU" NUMBER(22,0), 
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

   COMMENT ON COLUMN "AXIS"."HIS_CTACARGOPRODUCTO"."SPRODUC" IS 'C�digo producto';
   COMMENT ON COLUMN "AXIS"."HIS_CTACARGOPRODUCTO"."SCUECAR" IS 'C�digo cuenta corriente';
   COMMENT ON COLUMN "AXIS"."HIS_CTACARGOPRODUCTO"."CATRIBU" IS 'Concepto de la transferencia. [detvalores.cvalor = 207]';
   COMMENT ON COLUMN "AXIS"."HIS_CTACARGOPRODUCTO"."CUSUALT" IS 'Usuario que crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CTACARGOPRODUCTO"."FALTA" IS 'Fecha en que se crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CTACARGOPRODUCTO"."CUSUMOD" IS 'Usuario que modifica crea el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CTACARGOPRODUCTO"."FMODIFI" IS 'Fecha en que se modifica el registro';
   COMMENT ON COLUMN "AXIS"."HIS_CTACARGOPRODUCTO"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_CTACARGOPRODUCTO"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_CTACARGOPRODUCTO"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_CTACARGOPRODUCTO"  IS 'Hist�rico de la tabla CTACARGOPRODUCTO';
  GRANT UPDATE ON "AXIS"."HIS_CTACARGOPRODUCTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CTACARGOPRODUCTO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_CTACARGOPRODUCTO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_CTACARGOPRODUCTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_CTACARGOPRODUCTO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_CTACARGOPRODUCTO" TO "PROGRAMADORESCSI";
