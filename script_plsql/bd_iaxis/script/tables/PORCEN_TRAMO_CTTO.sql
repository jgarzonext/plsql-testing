--------------------------------------------------------
--  DDL for Table PORCEN_TRAMO_CTTO
--------------------------------------------------------

  CREATE TABLE "AXIS"."PORCEN_TRAMO_CTTO" 
   (	"IDCABECERA" NUMBER(6,0), 
	"ID" NUMBER(6,0), 
	"PORCEN" NUMBER, 
	"FALTA" DATE, 
	"CUSUALTA" VARCHAR2(20 BYTE), 
	"FBAJA" DATE, 
	"CUSUMOD" VARCHAR2(20 BYTE), 
	"FPAGO" DATE, 
	"NREPLICADA" NUMBER DEFAULT 0
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."PORCEN_TRAMO_CTTO"."IDCABECERA" IS 'Identificador de la cabecera';
   COMMENT ON COLUMN "AXIS"."PORCEN_TRAMO_CTTO"."ID" IS 'Identificador �nico del registro';
   COMMENT ON COLUMN "AXIS"."PORCEN_TRAMO_CTTO"."PORCEN" IS 'Porcentaje de Prima M�nima de Dep�sito correspondiente a la cuota';
   COMMENT ON COLUMN "AXIS"."PORCEN_TRAMO_CTTO"."FALTA" IS 'Fecha de alta del registro';
   COMMENT ON COLUMN "AXIS"."PORCEN_TRAMO_CTTO"."CUSUALTA" IS 'Usuario Alta';
   COMMENT ON COLUMN "AXIS"."PORCEN_TRAMO_CTTO"."FBAJA" IS 'Fecha de baja del registro';
   COMMENT ON COLUMN "AXIS"."PORCEN_TRAMO_CTTO"."CUSUMOD" IS 'Usuario de modificaci�n';
   COMMENT ON COLUMN "AXIS"."PORCEN_TRAMO_CTTO"."FPAGO" IS 'Fecha de pago de la cuota de la PMD';
   COMMENT ON COLUMN "AXIS"."PORCEN_TRAMO_CTTO"."NREPLICADA" IS 'Registro a�adido a trav�s de la funci�n de replicar cuotas';
   COMMENT ON TABLE "AXIS"."PORCEN_TRAMO_CTTO"  IS 'Relaci�n de Porcentajes asociados a cada cuota';
  GRANT UPDATE ON "AXIS"."PORCEN_TRAMO_CTTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PORCEN_TRAMO_CTTO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."PORCEN_TRAMO_CTTO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."PORCEN_TRAMO_CTTO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."PORCEN_TRAMO_CTTO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."PORCEN_TRAMO_CTTO" TO "PROGRAMADORESCSI";
