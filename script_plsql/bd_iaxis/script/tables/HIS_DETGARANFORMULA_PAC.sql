--------------------------------------------------------
--  DDL for Table HIS_DETGARANFORMULA_PAC
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_DETGARANFORMULA_PAC" 
   (	"SPRODUC" NUMBER(22,0), 
	"CGARANT" NUMBER(22,0), 
	"CCONCEP" VARCHAR2(8 BYTE), 
	"CGRABA" NUMBER(22,0), 
	"CTRATA" NUMBER(22,0), 
	"VALORDEF" NUMBER(22,0), 
	"NORDEN" NUMBER(22,0), 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FALTA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"CUSUHIST" VARCHAR2(20 BYTE), 
	"FCREAHIST" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION DEFERRED 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."SPRODUC" IS 'C�digo de producto';
   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."CGARANT" IS 'Garant�a';
   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."CGRABA" IS '1 = GRABA el CCONCEP en DETPRIMAS; 0 = NO GRABA';
   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."CTRATA" IS '1 = CALCULA el CCONCEP en DETPRIMAS; 0 = NO APLICA';
   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."VALORDEF" IS 'Valor a devolver cuando CTRATAR = 0';
   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."NORDEN" IS 'Orden de ejecuci�n para SPRODUC/CGARANT';
   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."CUSUALT" IS 'Usuario Grabaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."FALTA" IS 'Fecha creaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."CUSUMOD" IS 'Usuario Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."FMODIFI" IS 'Fecha Modificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."CUSUHIST" IS 'Usuario que realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."FCREAHIST" IS 'Fecha en que se realiza la acci�n';
   COMMENT ON COLUMN "AXIS"."HIS_DETGARANFORMULA_PAC"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_DETGARANFORMULA_PAC"  IS 'Hist�rico de la tabla DETGARANFORMULA_PAC';
  GRANT UPDATE ON "AXIS"."HIS_DETGARANFORMULA_PAC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_DETGARANFORMULA_PAC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_DETGARANFORMULA_PAC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_DETGARANFORMULA_PAC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_DETGARANFORMULA_PAC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_DETGARANFORMULA_PAC" TO "PROGRAMADORESCSI";
