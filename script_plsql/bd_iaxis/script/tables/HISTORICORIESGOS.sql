--------------------------------------------------------
--  DDL for Table HISTORICORIESGOS
--------------------------------------------------------

  CREATE TABLE "AXIS"."HISTORICORIESGOS" 
   (	"NRIESGO" NUMBER(6,0), 
	"SSEGURO" NUMBER, 
	"NMOVIMI" NUMBER(4,0), 
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
	"CTIPDIRAUT" NUMBER(2,0), 
	"CACTIVI" NUMBER(4,0), 
	"CMODALIDAD" VARCHAR2(10 BYTE)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS NOLOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."NRIESGO" IS 'N�mero de riesgo';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."NMOVIMI" IS 'N�mero del movimiento anterior en el que se esta modificando';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."NMOVIMA" IS 'N�mero de movimiento (Alta)';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."FEFECTO" IS 'Fecha de efecto';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."SPERSON" IS 'Identificador �nico de las Personas';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."CCLARIE" IS 'C�digo de la Clase de Riesgo';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."NMOVIMB" IS 'N�mero de movimiento (Baja)';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."FANULAC" IS 'Fecha de anulaci�n';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."TNATRIE" IS 'Naturaleza del riesgo';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."CDOMICI" IS 'C�digo de domicilio';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."NASEGUR" IS 'N�mero de asegurados, se informa si es un colectivo innominado.';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."NEDACOL" IS 'Indica la edad de un riesgo de un colectivo inominado';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."CSEXCOL" IS 'Indica el sexo de un riesgo de un colectivo inominado. VF=11.';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."CTIPDIRAUT" IS 'Tipo de direcci�n del riesgo. cvalor = 854. 0--> La del Tomador, 1--> Particular';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."CACTIVI" IS 'C�digo de la actividad';
   COMMENT ON COLUMN "AXIS"."HISTORICORIESGOS"."CMODALIDAD" IS 'C�digo de modalidad para el producto de autos ';
   COMMENT ON TABLE "AXIS"."HISTORICORIESGOS"  IS 'HISTORICORIESGOS de los seguros';
  GRANT UPDATE ON "AXIS"."HISTORICORIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISTORICORIESGOS" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."HISTORICORIESGOS" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."HISTORICORIESGOS" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."HISTORICORIESGOS" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."HISTORICORIESGOS" TO "PROGRAMADORESCSI";