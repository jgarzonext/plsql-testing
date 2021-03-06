--------------------------------------------------------
--  DDL for Table COACUADRO
--------------------------------------------------------

  CREATE TABLE "AXIS"."COACUADRO" 
   (	"SSEGURO" NUMBER, 
	"NCUACOA" NUMBER, 
	"FINICOA" DATE, 
	"FFINCOA" DATE, 
	"PLOCCOA" NUMBER(5,2), 
	"FCUACOA" DATE, 
	"CCOMPAN" NUMBER(3,0), 
	"NPOLIZA" VARCHAR2(50 BYTE), 
	"NENDOSO" NUMBER(15,0)
   ) SEGMENT CREATION IMMEDIATE 
  PCTFREE 10 PCTUSED 40 INITRANS 1 MAXTRANS 255 
 NOCOMPRESS LOGGING
  STORAGE(INITIAL 65536 NEXT 1048576 MINEXTENTS 1 MAXEXTENTS 2147483645
  PCTINCREASE 0 FREELISTS 1 FREELIST GROUPS 1
  BUFFER_POOL DEFAULT FLASH_CACHE DEFAULT CELL_FLASH_CACHE DEFAULT)
  TABLESPACE "AXIS" ;

   COMMENT ON COLUMN "AXIS"."COACUADRO"."SSEGURO" IS 'N�mero consecutivo de seguro asignado autom�ticamente.';
   COMMENT ON COLUMN "AXIS"."COACUADRO"."NCUACOA" IS 'Identificador del cuadro';
   COMMENT ON COLUMN "AXIS"."COACUADRO"."FINICOA" IS 'Inicio vigencia cuadro coaseguro';
   COMMENT ON COLUMN "AXIS"."COACUADRO"."FFINCOA" IS 'Final vigencia cuadro coaseguro';
   COMMENT ON COLUMN "AXIS"."COACUADRO"."PLOCCOA" IS 'Retenido en cedido o aceptado en aceptado';
   COMMENT ON COLUMN "AXIS"."COACUADRO"."FCUACOA" IS 'Alta del cuadro (fecha sistema)';
   COMMENT ON COLUMN "AXIS"."COACUADRO"."CCOMPAN" IS 'Compa��a Aceptado';
   COMMENT ON COLUMN "AXIS"."COACUADRO"."NPOLIZA" IS 'P�liza Origen del aceptado';
   COMMENT ON COLUMN "AXIS"."COACUADRO"."NENDOSO" IS 'Numero de endoso';
  GRANT UPDATE ON "AXIS"."COACUADRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COACUADRO" TO "R_AXIS";
  GRANT INSERT ON "AXIS"."COACUADRO" TO "R_AXIS";
  GRANT DELETE ON "AXIS"."COACUADRO" TO "R_AXIS";
  GRANT SELECT ON "AXIS"."COACUADRO" TO "CONF_DWH";
  GRANT SELECT ON "AXIS"."COACUADRO" TO "PROGRAMADORESCSI";
