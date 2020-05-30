--------------------------------------------------------
--  DDL for Table HIS_IMPREC
--------------------------------------------------------

  CREATE TABLE "AXIS"."HIS_IMPREC" 
   (	"CCONCEP" NUMBER(2,0), 
	"NCONCEP" NUMBER(6,0), 
	"CEMPRES" NUMBER(2,0), 
	"CFORPAG" NUMBER(2,0), 
	"CRAMO" NUMBER(8,0), 
	"CMODALI" NUMBER(2,0), 
	"CTIPSEG" NUMBER(2,0), 
	"CCOLECT" NUMBER(2,0), 
	"CACTIVI" NUMBER(4,0), 
	"CGARANT" NUMBER(4,0), 
	"FINIVIG" DATE, 
	"FFINVIG" DATE, 
	"CTIPCON" NUMBER(2,0), 
	"NVALCON" NUMBER(15,6), 
	"CFRACCI" NUMBER(1,0), 
	"CBONIFI" NUMBER(1,0), 
	"CRECFRA" NUMBER(1,0), 
	"CLIMITE" NUMBER(2,0), 
	"CMONEDA" NUMBER(3,0), 
	"CDERREG" NUMBER(2,0), 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FMODIFI" DATE, 
	"ACCION" VARCHAR2(2 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CCONCEP" IS 'C�digo del concepto';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."NCONCEP" IS 'N�mero secuencial de concepto';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CEMPRES" IS 'C�digo de la empresa';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CFORPAG" IS 'C�digo Forma de pago';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CRAMO" IS 'C�digo de ramo';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CMODALI" IS 'C�digo de modalidad';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CTIPSEG" IS 'C�digo tipo seguro';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CCOLECT" IS 'C�digo colectividad';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CACTIVI" IS 'C�digo actividad';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CGARANT" IS 'C�digo garant�a';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."FINIVIG" IS 'Fecha inicio vigencia';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."FFINVIG" IS 'Fecha fin vigencia';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CTIPCON" IS 'C�digo de tipo concepto';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."NVALCON" IS 'Valor concepto';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CFRACCI" IS 'Fraccionar (VF: 1055)';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CBONIFI" IS 'Aplicar a prima con Bonificaci�n';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CRECFRA" IS 'Aplicar a prima con Recargo Fraccionamiento';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CMONEDA" IS 'Moneda en que est� expresado el importe fijo';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CDERREG" IS 'Aplicar a prima con Derechos de registro';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."CUSUMOD" IS 'Usuario de modificacion del registro';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."FMODIFI" IS 'Fecha de modificacion del registro';
   COMMENT ON COLUMN "AXIS"."HIS_IMPREC"."ACCION" IS 'Acci�n realizada';
   COMMENT ON TABLE "AXIS"."HIS_IMPREC"  IS 'Tabla de historicos de impuestos y recargos para el c�lculo de recibo';
  GRANT UPDATE ON "AXIS"."HIS_IMPREC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_IMPREC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HIS_IMPREC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HIS_IMPREC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HIS_IMPREC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HIS_IMPREC" TO "PROGRAMADORESCSI";
