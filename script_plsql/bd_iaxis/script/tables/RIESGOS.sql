--------------------------------------------------------
--  DDL for Table RIESGOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."RIESGOS" 
   (	"NRIESGO" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"NMOVIMA" NUMBER(4,0), 
	"FEFECTO" DATE, 
	"SPERSON" NUMBER(10,0), 
	"CCLARIE" NUMBER(2,0), 
	"NMOVIMB" NUMBER(4,0), 
	"FANULAC" DATE, 
	"TNATRIE" VARCHAR2(300 BYTE), 
	"CDOMICI" NUMBER, 
	"NASEGUR" NUMBER(6,0), 
	"NEDACOL" NUMBER(2,0), 
	"CSEXCOL" NUMBER(1,0), 
	"SBONUSH" NUMBER(6,0), 
	"CZBONUS" NUMBER(3,0), 
	"CTIPDIRAUT" NUMBER(2,0), 
	"SPERMIN" NUMBER(10,0), 
	"CACTIVI" NUMBER(4,0), 
	"CMODALIDAD" VARCHAR2(10 BYTE), 
	"PDTOCOM" NUMBER(6,2), 
	"PRECARG" NUMBER(6,2), 
	"PDTOTEC" NUMBER(6,2), 
	"PRECCOM" NUMBER(6,2), 
	"TDESCRIE" CLOB
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" 
 LOB ("TDESCRIE") STORE AS SECUREFILE (
  TABLESPACE "AXIS" ENABLE STORAGE IN ROW CHUNK 8192
  NOCACHE LOGGING  NOCOMPRESS  KEEP_DUPLICATES 
  STORAGE(INITIAL 106496 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)) ;

   COMMENT ON COLUMN "AXIS"."RIESGOS"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."NMOVIMA" IS 'N�mero de movimiento (Alta)';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."FEFECTO" IS 'Fecha de efecto';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."SPERSON" IS 'Identificador �nico de la Personas';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."CCLARIE" IS 'C�dogo de la Clase de Riesgo';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."NMOVIMB" IS 'N�mero de movimiento (Baja)';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."FANULAC" IS 'Fecha de anulaci�n';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."TNATRIE" IS 'Naturaleza del riesgo';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."CDOMICI" IS 'C�digo de domicilio';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."NASEGUR" IS 'N�mero de asegurados';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."NEDACOL" IS 'Indica la edad de un riesgo de un colectivo inominado';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."CSEXCOL" IS 'Indica el sexo de un riesgo de un colectivo inominado. VF=11.';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."SBONUSH" IS 'CODIGO HIST�RICO BONUS';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."CZBONUS" IS 'CODIGO ESCALA BONUS';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."CTIPDIRAUT" IS 'Tipo de direccion 0.- La del tomador 1.- Particular';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."SPERMIN" IS 'Beneficiario minusv�lido';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."CACTIVI" IS 'C�digo de la actividad';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."CMODALIDAD" IS 'C�digo de modalidad para el producto de autos  ';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."PDTOCOM" IS 'Porcentaje descuento comercial';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."PRECARG" IS 'Porcentaje recargo t�cnico';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."PDTOTEC" IS 'Porcentaje descuento t�cnico';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."PRECCOM" IS 'Porcentaje recargo comercial';
   COMMENT ON COLUMN "AXIS"."RIESGOS"."TDESCRIE" IS 'Detalle del riesgo';
   COMMENT ON TABLE "AXIS"."RIESGOS"  IS 'Riesgos de los seguros';
  GRANT UPDATE ON "AXIS"."RIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."RIESGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."RIESGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."RIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."RIESGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."RIESGOS" TO "PROGRAMADORESCSI";
