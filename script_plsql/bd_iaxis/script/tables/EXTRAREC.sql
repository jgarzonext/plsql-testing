--------------------------------------------------------
--  DDL for Table EXTRAREC
--------------------------------------------------------

  CREATE TABLE "AXIS"."EXTRAREC" 
   (	"SEXTRAREC" NUMBER, 
	"SSEGURO" NUMBER, 
	"CEXTRAREC" NUMBER(2,0), 
	"IEXTRAREC" NUMBER, 
	"CGARANT" NUMBER(4,0), 
	"NRIESGO" NUMBER(6,0), 
	"NRECIBO" NUMBER, 
	"CDOCUM" NUMBER(7,0), 
	"FIMPRESION" DATE, 
	"FALTA" DATE, 
	"CUSUALT" VARCHAR2(20 BYTE), 
	"FMODIF" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."EXTRAREC"."SSEGURO" IS 'N�mero de SEGURO';
   COMMENT ON COLUMN "AXIS"."EXTRAREC"."CEXTRAREC" IS 'C�digo concepto extraordinario';
   COMMENT ON COLUMN "AXIS"."EXTRAREC"."IEXTRAREC" IS 'Importe del concepto';
   COMMENT ON COLUMN "AXIS"."EXTRAREC"."CGARANT" IS 'C�digo Garant�a';
   COMMENT ON COLUMN "AXIS"."EXTRAREC"."NRIESGO" IS 'N�mero de Riesgo';
   COMMENT ON COLUMN "AXIS"."EXTRAREC"."NRECIBO" IS 'N�mero de recibo (se informa cuando se traspase el EXTRAREC a un recibo)';
   COMMENT ON COLUMN "AXIS"."EXTRAREC"."CDOCUM" IS 'C�digo de documento asociado';
   COMMENT ON COLUMN "AXIS"."EXTRAREC"."FIMPRESION" IS 'Fecha de impresi�n del documento asociado';
   COMMENT ON COLUMN "AXIS"."EXTRAREC"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."EXTRAREC"."CUSUALT" IS 'Usuario que ha dado de alta el registro';
   COMMENT ON COLUMN "AXIS"."EXTRAREC"."FMODIF" IS 'Fecha de la �ltima modificaci�n del registro';
   COMMENT ON COLUMN "AXIS"."EXTRAREC"."CUSUMOD" IS 'Usurario que ha modificado el registro';
   COMMENT ON TABLE "AXIS"."EXTRAREC"  IS 'Nuevos conceptos a asociar y asociados a recibos';
  GRANT UPDATE ON "AXIS"."EXTRAREC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXTRAREC" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."EXTRAREC" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."EXTRAREC" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."EXTRAREC" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."EXTRAREC" TO "PROGRAMADORESCSI";